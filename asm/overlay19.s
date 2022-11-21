
	thumb_func_start ov19_021D0D80
ov19_021D0D80: @ 0x021D0D80
	push {r3, r4, r5, lr}
	movs r2, #1
	adds r5, r0, #0
	movs r0, #3
	movs r1, #9
	lsls r2, r2, #0xe
	bl FUN_02017FC8
	movs r2, #0xf
	movs r0, #3
	movs r1, #0xa
	lsls r2, r2, #0xe
	bl FUN_02017FC8
	movs r1, #0x87
	adds r0, r5, #0
	lsls r1, r1, #2
	movs r2, #9
	bl FUN_0200681C
	adds r4, r0, #0
	beq _021D0DE4
	adds r0, r5, #0
	bl FUN_02006840
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov19_021D4BE0
	movs r0, #0x45
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r1, r4, #0
	adds r2, r4, #0
	bl ov19_021D61B0
	movs r0, #0x1b
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov19_021D0ECC
	movs r1, #0x6a
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _021D0DE8 @ =ov19_021D0F20
	adds r0, r4, #0
	bl ov19_021D0EB0
_021D0DE4:
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D0DE8: .4byte ov19_021D0F20
	thumb_func_end ov19_021D0D80

	thumb_func_start ov19_021D0DEC
ov19_021D0DEC: @ 0x021D0DEC
	push {r4, lr}
	bl FUN_0200682C
	movs r1, #0x6b
	adds r4, r0, #0
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, #0
	beq _021D0E08
	adds r1, #8
	adds r1, r4, r1
	blx r2
	movs r0, #0
	pop {r4, pc}
_021D0E08:
	subs r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D0E4A
	ldr r0, _021D0E54 @ =0x021BF67C
	ldr r2, [r0, #0x48]
	movs r0, #2
	lsls r0, r0, #0xa
	tst r0, r2
	beq _021D0E3E
	subs r1, #0x98
	ldr r0, [r4, r1]
	bl ov19_021D6628
	cmp r0, #1
	bne _021D0E3E
	adds r0, r4, #0
	bl ov19_021D5DD8
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x2b
	bl ov19_021D6594
	movs r0, #0
	pop {r4, pc}
_021D0E3E:
	movs r1, #0x6a
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	adds r0, r4, #0
	blx r1
	pop {r4, pc}
_021D0E4A:
	bl FUN_02022974
	movs r0, #1
	pop {r4, pc}
	nop
_021D0E54: .4byte 0x021BF67C
	thumb_func_end ov19_021D0DEC

	thumb_func_start ov19_021D0E58
ov19_021D0E58: @ 0x021D0E58
	push {r4, lr}
	bl FUN_0200682C
	movs r1, #0x49
	adds r4, r0, #0
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	adds r1, #0x95
	bl FUN_0207A230
	cmp r0, #0
	bne _021D0E7E
	movs r0, #0x47
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0202CC98
	bl FUN_0202CCA8
_021D0E7E:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D64A0
	adds r0, r4, #0
	bl ov19_021D4D58
	movs r0, #9
	bl FUN_0201807C
	movs r0, #0xa
	bl FUN_0201807C
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021D0E58

	thumb_func_start ov19_021D0EA0
ov19_021D0EA0: @ 0x021D0EA0
	movs r2, #0x6a
	lsls r2, r2, #2
	str r1, [r0, r2]
	movs r1, #0
	adds r2, #8
	str r1, [r0, r2]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D0EA0

	thumb_func_start ov19_021D0EB0
ov19_021D0EB0: @ 0x021D0EB0
	movs r2, #0x6b
	lsls r2, r2, #2
	str r1, [r0, r2]
	movs r1, #0
	adds r2, #8
	str r1, [r0, r2]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D0EB0

	thumb_func_start ov19_021D0EC0
ov19_021D0EC0: @ 0x021D0EC0
	movs r1, #0x6b
	movs r2, #0
	lsls r1, r1, #2
	str r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D0EC0

	thumb_func_start ov19_021D0ECC
ov19_021D0ECC: @ 0x021D0ECC
	push {r3, lr}
	bl ov19_021D5E10
	cmp r0, #4
	bhi _021D0EEC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D0EE2: @ jump table
	.2byte _021D0EEC - _021D0EE2 - 2 @ case 0
	.2byte _021D0EF0 - _021D0EE2 - 2 @ case 1
	.2byte _021D0EF4 - _021D0EE2 - 2 @ case 2
	.2byte _021D0EFC - _021D0EE2 - 2 @ case 3
	.2byte _021D0EF8 - _021D0EE2 - 2 @ case 4
_021D0EEC:
	ldr r0, _021D0F00 @ =ov19_021D0FF0
	pop {r3, pc}
_021D0EF0:
	ldr r0, _021D0F04 @ =ov19_021D1270
	pop {r3, pc}
_021D0EF4:
	ldr r0, _021D0F08 @ =ov19_021D15C0
	pop {r3, pc}
_021D0EF8:
	ldr r0, _021D0F0C @ =ov19_021D17AC
	pop {r3, pc}
_021D0EFC:
	ldr r0, _021D0F10 @ =ov19_021D19B8
	pop {r3, pc}
	.align 2, 0
_021D0F00: .4byte ov19_021D0FF0
_021D0F04: .4byte ov19_021D1270
_021D0F08: .4byte ov19_021D15C0
_021D0F0C: .4byte ov19_021D17AC
_021D0F10: .4byte ov19_021D19B8
	thumb_func_end ov19_021D0ECC

	thumb_func_start ov19_021D0F14
ov19_021D0F14: @ 0x021D0F14
	movs r1, #0x46
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	movs r2, #1
	str r2, [r0, #8]
	bx lr
	thumb_func_end ov19_021D0F14

	thumb_func_start ov19_021D0F20
ov19_021D0F20: @ 0x021D0F20
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021D0F36
	cmp r0, #1
	beq _021D0F4A
	cmp r0, #2
	beq _021D0F6E
	pop {r3, r4, r5, pc}
_021D0F36:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl ov19_021D6594
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021D0F4A:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl ov19_021D6600
	cmp r0, #0
	beq _021D0F84
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl ov19_021D6594
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021D0F6E:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl ov19_021D6600
	cmp r0, #0
	beq _021D0F84
	adds r0, r5, #0
	bl ov19_021D0EC0
_021D0F84:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021D0F20

	thumb_func_start ov19_021D0F88
ov19_021D0F88: @ 0x021D0F88
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021D0F9E
	cmp r0, #1
	beq _021D0FB2
	cmp r0, #2
	beq _021D0FD6
	pop {r3, r4, r5, pc}
_021D0F9E:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl ov19_021D6594
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021D0FB2:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl ov19_021D6600
	cmp r0, #0
	beq _021D0FEC
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #2
	bl ov19_021D6594
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021D0FD6:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #2
	bl ov19_021D6600
	cmp r0, #0
	beq _021D0FEC
	adds r0, r5, #0
	bl ov19_021D0EC0
_021D0FEC:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021D0F88

	thumb_func_start ov19_021D0FF0
ov19_021D0FF0: @ 0x021D0FF0
	push {r4, lr}
	movs r1, #0x1b
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r2, [r4, r1]
	cmp r2, #0
	beq _021D100C
	cmp r2, #1
	bne _021D1004
	b _021D11DE
_021D1004:
	cmp r2, #2
	bne _021D100A
	b _021D11FC
_021D100A:
	b _021D1210
_021D100C:
	ldr r1, _021D1214 @ =0x021BF67C
	ldr r2, [r1, #0x48]
	movs r1, #1
	tst r1, r2
	beq _021D103C
	bl ov19_021D5E4C
	cmp r0, #0
	beq _021D103C
	adds r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #3
	beq _021D1032
	ldr r1, _021D1218 @ =ov19_021D20A4
	adds r0, r4, #0
	bl ov19_021D0EB0
	b _021D1210
_021D1032:
	ldr r1, _021D121C @ =ov19_021D2308
	adds r0, r4, #0
	bl ov19_021D0EB0
	b _021D1210
_021D103C:
	ldr r0, _021D1214 @ =0x021BF67C
	movs r2, #2
	ldr r1, [r0, #0x48]
	tst r1, r2
	beq _021D1050
	ldr r1, _021D1220 @ =ov19_021D1F5C
	adds r0, r4, #0
	bl ov19_021D0EB0
	b _021D1210
_021D1050:
	ldr r0, [r0, #0x44]
	lsls r1, r2, #8
	tst r1, r0
	beq _021D1068
	adds r0, r4, #0
	bl ov19_021D5CE8
	ldr r1, _021D1224 @ =ov19_021D45A8
	adds r0, r4, #0
	bl ov19_021D0EB0
	b _021D1210
_021D1068:
	adds r2, #0xfe
	adds r1, r0, #0
	tst r1, r2
	beq _021D1080
	adds r0, r4, #0
	bl ov19_021D5CBC
	ldr r1, _021D1224 @ =ov19_021D45A8
	adds r0, r4, #0
	bl ov19_021D0EB0
	b _021D1210
_021D1080:
	adds r1, r4, #0
	bl ov19_021D4F74
	cmp r0, #0
	beq _021D10B8
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #5
	bl ov19_021D6594
	adds r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D10AC
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
_021D10AC:
	movs r0, #0x1b
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _021D1210
_021D10B8:
	adds r0, r4, #0
	bl ov19_021D538C
	cmp r0, #0
	beq _021D10DA
	adds r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #4
	beq _021D1102
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D10DC
	cmp r0, #1
	beq _021D10E6
_021D10DA:
	b _021D11CE
_021D10DC:
	ldr r1, _021D1228 @ =ov19_021D4640
	adds r0, r4, #0
	bl ov19_021D0EB0
	b _021D11CE
_021D10E6:
	adds r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #3
	beq _021D10FA
	ldr r1, _021D122C @ =ov19_021D4938
	adds r0, r4, #0
	bl ov19_021D0EB0
	b _021D11CE
_021D10FA:
	ldr r0, _021D1230 @ =0x000005F3
	bl FUN_02005748
	b _021D11CE
_021D1102:
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D1116
	cmp r0, #1
	beq _021D1164
	cmp r0, #2
	beq _021D11B2
	b _021D11CE
_021D1116:
	adds r0, r4, #0
	bl ov19_021D5F9C
	cmp r0, #0
	bne _021D115C
	adds r0, r4, #0
	bl ov19_021D5E34
	cmp r0, #1
	bne _021D115C
	ldr r0, _021D1234 @ =0x000005DD
	bl FUN_02005748
	adds r0, r4, #0
	bl ov19_021D5B70
	ldr r1, [r4, #8]
	adds r0, r4, #0
	adds r2, r4, #0
	bl ov19_021D5888
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x31
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
	movs r0, #1
	b _021D11D0
_021D115C:
	ldr r0, _021D1230 @ =0x000005F3
	bl FUN_02005748
	b _021D11CE
_021D1164:
	adds r0, r4, #0
	bl ov19_021D5F9C
	cmp r0, #1
	bne _021D11AA
	adds r0, r4, #0
	bl ov19_021D5E34
	cmp r0, #1
	bne _021D11AA
	ldr r0, _021D1234 @ =0x000005DD
	bl FUN_02005748
	adds r0, r4, #0
	bl ov19_021D5B70
	ldr r1, [r4, #8]
	adds r0, r4, #0
	adds r2, r4, #0
	bl ov19_021D5888
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x31
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
	movs r0, #1
	b _021D11D0
_021D11AA:
	ldr r0, _021D1230 @ =0x000005F3
	bl FUN_02005748
	b _021D11CE
_021D11B2:
	ldr r0, _021D1234 @ =0x000005DD
	bl FUN_02005748
	adds r0, r4, #0
	bl ov19_021D5B80
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x32
	bl ov19_021D6594
	movs r0, #1
	b _021D11D0
_021D11CE:
	movs r0, #0
_021D11D0:
	cmp r0, #0
	beq _021D1210
	movs r0, #0x1b
	movs r1, #2
	lsls r0, r0, #4
	str r1, [r4, r0]
	b _021D1210
_021D11DE:
	subs r1, #0x9c
	ldr r0, [r4, r1]
	movs r1, #5
	bl ov19_021D6600
	cmp r0, #0
	beq _021D1210
	adds r0, r4, #0
	bl ov19_021D0ECC
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov19_021D0EA0
	b _021D1210
_021D11FC:
	subs r1, #0x9c
	ldr r0, [r4, r1]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D1210
	movs r0, #0x1b
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
_021D1210:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_021D1214: .4byte 0x021BF67C
_021D1218: .4byte ov19_021D20A4
_021D121C: .4byte ov19_021D2308
_021D1220: .4byte ov19_021D1F5C
_021D1224: .4byte ov19_021D45A8
_021D1228: .4byte ov19_021D4640
_021D122C: .4byte ov19_021D4938
_021D1230: .4byte 0x000005F3
_021D1234: .4byte 0x000005DD
	thumb_func_end ov19_021D0FF0

	thumb_func_start ov19_021D1238
ov19_021D1238: @ 0x021D1238
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov19_021D5E74
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0207D2D0
	cmp r0, #0
	beq _021D1256
	movs r0, #0x1e
	str r0, [r4]
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D1256:
	adds r0, r5, #0
	movs r1, #0xa2
	movs r2, #0
	bl ov19_021D5FD0
	cmp r0, #0
	beq _021D126C
	movs r0, #0x1d
	str r0, [r4]
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D126C:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D1238

	thumb_func_start ov19_021D1270
ov19_021D1270: @ 0x021D1270
	push {r3, r4, lr}
	sub sp, #4
	movs r1, #0x1b
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r2, [r4, r1]
	cmp r2, #6
	bhi _021D12C0
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021D128C: @ jump table
	.2byte _021D129A - _021D128C - 2 @ case 0
	.2byte _021D1474 - _021D128C - 2 @ case 1
	.2byte _021D148E - _021D128C - 2 @ case 2
	.2byte _021D14F8 - _021D128C - 2 @ case 3
	.2byte _021D1538 - _021D128C - 2 @ case 4
	.2byte _021D1556 - _021D128C - 2 @ case 5
	.2byte _021D15A4 - _021D128C - 2 @ case 6
_021D129A:
	ldr r1, _021D1584 @ =0x021BF67C
	movs r2, #1
	ldr r1, [r1, #0x48]
	tst r2, r1
	beq _021D12E0
	bl ov19_021D5E2C
	cmp r0, #6
	bne _021D12B6
	movs r0, #0x1b
	movs r1, #2
	lsls r0, r0, #4
	str r1, [r4, r0]
	b _021D15B8
_021D12B6:
	adds r0, r4, #0
	bl ov19_021D5E4C
	cmp r0, #0
	bne _021D12C2
_021D12C0:
	b _021D15B8
_021D12C2:
	adds r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #3
	beq _021D12D6
	ldr r1, _021D1588 @ =ov19_021D20A4
	adds r0, r4, #0
	bl ov19_021D0EB0
	b _021D15B8
_021D12D6:
	ldr r1, _021D158C @ =ov19_021D2308
	adds r0, r4, #0
	bl ov19_021D0EB0
	b _021D15B8
_021D12E0:
	movs r2, #2
	tst r2, r1
	bne _021D130A
	movs r2, #0x10
	tst r1, r2
	beq _021D12F6
	bl ov19_021D5E2C
	movs r1, #1
	tst r0, r1
	bne _021D130A
_021D12F6:
	ldr r0, _021D1584 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0x10
	tst r0, r1
	beq _021D1314
	adds r0, r4, #0
	bl ov19_021D5E2C
	cmp r0, #6
	bne _021D1314
_021D130A:
	movs r0, #0x1b
	movs r1, #2
	lsls r0, r0, #4
	str r1, [r4, r0]
	b _021D15B8
_021D1314:
	ldr r0, _021D1584 @ =0x021BF67C
	adds r1, r4, #0
	ldr r0, [r0, #0x44]
	bl ov19_021D4F74
	cmp r0, #0
	beq _021D134E
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #5
	bl ov19_021D6594
	adds r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D1344
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
_021D1344:
	movs r0, #0x1b
	movs r1, #1
	lsls r0, r0, #4
	str r1, [r4, r0]
	b _021D15B8
_021D134E:
	adds r0, r4, #0
	bl ov19_021D538C
	cmp r0, #0
	beq _021D1370
	adds r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #4
	beq _021D1398
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D1372
	cmp r0, #1
	beq _021D137C
_021D1370:
	b _021D1464
_021D1372:
	ldr r1, _021D1590 @ =ov19_021D4640
	adds r0, r4, #0
	bl ov19_021D0EB0
	b _021D1464
_021D137C:
	adds r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #3
	beq _021D1390
	ldr r1, _021D1594 @ =ov19_021D4938
	adds r0, r4, #0
	bl ov19_021D0EB0
	b _021D1464
_021D1390:
	ldr r0, _021D1598 @ =0x000005F3
	bl FUN_02005748
	b _021D1464
_021D1398:
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D13AC
	cmp r0, #1
	beq _021D13FA
	cmp r0, #2
	beq _021D1448
	b _021D1464
_021D13AC:
	adds r0, r4, #0
	bl ov19_021D5F9C
	cmp r0, #0
	bne _021D13F2
	adds r0, r4, #0
	bl ov19_021D5E34
	cmp r0, #1
	bne _021D13F2
	ldr r0, _021D159C @ =0x000005DD
	bl FUN_02005748
	adds r0, r4, #0
	bl ov19_021D5B70
	ldr r1, [r4, #8]
	adds r0, r4, #0
	adds r2, r4, #0
	bl ov19_021D5888
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x31
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
	movs r0, #1
	b _021D1466
_021D13F2:
	ldr r0, _021D1598 @ =0x000005F3
	bl FUN_02005748
	b _021D1464
_021D13FA:
	adds r0, r4, #0
	bl ov19_021D5F9C
	cmp r0, #1
	bne _021D1440
	adds r0, r4, #0
	bl ov19_021D5E34
	cmp r0, #1
	bne _021D1440
	ldr r0, _021D159C @ =0x000005DD
	bl FUN_02005748
	adds r0, r4, #0
	bl ov19_021D5B70
	ldr r1, [r4, #8]
	adds r0, r4, #0
	adds r2, r4, #0
	bl ov19_021D5888
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x31
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
	movs r0, #1
	b _021D1466
_021D1440:
	ldr r0, _021D1598 @ =0x000005F3
	bl FUN_02005748
	b _021D1464
_021D1448:
	ldr r0, _021D159C @ =0x000005DD
	bl FUN_02005748
	adds r0, r4, #0
	bl ov19_021D5B80
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x32
	bl ov19_021D6594
	movs r0, #1
	b _021D1466
_021D1464:
	movs r0, #0
_021D1466:
	cmp r0, #0
	beq _021D1482
	movs r0, #0x1b
	movs r1, #6
	lsls r0, r0, #4
	str r1, [r4, r0]
	b _021D15B8
_021D1474:
	subs r1, #0x9c
	ldr r0, [r4, r1]
	movs r1, #5
	bl ov19_021D6600
	cmp r0, #0
	bne _021D1484
_021D1482:
	b _021D15B8
_021D1484:
	movs r0, #0x1b
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
	b _021D15B8
_021D148E:
	bl ov19_021D5E08
	cmp r0, #0
	bne _021D14A8
	ldr r1, _021D15A0 @ =ov19_021D1F5C
	adds r0, r4, #0
	bl ov19_021D0EB0
	movs r0, #0x1b
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
	b _021D15B8
_021D14A8:
	adds r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #1
	beq _021D14E2
	adds r0, r4, #0
	add r1, sp, #0
	bl ov19_021D1238
	cmp r0, #0
	beq _021D14E2
	ldr r0, _021D1598 @ =0x000005F3
	bl FUN_02005748
	ldr r1, [sp]
	adds r0, r4, #0
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	movs r0, #0x1b
	movs r1, #5
	lsls r0, r0, #4
	str r1, [r4, r0]
	b _021D15B8
_021D14E2:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x24
	bl ov19_021D6594
	movs r0, #0x1b
	movs r1, #3
	lsls r0, r0, #4
	str r1, [r4, r0]
	b _021D15B8
_021D14F8:
	subs r1, #0x9c
	ldr r0, [r4, r1]
	movs r1, #0x24
	bl ov19_021D6600
	cmp r0, #0
	beq _021D15B8
	adds r0, r4, #0
	bl ov19_021D52D0
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #5
	bl ov19_021D6594
	adds r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D152E
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
_021D152E:
	movs r0, #0x1b
	movs r1, #4
	lsls r0, r0, #4
	str r1, [r4, r0]
	b _021D15B8
_021D1538:
	subs r1, #0x9c
	ldr r0, [r4, r1]
	movs r1, #5
	bl ov19_021D6600
	cmp r0, #0
	beq _021D15B8
	adds r0, r4, #0
	bl ov19_021D0ECC
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov19_021D0EA0
	b _021D15B8
_021D1556:
	subs r1, #0x9c
	ldr r0, [r4, r1]
	movs r1, #0x18
	bl ov19_021D6600
	cmp r0, #0
	beq _021D15B8
	ldr r0, _021D1584 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _021D15B8
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #0x1b
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
	b _021D15B8
	.align 2, 0
_021D1584: .4byte 0x021BF67C
_021D1588: .4byte ov19_021D20A4
_021D158C: .4byte ov19_021D2308
_021D1590: .4byte ov19_021D4640
_021D1594: .4byte ov19_021D4938
_021D1598: .4byte 0x000005F3
_021D159C: .4byte 0x000005DD
_021D15A0: .4byte ov19_021D1F5C
_021D15A4:
	subs r1, #0x9c
	ldr r0, [r4, r1]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D15B8
	movs r0, #0x1b
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
_021D15B8:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov19_021D1270

	thumb_func_start ov19_021D15C0
ov19_021D15C0: @ 0x021D15C0
	push {r3, r4, r5, lr}
	movs r3, #0x1b
	adds r4, r0, #0
	lsls r3, r3, #4
	ldr r1, [r4, r3]
	cmp r1, #0
	beq _021D15D6
	cmp r1, #1
	bne _021D15D4
	b _021D176C
_021D15D4:
	b _021D1788
_021D15D6:
	ldr r5, _021D178C @ =0x021BF67C
	adds r2, r3, #0
	ldr r1, [r5, #0x44]
	adds r2, #0x70
	tst r2, r1
	beq _021D15F0
	bl ov19_021D5CE8
	ldr r1, _021D1790 @ =ov19_021D45A8
	adds r0, r4, #0
	bl ov19_021D0EB0
	b _021D1788
_021D15F0:
	subs r3, #0xa0
	adds r2, r1, #0
	tst r2, r3
	beq _021D1606
	bl ov19_021D5CBC
	ldr r1, _021D1790 @ =ov19_021D45A8
	adds r0, r4, #0
	bl ov19_021D0EB0
	b _021D1788
_021D1606:
	ldr r3, [r5, #0x48]
	movs r2, #1
	tst r2, r3
	beq _021D1616
	ldr r1, _021D1794 @ =ov19_021D2694
	bl ov19_021D0EB0
	b _021D1788
_021D1616:
	movs r2, #2
	tst r2, r3
	beq _021D1624
	ldr r1, _021D1798 @ =ov19_021D1F5C
	bl ov19_021D0EB0
	b _021D1788
_021D1624:
	adds r0, r1, #0
	adds r1, r4, #0
	bl ov19_021D4F74
	cmp r0, #0
	beq _021D165C
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #5
	bl ov19_021D6594
	adds r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D1652
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
_021D1652:
	movs r0, #0x1b
	movs r1, #1
	lsls r0, r0, #4
	str r1, [r4, r0]
	b _021D1788
_021D165C:
	adds r0, r4, #0
	bl ov19_021D538C
	cmp r0, #0
	beq _021D167E
	adds r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #4
	beq _021D16A6
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D1680
	cmp r0, #1
	beq _021D168A
_021D167E:
	b _021D1788
_021D1680:
	ldr r1, _021D179C @ =ov19_021D4640
	adds r0, r4, #0
	bl ov19_021D0EB0
	b _021D1788
_021D168A:
	adds r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #3
	beq _021D169E
	ldr r1, _021D17A0 @ =ov19_021D4938
	adds r0, r4, #0
	bl ov19_021D0EB0
	b _021D1788
_021D169E:
	ldr r0, _021D17A4 @ =0x000005F3
	bl FUN_02005748
	b _021D1788
_021D16A6:
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D16BA
	cmp r0, #1
	beq _021D1706
	cmp r0, #2
	beq _021D1752
	b _021D1788
_021D16BA:
	adds r0, r4, #0
	bl ov19_021D5F9C
	cmp r0, #0
	bne _021D16FE
	adds r0, r4, #0
	bl ov19_021D5E34
	cmp r0, #1
	bne _021D16FE
	ldr r0, _021D17A8 @ =0x000005DD
	bl FUN_02005748
	adds r0, r4, #0
	bl ov19_021D5B70
	ldr r1, [r4, #8]
	adds r0, r4, #0
	adds r2, r4, #0
	bl ov19_021D5888
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x31
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
	b _021D1788
_021D16FE:
	ldr r0, _021D17A4 @ =0x000005F3
	bl FUN_02005748
	b _021D1788
_021D1706:
	adds r0, r4, #0
	bl ov19_021D5F9C
	cmp r0, #1
	bne _021D174A
	adds r0, r4, #0
	bl ov19_021D5E34
	cmp r0, #1
	bne _021D174A
	ldr r0, _021D17A8 @ =0x000005DD
	bl FUN_02005748
	adds r0, r4, #0
	bl ov19_021D5B70
	ldr r1, [r4, #8]
	adds r0, r4, #0
	adds r2, r4, #0
	bl ov19_021D5888
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x31
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
	b _021D1788
_021D174A:
	ldr r0, _021D17A4 @ =0x000005F3
	bl FUN_02005748
	b _021D1788
_021D1752:
	ldr r0, _021D17A8 @ =0x000005DD
	bl FUN_02005748
	adds r0, r4, #0
	bl ov19_021D5B80
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x32
	bl ov19_021D6594
	b _021D1788
_021D176C:
	subs r3, #0x9c
	ldr r0, [r4, r3]
	movs r1, #5
	bl ov19_021D6600
	cmp r0, #0
	beq _021D1788
	adds r0, r4, #0
	bl ov19_021D0ECC
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov19_021D0EA0
_021D1788:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D178C: .4byte 0x021BF67C
_021D1790: .4byte ov19_021D45A8
_021D1794: .4byte ov19_021D2694
_021D1798: .4byte ov19_021D1F5C
_021D179C: .4byte ov19_021D4640
_021D17A0: .4byte ov19_021D4938
_021D17A4: .4byte 0x000005F3
_021D17A8: .4byte 0x000005DD
	thumb_func_end ov19_021D15C0

	thumb_func_start ov19_021D17AC
ov19_021D17AC: @ 0x021D17AC
	push {r3, r4, r5, lr}
	movs r1, #0x1b
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r2, [r4, r1]
	cmp r2, #0
	beq _021D17C8
	cmp r2, #1
	bne _021D17C0
	b _021D195E
_021D17C0:
	cmp r2, #2
	bne _021D17C6
	b _021D1976
_021D17C6:
	b _021D1992
_021D17C8:
	ldr r3, _021D1998 @ =0x021BF67C
	movs r1, #1
	ldr r5, [r3, #0x48]
	tst r1, r5
	beq _021D17DA
	ldr r1, _021D199C @ =ov19_021D1DEC
	bl ov19_021D0EB0
	b _021D1992
_021D17DA:
	movs r2, #2
	adds r1, r5, #0
	tst r1, r2
	beq _021D17EA
	ldr r1, _021D19A0 @ =ov19_021D1F5C
	bl ov19_021D0EB0
	b _021D1992
_021D17EA:
	ldr r3, [r3, #0x44]
	lsls r1, r2, #8
	tst r1, r3
	beq _021D1800
	bl ov19_021D5CE8
	ldr r1, _021D19A4 @ =ov19_021D45A8
	adds r0, r4, #0
	bl ov19_021D0EB0
	b _021D1992
_021D1800:
	adds r2, #0xfe
	adds r1, r3, #0
	tst r1, r2
	beq _021D1816
	bl ov19_021D5CBC
	ldr r1, _021D19A4 @ =ov19_021D45A8
	adds r0, r4, #0
	bl ov19_021D0EB0
	b _021D1992
_021D1816:
	adds r0, r3, #0
	adds r1, r4, #0
	bl ov19_021D4F74
	cmp r0, #0
	beq _021D184E
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #5
	bl ov19_021D6594
	adds r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D1844
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
_021D1844:
	movs r0, #0x1b
	movs r1, #2
	lsls r0, r0, #4
	str r1, [r4, r0]
	b _021D1992
_021D184E:
	adds r0, r4, #0
	bl ov19_021D538C
	cmp r0, #0
	beq _021D1870
	adds r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #4
	beq _021D1898
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D1872
	cmp r0, #1
	beq _021D187C
_021D1870:
	b _021D1992
_021D1872:
	ldr r1, _021D19A8 @ =ov19_021D4640
	adds r0, r4, #0
	bl ov19_021D0EB0
	b _021D1992
_021D187C:
	adds r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #3
	beq _021D1890
	ldr r1, _021D19AC @ =ov19_021D4938
	adds r0, r4, #0
	bl ov19_021D0EB0
	b _021D1992
_021D1890:
	ldr r0, _021D19B0 @ =0x000005F3
	bl FUN_02005748
	b _021D1992
_021D1898:
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D18AC
	cmp r0, #1
	beq _021D18F8
	cmp r0, #2
	beq _021D1944
	b _021D1992
_021D18AC:
	adds r0, r4, #0
	bl ov19_021D5F9C
	cmp r0, #0
	bne _021D18F0
	adds r0, r4, #0
	bl ov19_021D5E34
	cmp r0, #1
	bne _021D18F0
	ldr r0, _021D19B4 @ =0x000005DD
	bl FUN_02005748
	adds r0, r4, #0
	bl ov19_021D5B70
	ldr r1, [r4, #8]
	adds r0, r4, #0
	adds r2, r4, #0
	bl ov19_021D5888
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x31
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
	b _021D1992
_021D18F0:
	ldr r0, _021D19B0 @ =0x000005F3
	bl FUN_02005748
	b _021D1992
_021D18F8:
	adds r0, r4, #0
	bl ov19_021D5F9C
	cmp r0, #1
	bne _021D193C
	adds r0, r4, #0
	bl ov19_021D5E34
	cmp r0, #1
	bne _021D193C
	ldr r0, _021D19B4 @ =0x000005DD
	bl FUN_02005748
	adds r0, r4, #0
	bl ov19_021D5B70
	ldr r1, [r4, #8]
	adds r0, r4, #0
	adds r2, r4, #0
	bl ov19_021D5888
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x31
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
	b _021D1992
_021D193C:
	ldr r0, _021D19B0 @ =0x000005F3
	bl FUN_02005748
	b _021D1992
_021D1944:
	ldr r0, _021D19B4 @ =0x000005DD
	bl FUN_02005748
	adds r0, r4, #0
	bl ov19_021D5B80
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x32
	bl ov19_021D6594
	b _021D1992
_021D195E:
	subs r1, #0x9c
	ldr r0, [r4, r1]
	movs r1, #4
	bl ov19_021D6600
	cmp r0, #0
	beq _021D1992
	movs r0, #0x1b
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
	b _021D1992
_021D1976:
	subs r1, #0x9c
	ldr r0, [r4, r1]
	movs r1, #5
	bl ov19_021D6600
	cmp r0, #0
	beq _021D1992
	adds r0, r4, #0
	bl ov19_021D0ECC
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov19_021D0EA0
_021D1992:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D1998: .4byte 0x021BF67C
_021D199C: .4byte ov19_021D1DEC
_021D19A0: .4byte ov19_021D1F5C
_021D19A4: .4byte ov19_021D45A8
_021D19A8: .4byte ov19_021D4640
_021D19AC: .4byte ov19_021D4938
_021D19B0: .4byte 0x000005F3
_021D19B4: .4byte 0x000005DD
	thumb_func_end ov19_021D17AC

	thumb_func_start ov19_021D19B8
ov19_021D19B8: @ 0x021D19B8
	push {r3, r4, r5, lr}
	movs r1, #0x1b
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r2, [r4, r1]
	cmp r2, #5
	bhi _021D1AC0
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021D19D2: @ jump table
	.2byte _021D19DE - _021D19D2 - 2 @ case 0
	.2byte _021D1BAE - _021D19D2 - 2 @ case 1
	.2byte _021D1BD2 - _021D19D2 - 2 @ case 2
	.2byte _021D1C12 - _021D19D2 - 2 @ case 3
	.2byte _021D1C2A - _021D19D2 - 2 @ case 4
	.2byte _021D1C48 - _021D19D2 - 2 @ case 5
_021D19DE:
	ldr r3, _021D1C68 @ =0x021BF67C
	movs r1, #1
	ldr r5, [r3, #0x48]
	tst r1, r5
	beq _021D1A2A
	bl ov19_021D5E08
	cmp r0, #1
	beq _021D1A06
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x22
	bl ov19_021D6594
	movs r0, #0x1b
	movs r1, #1
	lsls r0, r0, #4
	str r1, [r4, r0]
	b _021D1C64
_021D1A06:
	ldr r0, _021D1C6C @ =0x000005F3
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0x12
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	movs r0, #0x1b
	movs r1, #5
	lsls r0, r0, #4
	str r1, [r4, r0]
	b _021D1C64
_021D1A2A:
	movs r2, #2
	adds r1, r5, #0
	tst r1, r2
	beq _021D1A3A
	ldr r1, _021D1C70 @ =ov19_021D1F5C
	bl ov19_021D0EB0
	b _021D1C64
_021D1A3A:
	ldr r3, [r3, #0x44]
	lsls r1, r2, #8
	tst r1, r3
	beq _021D1A50
	bl ov19_021D5CE8
	ldr r1, _021D1C74 @ =ov19_021D45A8
	adds r0, r4, #0
	bl ov19_021D0EB0
	b _021D1C64
_021D1A50:
	adds r2, #0xfe
	adds r1, r3, #0
	tst r1, r2
	beq _021D1A66
	bl ov19_021D5CBC
	ldr r1, _021D1C74 @ =ov19_021D45A8
	adds r0, r4, #0
	bl ov19_021D0EB0
	b _021D1C64
_021D1A66:
	adds r0, r3, #0
	adds r1, r4, #0
	bl ov19_021D4F74
	cmp r0, #0
	beq _021D1A9E
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #5
	bl ov19_021D6594
	adds r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D1A94
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
_021D1A94:
	movs r0, #0x1b
	movs r1, #4
	lsls r0, r0, #4
	str r1, [r4, r0]
	b _021D1C64
_021D1A9E:
	adds r0, r4, #0
	bl ov19_021D538C
	cmp r0, #0
	beq _021D1AC0
	adds r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #4
	beq _021D1AE8
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D1AC2
	cmp r0, #1
	beq _021D1ACC
_021D1AC0:
	b _021D1C64
_021D1AC2:
	ldr r1, _021D1C78 @ =ov19_021D4640
	adds r0, r4, #0
	bl ov19_021D0EB0
	b _021D1C64
_021D1ACC:
	adds r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #3
	beq _021D1AE0
	ldr r1, _021D1C7C @ =ov19_021D4938
	adds r0, r4, #0
	bl ov19_021D0EB0
	b _021D1C64
_021D1AE0:
	ldr r0, _021D1C6C @ =0x000005F3
	bl FUN_02005748
	b _021D1C64
_021D1AE8:
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D1AFC
	cmp r0, #1
	beq _021D1B48
	cmp r0, #2
	beq _021D1B94
	b _021D1C64
_021D1AFC:
	adds r0, r4, #0
	bl ov19_021D5F9C
	cmp r0, #0
	bne _021D1B40
	adds r0, r4, #0
	bl ov19_021D5E34
	cmp r0, #1
	bne _021D1B40
	ldr r0, _021D1C80 @ =0x000005DD
	bl FUN_02005748
	adds r0, r4, #0
	bl ov19_021D5B70
	ldr r1, [r4, #8]
	adds r0, r4, #0
	adds r2, r4, #0
	bl ov19_021D5888
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x31
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
	b _021D1C64
_021D1B40:
	ldr r0, _021D1C6C @ =0x000005F3
	bl FUN_02005748
	b _021D1C64
_021D1B48:
	adds r0, r4, #0
	bl ov19_021D5F9C
	cmp r0, #1
	bne _021D1B8C
	adds r0, r4, #0
	bl ov19_021D5E34
	cmp r0, #1
	bne _021D1B8C
	ldr r0, _021D1C80 @ =0x000005DD
	bl FUN_02005748
	adds r0, r4, #0
	bl ov19_021D5B70
	ldr r1, [r4, #8]
	adds r0, r4, #0
	adds r2, r4, #0
	bl ov19_021D5888
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x31
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
	b _021D1C64
_021D1B8C:
	ldr r0, _021D1C6C @ =0x000005F3
	bl FUN_02005748
	b _021D1C64
_021D1B94:
	ldr r0, _021D1C80 @ =0x000005DD
	bl FUN_02005748
	adds r0, r4, #0
	bl ov19_021D5B80
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x32
	bl ov19_021D6594
	b _021D1C64
_021D1BAE:
	subs r1, #0x9c
	ldr r0, [r4, r1]
	movs r1, #0x22
	bl ov19_021D6600
	cmp r0, #0
	beq _021D1C64
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x23
	bl ov19_021D6594
	movs r0, #0x1b
	movs r1, #2
	lsls r0, r0, #4
	str r1, [r4, r0]
	b _021D1C64
_021D1BD2:
	subs r1, #0x9c
	ldr r0, [r4, r1]
	movs r1, #0x23
	bl ov19_021D6600
	cmp r0, #0
	beq _021D1C64
	adds r0, r4, #0
	bl ov19_021D5290
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #5
	bl ov19_021D6594
	adds r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D1C08
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
_021D1C08:
	movs r0, #0x1b
	movs r1, #4
	lsls r0, r0, #4
	str r1, [r4, r0]
	b _021D1C64
_021D1C12:
	subs r1, #0x9c
	ldr r0, [r4, r1]
	movs r1, #4
	bl ov19_021D6600
	cmp r0, #0
	beq _021D1C64
	movs r0, #0x1b
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
	b _021D1C64
_021D1C2A:
	subs r1, #0x9c
	ldr r0, [r4, r1]
	movs r1, #5
	bl ov19_021D6600
	cmp r0, #0
	beq _021D1C64
	adds r0, r4, #0
	bl ov19_021D0ECC
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov19_021D0EA0
	b _021D1C64
_021D1C48:
	ldr r0, _021D1C68 @ =0x021BF67C
	ldr r2, [r0, #0x48]
	movs r0, #3
	tst r0, r2
	beq _021D1C64
	subs r1, #0x9c
	ldr r0, [r4, r1]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #0x1b
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
_021D1C64:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D1C68: .4byte 0x021BF67C
_021D1C6C: .4byte 0x000005F3
_021D1C70: .4byte ov19_021D1F5C
_021D1C74: .4byte ov19_021D45A8
_021D1C78: .4byte ov19_021D4640
_021D1C7C: .4byte ov19_021D4938
_021D1C80: .4byte 0x000005DD
	thumb_func_end ov19_021D19B8

	thumb_func_start ov19_021D1C84
ov19_021D1C84: @ 0x021D1C84
	push {r4, lr}
	adds r4, r0, #0
	bl ov19_021D5E38
	cmp r0, #2
	bne _021D1CC8
	movs r0, #0x4b
	ldr r1, [r4, #0x14]
	lsls r0, r0, #2
	str r1, [r4, r0]
	ldrb r0, [r4, #0x1f]
	cmp r0, #0
	beq _021D1CA2
	movs r0, #0
	b _021D1CA4
_021D1CA2:
	movs r0, #2
_021D1CA4:
	ldr r1, _021D1DA0 @ =0x0000013D
	movs r2, #1
	strb r0, [r4, r1]
	adds r0, r1, #2
	strb r2, [r4, r0]
	movs r2, #0
	adds r0, r1, #3
	strb r2, [r4, r0]
	adds r0, r1, #1
	strb r2, [r4, r0]
	adds r0, r1, #7
	strh r2, [r4, r0]
	adds r0, r1, #0
	adds r0, #0x67
	ldr r0, [r4, r0]
	subs r1, #0xd
	str r0, [r4, r1]
	b _021D1D4A
_021D1CC8:
	adds r0, r4, #0
	bl ov19_021D5E10
	cmp r0, #0
	bne _021D1D16
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0207999C
	adds r1, r0, #0
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r2, #0
	bl FUN_02079C9C
	movs r1, #0x4b
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r1, #0
	movs r2, #2
	adds r0, #0x11
	strb r2, [r4, r0]
	movs r0, #0x1e
	adds r1, #0x13
	strb r0, [r4, r1]
	adds r0, r4, #0
	bl ov19_021D5E24
	movs r1, #5
	lsls r1, r1, #6
	strb r0, [r4, r1]
	movs r2, #0
	subs r0, r1, #2
	strb r2, [r4, r0]
	adds r0, r1, #4
	strh r2, [r4, r0]
	b _021D1D4A
_021D1D16:
	movs r1, #0x49
	lsls r1, r1, #2
	adds r0, r1, #0
	ldr r2, [r4, r1]
	adds r0, #8
	str r2, [r4, r0]
	adds r0, r1, #0
	movs r2, #1
	adds r0, #0x19
	strb r2, [r4, r0]
	ldr r0, [r4, r1]
	bl FUN_0207A0F8
	ldr r1, _021D1DA4 @ =0x0000013F
	strb r0, [r4, r1]
	adds r0, r4, #0
	bl ov19_021D5E2C
	movs r1, #5
	lsls r1, r1, #6
	strb r0, [r4, r1]
	movs r2, #0
	subs r0, r1, #2
	strb r2, [r4, r0]
	adds r0, r1, #4
	strh r2, [r4, r0]
_021D1D4A:
	movs r0, #0x55
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	subs r0, #0x38
	ldr r0, [r4, r0]
	bl FUN_0207A274
	movs r1, #0x52
	lsls r1, r1, #2
	str r0, [r4, r1]
	subs r1, #0x2c
	ldr r0, [r4, r1]
	bl FUN_0208C324
	movs r1, #0x56
	lsls r1, r1, #2
	str r0, [r4, r1]
	subs r1, #0x3c
	ldr r0, [r4, r1]
	bl FUN_0202D79C
	movs r1, #0x53
	lsls r1, r1, #2
	str r0, [r4, r1]
	subs r1, #0x20
	adds r0, r4, r1
	ldr r1, _021D1DA8 @ =0x021DFE38
	bl FUN_0208D720
	movs r0, #0x47
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02025E38
	adds r1, r0, #0
	movs r0, #0x4b
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0208E9C0
	pop {r4, pc}
	nop
_021D1DA0: .4byte 0x0000013D
_021D1DA4: .4byte 0x0000013F
_021D1DA8: .4byte 0x021DFE38
	thumb_func_end ov19_021D1C84

	thumb_func_start ov19_021D1DAC
ov19_021D1DAC: @ 0x021D1DAC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x1b
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021D1DC0
	cmp r1, #1
	beq _021D1DD6
	b _021D1DE6
_021D1DC0:
	subs r0, #0x9c
	ldr r0, [r4, r0]
	movs r1, #0x33
	bl ov19_021D6594
	movs r0, #0x1b
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _021D1DE6
_021D1DD6:
	subs r0, #0x9c
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D1DE6
	movs r0, #1
	pop {r4, pc}
_021D1DE6:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021D1DAC

	thumb_func_start ov19_021D1DEC
ov19_021D1DEC: @ 0x021D1DEC
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #6
	bls _021D1DFA
	b _021D1F46
_021D1DFA:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D1E06: @ jump table
	.2byte _021D1E14 - _021D1E06 - 2 @ case 0
	.2byte _021D1E6C - _021D1E06 - 2 @ case 1
	.2byte _021D1EA4 - _021D1E06 - 2 @ case 2
	.2byte _021D1F46 - _021D1E06 - 2 @ case 3
	.2byte _021D1F00 - _021D1E06 - 2 @ case 4
	.2byte _021D1F14 - _021D1E06 - 2 @ case 5
	.2byte _021D1F30 - _021D1E06 - 2 @ case 6
_021D1E14:
	bl ov19_021D5E08
	cmp r0, #3
	bne _021D1E30
	adds r0, r4, #0
	bl ov19_021D5F7C
	cmp r0, #0
	beq _021D1E30
	ldr r1, _021D1F48 @ =ov19_021D4184
	adds r0, r4, #0
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D1E30:
	adds r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #1
	beq _021D1E5A
	ldr r0, _021D1F4C @ =0x000005F3
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0x11
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	movs r0, #4
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D1E5A:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x22
	bl ov19_021D6594
	movs r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D1E6C:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x22
	bl ov19_021D6600
	cmp r0, #0
	beq _021D1F46
	ldr r0, _021D1F50 @ =0x000005DD
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0xb
	bl ov19_021D5408
	adds r0, r4, #0
	movs r1, #1
	bl ov19_021DF964
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x19
	bl ov19_021D6594
	movs r0, #2
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D1EA4:
	bl ov19_021DFD2C
	cmp r0, #0x36
	bgt _021D1EC4
	bge _021D1EF0
	movs r2, #0
	mvns r2, r2
	cmp r0, r2
	bgt _021D1F46
	subs r1, r2, #1
	cmp r0, r1
	blt _021D1F46
	beq _021D1ECA
	cmp r0, r2
	beq _021D1ED8
	pop {r3, r4, r5, pc}
_021D1EC4:
	cmp r0, #0x37
	beq _021D1ED8
	pop {r3, r4, r5, pc}
_021D1ECA:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1c
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D1ED8:
	ldr r0, _021D1F50 @ =0x000005DD
	bl FUN_02005748
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #6
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D1EF0:
	ldr r1, _021D1F54 @ =ov19_021D1DAC
	adds r0, r4, #0
	bl ov19_021D0EA0
	adds r0, r4, #0
	bl ov19_021D0EC0
	pop {r3, r4, r5, pc}
_021D1F00:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x19
	bl ov19_021D6600
	cmp r0, #0
	beq _021D1F46
	movs r0, #5
	str r0, [r5]
_021D1F14:
	ldr r0, _021D1F58 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _021D1F46
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #6
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D1F30:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6600
	cmp r0, #0
	beq _021D1F46
	adds r0, r4, #0
	bl ov19_021D0EC0
_021D1F46:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D1F48: .4byte ov19_021D4184
_021D1F4C: .4byte 0x000005F3
_021D1F50: .4byte 0x000005DD
_021D1F54: .4byte ov19_021D1DAC
_021D1F58: .4byte 0x021BF67C
	thumb_func_end ov19_021D1DEC

	thumb_func_start ov19_021D1F5C
ov19_021D1F5C: @ 0x021D1F5C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #5
	bls _021D1F6A
	b _021D208C
_021D1F6A:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D1F76: @ jump table
	.2byte _021D1F82 - _021D1F76 - 2 @ case 0
	.2byte _021D208C - _021D1F76 - 2 @ case 1
	.2byte _021D2046 - _021D1F76 - 2 @ case 2
	.2byte _021D205A - _021D1F76 - 2 @ case 3
	.2byte _021D2076 - _021D1F76 - 2 @ case 4
	.2byte _021D1FF0 - _021D1F76 - 2 @ case 5
_021D1F82:
	bl ov19_021D5E38
	cmp r0, #1
	beq _021D1FAA
	ldr r0, _021D2090 @ =0x000005F3
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0x11
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	movs r0, #2
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D1FAA:
	adds r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #3
	bne _021D1FC8
	adds r0, r4, #0
	bl ov19_021D5F7C
	cmp r0, #0
	beq _021D1FC8
	ldr r1, _021D2094 @ =ov19_021D4184
	adds r0, r4, #0
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D1FC8:
	ldr r0, _021D2098 @ =0x000005DD
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0xc
	bl ov19_021D5408
	adds r0, r4, #0
	movs r1, #0
	bl ov19_021DF964
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x19
	bl ov19_021D6594
	movs r0, #5
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D1FF0:
	bl ov19_021DFD2C
	cmp r0, #0x36
	bgt _021D2010
	bge _021D2034
	movs r2, #0
	mvns r2, r2
	cmp r0, r2
	bgt _021D208C
	subs r1, r2, #1
	cmp r0, r1
	blt _021D208C
	beq _021D2016
	cmp r0, r2
	beq _021D2024
	pop {r3, r4, r5, pc}
_021D2010:
	cmp r0, #0x37
	beq _021D2024
	pop {r3, r4, r5, pc}
_021D2016:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1c
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D2024:
	ldr r1, _021D209C @ =ov19_021D1DAC
	adds r0, r4, #0
	bl ov19_021D0EA0
	adds r0, r4, #0
	bl ov19_021D0EC0
	pop {r3, r4, r5, pc}
_021D2034:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #4
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2046:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x19
	bl ov19_021D6600
	cmp r0, #0
	beq _021D208C
	movs r0, #3
	str r0, [r5]
_021D205A:
	ldr r0, _021D20A0 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _021D208C
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #4
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2076:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6600
	cmp r0, #0
	beq _021D208C
	adds r0, r4, #0
	bl ov19_021D0EC0
_021D208C:
	pop {r3, r4, r5, pc}
	nop
_021D2090: .4byte 0x000005F3
_021D2094: .4byte ov19_021D4184
_021D2098: .4byte 0x000005DD
_021D209C: .4byte ov19_021D1DAC
_021D20A0: .4byte 0x021BF67C
	thumb_func_end ov19_021D1F5C

	thumb_func_start ov19_021D20A4
ov19_021D20A4: @ 0x021D20A4
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #5
	bhi _021D2196
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D20BC: @ jump table
	.2byte _021D20C8 - _021D20BC - 2 @ case 0
	.2byte _021D211C - _021D20BC - 2 @ case 1
	.2byte _021D2130 - _021D20BC - 2 @ case 2
	.2byte _021D218A - _021D20BC - 2 @ case 3
	.2byte _021D22A8 - _021D20BC - 2 @ case 4
	.2byte _021D22C0 - _021D20BC - 2 @ case 5
_021D20C8:
	bl ov19_021D5E9C
	adds r2, r0, #0
	movs r0, #0x67
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200B5CC
	adds r0, r4, #0
	movs r1, #0
	bl ov19_021D5408
	adds r0, r4, #0
	bl ov19_021DF990
	adds r0, r4, #0
	bl ov19_021D5EE0
	cmp r0, #0
	beq _021D2104
	adds r0, r4, #0
	bl ov19_021DFDEC
	movs r1, #0x6e
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2104:
	ldr r0, _021D22D8 @ =0x000005DD
	bl FUN_02005748
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x19
	bl ov19_021D6594
	movs r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D211C:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x19
	bl ov19_021D6600
	cmp r0, #0
	beq _021D2196
	movs r0, #2
	str r0, [r5]
_021D2130:
	adds r0, r4, #0
	bl ov19_021DFD2C
	movs r1, #0x6e
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0
	ldr r2, [r4, r1]
	mvns r0, r0
	cmp r2, r0
	bgt _021D215A
	subs r3, r0, #2
	cmp r2, r3
	blt _021D2184
	beq _021D2196
	subs r3, r0, #1
	cmp r2, r3
	beq _021D2160
	cmp r2, r0
	beq _021D216C
	b _021D2184
_021D215A:
	cmp r2, #0x2b
	beq _021D216C
	b _021D2184
_021D2160:
	subs r1, #0xa4
	ldr r0, [r4, r1]
	movs r1, #0x1c
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D216C:
	ldr r0, _021D22D8 @ =0x000005DD
	bl FUN_02005748
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #4
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2184:
	movs r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D218A:
	movs r1, #0x6e
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	subs r2, #0x22
	cmp r2, #0x13
	bls _021D2198
_021D2196:
	b _021D22D4
_021D2198:
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021D21A4: @ jump table
	.2byte _021D21CC - _021D21A4 - 2 @ case 0
	.2byte _021D21FE - _021D21A4 - 2 @ case 1
	.2byte _021D2212 - _021D21A4 - 2 @ case 2
	.2byte _021D2246 - _021D21A4 - 2 @ case 3
	.2byte _021D2226 - _021D21A4 - 2 @ case 4
	.2byte _021D222E - _021D21A4 - 2 @ case 5
	.2byte _021D224E - _021D21A4 - 2 @ case 6
	.2byte _021D2236 - _021D21A4 - 2 @ case 7
	.2byte _021D223E - _021D21A4 - 2 @ case 8
	.2byte _021D22D4 - _021D21A4 - 2 @ case 9
	.2byte _021D22D4 - _021D21A4 - 2 @ case 10
	.2byte _021D22D4 - _021D21A4 - 2 @ case 11
	.2byte _021D22D4 - _021D21A4 - 2 @ case 12
	.2byte _021D22D4 - _021D21A4 - 2 @ case 13
	.2byte _021D22D4 - _021D21A4 - 2 @ case 14
	.2byte _021D22D4 - _021D21A4 - 2 @ case 15
	.2byte _021D22D4 - _021D21A4 - 2 @ case 16
	.2byte _021D22D4 - _021D21A4 - 2 @ case 17
	.2byte _021D226A - _021D21A4 - 2 @ case 18
	.2byte _021D226A - _021D21A4 - 2 @ case 19
_021D21CC:
	bl ov19_021D5E10
	cmp r0, #0
	bne _021D21E8
	adds r0, r4, #0
	bl ov19_021D5EE0
	cmp r0, #1
	bne _021D21E8
	ldr r1, _021D22DC @ =ov19_021D2B54
	adds r0, r4, #0
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D21E8:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	ldr r1, _021D22E0 @ =ov19_021D2E1C
	adds r0, r4, #0
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D21FE:
	subs r1, #0xa4
	ldr r0, [r4, r1]
	movs r1, #0x1a
	bl ov19_021D6594
	ldr r1, _021D22E4 @ =ov19_021D2F14
	adds r0, r4, #0
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D2212:
	subs r1, #0xa4
	ldr r0, [r4, r1]
	movs r1, #0x1a
	bl ov19_021D6594
	ldr r1, _021D22E8 @ =ov19_021D3010
	adds r0, r4, #0
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D2226:
	ldr r1, _021D22EC @ =ov19_021D30D0
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D222E:
	ldr r1, _021D22F0 @ =ov19_021D3294
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D2236:
	ldr r1, _021D22F4 @ =ov19_021D2A5C
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D223E:
	ldr r1, _021D22F8 @ =ov19_021D35F8
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D2246:
	ldr r1, _021D22FC @ =ov19_021D3C28
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D224E:
	bl ov19_021D5E74
	cmp r0, #0
	bne _021D2260
	ldr r1, _021D2300 @ =ov19_021D3D44
	adds r0, r4, #0
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D2260:
	ldr r1, _021D2304 @ =ov19_021D3FB0
	adds r0, r4, #0
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D226A:
	bl ov19_021D5B70
	ldr r1, [r4, #8]
	adds r0, r4, #0
	adds r2, r4, #0
	bl ov19_021D5888
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x30
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
	ldr r0, _021D22D8 @ =0x000005DD
	bl FUN_02005748
	movs r0, #5
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D22A8:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6600
	cmp r0, #0
	beq _021D22D4
	adds r0, r4, #0
	bl ov19_021D0EC0
	pop {r3, r4, r5, pc}
_021D22C0:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D22D4
	adds r0, r4, #0
	bl ov19_021D0EC0
_021D22D4:
	pop {r3, r4, r5, pc}
	nop
_021D22D8: .4byte 0x000005DD
_021D22DC: .4byte ov19_021D2B54
_021D22E0: .4byte ov19_021D2E1C
_021D22E4: .4byte ov19_021D2F14
_021D22E8: .4byte ov19_021D3010
_021D22EC: .4byte ov19_021D30D0
_021D22F0: .4byte ov19_021D3294
_021D22F4: .4byte ov19_021D2A5C
_021D22F8: .4byte ov19_021D35F8
_021D22FC: .4byte ov19_021D3C28
_021D2300: .4byte ov19_021D3D44
_021D2304: .4byte ov19_021D3FB0
	thumb_func_end ov19_021D20A4

	thumb_func_start ov19_021D2308
ov19_021D2308: @ 0x021D2308
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #7
	bls _021D2316
	b _021D2672
_021D2316:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D2322: @ jump table
	.2byte _021D2332 - _021D2322 - 2 @ case 0
	.2byte _021D23DC - _021D2322 - 2 @ case 1
	.2byte _021D23F0 - _021D2322 - 2 @ case 2
	.2byte _021D2450 - _021D2322 - 2 @ case 3
	.2byte _021D25FE - _021D2322 - 2 @ case 4
	.2byte _021D2616 - _021D2322 - 2 @ case 5
	.2byte _021D2642 - _021D2322 - 2 @ case 6
	.2byte _021D2658 - _021D2322 - 2 @ case 7
_021D2332:
	bl ov19_021D5F7C
	adds r2, r0, #0
	beq _021D2350
	movs r0, #0x67
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200B70C
	adds r0, r4, #0
	movs r1, #0x19
	bl ov19_021D5408
	b _021D2378
_021D2350:
	adds r0, r4, #0
	bl ov19_021D5E74
	adds r2, r0, #0
	beq _021D2370
	movs r0, #0x67
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200B70C
	adds r0, r4, #0
	movs r1, #0x19
	bl ov19_021D5408
	b _021D2378
_021D2370:
	adds r0, r4, #0
	movs r1, #0x1c
	bl ov19_021D5408
_021D2378:
	adds r0, r4, #0
	bl ov19_021DFAD0
	adds r0, r4, #0
	bl ov19_021D5FC8
	cmp r0, #0
	beq _021D23A8
	ldr r0, _021D2674 @ =0x000005F3
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0x22
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	movs r0, #7
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D23A8:
	adds r0, r4, #0
	bl ov19_021D5EE0
	cmp r0, #0
	beq _021D23C4
	adds r0, r4, #0
	bl ov19_021DFDEC
	movs r1, #0x6e
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D23C4:
	ldr r0, _021D2678 @ =0x000005DD
	bl FUN_02005748
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x19
	bl ov19_021D6594
	movs r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D23DC:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x19
	bl ov19_021D6600
	cmp r0, #0
	beq _021D245C
	movs r0, #2
	str r0, [r5]
_021D23F0:
	adds r0, r4, #0
	bl ov19_021DFD2C
	movs r1, #0x6e
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0
	ldr r2, [r4, r1]
	mvns r0, r0
	cmp r2, r0
	bgt _021D241A
	subs r3, r0, #2
	cmp r2, r3
	blt _021D2444
	beq _021D245C
	subs r3, r0, #1
	cmp r2, r3
	beq _021D2420
	cmp r2, r0
	beq _021D242C
	b _021D2444
_021D241A:
	cmp r2, #0x33
	beq _021D242C
	b _021D2444
_021D2420:
	subs r1, #0xa4
	ldr r0, [r4, r1]
	movs r1, #0x1c
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D242C:
	ldr r0, _021D2678 @ =0x000005DD
	bl FUN_02005748
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #4
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2444:
	ldr r0, _021D2678 @ =0x000005DD
	bl FUN_02005748
	movs r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2450:
	movs r1, #0x6e
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	subs r1, #0x2e
	cmp r1, #4
	bls _021D245E
_021D245C:
	b _021D2672
_021D245E:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D246A: @ jump table
	.2byte _021D2474 - _021D246A - 2 @ case 0
	.2byte _021D24F2 - _021D246A - 2 @ case 1
	.2byte _021D2554 - _021D246A - 2 @ case 2
	.2byte _021D255C - _021D246A - 2 @ case 3
	.2byte _021D25F6 - _021D246A - 2 @ case 4
_021D2474:
	bl ov19_021D5F7C
	cmp r0, #0x70
	bne _021D24B2
	ldr r0, [r4, #0x4c]
	movs r1, #5
	movs r2, #0
	bl FUN_02074570
	ldr r1, _021D267C @ =0x000001E7
	cmp r0, r1
	beq _021D24B2
	subs r1, #0x4b
	ldr r0, [r4, r1]
	movs r1, #0
	movs r2, #0x70
	bl FUN_0200B70C
	adds r0, r4, #0
	movs r1, #0x2d
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	movs r0, #7
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D24B2:
	adds r0, r4, #0
	bl ov19_021D5F7C
	cmp r0, #0
	beq _021D24E8
	adds r0, r4, #0
	adds r1, r4, #0
	bl ov19_021D5D60
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x14
	bl ov19_021D6594
	ldr r0, _021D2678 @ =0x000005DD
	bl FUN_02005748
	movs r0, #5
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D24E8:
	ldr r1, _021D2680 @ =ov19_021D3D44
	adds r0, r4, #0
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D24F2:
	bl ov19_021D5E74
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0207D2D0
	cmp r0, #0
	beq _021D2522
	ldr r0, _021D2674 @ =0x000005F3
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0x18
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	movs r0, #7
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2522:
	adds r0, r4, #0
	adds r1, r4, #0
	bl ov19_021D5D28
	adds r0, r4, #0
	bl ov19_021D0F14
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x13
	bl ov19_021D6594
	ldr r0, _021D2678 @ =0x000005DD
	bl FUN_02005748
	movs r0, #5
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2554:
	ldr r1, _021D2684 @ =ov19_021D4390
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D255C:
	bl ov19_021D5E74
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0207D2D0
	cmp r0, #0
	beq _021D258C
	ldr r0, _021D2674 @ =0x000005F3
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0x18
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	movs r0, #7
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D258C:
	ldr r0, _021D2688 @ =0x00000112
	ldrh r0, [r4, r0]
	cmp r0, #0x70
	bne _021D25CA
	ldr r0, [r4, #0x4c]
	movs r1, #5
	movs r2, #0
	bl FUN_02074570
	ldr r1, _021D267C @ =0x000001E7
	cmp r0, r1
	beq _021D25CA
	subs r1, #0x4b
	ldr r0, [r4, r1]
	movs r1, #0
	movs r2, #0x70
	bl FUN_0200B70C
	adds r0, r4, #0
	movs r1, #0x2d
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	movs r0, #7
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D25CA:
	adds r0, r4, #0
	adds r1, r4, #0
	bl ov19_021D5D78
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x15
	bl ov19_021D6594
	ldr r0, _021D2678 @ =0x000005DD
	bl FUN_02005748
	movs r0, #5
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D25F6:
	ldr r1, _021D268C @ =ov19_021D4184
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D25FE:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6600
	cmp r0, #0
	beq _021D2672
	adds r0, r4, #0
	bl ov19_021D0EC0
	pop {r3, r4, r5, pc}
_021D2616:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2672
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x16
	bl ov19_021D6594
	movs r0, #6
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2642:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2672
	adds r0, r4, #0
	bl ov19_021D0EC0
	pop {r3, r4, r5, pc}
_021D2658:
	ldr r0, _021D2690 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _021D2672
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #6
	str r0, [r5]
_021D2672:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D2674: .4byte 0x000005F3
_021D2678: .4byte 0x000005DD
_021D267C: .4byte 0x000001E7
_021D2680: .4byte ov19_021D3D44
_021D2684: .4byte ov19_021D4390
_021D2688: .4byte 0x00000112
_021D268C: .4byte ov19_021D4184
_021D2690: .4byte 0x021BF67C
	thumb_func_end ov19_021D2308

	thumb_func_start ov19_021D2694
ov19_021D2694: @ 0x021D2694
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #7
	bls _021D26A2
	b _021D27D4
_021D26A2:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D26AE: @ jump table
	.2byte _021D26BE - _021D26AE - 2 @ case 0
	.2byte _021D2702 - _021D26AE - 2 @ case 1
	.2byte _021D2716 - _021D26AE - 2 @ case 2
	.2byte _021D2766 - _021D26AE - 2 @ case 3
	.2byte _021D27A6 - _021D26AE - 2 @ case 4
	.2byte _021D27D4 - _021D26AE - 2 @ case 5
	.2byte _021D27D4 - _021D26AE - 2 @ case 6
	.2byte _021D27BE - _021D26AE - 2 @ case 7
_021D26BE:
	movs r1, #7
	bl ov19_021D5408
	adds r0, r4, #0
	bl ov19_021DFB50
	adds r0, r4, #0
	bl ov19_021D5EE0
	cmp r0, #0
	ldr r0, _021D27D8 @ =0x000005DD
	beq _021D26EC
	bl FUN_02005748
	adds r0, r4, #0
	bl ov19_021DFDEC
	movs r1, #0x6e
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D26EC:
	bl FUN_02005748
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x19
	bl ov19_021D6594
	movs r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2702:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x19
	bl ov19_021D6600
	cmp r0, #0
	beq _021D27D4
	movs r0, #2
	str r0, [r5]
_021D2716:
	adds r0, r4, #0
	bl ov19_021DFD2C
	movs r1, #0x6e
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	adds r0, r0, #3
	cmp r0, #6
	bhi _021D2760
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D2736: @ jump table
	.2byte _021D27D4 - _021D2736 - 2 @ case 0
	.2byte _021D2744 - _021D2736 - 2 @ case 1
	.2byte _021D2750 - _021D2736 - 2 @ case 2
	.2byte _021D2760 - _021D2736 - 2 @ case 3
	.2byte _021D2760 - _021D2736 - 2 @ case 4
	.2byte _021D2760 - _021D2736 - 2 @ case 5
	.2byte _021D2750 - _021D2736 - 2 @ case 6
_021D2744:
	subs r1, #0xa4
	ldr r0, [r4, r1]
	movs r1, #0x1c
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D2750:
	subs r1, #0xa4
	ldr r0, [r4, r1]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #4
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2760:
	movs r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2766:
	movs r1, #0x6e
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, #0
	beq _021D277A
	cmp r2, #1
	beq _021D278E
	cmp r2, #2
	beq _021D279E
	pop {r3, r4, r5, pc}
_021D277A:
	subs r1, #0xa4
	ldr r0, [r4, r1]
	movs r1, #0x1a
	bl ov19_021D6594
	ldr r1, _021D27DC @ =ov19_021D27E8
	adds r0, r4, #0
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D278E:
	subs r1, #0xa4
	ldr r0, [r4, r1]
	movs r1, #0x1b
	bl ov19_021D6594
	movs r0, #7
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D279E:
	ldr r1, _021D27E0 @ =ov19_021D3B34
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D27A6:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6600
	cmp r0, #0
	beq _021D27D4
	adds r0, r4, #0
	bl ov19_021D0EC0
	pop {r3, r4, r5, pc}
_021D27BE:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D27D4
	ldr r1, _021D27E4 @ =ov19_021D2890
	adds r0, r4, #0
	bl ov19_021D0EB0
_021D27D4:
	pop {r3, r4, r5, pc}
	nop
_021D27D8: .4byte 0x000005DD
_021D27DC: .4byte ov19_021D27E8
_021D27E0: .4byte ov19_021D3B34
_021D27E4: .4byte ov19_021D2890
	thumb_func_end ov19_021D2694

	thumb_func_start ov19_021D27E8
ov19_021D27E8: @ 0x021D27E8
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	ldr r1, [r4]
	adds r5, r0, #0
	cmp r1, #0
	beq _021D27FE
	cmp r1, #1
	beq _021D2812
	cmp r1, #2
	beq _021D2876
	pop {r4, r5, r6, pc}
_021D27FE:
	bl ov19_021D5E68
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #8
	bl ov19_021D443C
	movs r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021D2812:
	bl ov19_021D4468
	cmp r0, #0
	beq _021D288A
	ldr r0, _021D288C @ =0x000001C1
	ldrsb r6, [r5, r0]
	movs r0, #0
	mvns r0, r0
	cmp r6, r0
	beq _021D2830
	adds r0, r5, #0
	bl ov19_021D5E68
	cmp r6, r0
	bne _021D2836
_021D2830:
	movs r0, #2
	str r0, [r4]
	b _021D285C
_021D2836:
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov19_021D5D08
	movs r1, #0x12
	lsls r1, r1, #4
	ldr r0, [r5, r1]
	adds r1, #0xa1
	ldrsb r1, [r5, r1]
	bl FUN_02079A94
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #4
	bl ov19_021D6594
	movs r0, #2
	str r0, [r4]
_021D285C:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x20
	bl ov19_021D6594
	pop {r4, r5, r6, pc}
_021D2876:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D288A
	adds r0, r5, #0
	bl ov19_021D0EC0
_021D288A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D288C: .4byte 0x000001C1
	thumb_func_end ov19_021D27E8

	thumb_func_start ov19_021D2890
ov19_021D2890: @ 0x021D2890
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r0, #8
	bhi _021D28FC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D28A8: @ jump table
	.2byte _021D28BA - _021D28A8 - 2 @ case 0
	.2byte _021D28C6 - _021D28A8 - 2 @ case 1
	.2byte _021D28EC - _021D28A8 - 2 @ case 2
	.2byte _021D2902 - _021D28A8 - 2 @ case 3
	.2byte _021D2986 - _021D28A8 - 2 @ case 4
	.2byte _021D299A - _021D28A8 - 2 @ case 5
	.2byte _021D2A20 - _021D28A8 - 2 @ case 6
	.2byte _021D2A32 - _021D28A8 - 2 @ case 7
	.2byte _021D2A46 - _021D28A8 - 2 @ case 8
_021D28BA:
	movs r0, #0x6e
	movs r1, #4
	lsls r0, r0, #2
	str r1, [r4, r0]
	movs r0, #1
	str r0, [r5]
_021D28C6:
	adds r0, r4, #0
	movs r1, #9
	bl ov19_021D5408
	movs r1, #0x6e
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	adds r0, r4, #0
	bl ov19_021DFB94
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x19
	bl ov19_021D6594
	movs r0, #2
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D28EC:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x19
	bl ov19_021D6600
	cmp r0, #0
	bne _021D28FE
_021D28FC:
	b _021D2A5A
_021D28FE:
	movs r0, #3
	str r0, [r5]
_021D2902:
	adds r0, r4, #0
	bl ov19_021DFD2C
	adds r0, r0, #3
	cmp r0, #0xc
	bhi _021D2942
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D291A: @ jump table
	.2byte _021D2A5A - _021D291A - 2 @ case 0
	.2byte _021D2934 - _021D291A - 2 @ case 1
	.2byte _021D2942 - _021D291A - 2 @ case 2
	.2byte _021D2942 - _021D291A - 2 @ case 3
	.2byte _021D2942 - _021D291A - 2 @ case 4
	.2byte _021D2942 - _021D291A - 2 @ case 5
	.2byte _021D2942 - _021D291A - 2 @ case 6
	.2byte _021D2954 - _021D291A - 2 @ case 7
	.2byte _021D2954 - _021D291A - 2 @ case 8
	.2byte _021D2954 - _021D291A - 2 @ case 9
	.2byte _021D2954 - _021D291A - 2 @ case 10
	.2byte _021D2954 - _021D291A - 2 @ case 11
	.2byte _021D2954 - _021D291A - 2 @ case 12
_021D2934:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1c
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D2942:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #8
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2954:
	adds r0, r4, #0
	bl ov19_021DFDDC
	movs r1, #0x6e
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl ov19_021D5408
	movs r1, #0x6e
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	adds r0, r4, #0
	bl ov19_021DFC04
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x19
	bl ov19_021D6594
	movs r0, #4
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2986:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x19
	bl ov19_021D6600
	cmp r0, #0
	beq _021D2A5A
	movs r0, #5
	str r0, [r5]
_021D299A:
	adds r0, r4, #0
	bl ov19_021DFD2C
	adds r0, r0, #3
	cmp r0, #6
	bhi _021D29D4
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D29B2: @ jump table
	.2byte _021D2A5A - _021D29B2 - 2 @ case 0
	.2byte _021D29C0 - _021D29B2 - 2 @ case 1
	.2byte _021D29CE - _021D29B2 - 2 @ case 2
	.2byte _021D29D4 - _021D29B2 - 2 @ case 3
	.2byte _021D29D4 - _021D29B2 - 2 @ case 4
	.2byte _021D29D4 - _021D29B2 - 2 @ case 5
	.2byte _021D29CE - _021D29B2 - 2 @ case 6
_021D29C0:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1c
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D29CE:
	movs r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D29D4:
	adds r0, r4, #0
	bl ov19_021DFDDC
	movs r1, #0x6e
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r2, [r4, r1]
	cmp r2, #0xa
	blt _021D2A16
	cmp r2, #0x21
	bgt _021D2A16
	subs r1, #0x98
	ldr r0, [r4, r1]
	movs r1, #0
	mvns r1, r1
	subs r2, #0xa
	bl FUN_02079AC4
	movs r1, #0x12
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	adds r0, r4, #0
	bl ov19_021D4F5C
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #6
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2A16:
	bl FUN_02022974
	movs r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2A20:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x21
	bl ov19_021D6594
	movs r0, #8
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2A32:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2A5A
	movs r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2A46:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2A5A
	adds r0, r4, #0
	bl ov19_021D0EC0
_021D2A5A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D2890

	thumb_func_start ov19_021D2A5C
ov19_021D2A5C: @ 0x021D2A5C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r1, [r4]
	adds r5, r0, #0
	cmp r1, #0
	beq _021D2A72
	cmp r1, #1
	beq _021D2A90
	cmp r1, #2
	beq _021D2B3E
	pop {r3, r4, r5, pc}
_021D2A72:
	bl ov19_021DFC80
	adds r0, r5, #0
	movs r1, #1
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x19
	bl ov19_021D6594
	movs r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021D2A90:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2B52
	adds r0, r5, #0
	bl ov19_021DFD2C
	movs r2, #2
	adds r1, r0, #0
	mvns r2, r2
	cmp r1, r2
	bhi _021D2AC0
	bhs _021D2B52
	cmp r1, #0x2d
	bhi _021D2B20
	cmp r1, #0x2c
	blo _021D2B20
	beq _021D2AF0
	cmp r1, #0x2d
	beq _021D2ADE
	b _021D2B20
_021D2AC0:
	adds r0, r2, #1
	cmp r1, r0
	blo _021D2B20
	beq _021D2AD0
	adds r0, r2, #2
	cmp r1, r0
	beq _021D2ADE
	b _021D2B20
_021D2AD0:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x1c
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D2ADE:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #2
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021D2AF0:
	adds r0, r5, #0
	bl ov19_021D5BAC
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #7
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x27
	bl ov19_021D6594
	movs r0, #2
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021D2B20:
	cmp r1, #0x38
	blo _021D2B52
	cmp r1, #0x3d
	bhi _021D2B52
	adds r0, r5, #0
	subs r1, #0x38
	bl ov19_021DFCE4
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x1d
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D2B3E:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2B52
	adds r0, r5, #0
	bl ov19_021D0EC0
_021D2B52:
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D2A5C

	thumb_func_start ov19_021D2B54
ov19_021D2B54: @ 0x021D2B54
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #5
	bls _021D2B62
	b _021D2DB6
_021D2B62:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D2B6E: @ jump table
	.2byte _021D2B7A - _021D2B6E - 2 @ case 0
	.2byte _021D2BAA - _021D2B6E - 2 @ case 1
	.2byte _021D2C4C - _021D2B6E - 2 @ case 2
	.2byte _021D2D8E - _021D2B6E - 2 @ case 3
	.2byte _021D2DA2 - _021D2B6E - 2 @ case 4
	.2byte _021D2D5A - _021D2B6E - 2 @ case 5
_021D2B7A:
	ldr r1, _021D2DB8 @ =0x021BF67C
	ldr r2, [r1, #0x44]
	movs r1, #1
	tst r1, r2
	beq _021D2BA2
	adds r1, r4, #0
	bl ov19_021D5594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x2c
	bl ov19_021D6594
	ldr r0, _021D2DBC @ =0x000005DC
	bl FUN_02005748
	movs r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2BA2:
	ldr r1, _021D2DC0 @ =ov19_021D2E1C
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D2BAA:
	ldr r1, _021D2DB8 @ =0x021BF67C
	ldr r2, [r1, #0x44]
	movs r1, #1
	tst r1, r2
	beq _021D2C0E
	adds r0, r2, #0
	adds r1, r4, #0
	bl ov19_021D5150
	cmp r0, #1
	beq _021D2BDC
	cmp r0, #2
	bne _021D2CAE
	ldr r1, _021D2DB8 @ =0x021BF67C
	movs r0, #0xf0
	ldr r2, [r1, #0x44]
	ldr r1, [r1, #0x48]
	ands r2, r0
	ands r0, r1
	cmp r2, r0
	bne _021D2CAE
	ldr r0, _021D2DC4 @ =0x000005F3
	bl FUN_02005748
	pop {r3, r4, r5, pc}
_021D2BDC:
	adds r0, r4, #0
	adds r1, r4, #0
	bl ov19_021D55B0
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x2e
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #5
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
	movs r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2C0E:
	bl ov19_021D5F20
	cmp r0, #0
	beq _021D2C2C
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x2d
	bl ov19_021D6594
	ldr r1, _021D2DC0 @ =ov19_021D2E1C
	adds r0, r4, #0
	bl ov19_021D0EB0
	pop {r3, r4, r5, pc}
_021D2C2C:
	adds r0, r4, #0
	adds r1, r4, #0
	bl ov19_021D54A4
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x2f
	bl ov19_021D6594
	ldr r0, _021D2DC8 @ =0x000005EB
	bl FUN_02005748
	movs r0, #2
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2C4C:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2CAE
	ldr r0, _021D2DB8 @ =0x021BF67C
	adds r1, r4, #0
	ldr r0, [r0, #0x44]
	bl ov19_021D5150
	cmp r0, #4
	bhi _021D2CAE
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D2C74: @ jump table
	.2byte _021D2D10 - _021D2C74 - 2 @ case 0
	.2byte _021D2C96 - _021D2C74 - 2 @ case 1
	.2byte _021D2C7E - _021D2C74 - 2 @ case 2
	.2byte _021D2CBC - _021D2C74 - 2 @ case 3
	.2byte _021D2CE6 - _021D2C74 - 2 @ case 4
_021D2C7E:
	ldr r1, _021D2DB8 @ =0x021BF67C
	movs r0, #0xf0
	ldr r2, [r1, #0x44]
	ldr r1, [r1, #0x48]
	ands r2, r0
	ands r0, r1
	cmp r2, r0
	bne _021D2CAE
	ldr r0, _021D2DC4 @ =0x000005F3
	bl FUN_02005748
	pop {r3, r4, r5, pc}
_021D2C96:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #5
	bl ov19_021D6594
	adds r0, r4, #0
	bl ov19_021D5E38
	movs r1, #6
	tst r0, r1
	beq _021D2CB0
_021D2CAE:
	b _021D2DB6
_021D2CB0:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D2CBC:
	adds r0, r4, #0
	bl ov19_021D5CE8
	adds r0, r4, #0
	bl ov19_021D5E68
	adds r1, r0, #0
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02079A94
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #4
	bl ov19_021D6594
	movs r0, #5
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2CE6:
	adds r0, r4, #0
	bl ov19_021D5CBC
	adds r0, r4, #0
	bl ov19_021D5E68
	adds r1, r0, #0
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02079A94
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #4
	bl ov19_021D6594
	movs r0, #5
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2D10:
	ldr r0, _021D2DB8 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _021D2D4C
	adds r0, r4, #0
	bl ov19_021D2DD0
	cmp r0, #0
	beq _021D2D44
	adds r0, r4, #0
	adds r1, r4, #0
	bl ov19_021D56AC
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xa
	bl ov19_021D6594
	ldr r0, _021D2DCC @ =0x000005EA
	bl FUN_02005748
	movs r0, #4
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2D44:
	ldr r0, _021D2DC4 @ =0x000005F3
	bl FUN_02005748
	pop {r3, r4, r5, pc}
_021D2D4C:
	movs r0, #2
	tst r0, r1
	beq _021D2DB6
	ldr r0, _021D2DC4 @ =0x000005F3
	bl FUN_02005748
	pop {r3, r4, r5, pc}
_021D2D5A:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #4
	bl ov19_021D6600
	cmp r0, #0
	beq _021D2DB6
	adds r0, r4, #0
	bl ov19_021D5E38
	movs r1, #6
	tst r0, r1
	bne _021D2D88
	adds r0, r4, #0
	bl ov19_021D52F4
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
_021D2D88:
	movs r0, #2
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2D8E:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2DB6
	movs r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2DA2:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2DB6
	adds r0, r4, #0
	bl ov19_021D0EC0
_021D2DB6:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D2DB8: .4byte 0x021BF67C
_021D2DBC: .4byte 0x000005DC
_021D2DC0: .4byte ov19_021D2E1C
_021D2DC4: .4byte 0x000005F3
_021D2DC8: .4byte 0x000005EB
_021D2DCC: .4byte 0x000005EA
	thumb_func_end ov19_021D2B54

	thumb_func_start ov19_021D2DD0
ov19_021D2DD0: @ 0x021D2DD0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r5, #0x14
	str r0, [sp]
	bl ov19_021D5F3C
	adds r7, r0, #0
	ldrb r0, [r5, #8]
	movs r4, #0
	ldrb r6, [r5, #9]
	cmp r0, #0
	ble _021D2E16
_021D2DE8:
	adds r3, r5, r4
	movs r2, #0xc
	ldrsb r2, [r3, r2]
	ldr r0, [sp]
	movs r1, #0
	subs r2, r2, r6
	ldr r0, [r0]
	mvns r1, r1
	adds r2, r7, r2
	bl FUN_02079C9C
	movs r1, #0xac
	movs r2, #0
	bl FUN_02074570
	cmp r0, #0
	beq _021D2E0E
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D2E0E:
	ldrb r0, [r5, #8]
	adds r4, r4, #1
	cmp r4, r0
	blt _021D2DE8
_021D2E16:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov19_021D2DD0

	thumb_func_start ov19_021D2E1C
ov19_021D2E1C: @ 0x021D2E1C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #3
	bhi _021D2F04
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D2E34: @ jump table
	.2byte _021D2E3C - _021D2E34 - 2 @ case 0
	.2byte _021D2EAE - _021D2E34 - 2 @ case 1
	.2byte _021D2ED4 - _021D2E34 - 2 @ case 2
	.2byte _021D2EF0 - _021D2E34 - 2 @ case 3
_021D2E3C:
	bl ov19_021D5E10
	cmp r0, #1
	bne _021D2E8E
	adds r0, r4, #0
	bl ov19_021D34E4
	cmp r0, #0
	bne _021D2E6E
	ldr r0, _021D2F08 @ =0x000005EB
	bl FUN_02005748
	adds r0, r4, #0
	adds r1, r4, #0
	bl ov19_021D5420
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #9
	bl ov19_021D6594
	movs r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2E6E:
	ldr r0, _021D2F0C @ =0x000005F3
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #6
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	movs r0, #2
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2E8E:
	ldr r0, _021D2F08 @ =0x000005EB
	bl FUN_02005748
	adds r0, r4, #0
	adds r1, r4, #0
	bl ov19_021D5420
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #9
	bl ov19_021D6594
	movs r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2EAE:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2F04
	adds r0, r4, #0
	bl ov19_021D52F4
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x25
	bl ov19_021D6594
	movs r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2ED4:
	ldr r0, _021D2F10 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _021D2F04
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D2EF0:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2F04
	adds r0, r4, #0
	bl ov19_021D0EC0
_021D2F04:
	pop {r3, r4, r5, pc}
	nop
_021D2F08: .4byte 0x000005EB
_021D2F0C: .4byte 0x000005F3
_021D2F10: .4byte 0x021BF67C
	thumb_func_end ov19_021D2E1C

	thumb_func_start ov19_021D2F14
ov19_021D2F14: @ 0x021D2F14
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	ldr r1, [r4]
	adds r5, r0, #0
	cmp r1, #0
	beq _021D2F2A
	cmp r1, #1
	beq _021D2F76
	cmp r1, #2
	beq _021D2FA8
	pop {r4, r5, r6, pc}
_021D2F2A:
	adds r1, r5, #0
	bl ov19_021D55C4
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0xa
	bl ov19_021D6594
	ldr r0, _021D2FC4 @ =0x000005EA
	bl FUN_02005748
	adds r0, r5, #0
	bl ov19_021D5E10
	cmp r0, #1
	bne _021D2F70
	adds r0, r5, #0
	bl ov19_021D5E2C
	adds r6, r0, #0
	movs r0, #0x49
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0207A0F8
	subs r0, r0, #1
	cmp r6, r0
	beq _021D2F70
	movs r0, #1
	str r0, [r4]
	adds r0, r5, #0
	bl ov19_021D52F4
	pop {r4, r5, r6, pc}
_021D2F70:
	movs r0, #2
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021D2F76:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2FC2
	adds r0, r5, #0
	bl ov19_021D52F4
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x26
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #6
	bl ov19_021D6594
	movs r0, #2
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021D2FA8:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D2FC2
	adds r0, r5, #0
	bl ov19_021D0F14
	adds r0, r5, #0
	bl ov19_021D0EC0
_021D2FC2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D2FC4: .4byte 0x000005EA
	thumb_func_end ov19_021D2F14

	thumb_func_start ov19_021D2FC8
ov19_021D2FC8: @ 0x021D2FC8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov19_021D34E4
	cmp r0, #0
	beq _021D300C
	adds r0, r5, #0
	movs r1, #0xad
	movs r2, #0
	bl ov19_021D5FD0
	cmp r0, #0
	beq _021D2FEC
	movs r0, #6
	str r0, [r4]
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D2FEC:
	adds r0, r5, #0
	bl ov19_021D5E3C
	cmp r0, #0
	beq _021D300C
	adds r0, r5, #0
	movs r1, #0xa3
	movs r2, #0
	bl ov19_021D5FD0
	cmp r0, #0
	bne _021D300C
	movs r0, #6
	str r0, [r4]
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D300C:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D2FC8

	thumb_func_start ov19_021D3010
ov19_021D3010: @ 0x021D3010
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r1, [r4]
	adds r5, r0, #0
	cmp r1, #0
	beq _021D3026
	cmp r1, #1
	beq _021D307C
	cmp r1, #2
	beq _021D30A8
	pop {r3, r4, r5, pc}
_021D3026:
	add r1, sp, #0
	bl ov19_021D2FC8
	cmp r0, #0
	beq _021D3050
	ldr r0, _021D30C4 @ =0x000005F3
	bl FUN_02005748
	ldr r1, [sp]
	adds r0, r5, #0
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x18
	bl ov19_021D6594
	movs r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021D3050:
	adds r0, r5, #0
	adds r1, r5, #0
	bl ov19_021D5734
	ldr r0, _021D30C8 @ =0x000005DC
	bl FUN_02005748
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0xb
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #6
	bl ov19_021D6594
	movs r0, #2
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021D307C:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x18
	bl ov19_021D6600
	cmp r0, #0
	beq _021D30C2
	ldr r0, _021D30CC @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _021D30C2
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #2
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021D30A8:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D30C2
	adds r0, r5, #0
	bl ov19_021D0F14
	adds r0, r5, #0
	bl ov19_021D0EC0
_021D30C2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D30C4: .4byte 0x000005F3
_021D30C8: .4byte 0x000005DC
_021D30CC: .4byte 0x021BF67C
	thumb_func_end ov19_021D3010

	thumb_func_start ov19_021D30D0
ov19_021D30D0: @ 0x021D30D0
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r0, #8
	bls _021D30DE
	b _021D3288
_021D30DE:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D30EA: @ jump table
	.2byte _021D30FC - _021D30EA - 2 @ case 0
	.2byte _021D3178 - _021D30EA - 2 @ case 1
	.2byte _021D319A - _021D30EA - 2 @ case 2
	.2byte _021D31C2 - _021D30EA - 2 @ case 3
	.2byte _021D31F2 - _021D30EA - 2 @ case 4
	.2byte _021D3214 - _021D30EA - 2 @ case 5
	.2byte _021D3288 - _021D30EA - 2 @ case 6
	.2byte _021D3248 - _021D30EA - 2 @ case 7
	.2byte _021D3274 - _021D30EA - 2 @ case 8
_021D30FC:
	movs r0, #0x49
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0207A0F8
	cmp r0, #6
	beq _021D3152
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	adds r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #2
	bne _021D3132
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x23
	bl ov19_021D6594
	movs r0, #2
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D3132:
	ldr r0, _021D328C @ =0x000005EB
	bl FUN_02005748
	adds r0, r4, #0
	adds r1, r4, #0
	bl ov19_021D5420
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #9
	bl ov19_021D6594
	movs r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D3152:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1b
	bl ov19_021D6594
	adds r0, r4, #0
	movs r1, #5
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	movs r0, #7
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D3178:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #9
	bl ov19_021D6600
	cmp r0, #0
	beq _021D3288
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x23
	bl ov19_021D6594
	movs r0, #2
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D319A:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x23
	bl ov19_021D6600
	cmp r0, #0
	beq _021D3288
	adds r0, r4, #0
	bl ov19_021D5290
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #5
	bl ov19_021D6594
	movs r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D31C2:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #5
	bl ov19_021D6600
	cmp r0, #0
	beq _021D3288
	adds r0, r4, #0
	adds r1, r4, #0
	bl ov19_021D55C4
	adds r0, r4, #0
	bl ov19_021D0F14
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xa
	bl ov19_021D6594
	movs r0, #4
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D31F2:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xa
	bl ov19_021D6600
	cmp r0, #0
	beq _021D3288
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x24
	bl ov19_021D6594
	movs r0, #5
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D3214:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x24
	bl ov19_021D6600
	cmp r0, #0
	beq _021D3288
	adds r0, r4, #0
	bl ov19_021D52D0
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #5
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
	movs r0, #8
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D3248:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6600
	cmp r0, #0
	beq _021D3288
	ldr r0, _021D3290 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _021D3288
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #8
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D3274:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D3288
	adds r0, r4, #0
	bl ov19_021D0EC0
_021D3288:
	pop {r3, r4, r5, pc}
	nop
_021D328C: .4byte 0x000005EB
_021D3290: .4byte 0x021BF67C
	thumb_func_end ov19_021D30D0

	thumb_func_start ov19_021D3294
ov19_021D3294: @ 0x021D3294
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #6
	bhi _021D3358
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D32AC: @ jump table
	.2byte _021D32BA - _021D32AC - 2 @ case 0
	.2byte _021D3350 - _021D32AC - 2 @ case 1
	.2byte _021D3412 - _021D32AC - 2 @ case 2
	.2byte _021D3438 - _021D32AC - 2 @ case 3
	.2byte _021D3464 - _021D32AC - 2 @ case 4
	.2byte _021D3492 - _021D32AC - 2 @ case 5
	.2byte _021D34C0 - _021D32AC - 2 @ case 6
_021D32BA:
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D32F8
	adds r0, r4, #0
	bl ov19_021D34E4
	cmp r0, #1
	bne _021D32F8
	ldr r0, _021D34D8 @ =0x000005F3
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #6
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1b
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	movs r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D32F8:
	adds r0, r4, #0
	add r1, sp, #0
	bl ov19_021D1238
	cmp r0, #0
	beq _021D3330
	ldr r0, _021D34D8 @ =0x000005F3
	bl FUN_02005748
	ldr r1, [sp]
	adds r0, r4, #0
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1b
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	movs r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D3330:
	movs r1, #0x11
	lsls r1, r1, #4
	ldrh r1, [r4, r1]
	adds r0, r4, #0
	movs r2, #0x13
	bl ov19_021D443C
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D3350:
	bl ov19_021D4468
	cmp r0, #0
	bne _021D335A
_021D3358:
	b _021D34D4
_021D335A:
	ldr r0, _021D34DC @ =0x000001C1
	movs r1, #0
	ldrsb r2, [r4, r0]
	mvns r1, r1
	cmp r2, r1
	bne _021D3382
	subs r0, #0xad
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x20
	bl ov19_021D6594
	movs r0, #6
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D3382:
	subs r0, #0xb1
	strh r2, [r4, r0]
	adds r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #2
	ldr r1, _021D34DC @ =0x000001C1
	bne _021D33C2
	ldrsb r1, [r4, r1]
	adds r0, r4, #0
	bl ov19_021D57D8
	cmp r0, #0
	beq _021D33F2
	adds r0, r4, #0
	bl ov19_021D0F14
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x20
	bl ov19_021D6594
	movs r0, #4
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D33C2:
	ldrsb r1, [r4, r1]
	adds r0, r4, #0
	bl ov19_021D5800
	cmp r0, #0
	beq _021D33F2
	adds r0, r4, #0
	bl ov19_021D0F14
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x20
	bl ov19_021D6594
	movs r0, #5
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D33F2:
	ldr r0, _021D34D8 @ =0x000005F3
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0xd
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	movs r0, #2
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D3412:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6600
	cmp r0, #0
	beq _021D34D4
	ldr r0, _021D34E0 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _021D34D4
	adds r0, r4, #0
	bl ov19_021D4458
	movs r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D3438:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6600
	cmp r0, #0
	beq _021D34D4
	ldr r0, _021D34E0 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _021D34D4
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #6
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D3464:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x20
	bl ov19_021D6600
	cmp r0, #0
	beq _021D34D4
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xc
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
	movs r0, #6
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D3492:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x20
	bl ov19_021D6600
	cmp r0, #0
	beq _021D34D4
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xd
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
	movs r0, #6
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D34C0:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D34D4
	adds r0, r4, #0
	bl ov19_021D0EC0
_021D34D4:
	pop {r3, r4, r5, pc}
	nop
_021D34D8: .4byte 0x000005F3
_021D34DC: .4byte 0x000001C1
_021D34E0: .4byte 0x021BF67C
	thumb_func_end ov19_021D3294

	thumb_func_start ov19_021D34E4
ov19_021D34E4: @ 0x021D34E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	movs r1, #0x49
	lsls r1, r1, #2
	str r0, [sp]
	ldr r0, [r0, r1]
	bl FUN_0207A0F8
	movs r6, #0
	adds r5, r6, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _021D354C
_021D34FE:
	movs r0, #0x49
	ldr r1, [sp]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	adds r1, r6, #0
	bl FUN_0207A0FC
	adds r4, r0, #0
	bl FUN_02073C88
	adds r7, r0, #0
	adds r0, r4, #0
	movs r1, #0xad
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	bne _021D3532
	adds r0, r4, #0
	movs r1, #0xa3
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	beq _021D3532
	adds r5, r5, #1
_021D3532:
	adds r0, r4, #0
	adds r1, r7, #0
	bl FUN_02073CD4
	cmp r5, #2
	blt _021D3544
	add sp, #8
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D3544:
	ldr r0, [sp, #4]
	adds r6, r6, #1
	cmp r6, r0
	blt _021D34FE
_021D354C:
	ldr r0, [sp]
	movs r1, #0xad
	movs r2, #0
	bl ov19_021D6014
	cmp r0, #0
	beq _021D3560
	add sp, #8
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D3560:
	ldr r0, [sp]
	movs r1, #0xa3
	movs r2, #0
	bl ov19_021D6014
	cmp r0, #0
	beq _021D3574
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3574:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov19_021D34E4

	thumb_func_start ov19_021D357C
ov19_021D357C: @ 0x021D357C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	movs r1, #0xad
	movs r2, #0
	adds r5, r0, #0
	bl ov19_021D5FD0
	cmp r0, #0
	beq _021D3596
	movs r0, #0x1f
	str r0, [r4]
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D3596:
	adds r0, r5, #0
	bl ov19_021D5E74
	adds r0, r5, #0
	bl ov19_021D5E74
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0207D2D0
	cmp r0, #0
	beq _021D35B6
	movs r0, #0x1e
	str r0, [r4]
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D35B6:
	adds r0, r5, #0
	movs r1, #0xa2
	movs r2, #0
	bl ov19_021D5FD0
	cmp r0, #0
	beq _021D35CC
	movs r0, #0x1d
	str r0, [r4]
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D35CC:
	adds r0, r5, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D35F2
	adds r0, r5, #0
	bl ov19_021D5E10
	cmp r0, #1
	bne _021D35F2
	adds r0, r5, #0
	bl ov19_021D34E4
	cmp r0, #0
	beq _021D35F2
	movs r0, #6
	str r0, [r4]
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D35F2:
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021D357C

	thumb_func_start ov19_021D35F8
ov19_021D35F8: @ 0x021D35F8
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #9
	bhi _021D36A4
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D3610: @ jump table
	.2byte _021D3624 - _021D3610 - 2 @ case 0
	.2byte _021D367C - _021D3610 - 2 @ case 1
	.2byte _021D36E6 - _021D3610 - 2 @ case 2
	.2byte _021D376A - _021D3610 - 2 @ case 3
	.2byte _021D37F6 - _021D3610 - 2 @ case 4
	.2byte _021D37C2 - _021D3610 - 2 @ case 5
	.2byte _021D3828 - _021D3610 - 2 @ case 6
	.2byte _021D3852 - _021D3610 - 2 @ case 7
	.2byte _021D3896 - _021D3610 - 2 @ case 8
	.2byte _021D38C2 - _021D3610 - 2 @ case 9
_021D3624:
	add r1, sp, #0
	bl ov19_021D357C
	cmp r0, #0
	beq _021D3650
	adds r0, r4, #0
	movs r1, #2
	bl ov19_021D5408
	adds r0, r4, #0
	movs r1, #1
	bl ov19_021DF964
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x19
	bl ov19_021D6594
	movs r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D3650:
	ldr r0, _021D38D8 @ =0x000005F3
	bl FUN_02005748
	ldr r1, [sp]
	adds r0, r4, #0
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1b
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	movs r0, #8
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D367C:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D36A4
	adds r0, r4, #0
	bl ov19_021DFD2C
	cmp r0, #0x36
	bgt _021D36AE
	bge _021D36D4
	movs r2, #0
	mvns r2, r2
	cmp r0, r2
	bgt _021D36A4
	subs r1, r2, #1
	cmp r0, r1
	bge _021D36A6
_021D36A4:
	b _021D38D6
_021D36A6:
	beq _021D36B4
	cmp r0, r2
	beq _021D36C2
	pop {r3, r4, r5, pc}
_021D36AE:
	cmp r0, #0x37
	beq _021D36C2
	pop {r3, r4, r5, pc}
_021D36B4:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1c
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D36C2:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #9
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D36D4:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #2
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D36E6:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6600
	cmp r0, #0
	beq _021D37D0
	adds r0, r4, #0
	bl ov19_021D5E9C
	adds r2, r0, #0
	movs r0, #0x67
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200B5CC
	adds r0, r4, #0
	bl ov19_021D38E0
	adds r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #2
	bne _021D3730
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xe
	bl ov19_021D6594
	movs r0, #0x6e
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	b _021D3764
_021D3730:
	adds r0, r4, #0
	bl ov19_021D5E10
	cmp r0, #0
	bne _021D3750
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xf
	bl ov19_021D6594
	movs r0, #0x6e
	movs r1, #1
	lsls r0, r0, #2
	str r1, [r4, r0]
	b _021D3764
_021D3750:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x10
	bl ov19_021D6594
	movs r0, #0x6e
	movs r1, #2
	lsls r0, r0, #2
	str r1, [r4, r0]
_021D3764:
	movs r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D376A:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D37D0
	adds r0, r4, #0
	bl ov19_021D3B20
	cmp r0, #0
	beq _021D37A8
	adds r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #2
	bne _021D3794
	adds r0, r4, #0
	bl ov19_021D5834
	b _021D379A
_021D3794:
	adds r0, r4, #0
	bl ov19_021D584C
_021D379A:
	adds r0, r4, #0
	movs r1, #3
	bl ov19_021D5408
	movs r0, #5
	str r0, [r5]
	b _021D37B4
_021D37A8:
	adds r0, r4, #0
	movs r1, #0x20
	bl ov19_021D5408
	movs r0, #4
	str r0, [r5]
_021D37B4:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D37C2:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	bne _021D37D2
_021D37D0:
	b _021D38D6
_021D37D2:
	ldr r0, _021D38DC @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _021D38D6
	adds r0, r4, #0
	movs r1, #4
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	movs r0, #6
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D37F6:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D38D6
	ldr r0, _021D38DC @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _021D38D6
	adds r0, r4, #0
	movs r1, #0x21
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	movs r0, #6
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D3828:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D38D6
	ldr r0, _021D38DC @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _021D38D6
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #7
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D3852:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D38D6
	adds r0, r4, #0
	bl ov19_021D3B20
	cmp r0, #0
	beq _021D3884
	movs r0, #0x6e
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #2
	bne _021D387E
	subs r0, #0xa4
	ldr r0, [r4, r0]
	movs r1, #0x25
	bl ov19_021D6594
_021D387E:
	adds r0, r4, #0
	bl ov19_021D0F14
_021D3884:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
	movs r0, #9
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D3896:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6600
	cmp r0, #0
	beq _021D38D6
	ldr r0, _021D38DC @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _021D38D6
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #9
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D38C2:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D38D6
	adds r0, r4, #0
	bl ov19_021D0EC0
_021D38D6:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D38D8: .4byte 0x000005F3
_021D38DC: .4byte 0x021BF67C
	thumb_func_end ov19_021D35F8

	thumb_func_start ov19_021D38E0
ov19_021D38E0: @ 0x021D38E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	movs r1, #0x57
	lsls r1, r1, #2
	str r0, [sp]
	adds r7, r0, r1
	ldr r0, [r0, #0x4c]
	movs r4, #0
	ldr r5, _021D3970 @ =0x021DFDF0
	str r0, [r7, #0x10]
	str r4, [sp, #4]
_021D38F6:
	ldrh r1, [r5]
	ldr r0, [r7, #0x10]
	adds r6, r7, r4
	bl ov19_021D3AC8
	strb r0, [r6, #4]
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _021D390E
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
_021D390E:
	adds r4, r4, #1
	adds r5, r5, #2
	cmp r4, #3
	blo _021D38F6
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021D3926
	movs r0, #1
	strb r0, [r7]
	add sp, #8
	strb r0, [r7, #1]
	pop {r3, r4, r5, r6, r7, pc}
_021D3926:
	movs r0, #0
	strb r0, [r7]
	strb r0, [r7, #1]
	strb r0, [r7, #2]
	strb r0, [r7, #3]
	movs r1, #0x12
	ldr r0, [sp]
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	adds r1, r1, #4
	str r0, [r7, #0x14]
	ldr r0, [sp]
	ldr r0, [r0, r1]
	str r0, [r7, #0x18]
	ldr r0, [sp]
	bl ov19_021D5E38
	cmp r0, #1
	beq _021D3950
	movs r0, #1
	b _021D3952
_021D3950:
	movs r0, #0
_021D3952:
	movs r1, #0
	str r0, [r7, #0x1c]
	adds r0, r7, #0
	adds r2, r1, #0
_021D395A:
	adds r1, r1, #1
	strh r2, [r0, #8]
	adds r0, r0, #2
	cmp r1, #3
	blo _021D395A
	ldr r0, _021D3974 @ =ov19_021D3978
	adds r1, r7, #0
	bl FUN_0200D9E8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D3970: .4byte 0x021DFDF0
_021D3974: .4byte ov19_021D3978
	thumb_func_end ov19_021D38E0

	thumb_func_start ov19_021D3978
ov19_021D3978: @ 0x021D3978
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	ldrb r0, [r1, #2]
	str r1, [sp, #4]
	cmp r0, #0x12
	bhs _021D3A0E
	adds r0, r1, #0
	ldrb r0, [r0, #3]
	str r0, [sp, #0xc]
	str r0, [sp, #0x14]
	adds r0, #0xf
	str r0, [sp, #0x14]
	cmp r0, #0x1e
	ble _021D399A
	movs r0, #0x1e
	str r0, [sp, #0x14]
_021D399A:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bge _021D39EC
_021D39A2:
	ldr r1, [sp, #4]
	ldr r0, [sp, #4]
	ldrb r1, [r1, #2]
	ldr r0, [r0, #0x14]
	ldr r2, [sp, #0xc]
	bl FUN_02079C9C
	movs r1, #0xac
	movs r2, #0
	adds r7, r0, #0
	bl FUN_02074570
	cmp r0, #0
	beq _021D39E0
	ldr r4, _021D3AC4 @ =0x021DFDF0
	ldr r5, [sp, #4]
	movs r6, #0
_021D39C4:
	ldrh r1, [r4]
	adds r0, r7, #0
	bl ov19_021D3AC8
	cmp r0, #0
	beq _021D39D6
	ldrh r0, [r5, #8]
	adds r0, r0, #1
	strh r0, [r5, #8]
_021D39D6:
	adds r6, r6, #1
	adds r4, r4, #2
	adds r5, r5, #2
	cmp r6, #3
	blo _021D39C4
_021D39E0:
	ldr r0, [sp, #0xc]
	adds r1, r0, #1
	ldr r0, [sp, #0x14]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _021D39A2
_021D39EC:
	ldr r0, [sp, #0x14]
	cmp r0, #0x1e
	bne _021D3A04
	ldr r0, [sp, #4]
	movs r1, #0
	strb r1, [r0, #3]
	ldrb r0, [r0, #2]
	adds r1, r0, #1
	ldr r0, [sp, #4]
	add sp, #0x18
	strb r1, [r0, #2]
	pop {r3, r4, r5, r6, r7, pc}
_021D3A04:
	adds r1, r0, #0
	ldr r0, [sp, #4]
	add sp, #0x18
	strb r1, [r0, #3]
	pop {r3, r4, r5, r6, r7, pc}
_021D3A0E:
	adds r0, r1, #0
	ldr r0, [r0, #0x18]
	bl FUN_0207A0F8
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _021D3A5C
_021D3A22:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0x18]
	bl FUN_0207A0FC
	ldr r4, _021D3AC4 @ =0x021DFDF0
	ldr r5, [sp, #4]
	adds r7, r0, #0
	movs r6, #0
_021D3A34:
	ldrh r1, [r4]
	adds r0, r7, #0
	bl ov19_021D3AC8
	cmp r0, #0
	beq _021D3A46
	ldrh r0, [r5, #8]
	adds r0, r0, #1
	strh r0, [r5, #8]
_021D3A46:
	adds r6, r6, #1
	adds r4, r4, #2
	adds r5, r5, #2
	cmp r6, #3
	blo _021D3A34
	ldr r0, [sp, #8]
	adds r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #8]
	cmp r1, r0
	blt _021D3A22
_021D3A5C:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _021D3A88
	ldr r4, _021D3AC4 @ =0x021DFDF0
	ldr r5, [sp, #4]
	movs r6, #0
_021D3A6A:
	ldr r0, [sp, #4]
	ldrh r1, [r4]
	ldr r0, [r0, #0x10]
	bl ov19_021D3AC8
	cmp r0, #0
	beq _021D3A7E
	ldrh r0, [r5, #8]
	adds r0, r0, #1
	strh r0, [r5, #8]
_021D3A7E:
	adds r6, r6, #1
	adds r4, r4, #2
	adds r5, r5, #2
	cmp r6, #3
	blo _021D3A6A
_021D3A88:
	ldr r0, [sp, #4]
	movs r1, #1
	strb r1, [r0, #1]
	movs r2, #0
	adds r1, r0, #0
_021D3A92:
	ldrh r0, [r1, #8]
	cmp r0, #1
	bne _021D3AAA
	ldr r0, [sp, #4]
	adds r0, r0, r2
	ldrb r0, [r0, #4]
	cmp r0, #1
	bne _021D3AAA
	ldr r0, [sp, #4]
	movs r1, #0
	strb r1, [r0, #1]
	b _021D3AB2
_021D3AAA:
	adds r2, r2, #1
	adds r1, r1, #2
	cmp r2, #3
	blo _021D3A92
_021D3AB2:
	ldr r0, [sp, #4]
	movs r1, #1
	strb r1, [r0]
	ldr r0, [sp]
	bl FUN_0200DA58
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D3AC4: .4byte 0x021DFDF0
	thumb_func_end ov19_021D3978

	thumb_func_start ov19_021D3AC8
ov19_021D3AC8: @ 0x021D3AC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r1, #0
	movs r1, #0
	adds r5, r0, #0
	str r1, [sp, #4]
	bl FUN_02073D20
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xad
	movs r2, #0
	bl FUN_02074570
	cmp r0, #0
	bne _021D3B08
	movs r4, #0
	adds r7, r4, #0
_021D3AEC:
	adds r1, r4, #0
	adds r0, r5, #0
	adds r1, #0x36
	adds r2, r7, #0
	bl FUN_02074570
	cmp r6, r0
	bne _021D3B02
	movs r0, #1
	str r0, [sp, #4]
	b _021D3B08
_021D3B02:
	adds r4, r4, #1
	cmp r4, #4
	blt _021D3AEC
_021D3B08:
	ldr r1, [sp]
	adds r0, r5, #0
	bl FUN_02073D48
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov19_021D3AC8

	thumb_func_start ov19_021D3B18
ov19_021D3B18: @ 0x021D3B18
	movs r1, #0x57
	lsls r1, r1, #2
	ldrb r0, [r0, r1]
	bx lr
	thumb_func_end ov19_021D3B18

	thumb_func_start ov19_021D3B20
ov19_021D3B20: @ 0x021D3B20
	movs r1, #0x57
	lsls r1, r1, #2
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #0
	beq _021D3B30
	ldrb r0, [r1, #1]
	bx lr
_021D3B30:
	movs r0, #0
	bx lr
	thumb_func_end ov19_021D3B20

	thumb_func_start ov19_021D3B34
ov19_021D3B34: @ 0x021D3B34
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _021D3B4A
	cmp r0, #1
	beq _021D3B5E
	cmp r0, #2
	beq _021D3BB6
	pop {r3, r4, r5, pc}
_021D3B4A:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #3
	bl ov19_021D6594
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D3B5E:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #3
	bl ov19_021D6600
	cmp r0, #0
	beq _021D3C1C
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D64A0
	movs r0, #0xa
	bl FUN_0201807C
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0207999C
	movs r2, #0x12
	lsls r2, r2, #4
	adds r1, r0, #0
	ldr r0, [r4, r2]
	adds r2, #8
	ldr r2, [r4, r2]
	ldr r2, [r2, #0x18]
	bl FUN_02079AF4
	movs r1, #0x4a
	lsls r1, r1, #2
	ldr r0, _021D3C20 @ =0x020F2DAC
	ldr r1, [r4, r1]
	movs r2, #9
	bl FUN_020067E8
	movs r1, #0x21
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D3BB6:
	movs r0, #0x21
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02006844
	cmp r0, #0
	beq _021D3C1C
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0207999C
	adds r5, r0, #0
	movs r0, #0x21
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02006814
	movs r2, #0xf
	movs r0, #3
	movs r1, #0xa
	lsls r2, r2, #0xe
	bl FUN_02017FC8
	movs r2, #0x12
	lsls r2, r2, #4
	ldr r0, [r4, r2]
	adds r2, #8
	ldr r2, [r4, r2]
	adds r1, r5, #0
	ldr r2, [r2, #0x18]
	bl FUN_02079B24
	movs r0, #0x12
	lsls r0, r0, #4
	adds r1, r4, #0
	ldr r0, [r4, r0]
	adds r1, #0x40
	bl ov19_021D4F40
	movs r0, #0x45
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r1, r4, #0
	adds r2, r4, #0
	bl ov19_021D61B0
	ldr r1, _021D3C24 @ =ov19_021D0F88
	adds r0, r4, #0
	bl ov19_021D0EB0
_021D3C1C:
	pop {r3, r4, r5, pc}
	nop
_021D3C20: .4byte 0x020F2DAC
_021D3C24: .4byte ov19_021D0F88
	thumb_func_end ov19_021D3B34

	thumb_func_start ov19_021D3C28
ov19_021D3C28: @ 0x021D3C28
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021D3C3E
	cmp r0, #1
	beq _021D3C52
	cmp r0, #2
	beq _021D3C94
	pop {r3, r4, r5, pc}
_021D3C3E:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #3
	bl ov19_021D6594
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021D3C52:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #3
	bl ov19_021D6600
	cmp r0, #0
	beq _021D3CF0
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov19_021D64A0
	movs r0, #0xa
	bl FUN_0201807C
	adds r0, r5, #0
	bl ov19_021D1C84
	movs r1, #0x4b
	lsls r1, r1, #2
	ldr r0, _021D3CF4 @ =0x020F410C
	adds r1, r5, r1
	movs r2, #9
	bl FUN_020067E8
	movs r1, #0x21
	lsls r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021D3C94:
	movs r0, #0x21
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02006844
	cmp r0, #0
	beq _021D3CF0
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_0207999C
	movs r0, #0x21
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02006814
	movs r2, #0xf
	movs r0, #3
	movs r1, #0xa
	lsls r2, r2, #0xe
	bl FUN_02017FC8
	adds r0, r5, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D3CD4
	adds r0, r5, #0
	adds r1, r5, #0
	bl ov19_021D3CFC
_021D3CD4:
	movs r0, #0x45
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r5, #0
	adds r2, r5, #0
	bl ov19_021D61B0
	ldr r1, _021D3CF8 @ =ov19_021D0F88
	adds r0, r5, #0
	bl ov19_021D0EB0
	adds r0, r5, #0
	bl ov19_021D0F14
_021D3CF0:
	pop {r3, r4, r5, pc}
	nop
_021D3CF4: .4byte 0x020F410C
_021D3CF8: .4byte ov19_021D0F88
	thumb_func_end ov19_021D3C28

	thumb_func_start ov19_021D3CFC
ov19_021D3CFC: @ 0x021D3CFC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r4, #8
	ldrb r0, [r4, #4]
	adds r5, r1, #0
	cmp r0, #0
	beq _021D3D10
	cmp r0, #1
	beq _021D3D32
	pop {r3, r4, r5, pc}
_021D3D10:
	movs r0, #5
	lsls r0, r0, #6
	ldrb r0, [r5, r0]
	movs r1, #6
	strb r0, [r4, #7]
	movs r0, #7
	ldrsb r0, [r4, r0]
	blx FUN_020E1F6C
	strb r1, [r4, #5]
	movs r0, #7
	ldrsb r0, [r4, r0]
	movs r1, #6
	blx FUN_020E1F6C
	strb r0, [r4, #6]
	b _021D3D3A
_021D3D32:
	movs r0, #5
	lsls r0, r0, #6
	ldrb r0, [r5, r0]
	strb r0, [r4, #8]
_021D3D3A:
	adds r0, r5, #0
	bl ov19_021D52F4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021D3CFC

	thumb_func_start ov19_021D3D44
ov19_021D3D44: @ 0x021D3D44
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r0, #6
	bhi _021D3DF6
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D3D5C: @ jump table
	.2byte _021D3D6A - _021D3D5C - 2 @ case 0
	.2byte _021D3D7E - _021D3D5C - 2 @ case 1
	.2byte _021D3DE8 - _021D3D5C - 2 @ case 2
	.2byte _021D3E9A - _021D3D5C - 2 @ case 3
	.2byte _021D3EBE - _021D3D5C - 2 @ case 4
	.2byte _021D3F48 - _021D3D5C - 2 @ case 5
	.2byte _021D3F7C - _021D3D5C - 2 @ case 6
_021D3D6A:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #3
	bl ov19_021D6594
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021D3D7E:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #3
	bl ov19_021D6600
	cmp r0, #0
	beq _021D3DF6
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D64A0
	movs r0, #0xa
	bl FUN_0201807C
	movs r0, #0x47
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0207D990
	ldr r1, _021D3F94 @ =0x021DFE30
	movs r2, #9
	bl FUN_0207D824
	movs r1, #0x85
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	subs r1, #0xf8
	ldr r1, [r4, r1]
	movs r2, #1
	movs r3, #0
	bl FUN_0207CB2C
	ldr r0, _021D3F98 @ =0x00000054
	movs r1, #2
	bl FUN_02006590
	movs r1, #0x85
	lsls r1, r1, #2
	ldr r0, _021D3F9C @ =0x02241130
	ldr r1, [r4, r1]
	movs r2, #9
	bl FUN_020067E8
	movs r1, #0x21
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021D3DE8:
	movs r0, #0x21
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02006844
	cmp r0, #0
	bne _021D3DF8
_021D3DF6:
	b _021D3F90
_021D3DF8:
	movs r0, #0x85
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0207CB94
	ldr r1, _021D3FA0 @ =0x021E05E0
	str r0, [r1, #8]
	movs r0, #0x21
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02006814
	movs r0, #0x85
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020181C4
	ldr r0, _021D3F98 @ =0x00000054
	bl FUN_02006514
	ldr r0, _021D3FA0 @ =0x021E05E0
	ldr r0, [r0, #8]
	cmp r0, #0x70
	bne _021D3E38
	ldr r0, [r4, #0x4c]
	movs r1, #5
	movs r2, #0
	bl FUN_02074570
	ldr r1, _021D3FA4 @ =0x000001E7
	cmp r0, r1
	bne _021D3E6C
_021D3E38:
	ldr r0, _021D3FA0 @ =0x021E05E0
	ldr r6, [r0, #8]
	cmp r6, #0
	beq _021D3E6C
	movs r0, #0x47
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0207D990
	lsls r1, r6, #0x10
	lsrs r1, r1, #0x10
	movs r2, #1
	movs r3, #9
	bl FUN_0207D60C
	ldr r1, _021D3FA0 @ =0x021E05E0
	adds r0, r4, #0
	ldr r1, [r1, #8]
	adds r2, r4, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl ov19_021D5BE8
	adds r0, r4, #0
	bl ov19_021D0F14
_021D3E6C:
	movs r2, #0xf
	movs r0, #3
	movs r1, #0xa
	lsls r2, r2, #0xe
	bl FUN_02017FC8
	movs r0, #0x45
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r1, r4, #0
	adds r2, r4, #0
	bl ov19_021D61B0
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov19_021D6594
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021D3E9A:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov19_021D6600
	cmp r0, #0
	beq _021D3F90
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #2
	bl ov19_021D6594
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021D3EBE:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #2
	bl ov19_021D6600
	cmp r0, #0
	beq _021D3F90
	ldr r0, _021D3FA0 @ =0x021E05E0
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021D3EDE
	adds r0, r4, #0
	bl ov19_021D0EC0
	pop {r4, r5, r6, pc}
_021D3EDE:
	cmp r0, #0x70
	bne _021D3F1C
	ldr r0, [r4, #0x4c]
	movs r1, #5
	movs r2, #0
	bl FUN_02074570
	ldr r1, _021D3FA4 @ =0x000001E7
	cmp r0, r1
	beq _021D3F1C
	ldr r2, _021D3FA0 @ =0x021E05E0
	subs r1, #0x4b
	ldr r0, [r4, r1]
	ldr r2, [r2, #8]
	movs r1, #0
	bl FUN_0200B70C
	adds r0, r4, #0
	movs r1, #0x2d
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021D3F1C:
	movs r0, #0x67
	ldr r2, _021D3FA0 @ =0x021E05E0
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [r2, #8]
	movs r1, #0
	bl FUN_0200B70C
	adds r0, r4, #0
	movs r1, #0x10
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021D3F48:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6600
	cmp r0, #0
	beq _021D3F90
	ldr r0, _021D3FA8 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _021D3F90
	ldr r0, _021D3FAC @ =0x000005DD
	bl FUN_02005748
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021D3F7C:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D3F90
	adds r0, r4, #0
	bl ov19_021D0EC0
_021D3F90:
	pop {r4, r5, r6, pc}
	nop
_021D3F94: .4byte 0x021DFE30
_021D3F98: .4byte 0x00000054
_021D3F9C: .4byte 0x02241130
_021D3FA0: .4byte 0x021E05E0
_021D3FA4: .4byte 0x000001E7
_021D3FA8: .4byte 0x021BF67C
_021D3FAC: .4byte 0x000005DD
	thumb_func_end ov19_021D3D44

	thumb_func_start ov19_021D3FB0
ov19_021D3FB0: @ 0x021D3FB0
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #5
	bhi _021D4062
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D3FC8: @ jump table
	.2byte _021D3FD4 - _021D3FC8 - 2 @ case 0
	.2byte _021D403A - _021D3FC8 - 2 @ case 1
	.2byte _021D40A4 - _021D3FC8 - 2 @ case 2
	.2byte _021D4104 - _021D3FC8 - 2 @ case 3
	.2byte _021D412C - _021D3FC8 - 2 @ case 4
	.2byte _021D415E - _021D3FC8 - 2 @ case 5
_021D3FD4:
	bl ov19_021D5E74
	ldr r1, _021D4174 @ =0x021E05E0
	str r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0207D2D0
	cmp r0, #0
	beq _021D4008
	ldr r0, _021D4178 @ =0x000005F3
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0x18
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	movs r0, #4
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D4008:
	movs r0, #0x67
	ldr r2, _021D4174 @ =0x021E05E0
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [r2, #4]
	movs r1, #0
	bl FUN_0200B70C
	adds r0, r4, #0
	movs r1, #0
	bl ov19_021DF964
	adds r0, r4, #0
	movs r1, #0x17
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x19
	bl ov19_021D6594
	movs r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D403A:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D4062
	adds r0, r4, #0
	bl ov19_021DFD2C
	cmp r0, #0x36
	bgt _021D406C
	bge _021D4092
	movs r2, #0
	mvns r2, r2
	cmp r0, r2
	bgt _021D4062
	subs r1, r2, #1
	cmp r0, r1
	bge _021D4064
_021D4062:
	b _021D4172
_021D4064:
	beq _021D4072
	cmp r0, r2
	beq _021D4080
	pop {r3, r4, r5, pc}
_021D406C:
	cmp r0, #0x37
	beq _021D4080
	pop {r3, r4, r5, pc}
_021D4072:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1c
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D4080:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #5
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D4092:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1b
	bl ov19_021D6594
	movs r0, #2
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D40A4:
	movs r0, #0x47
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0207D990
	ldr r1, _021D4174 @ =0x021E05E0
	movs r2, #1
	ldr r1, [r1, #4]
	movs r3, #9
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl FUN_0207D570
	cmp r0, #0
	beq _021D40EA
	adds r0, r4, #0
	movs r1, #0
	adds r2, r4, #0
	bl ov19_021D5BE8
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x16
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
	movs r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D40EA:
	adds r0, r4, #0
	movs r1, #0xe
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	movs r0, #4
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D4104:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D4172
	adds r0, r4, #0
	movs r1, #0xf
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	movs r0, #4
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D412C:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6600
	cmp r0, #0
	beq _021D4172
	ldr r0, _021D417C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _021D4172
	ldr r0, _021D4180 @ =0x000005DD
	bl FUN_02005748
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #5
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D415E:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D4172
	adds r0, r4, #0
	bl ov19_021D0EC0
_021D4172:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D4174: .4byte 0x021E05E0
_021D4178: .4byte 0x000005F3
_021D417C: .4byte 0x021BF67C
_021D4180: .4byte 0x000005DD
	thumb_func_end ov19_021D3FB0

	thumb_func_start ov19_021D4184
ov19_021D4184: @ 0x021D4184
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #6
	bhi _021D4238
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D419C: @ jump table
	.2byte _021D41AA - _021D419C - 2 @ case 0
	.2byte _021D4210 - _021D419C - 2 @ case 1
	.2byte _021D427A - _021D419C - 2 @ case 2
	.2byte _021D42E2 - _021D419C - 2 @ case 3
	.2byte _021D4310 - _021D419C - 2 @ case 4
	.2byte _021D4338 - _021D419C - 2 @ case 5
	.2byte _021D436A - _021D419C - 2 @ case 6
_021D41AA:
	bl ov19_021D5F88
	ldr r1, _021D4380 @ =0x021E05E0
	str r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0207D2D0
	cmp r0, #0
	beq _021D41DE
	ldr r0, _021D4384 @ =0x000005F3
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0x18
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	movs r0, #5
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D41DE:
	movs r0, #0x67
	ldr r2, _021D4380 @ =0x021E05E0
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [r2]
	movs r1, #0
	bl FUN_0200B70C
	adds r0, r4, #0
	movs r1, #0x1a
	bl ov19_021D5408
	adds r0, r4, #0
	movs r1, #0
	bl ov19_021DF964
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x19
	bl ov19_021D6594
	movs r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D4210:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D4238
	adds r0, r4, #0
	bl ov19_021DFD2C
	cmp r0, #0x36
	bgt _021D4242
	bge _021D4268
	movs r2, #0
	mvns r2, r2
	cmp r0, r2
	bgt _021D4238
	subs r1, r2, #1
	cmp r0, r1
	bge _021D423A
_021D4238:
	b _021D437E
_021D423A:
	beq _021D4248
	cmp r0, r2
	beq _021D4256
	pop {r3, r4, r5, pc}
_021D4242:
	cmp r0, #0x37
	beq _021D4256
	pop {r3, r4, r5, pc}
_021D4248:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1c
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D4256:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #6
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D4268:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #2
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D427A:
	movs r0, #0x47
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0207D990
	ldr r1, _021D4380 @ =0x021E05E0
	movs r2, #1
	ldr r1, [r1]
	movs r3, #9
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl FUN_0207D570
	cmp r0, #0
	beq _021D42C8
	adds r0, r4, #0
	bl ov19_021D5F7C
	cmp r0, #0
	beq _021D42AC
	adds r0, r4, #0
	bl ov19_021D5D54
	movs r0, #4
	b _021D42B8
_021D42AC:
	adds r0, r4, #0
	movs r1, #0
	adds r2, r4, #0
	bl ov19_021D5BE8
	movs r0, #3
_021D42B8:
	str r0, [r5]
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x17
	bl ov19_021D6594
	pop {r3, r4, r5, pc}
_021D42C8:
	adds r0, r4, #0
	movs r1, #0xe
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	movs r0, #5
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D42E2:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x17
	bl ov19_021D6600
	cmp r0, #0
	beq _021D437E
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x16
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
	movs r0, #4
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D4310:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D437E
	adds r0, r4, #0
	movs r1, #0x1b
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6594
	movs r0, #5
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D4338:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x18
	bl ov19_021D6600
	cmp r0, #0
	beq _021D437E
	ldr r0, _021D4388 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _021D437E
	ldr r0, _021D438C @ =0x000005DD
	bl FUN_02005748
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	movs r0, #6
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D436A:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D437E
	adds r0, r4, #0
	bl ov19_021D0EC0
_021D437E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D4380: .4byte 0x021E05E0
_021D4384: .4byte 0x000005F3
_021D4388: .4byte 0x021BF67C
_021D438C: .4byte 0x000005DD
	thumb_func_end ov19_021D4184

	thumb_func_start ov19_021D4390
ov19_021D4390: @ 0x021D4390
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	cmp r0, #4
	bhi _021D4434
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D43A8: @ jump table
	.2byte _021D43B2 - _021D43A8 - 2 @ case 0
	.2byte _021D43C6 - _021D43A8 - 2 @ case 1
	.2byte _021D43EA - _021D43A8 - 2 @ case 2
	.2byte _021D4402 - _021D43A8 - 2 @ case 3
	.2byte _021D441E - _021D43A8 - 2 @ case 4
_021D43B2:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x1a
	bl ov19_021D6594
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021D43C6:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x1a
	bl ov19_021D6600
	cmp r0, #0
	beq _021D4434
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x11
	bl ov19_021D6594
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021D43EA:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x11
	bl ov19_021D6600
	cmp r0, #0
	beq _021D4434
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021D4402:
	ldr r0, _021D4438 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0xf3
	tst r1, r0
	beq _021D4434
	adds r0, #0x21
	ldr r0, [r5, r0]
	movs r1, #0x12
	bl ov19_021D6594
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021D441E:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x12
	bl ov19_021D6600
	cmp r0, #0
	beq _021D4434
	adds r0, r5, #0
	bl ov19_021D0EC0
_021D4434:
	pop {r3, r4, r5, pc}
	nop
_021D4438: .4byte 0x021BF67C
	thumb_func_end ov19_021D4390

	thumb_func_start ov19_021D443C
ov19_021D443C: @ 0x021D443C
	push {r4, r5}
	movs r3, #0x6f
	lsls r3, r3, #2
	movs r5, #0
	str r5, [r0, r3]
	adds r4, r3, #5
	strb r1, [r0, r4]
	adds r1, r3, #6
	strh r2, [r0, r1]
	adds r1, r3, #4
	strb r5, [r0, r1]
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D443C

	thumb_func_start ov19_021D4458
ov19_021D4458: @ 0x021D4458
	movs r1, #0x6f
	movs r2, #0
	lsls r1, r1, #2
	str r2, [r0, r1]
	movs r2, #1
	adds r1, r1, #4
	strb r2, [r0, r1]
	bx lr
	thumb_func_end ov19_021D4458

	thumb_func_start ov19_021D4468
ov19_021D4468: @ 0x021D4468
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x6f
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r1, [r4]
	cmp r1, #3
	bls _021D447A
	b _021D459C
_021D447A:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D4486: @ jump table
	.2byte _021D448E - _021D4486 - 2 @ case 0
	.2byte _021D44C4 - _021D4486 - 2 @ case 1
	.2byte _021D44EC - _021D4486 - 2 @ case 2
	.2byte _021D44FE - _021D4486 - 2 @ case 3
_021D448E:
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _021D449A
	movs r0, #1
	str r0, [r4]
	b _021D459C
_021D449A:
	movs r0, #5
	ldrsb r1, [r4, r0]
	subs r0, r0, #6
	cmp r1, r0
	bne _021D44A8
	movs r0, #0
	strb r0, [r4, #5]
_021D44A8:
	movs r1, #5
	ldrsb r1, [r4, r1]
	adds r0, r5, #0
	bl ov19_021D5D20
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x1e
	bl ov19_021D6594
	movs r0, #1
	str r0, [r4]
	b _021D459C
_021D44C4:
	subs r0, #0xa8
	ldr r0, [r5, r0]
	movs r1, #0x1e
	bl ov19_021D6600
	cmp r0, #0
	beq _021D459C
	ldrh r1, [r4, #6]
	adds r0, r5, #0
	bl ov19_021D5408
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x18
	bl ov19_021D6594
	movs r0, #2
	str r0, [r4]
	b _021D459C
_021D44EC:
	subs r0, #0xa8
	ldr r0, [r5, r0]
	movs r1, #0x18
	bl ov19_021D6600
	cmp r0, #0
	beq _021D459C
	movs r0, #3
	str r0, [r4]
_021D44FE:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x1f
	bl ov19_021D6600
	cmp r0, #0
	beq _021D459C
	ldr r0, _021D45A0 @ =0x021BF67C
	movs r1, #0x22
	ldr r0, [r0, #0x48]
	lsls r1, r1, #4
	adds r2, r0, #0
	tst r2, r1
	beq _021D4546
	movs r0, #5
	ldrsb r1, [r4, r0]
	subs r1, r1, #1
	strb r1, [r4, #5]
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _021D452E
	movs r0, #0x11
	strb r0, [r4, #5]
_021D452E:
	movs r1, #5
	ldrsb r1, [r4, r1]
	adds r0, r5, #0
	bl ov19_021D5D20
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x1f
	bl ov19_021D6594
	b _021D459C
_021D4546:
	lsrs r1, r1, #1
	tst r1, r0
	beq _021D4576
	movs r0, #5
	ldrsb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, #5]
	ldrsb r0, [r4, r0]
	cmp r0, #0x12
	blt _021D455E
	movs r0, #0
	strb r0, [r4, #5]
_021D455E:
	movs r1, #5
	ldrsb r1, [r4, r1]
	adds r0, r5, #0
	bl ov19_021D5D20
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x1f
	bl ov19_021D6594
	b _021D459C
_021D4576:
	movs r1, #1
	tst r1, r0
	beq _021D4586
	ldr r0, _021D45A4 @ =0x000005DD
	bl FUN_02005748
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D4586:
	movs r1, #2
	tst r0, r1
	beq _021D459C
	ldr r0, _021D45A4 @ =0x000005DD
	bl FUN_02005748
	movs r0, #0
	mvns r0, r0
	strb r0, [r4, #5]
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D459C:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D45A0: .4byte 0x021BF67C
_021D45A4: .4byte 0x000005DD
	thumb_func_end ov19_021D4468

	thumb_func_start ov19_021D45A8
ov19_021D45A8: @ 0x021D45A8
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r1, [r4]
	adds r5, r0, #0
	cmp r1, #0
	beq _021D45BE
	cmp r1, #1
	beq _021D45E8
	cmp r1, #2
	beq _021D4628
	pop {r3, r4, r5, pc}
_021D45BE:
	bl ov19_021D5E68
	adds r1, r0, #0
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02079A94
	adds r0, r5, #0
	bl ov19_021D52F4
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #4
	bl ov19_021D6594
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021D45E8:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #4
	bl ov19_021D6600
	cmp r0, #0
	beq _021D463E
	adds r0, r5, #0
	bl ov19_021D5E10
	cmp r0, #0
	bne _021D4620
	adds r0, r5, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D4620
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #6
	bl ov19_021D6594
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021D4620:
	adds r0, r5, #0
	bl ov19_021D0EC0
	pop {r3, r4, r5, pc}
_021D4628:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #6
	bl ov19_021D6600
	cmp r0, #0
	beq _021D463E
	adds r0, r5, #0
	bl ov19_021D0EC0
_021D463E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D45A8

	thumb_func_start ov19_021D4640
ov19_021D4640: @ 0x021D4640
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r4, r0, #0
	ldr r0, [r6]
	cmp r0, #5
	bhi _021D46C2
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D4658: @ jump table
	.2byte _021D4664 - _021D4658 - 2 @ case 0
	.2byte _021D46B2 - _021D4658 - 2 @ case 1
	.2byte _021D4862 - _021D4658 - 2 @ case 2
	.2byte _021D48B8 - _021D4658 - 2 @ case 3
	.2byte _021D48F4 - _021D4658 - 2 @ case 4
	.2byte _021D490A - _021D4658 - 2 @ case 5
_021D4664:
	ldr r0, _021D4920 @ =0x000005E4
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #1
	bl ov19_021D5D94
	adds r0, r4, #0
	bl ov19_021D5E68
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov19_021D5D9C
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x28
	bl ov19_021D6594
	movs r0, #0x58
	str r0, [sp]
	movs r0, #0x72
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	movs r2, #0xc0
	movs r3, #0x38
	bl ov19_021D603C
	movs r0, #0x81
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	movs r1, #1
	adds r0, r0, #4
	str r1, [r4, r0]
	str r1, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021D46B2:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x28
	bl ov19_021D6600
	cmp r0, #0
	bne _021D46C4
_021D46C2:
	b _021D491E
_021D46C4:
	adds r0, r4, #0
	bl ov19_021D538C
	cmp r0, #0
	beq _021D46F4
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _021D46F4
	adds r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #3
	beq _021D46EC
	ldr r1, _021D4924 @ =ov19_021D4938
	adds r0, r4, #0
	bl ov19_021D0EB0
	pop {r3, r4, r5, r6, r7, pc}
_021D46EC:
	ldr r0, _021D4928 @ =0x000005F3
	bl FUN_02005748
	pop {r3, r4, r5, r6, r7, pc}
_021D46F4:
	ldr r0, _021D492C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0xf3
	tst r0, r1
	beq _021D472C
	ldr r0, _021D4930 @ =0x000005DD
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0
	bl ov19_021D5D94
	adds r0, r4, #0
	bl ov19_021D5E68
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov19_021D5D9C
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x28
	bl ov19_021D6594
	movs r0, #5
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021D472C:
	movs r1, #0x81
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _021D47A4
	adds r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D47A4
	subs r0, r1, #4
	ldr r0, [r4, r0]
	adds r2, r0, #1
	subs r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0x14
	bls _021D47A4
	adds r0, r4, #0
	bl ov19_021D5EB8
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov19_021D5D08
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	adds r1, r5, #0
	bl FUN_02079A94
	adds r0, r4, #0
	bl ov19_021D52F4
	adds r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D4786
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #8
	bl ov19_021D6594
_021D4786:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #4
	bl ov19_021D6594
	movs r0, #0x81
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	subs r0, r0, #4
	str r1, [r4, r0]
	movs r0, #3
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021D47A4:
	movs r0, #0x72
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov19_021D60A8
	cmp r0, #1
	beq _021D47BC
	cmp r0, #2
	beq _021D47DC
	cmp r0, #3
	beq _021D4836
	pop {r3, r4, r5, r6, r7, pc}
_021D47BC:
	adds r0, r4, #0
	bl ov19_021D5EB8
	movs r1, #0x7f
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r1, #0
	movs r2, #0
	adds r0, #8
	str r2, [r4, r0]
	adds r0, r1, #0
	adds r0, #0x10
	str r2, [r4, r0]
	adds r1, #0xc
	str r2, [r4, r1]
	pop {r3, r4, r5, r6, r7, pc}
_021D47DC:
	movs r0, #0x72
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov19_021D614C
	adds r5, r0, #0
	movs r0, #0x83
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r5, r0
	bne _021D47F4
	b _021D491E
_021D47F4:
	subs r7, r5, r0
	adds r0, r4, #0
	bl ov19_021D5EB8
	adds r1, r7, r0
	bpl _021D4804
	adds r1, #0x12
	b _021D480A
_021D4804:
	cmp r1, #0x12
	blt _021D480A
	subs r1, #0x12
_021D480A:
	movs r0, #0x83
	lsls r0, r0, #2
	str r5, [r4, r0]
	adds r0, r4, #0
	bl ov19_021D5D9C
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov19_021D5DAC
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x29
	bl ov19_021D6594
	ldr r0, _021D4934 @ =0x000005DC
	bl FUN_02005748
	movs r0, #2
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021D4836:
	adds r0, r4, #0
	bl ov19_021D5E68
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov19_021D5EB8
	cmp r5, r0
	beq _021D484C
	movs r1, #1
	b _021D484E
_021D484C:
	movs r1, #0
_021D484E:
	movs r0, #0x81
	lsls r0, r0, #2
	str r1, [r4, r0]
	subs r1, r0, #4
	movs r2, #0
	str r2, [r4, r1]
	movs r1, #1
	adds r0, r0, #4
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021D4862:
	movs r0, #0x82
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _021D48A2
	subs r0, #0x40
	adds r0, r4, r0
	bl ov19_021D60A8
	cmp r0, #3
	bne _021D48A2
	adds r0, r4, #0
	bl ov19_021D5E68
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov19_021D5EB8
	cmp r5, r0
	beq _021D488E
	movs r1, #1
	b _021D4890
_021D488E:
	movs r1, #0
_021D4890:
	movs r0, #0x81
	lsls r0, r0, #2
	str r1, [r4, r0]
	subs r1, r0, #4
	movs r2, #0
	str r2, [r4, r1]
	movs r1, #1
	adds r0, r0, #4
	str r1, [r4, r0]
_021D48A2:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x29
	bl ov19_021D6600
	cmp r0, #0
	beq _021D491E
	movs r0, #1
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021D48B8:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #4
	bl ov19_021D6600
	cmp r0, #0
	beq _021D491E
	adds r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D48EE
	adds r0, r4, #0
	bl ov19_021D5E34
	cmp r0, #0
	beq _021D48EE
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6594
	movs r0, #4
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021D48EE:
	movs r0, #1
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021D48F4:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov19_021D6600
	cmp r0, #0
	beq _021D491E
	movs r0, #1
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021D490A:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D491E
	adds r0, r4, #0
	bl ov19_021D0EC0
_021D491E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D4920: .4byte 0x000005E4
_021D4924: .4byte ov19_021D4938
_021D4928: .4byte 0x000005F3
_021D492C: .4byte 0x021BF67C
_021D4930: .4byte 0x000005DD
_021D4934: .4byte 0x000005DC
	thumb_func_end ov19_021D4640

	thumb_func_start ov19_021D4938
ov19_021D4938: @ 0x021D4938
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r1, #0
	adds r4, r0, #0
	ldr r0, [r6]
	cmp r0, #3
	bhi _021D49BC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D4952: @ jump table
	.2byte _021D495A - _021D4952 - 2 @ case 0
	.2byte _021D49AC - _021D4952 - 2 @ case 1
	.2byte _021D4B04 - _021D4952 - 2 @ case 2
	.2byte _021D4B5C - _021D4952 - 2 @ case 3
_021D495A:
	ldr r0, _021D4B74 @ =0x000005E4
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #2
	bl ov19_021D5D94
	adds r0, r4, #0
	movs r1, #0
	bl ov19_021D5DA4
	adds r0, r4, #0
	movs r1, #0
	bl ov19_021D5D9C
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x28
	bl ov19_021D6594
	movs r0, #0x58
	str r0, [sp]
	movs r0, #0x72
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0xff
	movs r2, #0xc0
	movs r3, #0x38
	bl ov19_021D603C
	movs r0, #0x81
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	movs r1, #1
	adds r0, r0, #4
	str r1, [r4, r0]
	add sp, #8
	str r1, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021D49AC:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x28
	bl ov19_021D6600
	cmp r0, #0
	bne _021D49BE
_021D49BC:
	b _021D4B70
_021D49BE:
	adds r0, r4, #0
	bl ov19_021D538C
	cmp r0, #0
	beq _021D49DE
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021D49DE
	ldr r1, _021D4B78 @ =ov19_021D4640
	adds r0, r4, #0
	bl ov19_021D0EB0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021D49DE:
	ldr r0, _021D4B7C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0xf3
	tst r0, r1
	beq _021D4A06
	ldr r0, _021D4B80 @ =0x000005DD
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0
	bl ov19_021D5D94
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x28
	bl ov19_021D6594
	movs r0, #3
	str r0, [r6]
_021D4A06:
	adds r0, r4, #0
	bl ov19_021D4B88
	cmp r0, #0
	beq _021D4A32
	ldr r0, _021D4B80 @ =0x000005DD
	bl FUN_02005748
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x2a
	bl ov19_021D6594
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x27
	bl ov19_021D6594
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021D4A32:
	movs r0, #0x72
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov19_021D60A8
	cmp r0, #1
	beq _021D4A4C
	cmp r0, #2
	beq _021D4A6E
	cmp r0, #3
	beq _021D4AD6
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021D4A4C:
	adds r0, r4, #0
	bl ov19_021D5EB8
	movs r1, #0x7f
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r1, #0
	movs r2, #0
	adds r0, #8
	str r2, [r4, r0]
	adds r0, r1, #0
	adds r0, #0x10
	str r2, [r4, r0]
	adds r1, #0xc
	add sp, #8
	str r2, [r4, r1]
	pop {r3, r4, r5, r6, r7, pc}
_021D4A6E:
	movs r0, #0x72
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov19_021D614C
	adds r7, r0, #0
	movs r0, #0x83
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r7, r0
	beq _021D4B70
	subs r0, r7, r0
	str r0, [sp, #4]
	adds r0, r4, #0
	bl ov19_021D5EB8
	ldr r1, [sp, #4]
	adds r5, r1, r0
	bpl _021D4A98
	adds r5, #8
	b _021D4A9E
_021D4A98:
	cmp r5, #8
	blt _021D4A9E
	subs r5, #8
_021D4A9E:
	movs r0, #0x83
	lsls r0, r0, #2
	str r7, [r4, r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov19_021D5D9C
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov19_021D5DA4
	ldr r1, [sp, #4]
	adds r0, r4, #0
	bl ov19_021D5DAC
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x29
	bl ov19_021D6594
	ldr r0, _021D4B84 @ =0x000005DC
	bl FUN_02005748
	movs r0, #2
	add sp, #8
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021D4AD6:
	adds r0, r4, #0
	bl ov19_021D5E68
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov19_021D5EB8
	cmp r5, r0
	beq _021D4AEC
	movs r1, #1
	b _021D4AEE
_021D4AEC:
	movs r1, #0
_021D4AEE:
	movs r0, #0x81
	lsls r0, r0, #2
	str r1, [r4, r0]
	subs r1, r0, #4
	movs r2, #0
	str r2, [r4, r1]
	movs r1, #1
	adds r0, r0, #4
	add sp, #8
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021D4B04:
	movs r0, #0x82
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _021D4B44
	subs r0, #0x40
	adds r0, r4, r0
	bl ov19_021D60A8
	cmp r0, #3
	bne _021D4B44
	adds r0, r4, #0
	bl ov19_021D5E68
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov19_021D5EB8
	cmp r5, r0
	beq _021D4B30
	movs r1, #1
	b _021D4B32
_021D4B30:
	movs r1, #0
_021D4B32:
	movs r0, #0x81
	lsls r0, r0, #2
	str r1, [r4, r0]
	subs r1, r0, #4
	movs r2, #0
	str r2, [r4, r1]
	movs r1, #1
	adds r0, r0, #4
	str r1, [r4, r0]
_021D4B44:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x29
	bl ov19_021D6600
	cmp r0, #0
	beq _021D4B70
	movs r0, #1
	add sp, #8
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021D4B5C:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov19_021D6628
	cmp r0, #0
	beq _021D4B70
	adds r0, r4, #0
	bl ov19_021D0EC0
_021D4B70:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D4B74: .4byte 0x000005E4
_021D4B78: .4byte ov19_021D4640
_021D4B7C: .4byte 0x021BF67C
_021D4B80: .4byte 0x000005DD
_021D4B84: .4byte 0x000005DC
	thumb_func_end ov19_021D4938

	thumb_func_start ov19_021D4B88
ov19_021D4B88: @ 0x021D4B88
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x62
	movs r1, #8
	lsls r0, r0, #2
	str r1, [r4, r0]
	subs r0, #8
	ldr r0, [r4, r0]
	bl FUN_0202404C
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #8
	beq _021D4BAA
	movs r0, #1
	pop {r4, pc}
_021D4BAA:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021D4B88

	thumb_func_start ov19_021D4BB0
ov19_021D4BB0: @ 0x021D4BB0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x62
	adds r4, r2, #0
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #8
	bne _021D4BDE
	cmp r1, #0
	bne _021D4BDE
	adds r0, r4, #0
	bl ov19_021D5EC0
	adds r1, r0, r5
	cmp r1, #8
	blo _021D4BD2
	subs r1, #8
_021D4BD2:
	adds r0, r4, #0
	bl ov19_021D5DB4
	movs r0, #0x62
	lsls r0, r0, #2
	str r5, [r4, r0]
_021D4BDE:
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D4BB0

	thumb_func_start ov19_021D4BE0
ov19_021D4BE0: @ 0x021D4BE0
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	bl FUN_02024420
	movs r1, #0x12
	lsls r1, r1, #4
	str r0, [r5, r1]
	ldr r2, [r4]
	subs r0, r1, #4
	str r2, [r5, r0]
	ldr r0, [r4]
	bl FUN_0207A268
	movs r1, #0x49
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r4]
	bl FUN_02025E44
	movs r1, #0x69
	lsls r1, r1, #2
	str r0, [r5, r1]
	subs r1, #0x8c
	str r4, [r5, r1]
	movs r0, #0
	movs r1, #0x1a
	movs r2, #0x13
	movs r3, #9
	str r0, [r4, #8]
	bl FUN_0200B144
	movs r2, #0x63
	lsls r2, r2, #2
	str r0, [r5, r2]
	movs r0, #1
	movs r1, #0x1a
	adds r2, #0x10
	movs r3, #9
	bl FUN_0200B144
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [r5, r1]
	movs r0, #0
	movs r1, #0x1a
	movs r2, #0xca
	movs r3, #9
	bl FUN_0200B144
	movs r2, #0x65
	lsls r2, r2, #2
	str r0, [r5, r2]
	movs r0, #0
	movs r1, #0x1a
	adds r2, #0xce
	movs r3, #9
	bl FUN_0200B144
	movs r1, #0x66
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #9
	bl FUN_0200B358
	movs r1, #0x67
	lsls r1, r1, #2
	str r0, [r5, r1]
	bl FUN_02073C70
	adds r1, r0, #0
	movs r0, #9
	bl FUN_02018144
	movs r1, #0x1a
	lsls r1, r1, #4
	str r0, [r5, r1]
	subs r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021D4C88
	bl FUN_02022974
_021D4C88:
	movs r0, #0x69
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #2
	str r0, [sp]
	movs r0, #9
	movs r2, #0
	movs r3, #8
	bl FUN_0208712C
	movs r1, #0x4a
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r4, #4]
	cmp r0, #4
	beq _021D4CBA
	movs r0, #9
	str r0, [sp]
	ldr r0, _021D4D44 @ =0x021DFDF6
	ldr r2, _021D4D48 @ =ov19_021D53B8
	movs r1, #3
	adds r3, r5, #0
	bl FUN_02023FCC
	b _021D4CCA
_021D4CBA:
	movs r0, #9
	str r0, [sp]
	ldr r0, _021D4D4C @ =0x021DFE02
	ldr r2, _021D4D48 @ =ov19_021D53B8
	movs r1, #4
	adds r3, r5, #0
	bl FUN_02023FCC
_021D4CCA:
	movs r1, #0x5f
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #9
	str r0, [sp]
	ldr r0, _021D4D50 @ =0x021DFE12
	ldr r2, _021D4D54 @ =ov19_021D4BB0
	movs r1, #7
	adds r3, r5, #0
	bl FUN_02023FCC
	movs r1, #6
	lsls r1, r1, #6
	str r0, [r5, r1]
	adds r0, r1, #0
	subs r0, #0x60
	ldr r0, [r5, r0]
	movs r2, #0
	str r0, [r5]
	adds r0, r1, #0
	subs r0, #0x5c
	ldr r0, [r5, r0]
	str r0, [r5, #4]
	adds r0, r1, #0
	subs r0, #0x70
	strh r2, [r5, r0]
	subs r1, #0x6e
	strh r2, [r5, r1]
	adds r0, r5, #0
	ldr r1, [r4, #4]
	adds r0, #0x48
	bl ov19_021D4DE4
	adds r0, r5, #0
	adds r0, #0x4c
	bl ov19_021D4E88
	movs r0, #0x12
	lsls r0, r0, #4
	adds r1, r5, #0
	ldr r0, [r5, r0]
	adds r1, #0x40
	bl ov19_021D4E5C
	adds r0, r5, #0
	adds r0, #0xa4
	bl ov19_021D4EE4
	adds r0, r5, #0
	bl ov19_021D4DF0
	adds r0, r5, #0
	adds r0, #0x14
	bl ov19_021D4E30
	adds r5, #0x9c
	adds r0, r5, #0
	bl ov19_021D4F34
	pop {r3, r4, r5, pc}
	nop
_021D4D44: .4byte 0x021DFDF6
_021D4D48: .4byte ov19_021D53B8
_021D4D4C: .4byte 0x021DFE02
_021D4D50: .4byte 0x021DFE12
_021D4D54: .4byte ov19_021D4BB0
	thumb_func_end ov19_021D4BE0

	thumb_func_start ov19_021D4D58
ov19_021D4D58: @ 0x021D4D58
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	bl FUN_02024034
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02024034
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D4D7E
	bl FUN_020181C4
_021D4D7E:
	movs r0, #0x67
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200B3F0
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200B190
	movs r0, #0x19
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0200B190
	movs r0, #0x65
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200B190
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200B190
	movs r0, #0x4a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0208716C
	adds r0, r4, #0
	adds r0, #0x4c
	bl ov19_021D4EC0
	adds r0, r4, #0
	adds r0, #0x14
	bl ov19_021D4E50
	adds r0, r4, #0
	adds r0, #0x40
	bl ov19_021D4E7C
	adds r0, r4, #0
	adds r0, #0xa4
	bl ov19_021D4F18
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021D4D58

	thumb_func_start ov19_021D4DE4
ov19_021D4DE4: @ 0x021D4DE4
	strb r1, [r0]
	movs r1, #0
	strb r1, [r0, #1]
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D4DE4

	thumb_func_start ov19_021D4DF0
ov19_021D4DF0: @ 0x021D4DF0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0
	adds r4, r5, #0
	adds r2, r1, #0
	adds r4, #8
	bl ov19_021D5410
	movs r2, #0
	adds r0, r5, #0
	strb r2, [r4, #8]
	movs r1, #1
	strb r1, [r4, #9]
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D4E18
	cmp r0, #4
	beq _021D4E1C
	b _021D4E22
_021D4E18:
	strb r1, [r4, #4]
	b _021D4E24
_021D4E1C:
	movs r0, #2
	strb r0, [r4, #4]
	b _021D4E24
_021D4E22:
	strb r2, [r4, #4]
_021D4E24:
	movs r0, #1
	strb r0, [r4, #0xb]
	adds r0, r5, #0
	bl ov19_021D52F4
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D4DF0

	thumb_func_start ov19_021D4E30
ov19_021D4E30: @ 0x021D4E30
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_02076AF4
	adds r2, r0, #0
	movs r1, #0x1e
	movs r0, #9
	muls r1, r2, r1
	bl FUN_02018144
	str r0, [r4]
	movs r0, #0
	strb r0, [r4, #8]
	strb r0, [r4, #0xb]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021D4E30

	thumb_func_start ov19_021D4E50
ov19_021D4E50: @ 0x021D4E50
	ldr r3, _021D4E58 @ =FUN_020181C4
	ldr r0, [r0]
	bx r3
	nop
_021D4E58: .4byte FUN_020181C4
	thumb_func_end ov19_021D4E50

	thumb_func_start ov19_021D4E5C
ov19_021D4E5C: @ 0x021D4E5C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	bl FUN_0207999C
	strb r0, [r4]
	movs r0, #0x14
	movs r1, #9
	bl FUN_02023790
	str r0, [r4, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov19_021D4F40
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D4E5C

	thumb_func_start ov19_021D4E7C
ov19_021D4E7C: @ 0x021D4E7C
	ldr r3, _021D4E84 @ =FUN_020237BC
	ldr r0, [r0, #4]
	bx r3
	nop
_021D4E84: .4byte FUN_020237BC
	thumb_func_end ov19_021D4E7C

	thumb_func_start ov19_021D4E88
ov19_021D4E88: @ 0x021D4E88
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xc
	movs r1, #9
	bl FUN_02023790
	str r0, [r4, #0x14]
	movs r0, #0xc
	movs r1, #9
	bl FUN_02023790
	str r0, [r4, #0x18]
	movs r0, #0x12
	movs r1, #9
	bl FUN_02023790
	str r0, [r4, #0x1c]
	movs r0, #0xc
	movs r1, #9
	bl FUN_02023790
	str r0, [r4, #0x20]
	movs r0, #0x10
	movs r1, #9
	bl FUN_02023790
	str r0, [r4, #0x24]
	pop {r4, pc}
	thumb_func_end ov19_021D4E88

	thumb_func_start ov19_021D4EC0
ov19_021D4EC0: @ 0x021D4EC0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	bl FUN_020237BC
	ldr r0, [r4, #0x18]
	bl FUN_020237BC
	ldr r0, [r4, #0x1c]
	bl FUN_020237BC
	ldr r0, [r4, #0x20]
	bl FUN_020237BC
	ldr r0, [r4, #0x24]
	bl FUN_020237BC
	pop {r4, pc}
	thumb_func_end ov19_021D4EC0

	thumb_func_start ov19_021D4EE4
ov19_021D4EE4: @ 0x021D4EE4
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r4, #0
	strb r4, [r6]
	strb r4, [r6, #1]
	str r4, [r6, #4]
	adds r5, r6, #0
	adds r7, r4, #0
_021D4EF4:
	adds r0, r6, r4
	strb r7, [r0, #2]
	movs r0, #0xc
	movs r1, #9
	bl FUN_02023790
	str r0, [r5, #0x30]
	movs r0, #0xc
	movs r1, #9
	bl FUN_02023790
	str r0, [r5, #0x34]
	adds r4, r4, #1
	adds r5, #0x30
	cmp r4, #2
	blt _021D4EF4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov19_021D4EE4

	thumb_func_start ov19_021D4F18
ov19_021D4F18: @ 0x021D4F18
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_021D4F1E:
	ldr r0, [r5, #0x30]
	bl FUN_020237BC
	ldr r0, [r5, #0x34]
	bl FUN_020237BC
	adds r4, r4, #1
	adds r5, #0x30
	cmp r4, #2
	blt _021D4F1E
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D4F18

	thumb_func_start ov19_021D4F34
ov19_021D4F34: @ 0x021D4F34
	movs r1, #0
	strb r1, [r0]
	strb r1, [r0, #2]
	strb r1, [r0, #1]
	strh r1, [r0, #4]
	bx lr
	thumb_func_end ov19_021D4F34

	thumb_func_start ov19_021D4F40
ov19_021D4F40: @ 0x021D4F40
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldrb r1, [r4]
	adds r5, r0, #0
	bl FUN_02079AA8
	strb r0, [r4, #1]
	ldrb r1, [r4]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl FUN_02079AF4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021D4F40

	thumb_func_start ov19_021D4F5C
ov19_021D4F5C: @ 0x021D4F5C
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r2, #0
	adds r2, #0x40
	adds r0, r1, #0
	ldrb r1, [r2]
	adds r4, #0x40
	bl FUN_02079AA8
	strb r0, [r4, #1]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021D4F5C

	thumb_func_start ov19_021D4F74
ov19_021D4F74: @ 0x021D4F74
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0x20
	adds r2, r0, #0
	movs r4, #0
	tst r2, r1
	beq _021D4F90
	adds r0, r5, #0
	subs r1, #0x21
	adds r2, r4, #0
	bl ov19_021D4FDC
	adds r4, r0, #0
	b _021D4FCC
_021D4F90:
	movs r1, #0x10
	tst r1, r0
	beq _021D4FA4
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl ov19_021D4FDC
	adds r4, r0, #0
	b _021D4FCC
_021D4FA4:
	movs r2, #0x40
	adds r1, r0, #0
	tst r1, r2
	beq _021D4FBA
	adds r0, r5, #0
	adds r1, r4, #0
	subs r2, #0x41
	bl ov19_021D4FDC
	adds r4, r0, #0
	b _021D4FCC
_021D4FBA:
	movs r1, #0x80
	tst r0, r1
	beq _021D4FCC
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl ov19_021D4FDC
	adds r4, r0, #0
_021D4FCC:
	cmp r4, #1
	bne _021D4FD6
	adds r0, r5, #0
	bl ov19_021D52F4
_021D4FD6:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021D4F74

	thumb_func_start ov19_021D4FDC
ov19_021D4FDC: @ 0x021D4FDC
	push {r4, lr}
	adds r3, r0, #0
	adds r3, #8
	ldrb r4, [r3, #4]
	cmp r4, #4
	bhi _021D502A
	adds r4, r4, r4
	add r4, pc
	ldrh r4, [r4, #6]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	add pc, r4
_021D4FF4: @ jump table
	.2byte _021D4FFE - _021D4FF4 - 2 @ case 0
	.2byte _021D50E0 - _021D4FF4 - 2 @ case 1
	.2byte _021D505E - _021D4FF4 - 2 @ case 2
	.2byte _021D50B4 - _021D4FF4 - 2 @ case 3
	.2byte _021D5088 - _021D4FF4 - 2 @ case 4
_021D4FFE:
	cmp r1, #0
	beq _021D5026
	movs r2, #5
	ldrsb r4, [r3, r2]
	adds r1, r4, r1
	strb r1, [r3, #5]
	ldrsb r1, [r3, r2]
	cmp r1, #0
	bge _021D5014
	adds r1, r2, #0
	b _021D501A
_021D5014:
	cmp r1, #6
	blt _021D501A
	movs r1, #0
_021D501A:
	movs r2, #6
	ldrsb r2, [r3, r2]
	bl ov19_021D5410
	movs r0, #1
	pop {r4, pc}
_021D5026:
	cmp r2, #0
	bne _021D502C
_021D502A:
	b _021D514A
_021D502C:
	movs r1, #6
	ldrsb r1, [r3, r1]
	adds r2, r1, r2
	bpl _021D503C
	movs r1, #2
	movs r2, #0
	strb r1, [r3, #4]
	b _021D5052
_021D503C:
	cmp r2, #4
	ble _021D5052
	movs r1, #5
	ldrsb r1, [r3, r1]
	movs r2, #4
	cmp r1, #5
	bne _021D504E
	adds r1, r2, #0
	b _021D5050
_021D504E:
	movs r1, #3
_021D5050:
	strb r1, [r3, #4]
_021D5052:
	movs r1, #5
	ldrsb r1, [r3, r1]
	bl ov19_021D5410
	movs r0, #1
	pop {r4, pc}
_021D505E:
	cmp r2, #0
	ble _021D5072
	movs r2, #0
	strb r2, [r3, #4]
	movs r1, #5
	ldrsb r1, [r3, r1]
	bl ov19_021D5410
	movs r0, #1
	pop {r4, pc}
_021D5072:
	bge _021D514A
	movs r0, #5
	ldrsb r0, [r3, r0]
	cmp r0, #5
	bne _021D5080
	movs r0, #4
	b _021D5082
_021D5080:
	movs r0, #3
_021D5082:
	strb r0, [r3, #4]
	movs r0, #1
	pop {r4, pc}
_021D5088:
	cmp r2, #0
	bge _021D509E
	movs r1, #0
	strb r1, [r3, #4]
	movs r1, #5
	ldrsb r1, [r3, r1]
	movs r2, #4
	bl ov19_021D5410
	movs r0, #1
	pop {r4, pc}
_021D509E:
	ble _021D50A8
	movs r0, #2
	strb r0, [r3, #4]
	movs r0, #1
	pop {r4, pc}
_021D50A8:
	cmp r1, #0
	beq _021D514A
	movs r0, #3
	strb r0, [r3, #4]
	movs r0, #1
	pop {r4, pc}
_021D50B4:
	cmp r2, #0
	bge _021D50CA
	movs r1, #0
	strb r1, [r3, #4]
	movs r1, #5
	ldrsb r1, [r3, r1]
	movs r2, #4
	bl ov19_021D5410
	movs r0, #1
	pop {r4, pc}
_021D50CA:
	ble _021D50D4
	movs r0, #2
	strb r0, [r3, #4]
	movs r0, #1
	pop {r4, pc}
_021D50D4:
	cmp r1, #0
	beq _021D514A
	movs r0, #4
	strb r0, [r3, #4]
	movs r0, #1
	pop {r4, pc}
_021D50E0:
	movs r4, #8
	ldrsb r0, [r3, r4]
	cmp r2, #0
	bge _021D5102
	cmp r0, #6
	bne _021D50F2
	movs r1, #5
	strb r1, [r3, #8]
	b _021D513E
_021D50F2:
	subs r1, r0, #2
	strb r1, [r3, #8]
	ldrsb r1, [r3, r4]
	cmp r1, #0
	bge _021D513E
	movs r1, #6
	strb r1, [r3, #8]
	b _021D513E
_021D5102:
	ble _021D511E
	cmp r0, #6
	bne _021D510E
	movs r1, #0
	strb r1, [r3, #8]
	b _021D513E
_021D510E:
	adds r1, r0, #2
	strb r1, [r3, #8]
	ldrsb r1, [r3, r4]
	cmp r1, #6
	blt _021D513E
	movs r1, #6
	strb r1, [r3, #8]
	b _021D513E
_021D511E:
	cmp r1, #0
	bge _021D512E
	movs r1, #1
	tst r1, r0
	beq _021D513E
	subs r1, r0, #1
	strb r1, [r3, #8]
	b _021D513E
_021D512E:
	ble _021D513E
	cmp r0, #6
	beq _021D513E
	movs r1, #1
	tst r1, r0
	bne _021D513E
	adds r1, r0, #1
	strb r1, [r3, #8]
_021D513E:
	movs r1, #8
	ldrsb r1, [r3, r1]
	cmp r0, r1
	beq _021D514A
	movs r0, #1
	pop {r4, pc}
_021D514A:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021D4FDC

	thumb_func_start ov19_021D5150
ov19_021D5150: @ 0x021D5150
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0x20
	adds r2, r0, #0
	movs r4, #0
	tst r2, r1
	beq _021D516C
	adds r0, r5, #0
	subs r1, #0x21
	adds r2, r4, #0
	bl ov19_021D51CC
	adds r4, r0, #0
	b _021D51BE
_021D516C:
	movs r1, #0x10
	tst r1, r0
	beq _021D5180
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl ov19_021D51CC
	adds r4, r0, #0
	b _021D51BE
_021D5180:
	movs r2, #0x40
	adds r1, r0, #0
	tst r1, r2
	beq _021D5196
	adds r0, r5, #0
	adds r1, r4, #0
	subs r2, #0x41
	bl ov19_021D51CC
	adds r4, r0, #0
	b _021D51BE
_021D5196:
	movs r2, #0x80
	adds r1, r0, #0
	tst r1, r2
	beq _021D51AC
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl ov19_021D51CC
	adds r4, r0, #0
	b _021D51BE
_021D51AC:
	lsls r1, r2, #2
	tst r1, r0
	beq _021D51B6
	movs r4, #3
	b _021D51BE
_021D51B6:
	adds r2, #0x80
	tst r0, r2
	beq _021D51BE
	movs r4, #4
_021D51BE:
	cmp r4, #1
	bne _021D51C8
	adds r0, r5, #0
	bl ov19_021D52F4
_021D51C8:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D5150

	thumb_func_start ov19_021D51CC
ov19_021D51CC: @ 0x021D51CC
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r7, #0
	adds r4, #8
	ldrb r3, [r4, #4]
	adds r6, r7, #0
	adds r6, #0x14
	cmp r3, #0
	bne _021D5286
	cmp r1, #0
	beq _021D5234
	movs r2, #5
	ldrsb r2, [r4, r2]
	adds r5, r2, r1
	bl ov19_021D5E38
	movs r1, #0xc
	tst r0, r1
	beq _021D5218
	ldrb r0, [r6, #4]
	ldrb r3, [r6, #6]
	adds r2, r5, #0
	adds r1, r5, #0
	cmp r3, r0
	bls _021D5204
	subs r0, r3, r0
	subs r1, r5, r0
	b _021D5208
_021D5204:
	subs r0, r0, r3
	adds r2, r5, r0
_021D5208:
	cmp r1, #0
	bge _021D5210
	movs r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_021D5210:
	cmp r2, #6
	blt _021D5224
	movs r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_021D5218:
	cmp r5, #0
	blt _021D5220
	cmp r5, #6
	blt _021D5224
_021D5220:
	movs r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021D5224:
	movs r2, #6
	ldrsb r2, [r4, r2]
	adds r0, r7, #0
	adds r1, r5, #0
	bl ov19_021D5410
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D5234:
	cmp r2, #0
	beq _021D5286
	movs r1, #6
	ldrsb r1, [r4, r1]
	adds r5, r1, r2
	bl ov19_021D5E38
	movs r1, #0xc
	tst r0, r1
	beq _021D526A
	ldrb r0, [r6, #5]
	ldrb r3, [r6, #7]
	adds r2, r5, #0
	adds r1, r5, #0
	cmp r3, r0
	bls _021D525A
	subs r0, r3, r0
	subs r1, r5, r0
	b _021D525E
_021D525A:
	subs r0, r0, r3
	adds r2, r5, r0
_021D525E:
	cmp r1, #0
	blt _021D5266
	cmp r2, #5
	blt _021D5276
_021D5266:
	movs r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021D526A:
	cmp r5, #0
	blt _021D5272
	cmp r5, #5
	blt _021D5276
_021D5272:
	movs r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021D5276:
	movs r1, #5
	ldrsb r1, [r4, r1]
	adds r0, r7, #0
	adds r2, r5, #0
	bl ov19_021D5410
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D5286:
	bl FUN_02022974
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov19_021D51CC

	thumb_func_start ov19_021D5290
ov19_021D5290: @ 0x021D5290
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #8
	bl ov19_021D5E38
	cmp r0, #2
	bne _021D52BA
	movs r0, #0x49
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0207A0F8
	strb r0, [r4, #8]
	movs r0, #8
	ldrsb r0, [r4, r0]
	cmp r0, #6
	blt _021D52BE
	movs r0, #5
	strb r0, [r4, #8]
	b _021D52BE
_021D52BA:
	movs r0, #0
	strb r0, [r4, #8]
_021D52BE:
	ldrb r0, [r4, #4]
	strb r0, [r4, #9]
	movs r0, #1
	strb r0, [r4, #4]
	adds r0, r5, #0
	bl ov19_021D52F4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021D5290

	thumb_func_start ov19_021D52D0
ov19_021D52D0: @ 0x021D52D0
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #8
	movs r1, #0
	strb r1, [r3, #4]
	movs r2, #9
	ldrsb r2, [r3, r2]
	cmp r2, #0
	beq _021D52EA
	adds r2, r1, #0
	bl ov19_021D5410
_021D52EA:
	adds r0, r4, #0
	bl ov19_021D52F4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021D52D0

	thumb_func_start ov19_021D52F4
ov19_021D52F4: @ 0x021D52F4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #8
	movs r1, #0
	strb r1, [r4, #0xa]
	ldrb r0, [r4, #4]
	cmp r0, #4
	bhi _021D5354
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D5312: @ jump table
	.2byte _021D531C - _021D5312 - 2 @ case 0
	.2byte _021D532C - _021D5312 - 2 @ case 1
	.2byte _021D5354 - _021D5312 - 2 @ case 2
	.2byte _021D5354 - _021D5312 - 2 @ case 3
	.2byte _021D5354 - _021D5312 - 2 @ case 4
_021D531C:
	movs r2, #7
	ldrsb r2, [r4, r2]
	ldr r0, [r5]
	subs r1, r1, #1
	bl FUN_02079C9C
	str r0, [r4]
	b _021D5358
_021D532C:
	movs r0, #8
	ldrsb r6, [r4, r0]
	movs r0, #0x49
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0207A0F8
	cmp r6, r0
	bge _021D534E
	movs r0, #0x49
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r6, #0
	bl FUN_0207A0FC
	str r0, [r4]
	b _021D5358
_021D534E:
	movs r0, #0
	str r0, [r4]
	b _021D5358
_021D5354:
	movs r0, #0
	str r0, [r4]
_021D5358:
	ldr r0, [r4]
	cmp r0, #0
	beq _021D5388
	movs r1, #0xac
	movs r2, #0
	bl FUN_02074570
	cmp r0, #0
	beq _021D5388
	movs r0, #1
	strb r0, [r4, #0xa]
	adds r0, r5, #0
	bl ov19_021D5E38
	movs r1, #6
	tst r0, r1
	bne _021D5388
	ldr r1, [r4]
	adds r0, r5, #0
	adds r2, r5, #0
	bl ov19_021D5888
	movs r0, #1
	pop {r4, r5, r6, pc}
_021D5388:
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021D52F4

	thumb_func_start ov19_021D538C
ov19_021D538C: @ 0x021D538C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x61
	ldr r1, _021D53B4 @ =0x0000FFFF
	lsls r0, r0, #2
	str r1, [r4, r0]
	subs r0, #8
	ldr r0, [r4, r0]
	bl FUN_0202404C
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, _021D53B4 @ =0x0000FFFF
	cmp r1, r0
	beq _021D53B0
	movs r0, #1
	pop {r4, pc}
_021D53B0:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_021D53B4: .4byte 0x0000FFFF
	thumb_func_end ov19_021D538C

	thumb_func_start ov19_021D53B8
ov19_021D53B8: @ 0x021D53B8
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r0, #0
	adds r4, r2, #0
	cmp r5, #0
	bne _021D53D2
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r2, [r4, r0]
	ldr r1, _021D5404 @ =0x0000FFFF
	cmp r2, r1
	bne _021D53D2
	str r6, [r4, r0]
_021D53D2:
	adds r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #4
	bne _021D5400
	cmp r6, #2
	bne _021D5400
	cmp r5, #0
	beq _021D53EE
	cmp r5, #1
	beq _021D53F8
	cmp r5, #3
	beq _021D53F8
	pop {r4, r5, r6, pc}
_021D53EE:
	adds r0, r4, #0
	movs r1, #1
	bl ov19_021D5BA0
	pop {r4, r5, r6, pc}
_021D53F8:
	adds r0, r4, #0
	movs r1, #0
	bl ov19_021D5BA0
_021D5400:
	pop {r4, r5, r6, pc}
	nop
_021D5404: .4byte 0x0000FFFF
	thumb_func_end ov19_021D53B8

	thumb_func_start ov19_021D5408
ov19_021D5408: @ 0x021D5408
	movs r2, #0x43
	lsls r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov19_021D5408

	thumb_func_start ov19_021D5410
ov19_021D5410: @ 0x021D5410
	adds r0, #8
	movs r3, #6
	strb r1, [r0, #5]
	muls r3, r2, r3
	strb r2, [r0, #6]
	adds r1, r1, r3
	strb r1, [r0, #7]
	bx lr
	thumb_func_end ov19_021D5410

	thumb_func_start ov19_021D5420
ov19_021D5420: @ 0x021D5420
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r6, r0, #0
	adds r4, r7, #0
	adds r5, r7, #0
	adds r0, r7, #0
	adds r4, #0x14
	adds r5, #8
	bl ov19_021D5E10
	cmp r0, #0
	bne _021D545C
	bl FUN_02076AF4
	adds r2, r0, #0
	ldr r0, [r5]
	ldr r1, [r4]
	blx FUN_020C4B68
	movs r0, #0x12
	movs r2, #7
	lsls r0, r0, #4
	movs r1, #0
	ldrsb r2, [r5, r2]
	ldr r0, [r6, r0]
	mvns r1, r1
	bl FUN_02079968
	movs r0, #0
	b _021D547A
_021D545C:
	bl FUN_02076AF0
	adds r2, r0, #0
	ldr r0, [r5]
	ldr r1, [r4]
	blx FUN_020C4B68
	movs r0, #0x49
	movs r1, #8
	lsls r0, r0, #2
	ldrsb r1, [r5, r1]
	ldr r0, [r6, r0]
	bl FUN_0207A080
	movs r0, #1
_021D547A:
	strb r0, [r4, #0xb]
	ldr r1, [r4]
	adds r0, r7, #0
	bl ov19_021D5BA8
	movs r0, #5
	ldrsb r0, [r5, r0]
	strb r0, [r4, #6]
	ldrb r0, [r4, #6]
	strb r0, [r4, #4]
	movs r0, #6
	ldrsb r0, [r5, r0]
	strb r0, [r4, #7]
	ldrb r0, [r4, #7]
	strb r0, [r4, #5]
	movs r0, #2
	strb r0, [r7, #0x13]
	movs r0, #0
	strb r0, [r7, #0x12]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov19_021D5420

	thumb_func_start ov19_021D54A4
ov19_021D54A4: @ 0x021D54A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r6, r1, #0
	adds r7, r0, #0
	adds r6, #0x14
	movs r0, #1
	strb r0, [r6, #0xa]
	adds r0, r1, #0
	str r1, [sp, #4]
	bl ov19_021D5E24
	str r0, [sp, #0x14]
	bl FUN_02076AF4
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	add r1, sp, #0x30
	ldr r5, [r0, #0x14]
	add r0, sp, #0x24
	str r0, [sp]
	ldr r0, [sp, #4]
	add r2, sp, #0x2c
	add r3, sp, #0x28
	bl ov19_021D5EE8
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x18]
	cmp r0, r1
	bhi _021D556A
	movs r1, #6
	muls r1, r0, r1
	str r1, [sp, #8]
_021D54EA:
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #8]
	str r1, [sp, #0x1c]
	adds r4, r1, r0
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	cmp r0, r1
	bhi _021D5558
_021D54FA:
	movs r0, #0x12
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r7, r0]
	mvns r1, r1
	adds r2, r4, #0
	bl FUN_02079C9C
	movs r1, #0xac
	movs r2, #0
	str r0, [sp, #0x20]
	bl FUN_02074570
	cmp r0, #0
	beq _021D554A
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x10]
	adds r1, r5, #0
	blx FUN_020C4B68
	movs r0, #0x12
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r7, r0]
	mvns r1, r1
	adds r2, r4, #0
	bl FUN_02079968
	ldr r0, [sp, #0x10]
	adds r5, r5, r0
	ldr r0, [sp, #0xc]
	adds r1, r6, r0
	adds r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	strb r4, [r1, #0xc]
	cmp r4, r0
	bne _021D554A
	movs r0, #0
	strb r0, [r6, #0xa]
_021D554A:
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x2c]
	adds r0, r0, #1
	adds r4, r4, #1
	str r0, [sp, #0x1c]
	cmp r0, r1
	bls _021D54FA
_021D5558:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x24]
	adds r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	adds r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r1
	bls _021D54EA
_021D556A:
	ldr r0, [sp, #0xc]
	strb r0, [r6, #8]
	ldr r1, [sp, #0x28]
	movs r0, #6
	ldr r2, [sp, #0x30]
	muls r0, r1, r0
	adds r0, r2, r0
	strb r0, [r6, #9]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	beq _021D5586
	movs r1, #4
	b _021D5588
_021D5586:
	movs r1, #8
_021D5588:
	ldr r0, [sp, #4]
	strb r1, [r0, #0x13]
	movs r1, #0
	strb r1, [r0, #0x12]
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov19_021D54A4

	thumb_func_start ov19_021D5594
ov19_021D5594: @ 0x021D5594
	adds r2, r1, #0
	adds r1, #8
	movs r0, #5
	ldrsb r0, [r1, r0]
	adds r2, #0x14
	strb r0, [r2, #6]
	ldrb r0, [r2, #6]
	strb r0, [r2, #4]
	movs r0, #6
	ldrsb r0, [r1, r0]
	strb r0, [r2, #7]
	ldrb r0, [r2, #7]
	strb r0, [r2, #5]
	bx lr
	thumb_func_end ov19_021D5594

	thumb_func_start ov19_021D55B0
ov19_021D55B0: @ 0x021D55B0
	adds r2, r1, #0
	adds r1, #8
	movs r0, #5
	ldrsb r0, [r1, r0]
	adds r2, #0x14
	strb r0, [r2, #6]
	movs r0, #6
	ldrsb r0, [r1, r0]
	strb r0, [r2, #7]
	bx lr
	thumb_func_end ov19_021D55B0

	thumb_func_start ov19_021D55C4
ov19_021D55C4: @ 0x021D55C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r1, #0
	adds r0, r1, #0
	str r1, [sp]
	adds r4, #0x14
	adds r6, #8
	movs r7, #0
	bl ov19_021D5E10
	cmp r0, #0
	bne _021D562A
	ldr r0, [r4]
	movs r1, #0x70
	adds r2, r7, #0
	bl FUN_02074570
	str r0, [sp, #4]
	movs r0, #0x12
	movs r2, #7
	lsls r0, r0, #4
	ldrsb r2, [r6, r2]
	ldr r0, [r5, r0]
	ldr r3, [r4]
	subs r1, r7, #1
	bl FUN_02079914
	movs r0, #0x12
	movs r2, #7
	lsls r0, r0, #4
	ldrsb r2, [r6, r2]
	ldr r0, [r5, r0]
	subs r1, r7, #1
	bl FUN_02079C9C
	movs r1, #5
	adds r2, r7, #0
	adds r4, r0, #0
	bl FUN_02074570
	movs r1, #0x7b
	lsls r1, r1, #2
	cmp r0, r1
	bne _021D5672
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _021D5672
	movs r7, #1
	b _021D5672
_021D562A:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _021D563E
	movs r0, #0x49
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4]
	bl FUN_0207A048
	b _021D5658
_021D563E:
	movs r1, #0x1a
	lsls r1, r1, #4
	ldr r0, [r4]
	ldr r1, [r5, r1]
	bl FUN_020774C8
	movs r1, #0x49
	lsls r1, r1, #2
	ldr r0, [r5, r1]
	adds r1, #0x7c
	ldr r1, [r5, r1]
	bl FUN_0207A048
_021D5658:
	movs r0, #0x49
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0207A0F8
	adds r1, r0, #0
	movs r0, #0x49
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	subs r1, r1, #1
	bl FUN_0207A0FC
	adds r4, r0, #0
_021D5672:
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov19_021D5BA8
	adds r0, r5, #0
	bl ov19_021D52F4
	cmp r0, #0
	bne _021D569E
	cmp r7, #1
	bne _021D569E
	ldr r0, [sp]
	adds r1, r4, #0
	adds r2, r5, #0
	bl ov19_021D58AC
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #6
	bl ov19_021D6594
_021D569E:
	ldr r0, [sp]
	movs r1, #1
	strb r1, [r0, #0x13]
	strb r1, [r0, #0x12]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov19_021D55C4

	thumb_func_start ov19_021D56AC
ov19_021D56AC: @ 0x021D56AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r1, #0
	adds r7, r0, #0
	adds r6, #0x14
	adds r0, r1, #0
	str r1, [sp]
	bl ov19_021D5F3C
	str r0, [sp, #8]
	ldrb r0, [r6, #9]
	str r0, [sp, #0xc]
	bl FUN_02076AF4
	str r0, [sp, #4]
	ldr r0, [sp]
	movs r5, #0
	ldr r4, [r0, #0x14]
	ldrb r0, [r6, #8]
	cmp r0, #0
	ble _021D5700
_021D56D6:
	adds r3, r6, r5
	movs r2, #0xc
	ldrsb r3, [r3, r2]
	ldr r2, [sp, #0xc]
	movs r0, #0x12
	lsls r0, r0, #4
	subs r3, r3, r2
	ldr r2, [sp, #8]
	movs r1, #0
	adds r2, r2, r3
	ldr r0, [r7, r0]
	mvns r1, r1
	adds r3, r4, #0
	bl FUN_02079914
	ldr r0, [sp, #4]
	adds r5, r5, #1
	adds r4, r4, r0
	ldrb r0, [r6, #8]
	cmp r5, r0
	blt _021D56D6
_021D5700:
	ldr r0, [sp]
	bl ov19_021D5E24
	adds r2, r0, #0
	movs r0, #0x12
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r7, r0]
	mvns r1, r1
	bl FUN_02079C9C
	adds r1, r0, #0
	ldr r0, [sp]
	bl ov19_021D5BA8
	adds r0, r7, #0
	bl ov19_021D52F4
	movs r0, #0
	strb r0, [r6, #8]
	ldr r0, [sp]
	movs r1, #1
	strb r1, [r0, #0x13]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov19_021D56AC

	thumb_func_start ov19_021D5734
ov19_021D5734: @ 0x021D5734
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r1, #0
	str r1, [sp]
	adds r5, r0, #0
	adds r4, #0x14
	bl FUN_02076AF0
	adds r6, r0, #0
	ldr r0, [sp]
	adds r2, r6, #0
	ldr r7, [r0, #0x14]
	str r0, [sp, #4]
	adds r0, #8
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r1, r7, r6
	blx FUN_020C4B68
	ldr r0, [sp]
	ldr r1, [sp]
	ldr r0, [r0, #8]
	ldr r1, [r1, #0x14]
	adds r2, r6, #0
	blx FUN_020C4B68
	ldr r0, [sp]
	bl ov19_021D5E10
	cmp r0, #0
	bne _021D578E
	ldr r2, [sp, #4]
	movs r0, #0x12
	movs r3, #7
	lsls r0, r0, #4
	ldrsb r2, [r2, r3]
	movs r1, #0
	ldr r0, [r5, r0]
	mvns r1, r1
	adds r3, r7, r6
	bl FUN_02079914
	movs r0, #0
	strb r0, [r4, #0xb]
	b _021D57C8
_021D578E:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _021D57A2
	movs r1, #0x1a
	lsls r1, r1, #4
	ldr r1, [r5, r1]
	adds r0, r7, r6
	bl FUN_020774C8
	b _021D57B0
_021D57A2:
	movs r1, #0x1a
	lsls r1, r1, #4
	ldr r1, [r5, r1]
	adds r0, r7, r6
	adds r2, r6, #0
	blx FUN_020C4B68
_021D57B0:
	movs r3, #0x49
	lsls r3, r3, #2
	ldr r0, [r5, r3]
	ldr r1, [sp, #4]
	movs r2, #8
	ldrsb r1, [r1, r2]
	adds r3, #0x7c
	ldr r2, [r5, r3]
	bl FUN_0207A128
	movs r0, #1
	strb r0, [r4, #0xb]
_021D57C8:
	ldr r0, [sp]
	ldr r1, [r4]
	adds r2, r5, #0
	bl ov19_021D5888
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov19_021D5734

	thumb_func_start ov19_021D57D8
ov19_021D57D8: @ 0x021D57D8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	ldr r2, [r4, #0x14]
	bl FUN_020798A0
	cmp r0, #0
	beq _021D57FA
	movs r0, #1
	strb r0, [r4, #0x13]
	adds r0, r4, #0
	bl ov19_021D52F4
	movs r0, #1
	pop {r4, pc}
_021D57FA:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021D57D8

	thumb_func_start ov19_021D5800
ov19_021D5800: @ 0x021D5800
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x12
	lsls r0, r0, #4
	adds r4, r5, #0
	ldr r0, [r5, r0]
	ldr r2, [r5, #8]
	adds r4, #8
	bl FUN_020798A0
	cmp r0, #0
	beq _021D5830
	movs r0, #0x49
	movs r1, #8
	lsls r0, r0, #2
	ldrsb r1, [r4, r1]
	ldr r0, [r5, r0]
	bl FUN_0207A080
	adds r0, r5, #0
	bl ov19_021D52F4
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D5830:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D5800

	thumb_func_start ov19_021D5834
ov19_021D5834: @ 0x021D5834
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	bl FUN_02073C54
	movs r0, #1
	strb r0, [r4, #0x13]
	adds r0, r4, #0
	bl ov19_021D52F4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021D5834

	thumb_func_start ov19_021D584C
ov19_021D584C: @ 0x021D584C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #8
	bl ov19_021D5E10
	cmp r0, #0
	bne _021D5870
	movs r0, #0x12
	movs r2, #7
	lsls r0, r0, #4
	movs r1, #0
	ldrsb r2, [r4, r2]
	ldr r0, [r5, r0]
	mvns r1, r1
	bl FUN_02079968
	b _021D587E
_021D5870:
	movs r0, #0x49
	movs r1, #8
	lsls r0, r0, #2
	ldrsb r1, [r4, r1]
	ldr r0, [r5, r0]
	bl FUN_0207A080
_021D587E:
	adds r0, r5, #0
	bl ov19_021D52F4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021D584C

	thumb_func_start ov19_021D5888
ov19_021D5888: @ 0x021D5888
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl ov19_021D58AC
	adds r0, r5, #0
	bl ov19_021D5E08
	cmp r0, #4
	bne _021D58A8
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov19_021D59F4
_021D58A8:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov19_021D5888

	thumb_func_start ov19_021D58AC
ov19_021D58AC: @ 0x021D58AC
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r4, r7, #0
	adds r0, r5, #0
	adds r6, r2, #0
	adds r4, #0x4c
	bl FUN_02073D20
	str r0, [sp]
	str r5, [r7, #0x4c]
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074570
	strh r0, [r4, #4]
	adds r0, r5, #0
	movs r1, #6
	movs r2, #0
	bl FUN_02074570
	strh r0, [r4, #6]
	movs r0, #0x47
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_0207A274
	ldrh r1, [r4, #4]
	bl FUN_0207A294
	strh r0, [r4, #8]
	adds r0, r5, #0
	movs r1, #0xad
	movs r2, #0
	bl FUN_02074570
	strb r0, [r4, #0xf]
	ldrh r0, [r4, #4]
	movs r1, #9
	bl FUN_02075894
	adds r7, r0, #0
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	bl FUN_02074570
	adds r2, r0, #0
	ldrh r1, [r4, #4]
	adds r0, r7, #0
	bl FUN_02075B9C
	strb r0, [r4, #0xa]
	adds r0, r5, #0
	movs r1, #0xb
	movs r2, #0
	bl FUN_02074570
	strb r0, [r4, #0xb]
	adds r0, r5, #0
	movs r1, #0xb1
	movs r2, #0
	bl FUN_02074570
	strb r0, [r4, #0xc]
	adds r0, r5, #0
	movs r1, #0xb2
	movs r2, #0
	bl FUN_02074570
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _021D5968
	adds r0, r5, #0
	movs r1, #0xb0
	movs r2, #0
	bl FUN_02074570
	cmp r0, #0
	beq _021D5968
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl FUN_02074570
	adds r2, r0, #0
	ldrh r1, [r4, #4]
	adds r0, r7, #0
	bl FUN_02075DD0
	strb r0, [r4, #0xe]
	b _021D596C
_021D5968:
	movs r0, #0xff
	strb r0, [r4, #0xe]
_021D596C:
	ldr r2, [r4, #0x14]
	adds r0, r5, #0
	movs r1, #0x77
	bl FUN_02074570
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _021D598C
	movs r0, #0x19
	lsls r0, r0, #4
	ldrh r1, [r4, #4]
	ldr r0, [r6, r0]
	ldr r2, [r4, #0x18]
	bl FUN_0200B1B8
	b _021D599A
_021D598C:
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x14]
	bl FUN_02023810
	ldr r0, [r4, #0x14]
	bl FUN_020237E8
_021D599A:
	ldrh r1, [r4, #6]
	cmp r1, #0
	beq _021D59AA
	ldr r0, [r4, #0x1c]
	movs r2, #9
	bl FUN_0207CFA0
	b _021D59B8
_021D59AA:
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	ldr r2, [r4, #0x1c]
	movs r1, #0x14
	bl FUN_0200B1B8
_021D59B8:
	adds r0, r5, #0
	bl FUN_02075BD4
	adds r1, r0, #0
	movs r0, #0x65
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	ldr r2, [r4, #0x20]
	bl FUN_0200B1B8
	adds r0, r5, #0
	movs r1, #0xa
	movs r2, #0
	bl FUN_02074570
	adds r1, r0, #0
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	ldr r2, [r4, #0x24]
	bl FUN_0200B1B8
	adds r0, r7, #0
	bl FUN_020759B8
	ldr r1, [sp]
	adds r0, r5, #0
	bl FUN_02073D48
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021D58AC

	thumb_func_start ov19_021D59F4
ov19_021D59F4: @ 0x021D59F4
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	adds r7, r1, #0
	ldr r1, [sp]
	adds r6, r0, #0
	adds r1, #0xa4
	adds r5, r2, #0
	ldrb r2, [r1]
	movs r1, #0x30
	adds r6, #0x4c
	adds r0, #0xac
	muls r1, r2, r1
	adds r4, r0, r1
	str r7, [r0, r1]
	ldrh r0, [r6, #4]
	strh r0, [r4, #4]
	ldrb r0, [r6, #0xf]
	strb r0, [r4, #6]
	ldrb r0, [r6, #0xa]
	strh r0, [r4, #8]
	ldrb r0, [r4, #6]
	cmp r0, #0
	ldr r0, [r4, #0x28]
	beq _021D5A2C
	ldr r1, [r6, #0x18]
	bl FUN_02023810
	b _021D5A32
_021D5A2C:
	ldr r1, [r6, #0x14]
	bl FUN_02023810
_021D5A32:
	ldr r0, [r4, #0x2c]
	ldr r1, [r6, #0x20]
	bl FUN_02023810
	movs r1, #0x1a
	lsls r1, r1, #4
	ldr r1, [r5, r1]
	adds r0, r7, #0
	bl FUN_020774C8
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02073C88
	adds r6, r0, #0
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0xa4
	movs r2, #0
	bl FUN_02074470
	strh r0, [r4, #0xa]
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0xa5
	movs r2, #0
	bl FUN_02074470
	strh r0, [r4, #0xc]
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0xa6
	movs r2, #0
	bl FUN_02074470
	strh r0, [r4, #0xe]
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0xa8
	movs r2, #0
	bl FUN_02074470
	strh r0, [r4, #0x10]
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0xa9
	movs r2, #0
	bl FUN_02074470
	strh r0, [r4, #0x12]
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0xa7
	movs r2, #0
	bl FUN_02074470
	strh r0, [r4, #0x14]
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0x13
	movs r2, #0
	bl FUN_02074470
	strh r0, [r4, #0x16]
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0x14
	movs r2, #0
	bl FUN_02074470
	strh r0, [r4, #0x18]
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0x15
	movs r2, #0
	bl FUN_02074470
	strh r0, [r4, #0x1a]
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0x16
	movs r2, #0
	bl FUN_02074470
	strh r0, [r4, #0x1c]
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0x17
	movs r2, #0
	bl FUN_02074470
	strh r0, [r4, #0x1e]
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0x36
	movs r2, #0
	bl FUN_02074470
	strh r0, [r4, #0x20]
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0x37
	movs r2, #0
	bl FUN_02074470
	strh r0, [r4, #0x22]
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0x38
	movs r2, #0
	bl FUN_02074470
	strh r0, [r4, #0x24]
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0x39
	movs r2, #0
	bl FUN_02074470
	strh r0, [r4, #0x26]
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0x70
	movs r2, #0
	bl FUN_02074470
	strb r0, [r4, #7]
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r1, r6, #0
	bl FUN_02073CD4
	ldr r0, [sp]
	movs r2, #1
	adds r0, #0xa4
	ldrb r1, [r0]
	ldr r0, [sp]
	adds r0, r0, r1
	adds r0, #0xa6
	strb r2, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021D59F4

	thumb_func_start ov19_021D5B70
ov19_021D5B70: @ 0x021D5B70
	adds r1, r0, #0
	adds r1, #0xa4
	ldrb r2, [r1]
	movs r1, #1
	adds r0, #0xa4
	eors r1, r2
	strb r1, [r0]
	bx lr
	thumb_func_end ov19_021D5B70

	thumb_func_start ov19_021D5B80
ov19_021D5B80: @ 0x021D5B80
	adds r1, r0, #0
	adds r1, #0xa5
	ldrb r1, [r1]
	adds r2, r1, #1
	adds r1, r0, #0
	adds r1, #0xa5
	strb r2, [r1]
	adds r1, r0, #0
	adds r1, #0xa5
	ldrb r1, [r1]
	cmp r1, #3
	blo _021D5B9E
	movs r1, #0
	adds r0, #0xa5
	strb r1, [r0]
_021D5B9E:
	bx lr
	thumb_func_end ov19_021D5B80

	thumb_func_start ov19_021D5BA0
ov19_021D5BA0: @ 0x021D5BA0
	adds r0, #0xa8
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5BA0

	thumb_func_start ov19_021D5BA8
ov19_021D5BA8: @ 0x021D5BA8
	str r1, [r0, #0x4c]
	bx lr
	thumb_func_end ov19_021D5BA8

	thumb_func_start ov19_021D5BAC
ov19_021D5BAC: @ 0x021D5BAC
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0x96
	ldrb r1, [r0]
	adds r2, r4, #0
	add r0, sp, #0
	adds r2, #0x4c
	strb r1, [r0]
	strb r1, [r2, #0xb]
	ldr r0, [r4, #0x4c]
	movs r1, #0xb
	add r2, sp, #0
	bl FUN_02074C60
	adds r0, r4, #0
	bl ov19_021D5E10
	cmp r0, #0
	bne _021D5BE2
	adds r0, r4, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D5BE2
	bl FUN_02024804
_021D5BE2:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov19_021D5BAC

	thumb_func_start ov19_021D5BE8
ov19_021D5BE8: @ 0x021D5BE8
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	add r0, sp, #0x18
	adds r4, r6, #0
	ldrh r1, [r0, #4]
	adds r4, #0x4c
	adds r5, r2, #0
	strh r1, [r4, #6]
	cmp r1, #0
	beq _021D5C0A
	ldr r0, [r4, #0x1c]
	movs r2, #9
	bl FUN_0207CFA0
	b _021D5C18
_021D5C0A:
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r4, #0x1c]
	movs r1, #0x14
	bl FUN_0200B1B8
_021D5C18:
	adds r0, r6, #0
	bl ov19_021D5E10
	cmp r0, #0
	bne _021D5C48
	adds r0, r6, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D5C48
	adds r0, r6, #0
	bl ov19_021D5E24
	adds r2, r0, #0
	add r0, sp, #0x1c
	str r0, [sp]
	movs r0, #0x12
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r5, r0]
	mvns r1, r1
	movs r3, #6
	bl FUN_02079C50
_021D5C48:
	ldr r0, [r4]
	movs r1, #6
	add r2, sp, #0x1c
	bl FUN_02074C60
	ldr r0, [r4]
	movs r1, #5
	movs r2, #0
	bl FUN_02074570
	ldr r1, _021D5CB8 @ =0x000001ED
	cmp r0, r1
	bne _021D5C8A
	ldr r0, [r4]
	bl FUN_02077930
	ldr r0, [r4]
	movs r1, #0xb1
	movs r2, #0
	bl FUN_02074570
	strb r0, [r4, #0xc]
	ldr r0, [r4]
	movs r1, #0xb2
	movs r2, #0
	bl FUN_02074570
	add sp, #4
	strb r0, [r4, #0xd]
	pop {r3, r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
_021D5C8A:
	subs r1, r1, #6
	cmp r0, r1
	bne _021D5CAE
	ldr r0, [r4]
	bl FUN_02077A1C
	ldr r0, [r4]
	movs r1, #0xa
	movs r2, #0
	bl FUN_02074570
	adds r1, r0, #0
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r4, #0x24]
	bl FUN_0200B1B8
_021D5CAE:
	add sp, #4
	pop {r3, r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
_021D5CB8: .4byte 0x000001ED
	thumb_func_end ov19_021D5BE8

	thumb_func_start ov19_021D5CBC
ov19_021D5CBC: @ 0x021D5CBC
	adds r2, r0, #0
	adds r2, #0x40
	ldrb r2, [r2]
	adds r1, r0, #0
	adds r1, #0x40
	adds r3, r2, #1
	adds r2, r0, #0
	adds r2, #0x40
	strb r3, [r2]
	adds r2, r0, #0
	adds r2, #0x40
	ldrb r2, [r2]
	cmp r2, #0x12
	blo _021D5CDC
	movs r2, #0
	strb r2, [r1]
_021D5CDC:
	ldr r3, _021D5CE4 @ =ov19_021D4F40
	ldr r0, [r0]
	bx r3
	nop
_021D5CE4: .4byte ov19_021D4F40
	thumb_func_end ov19_021D5CBC

	thumb_func_start ov19_021D5CE8
ov19_021D5CE8: @ 0x021D5CE8
	adds r2, r0, #0
	adds r2, #0x40
	ldrb r2, [r2]
	adds r1, r0, #0
	adds r1, #0x40
	cmp r2, #0
	beq _021D5CFA
	subs r2, r2, #1
	b _021D5CFC
_021D5CFA:
	movs r2, #0x11
_021D5CFC:
	ldr r3, _021D5D04 @ =ov19_021D4F40
	strb r2, [r1]
	ldr r0, [r0]
	bx r3
	.align 2, 0
_021D5D04: .4byte ov19_021D4F40
	thumb_func_end ov19_021D5CE8

	thumb_func_start ov19_021D5D08
ov19_021D5D08: @ 0x021D5D08
	adds r3, r0, #0
	adds r2, r0, #0
	adds r2, #0x40
	strb r1, [r2]
	adds r3, #0x40
	adds r1, r3, #0
	ldr r3, _021D5D1C @ =ov19_021D4F40
	ldr r0, [r0]
	bx r3
	nop
_021D5D1C: .4byte ov19_021D4F40
	thumb_func_end ov19_021D5D08

	thumb_func_start ov19_021D5D20
ov19_021D5D20: @ 0x021D5D20
	adds r0, #0x98
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5D20

	thumb_func_start ov19_021D5D28
ov19_021D5D28: @ 0x021D5D28
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x4c
	adds r4, r1, #0
	ldrh r1, [r2, #6]
	ldr r0, _021D5D50 @ =0x00000112
	strh r1, [r5, r0]
	adds r0, #0x7a
	ldr r0, [r4, r0]
	ldr r2, [r2, #0x1c]
	movs r1, #0x14
	bl FUN_0200B1B8
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl ov19_021D5BE8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D5D50: .4byte 0x00000112
	thumb_func_end ov19_021D5D28

	thumb_func_start ov19_021D5D54
ov19_021D5D54: @ 0x021D5D54
	ldr r1, _021D5D5C @ =0x00000112
	movs r2, #0
	strh r2, [r0, r1]
	bx lr
	.align 2, 0
_021D5D5C: .4byte 0x00000112
	thumb_func_end ov19_021D5D54

	thumb_func_start ov19_021D5D60
ov19_021D5D60: @ 0x021D5D60
	push {r4, lr}
	ldr r3, _021D5D74 @ =0x00000112
	adds r2, r1, #0
	ldrh r1, [r0, r3]
	movs r4, #0
	strh r4, [r0, r3]
	bl ov19_021D5BE8
	pop {r4, pc}
	nop
_021D5D74: .4byte 0x00000112
	thumb_func_end ov19_021D5D60

	thumb_func_start ov19_021D5D78
ov19_021D5D78: @ 0x021D5D78
	push {r4, lr}
	adds r3, r0, #0
	adds r3, #0x52
	ldr r4, _021D5D90 @ =0x00000112
	adds r2, r1, #0
	ldrh r1, [r0, r4]
	ldrh r3, [r3]
	strh r3, [r0, r4]
	bl ov19_021D5BE8
	pop {r4, pc}
	nop
_021D5D90: .4byte 0x00000112
	thumb_func_end ov19_021D5D78

	thumb_func_start ov19_021D5D94
ov19_021D5D94: @ 0x021D5D94
	adds r0, #0x9c
	strb r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5D94

	thumb_func_start ov19_021D5D9C
ov19_021D5D9C: @ 0x021D5D9C
	adds r0, #0x9e
	strb r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5D9C

	thumb_func_start ov19_021D5DA4
ov19_021D5DA4: @ 0x021D5DA4
	adds r0, #0x9d
	strb r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5DA4

	thumb_func_start ov19_021D5DAC
ov19_021D5DAC: @ 0x021D5DAC
	adds r0, #0xa0
	strh r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5DAC

	thumb_func_start ov19_021D5DB4
ov19_021D5DB4: @ 0x021D5DB4
	cmp r1, #0
	bne _021D5DC0
	movs r1, #0
	adds r0, #0x4a
	strh r1, [r0]
	bx lr
_021D5DC0:
	adds r2, r0, #0
	adds r2, #0x4a
	ldrh r3, [r2]
	movs r2, #1
	subs r1, r1, #1
	lsls r2, r1
	adds r1, r3, #0
	eors r1, r2
	adds r0, #0x4a
	strh r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5DB4

	thumb_func_start ov19_021D5DD8
ov19_021D5DD8: @ 0x021D5DD8
	adds r1, r0, #0
	adds r1, #0x49
	ldrb r2, [r1]
	movs r1, #1
	adds r0, #0x49
	eors r1, r2
	strb r1, [r0]
	bx lr
	thumb_func_end ov19_021D5DD8

	thumb_func_start ov19_021D5DE8
ov19_021D5DE8: @ 0x021D5DE8
	movs r1, #0x63
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov19_021D5DE8

	thumb_func_start ov19_021D5DF0
ov19_021D5DF0: @ 0x021D5DF0
	movs r1, #0x67
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov19_021D5DF0

	thumb_func_start ov19_021D5DF8
ov19_021D5DF8: @ 0x021D5DF8
	movs r1, #0x69
	lsls r1, r1, #2
	ldr r3, _021D5E04 @ =FUN_02027B50
	ldr r0, [r0, r1]
	bx r3
	nop
_021D5E04: .4byte FUN_02027B50
	thumb_func_end ov19_021D5DF8

	thumb_func_start ov19_021D5E08
ov19_021D5E08: @ 0x021D5E08
	adds r0, #0x48
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5E08

	thumb_func_start ov19_021D5E10
ov19_021D5E10: @ 0x021D5E10
	ldrb r0, [r0, #0xc]
	bx lr
	thumb_func_end ov19_021D5E10

	thumb_func_start ov19_021D5E14
ov19_021D5E14: @ 0x021D5E14
	movs r1, #0xd
	ldrsb r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5E14

	thumb_func_start ov19_021D5E1C
ov19_021D5E1C: @ 0x021D5E1C
	movs r1, #0xe
	ldrsb r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5E1C

	thumb_func_start ov19_021D5E24
ov19_021D5E24: @ 0x021D5E24
	movs r1, #0xf
	ldrsb r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5E24

	thumb_func_start ov19_021D5E2C
ov19_021D5E2C: @ 0x021D5E2C
	movs r1, #0x10
	ldrsb r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5E2C

	thumb_func_start ov19_021D5E34
ov19_021D5E34: @ 0x021D5E34
	ldrb r0, [r0, #0x12]
	bx lr
	thumb_func_end ov19_021D5E34

	thumb_func_start ov19_021D5E38
ov19_021D5E38: @ 0x021D5E38
	ldrb r0, [r0, #0x13]
	bx lr
	thumb_func_end ov19_021D5E38

	thumb_func_start ov19_021D5E3C
ov19_021D5E3C: @ 0x021D5E3C
	ldrb r1, [r0, #0x13]
	cmp r1, #0
	beq _021D5E46
	ldrb r0, [r0, #0x1f]
	bx lr
_021D5E46:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5E3C

	thumb_func_start ov19_021D5E4C
ov19_021D5E4C: @ 0x021D5E4C
	ldrb r1, [r0, #0x13]
	cmp r1, #2
	beq _021D5E56
	cmp r1, #4
	bne _021D5E5A
_021D5E56:
	movs r0, #1
	bx lr
_021D5E5A:
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	beq _021D5E64
	movs r0, #1
	bx lr
_021D5E64:
	movs r0, #0
	bx lr
	thumb_func_end ov19_021D5E4C

	thumb_func_start ov19_021D5E68
ov19_021D5E68: @ 0x021D5E68
	adds r0, #0x40
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5E68

	thumb_func_start ov19_021D5E70
ov19_021D5E70: @ 0x021D5E70
	adds r0, #0x4c
	bx lr
	thumb_func_end ov19_021D5E70

	thumb_func_start ov19_021D5E74
ov19_021D5E74: @ 0x021D5E74
	push {r4, lr}
	adds r4, r0, #0
	bl ov19_021D5E4C
	cmp r0, #0
	beq _021D5E86
	adds r4, #0x52
	ldrh r0, [r4]
	pop {r4, pc}
_021D5E86:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021D5E74

	thumb_func_start ov19_021D5E8C
ov19_021D5E8C: @ 0x021D5E8C
	adds r0, #0x40
	bx lr
	thumb_func_end ov19_021D5E8C

	thumb_func_start ov19_021D5E90
ov19_021D5E90: @ 0x021D5E90
	ldr r0, [r0]
	bx lr
	thumb_func_end ov19_021D5E90

	thumb_func_start ov19_021D5E94
ov19_021D5E94: @ 0x021D5E94
	movs r1, #0x43
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov19_021D5E94

	thumb_func_start ov19_021D5E9C
ov19_021D5E9C: @ 0x021D5E9C
	ldr r0, [r0, #0x4c]
	bx lr
	thumb_func_end ov19_021D5E9C

	thumb_func_start ov19_021D5EA0
ov19_021D5EA0: @ 0x021D5EA0
	adds r0, #0x57
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5EA0

	thumb_func_start ov19_021D5EA8
ov19_021D5EA8: @ 0x021D5EA8
	adds r0, #0x98
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5EA8

	thumb_func_start ov19_021D5EB0
ov19_021D5EB0: @ 0x021D5EB0
	movs r1, #0xa0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5EB0

	thumb_func_start ov19_021D5EB8
ov19_021D5EB8: @ 0x021D5EB8
	adds r0, #0x9e
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5EB8

	thumb_func_start ov19_021D5EC0
ov19_021D5EC0: @ 0x021D5EC0
	adds r0, #0x9d
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5EC0

	thumb_func_start ov19_021D5EC8
ov19_021D5EC8: @ 0x021D5EC8
	push {r4, lr}
	adds r4, r0, #0
	bl ov19_021D5E08
	cmp r0, #3
	beq _021D5EDA
	adds r4, #0x4a
	ldrh r0, [r4]
	pop {r4, pc}
_021D5EDA:
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021D5EC8

	thumb_func_start ov19_021D5EE0
ov19_021D5EE0: @ 0x021D5EE0
	adds r0, #0x49
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5EE0

	thumb_func_start ov19_021D5EE8
ov19_021D5EE8: @ 0x021D5EE8
	push {r3, r4, r5, r6}
	adds r0, #0x14
	ldrb r6, [r0, #6]
	ldrb r5, [r0, #4]
	ldr r4, [sp, #0x10]
	cmp r5, r6
	bhi _021D5EFC
	str r5, [r1]
	ldrb r1, [r0, #6]
	b _021D5F00
_021D5EFC:
	str r6, [r1]
	ldrb r1, [r0, #4]
_021D5F00:
	str r1, [r2]
	ldrb r2, [r0, #7]
	ldrb r1, [r0, #5]
	cmp r1, r2
	bhi _021D5F14
	str r1, [r3]
	ldrb r0, [r0, #7]
	str r0, [r4]
	pop {r3, r4, r5, r6}
	bx lr
_021D5F14:
	str r2, [r3]
	ldrb r0, [r0, #5]
	str r0, [r4]
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5EE8

	thumb_func_start ov19_021D5F20
ov19_021D5F20: @ 0x021D5F20
	adds r0, #0x14
	ldrb r2, [r0, #4]
	ldrb r1, [r0, #6]
	cmp r2, r1
	bne _021D5F36
	ldrb r1, [r0, #5]
	ldrb r0, [r0, #7]
	cmp r1, r0
	bne _021D5F36
	movs r0, #1
	bx lr
_021D5F36:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5F20

	thumb_func_start ov19_021D5F3C
ov19_021D5F3C: @ 0x021D5F3C
	push {r3, r4}
	adds r1, r0, #0
	adds r1, #0x14
	movs r2, #0xd
	movs r3, #0xe
	ldrsb r2, [r0, r2]
	ldrsb r0, [r0, r3]
	ldrb r4, [r1, #4]
	ldrb r3, [r1, #6]
	cmp r3, r4
	bls _021D5F56
	subs r3, r3, r4
	subs r2, r2, r3
_021D5F56:
	ldrb r3, [r1, #5]
	ldrb r1, [r1, #7]
	cmp r1, r3
	bls _021D5F62
	subs r1, r1, r3
	subs r0, r0, r1
_021D5F62:
	movs r1, #6
	muls r1, r0, r1
	adds r0, r2, r1
	pop {r3, r4}
	bx lr
	thumb_func_end ov19_021D5F3C

	thumb_func_start ov19_021D5F6C
ov19_021D5F6C: @ 0x021D5F6C
	adds r0, #0x14
	adds r2, r0, r1
	movs r1, #0xc
	ldrsb r1, [r2, r1]
	ldrb r0, [r0, #9]
	subs r0, r1, r0
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5F6C

	thumb_func_start ov19_021D5F7C
ov19_021D5F7C: @ 0x021D5F7C
	ldr r1, _021D5F84 @ =0x00000112
	ldrh r0, [r0, r1]
	bx lr
	nop
_021D5F84: .4byte 0x00000112
	thumb_func_end ov19_021D5F7C

	thumb_func_start ov19_021D5F88
ov19_021D5F88: @ 0x021D5F88
	push {r4, lr}
	adds r4, r0, #0
	bl ov19_021D5F7C
	cmp r0, #0
	bne _021D5F9A
	adds r0, r4, #0
	bl ov19_021D5E74
_021D5F9A:
	pop {r4, pc}
	thumb_func_end ov19_021D5F88

	thumb_func_start ov19_021D5F9C
ov19_021D5F9C: @ 0x021D5F9C
	adds r0, #0xa4
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5F9C

	thumb_func_start ov19_021D5FA4
ov19_021D5FA4: @ 0x021D5FA4
	adds r0, #0xa5
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5FA4

	thumb_func_start ov19_021D5FAC
ov19_021D5FAC: @ 0x021D5FAC
	movs r2, #0x30
	adds r0, #0xac
	muls r2, r1, r2
	adds r0, r0, r2
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5FAC

	thumb_func_start ov19_021D5FB8
ov19_021D5FB8: @ 0x021D5FB8
	adds r0, r0, r1
	adds r0, #0xa6
	ldrb r0, [r0]
	bx lr
	thumb_func_end ov19_021D5FB8

	thumb_func_start ov19_021D5FC0
ov19_021D5FC0: @ 0x021D5FC0
	adds r0, #0xa8
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5FC0

	thumb_func_start ov19_021D5FC8
ov19_021D5FC8: @ 0x021D5FC8
	adds r0, #0x5b
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D5FC8

	thumb_func_start ov19_021D5FD0
ov19_021D5FD0: @ 0x021D5FD0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl ov19_021D5E38
	cmp r0, #1
	bne _021D5FF6
	adds r0, r5, #0
	bl ov19_021D5E10
	cmp r0, #0
	bne _021D6008
	ldr r0, [r5, #0x4c]
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_02074570
	pop {r4, r5, r6, pc}
_021D5FF6:
	ldrb r0, [r5, #0x1f]
	cmp r0, #0
	bne _021D6008
	ldr r0, [r5, #0x4c]
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_02074570
	pop {r4, r5, r6, pc}
_021D6008:
	ldr r0, [r5, #0x4c]
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_02074470
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021D5FD0

	thumb_func_start ov19_021D6014
ov19_021D6014: @ 0x021D6014
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl ov19_021D5E10
	cmp r0, #0
	bne _021D6030
	ldr r0, [r5, #0x4c]
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_02074570
	pop {r4, r5, r6, pc}
_021D6030:
	ldr r0, [r5, #8]
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_02074470
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021D6014

	thumb_func_start ov19_021D603C
ov19_021D603C: @ 0x021D603C
	push {r3, r4, r5, r6}
	ldr r4, _021D60A4 @ =ov19_021D6104
	adds r6, r0, #0
	str r4, [r0, #0x30]
	movs r4, #0
	str r4, [r0, #0x1c]
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	str r1, [r0, #0x14]
	str r2, [r0, #0x18]
	str r1, [r0, #4]
	adds r4, r0, #0
	str r2, [r0, #8]
	lsls r2, r2, #0x18
	movs r5, #0xfe
	adds r4, #0x28
	strb r5, [r4]
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	adds r6, #0x29
	strb r4, [r6]
	adds r6, r0, #0
	lsrs r2, r2, #0x18
	adds r6, #0x2a
	strb r2, [r6]
	adds r6, r0, #0
	adds r6, #0x2b
	strb r3, [r6]
	adds r3, r0, #0
	adds r3, #0x2c
	strb r5, [r3]
	adds r3, r0, #0
	adds r3, #0x2d
	strb r4, [r3]
	adds r3, r0, #0
	adds r3, #0x2e
	strb r2, [r3]
	adds r2, r0, #0
	adds r2, #0x2f
	ldr r3, [sp, #0x10]
	cmp r1, #0x80
	strb r3, [r2]
	bge _021D609A
	movs r1, #1
	str r1, [r0, #0x24]
	pop {r3, r4, r5, r6}
	bx lr
_021D609A:
	subs r5, #0xff
	str r5, [r0, #0x24]
	pop {r3, r4, r5, r6}
	bx lr
	nop
_021D60A4: .4byte ov19_021D6104
	thumb_func_end ov19_021D603C

	thumb_func_start ov19_021D60A8
ov19_021D60A8: @ 0x021D60A8
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r0, #0x2c
	bl FUN_02022734
	cmp r0, #1
	bne _021D60E8
	adds r0, r5, #0
	adds r0, #0x28
	bl FUN_02022734
	cmp r0, #0
	bne _021D60E8
	ldr r0, [r5, #0x1c]
	movs r4, #1
	cmp r0, #0
	bne _021D60D0
	adds r6, r4, #0
	b _021D60D2
_021D60D0:
	movs r6, #0
_021D60D2:
	add r0, sp, #4
	add r1, sp, #0
	bl FUN_020227A4
	cmp r0, #0
	beq _021D60EC
	ldr r0, [sp, #4]
	str r0, [r5, #0x14]
	ldr r0, [sp]
	str r0, [r5, #0x18]
	b _021D60EC
_021D60E8:
	movs r4, #0
	adds r6, r4, #0
_021D60EC:
	str r4, [r5, #0x1c]
	ldr r3, [r5, #0x30]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	blx r3
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021D60A8

	thumb_func_start ov19_021D60FC
ov19_021D60FC: @ 0x021D60FC
	movs r2, #0
	str r2, [r0]
	str r1, [r0, #0x30]
	bx lr
	thumb_func_end ov19_021D60FC

	thumb_func_start ov19_021D6104
ov19_021D6104: @ 0x021D6104
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _021D612C
	cmp r2, #0
	beq _021D612C
	ldr r1, [r4, #0x14]
	str r1, [r4, #4]
	ldr r2, [r4, #0x18]
	str r2, [r4, #8]
	ldr r1, [r4, #4]
	bl ov19_021D6164
	strh r0, [r4, #0x20]
	ldr r1, _021D6130 @ =ov19_021D6134
	adds r0, r4, #0
	bl ov19_021D60FC
	movs r0, #1
	pop {r4, pc}
_021D612C:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_021D6130: .4byte ov19_021D6134
	thumb_func_end ov19_021D6104

	thumb_func_start ov19_021D6134
ov19_021D6134: @ 0x021D6134
	push {r3, lr}
	cmp r1, #0
	bne _021D6144
	ldr r1, _021D6148 @ =ov19_021D6104
	bl ov19_021D60FC
	movs r0, #3
	pop {r3, pc}
_021D6144:
	movs r0, #2
	pop {r3, pc}
	.align 2, 0
_021D6148: .4byte ov19_021D6104
	thumb_func_end ov19_021D6134

	thumb_func_start ov19_021D614C
ov19_021D614C: @ 0x021D614C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl ov19_021D6164
	adds r2, r0, #0
	ldrh r1, [r4, #0x20]
	adds r0, r4, #0
	bl ov19_021D617C
	pop {r4, pc}
	thumb_func_end ov19_021D614C

	thumb_func_start ov19_021D6164
ov19_021D6164: @ 0x021D6164
	adds r3, r0, #0
	ldr r0, [r3, #0x10]
	subs r0, r2, r0
	ldr r2, [r3, #0xc]
	ldr r3, _021D6178 @ =FUN_020BDA20
	subs r1, r1, r2
	lsls r0, r0, #0xc
	lsls r1, r1, #0xc
	bx r3
	nop
_021D6178: .4byte FUN_020BDA20
	thumb_func_end ov19_021D6164

	thumb_func_start ov19_021D617C
ov19_021D617C: @ 0x021D617C
	push {r4, r5}
	subs r2, r2, r1
	bpl _021D618A
	movs r4, #0
	mvns r4, r4
	muls r2, r4, r2
	b _021D618C
_021D618A:
	movs r4, #1
_021D618C:
	ldr r5, _021D61AC @ =0x021DFE44
	movs r3, #0
_021D6190:
	ldrh r1, [r5]
	cmp r2, r1
	blt _021D619E
	adds r3, r3, #1
	adds r5, r5, #2
	cmp r3, #2
	blo _021D6190
_021D619E:
	ldr r1, [r0, #0x24]
	adds r0, r3, #0
	muls r0, r4, r0
	muls r0, r1, r0
	pop {r4, r5}
	bx lr
	nop
_021D61AC: .4byte 0x021DFE44
	thumb_func_end ov19_021D617C

	thumb_func_start ov19_021D61B0
ov19_021D61B0: @ 0x021D61B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r1, #0
	str r0, [sp, #0x14]
	ldr r1, _021D6430 @ =0x0000B3B4
	movs r0, #0xa
	adds r7, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	beq _021D61DE
	movs r0, #0x16
	lsls r0, r0, #4
	str r5, [r4, r0]
	movs r0, #0xa
	bl FUN_02018340
	movs r1, #0x57
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021D61E0
_021D61DE:
	b _021D642A
_021D61E0:
	movs r0, #0x12
	movs r1, #0xa
	movs r5, #1
	bl FUN_02006C24
	adds r6, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r1, #1
	lsls r1, r1, #0x1a
	ldr r0, [r1]
	ldr r3, _021D6434 @ =0xFFFFE0FF
	ands r0, r3
	str r0, [r1]
	ldr r0, _021D6438 @ =0x04001000
	ldr r2, [r0]
	ands r2, r3
	str r2, [r0]
	ldr r3, [r1]
	ldr r2, _021D643C @ =0xFFCFFFEF
	ands r3, r2
	ldr r2, _021D6440 @ =0x00100010
	orrs r2, r3
	str r2, [r1]
	ldr r2, [r0]
	ldr r1, _021D643C @ =0xFFCFFFEF
	ands r2, r1
	movs r1, #0x10
	orrs r1, r2
	str r1, [r0]
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r2, #0x80
	str r2, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x20
	str r3, [sp, #0xc]
	movs r1, #0xa
	str r1, [sp, #0x10]
	adds r1, r2, #0
	adds r2, r0, #0
	bl FUN_0200A784
	adds r1, r4, #0
	movs r0, #0x80
	adds r1, #0x1c
	movs r2, #0xa
	bl FUN_020095C4
	str r0, [r4, #0x18]
	adds r0, r4, #0
	movs r2, #6
	adds r0, #0x1c
	movs r1, #0
	lsls r2, r2, #0x12
	bl FUN_0200964C
	movs r0, #0x51
	lsls r0, r0, #2
	adds r0, r4, r0
	blx FUN_020A81D0
	movs r0, #0xa
	str r0, [sp]
	movs r0, #0x51
	lsls r0, r0, #2
	adds r0, r4, r0
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r1, #0x1a
	adds r2, r5, #0
	movs r3, #0
	bl FUN_0200716C
	movs r0, #0
	movs r1, #0xa
	bl FUN_02002BEC
	movs r0, #0xa
	bl FUN_0200762C
	movs r1, #0x56
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r1, #0
	adds r2, r4, #0
	adds r0, r1, #0
_021D62A2:
	adds r1, r1, #1
	str r0, [r2, #8]
	adds r2, r2, #4
	cmp r1, #4
	blo _021D62A2
	bl ov19_021D7970
	ldr r0, [sp, #0x14]
	movs r2, #0x59
	str r4, [r0]
	lsls r2, r2, #2
	str r6, [sp]
	adds r0, r4, r2
	subs r2, r2, #4
	ldr r2, [r4, r2]
	ldr r3, [r4, #0x18]
	adds r1, r4, #0
	bl ov19_021DA270
	ands r5, r0
	ldr r0, [r4, #0x18]
	movs r3, #0x16
	str r0, [sp]
	lsls r3, r3, #4
	movs r0, #0x43
	ldr r2, [r4, r3]
	subs r3, r3, #4
	lsls r0, r0, #4
	ldr r3, [r4, r3]
	adds r0, r4, r0
	adds r1, r4, #0
	bl ov19_021D79F8
	movs r2, #0x16
	ands r5, r0
	str r6, [sp]
	ldr r0, _021D6444 @ =0x00005DC0
	lsls r2, r2, #4
	ldr r2, [r4, r2]
	ldr r3, [r4, #0x18]
	adds r0, r4, r0
	adds r1, r4, #0
	bl ov19_021D8B54
	movs r2, #0x16
	ands r5, r0
	str r6, [sp]
	ldr r0, _021D6448 @ =0x00006558
	lsls r2, r2, #4
	ldr r2, [r4, r2]
	ldr r3, [r4, #0x18]
	adds r0, r4, r0
	adds r1, r4, #0
	bl ov19_021DA814
	ands r5, r0
	adds r0, r7, #0
	bl ov19_021D5DE8
	ldr r1, [r4, #0x18]
	movs r3, #0x16
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, _021D644C @ =0x000065A0
	str r6, [sp, #8]
	lsls r3, r3, #4
	ldr r2, [r4, r3]
	subs r3, r3, #4
	ldr r3, [r4, r3]
	adds r0, r4, r0
	adds r1, r4, #0
	bl ov19_021DA92C
	ands r5, r0
	adds r0, r7, #0
	bl ov19_021D5DE8
	str r0, [sp, #0x18]
	adds r0, r7, #0
	bl ov19_021D5DF0
	str r0, [sp, #0x1c]
	adds r0, r7, #0
	bl ov19_021D5DF8
	ldr r1, [r4, #0x18]
	movs r3, #0x16
	str r1, [sp]
	ldr r1, [sp, #0x18]
	lsls r3, r3, #4
	str r1, [sp, #4]
	ldr r1, [sp, #0x1c]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	ldr r0, _021D6450 @ =0x000065F4
	ldr r2, [r4, r3]
	subs r3, r3, #4
	ldr r3, [r4, r3]
	adds r0, r4, r0
	adds r1, r4, #0
	bl ov19_021DB2FC
	ands r5, r0
	ldr r0, [r4, #0x18]
	movs r3, #0x16
	str r0, [sp]
	ldr r0, _021D6454 @ =0x0000662C
	str r6, [sp, #4]
	lsls r3, r3, #4
	ldr r2, [r4, r3]
	subs r3, r3, #4
	ldr r3, [r4, r3]
	adds r0, r4, r0
	adds r1, r4, #0
	bl ov19_021DB8E4
	ands r5, r0
	ldr r0, [r4, #0x18]
	movs r3, #0x16
	str r0, [sp]
	ldr r0, _021D6458 @ =0x0000B22C
	str r6, [sp, #4]
	lsls r3, r3, #4
	ldr r2, [r4, r3]
	subs r3, r3, #4
	ldr r3, [r4, r3]
	adds r0, r4, r0
	adds r1, r4, #0
	bl ov19_021DC5F0
	ands r5, r0
	ldr r0, [r4, #0x18]
	movs r3, #0x16
	str r0, [sp]
	lsls r3, r3, #4
	ldr r0, _021D645C @ =0x0000B3A4
	ldr r2, [r4, r3]
	subs r3, r3, #4
	ldr r3, [r4, r3]
	adds r0, r4, r0
	adds r1, r4, #0
	bl ov19_021DCF88
	ands r5, r0
	ldr r0, [r4, #0x18]
	movs r3, #0x16
	str r0, [sp]
	lsls r3, r3, #4
	ldr r0, _021D6460 @ =0x0000B3A8
	ldr r2, [r4, r3]
	subs r3, r3, #4
	ldr r3, [r4, r3]
	adds r0, r4, r0
	adds r1, r4, #0
	bl ov19_021DE3E8
	ands r5, r0
	adds r0, r7, #0
	bl ov19_021D5DE8
	ldr r1, [r4, #0x18]
	movs r3, #0x16
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, _021D6464 @ =0x0000B3AC
	str r6, [sp, #8]
	lsls r3, r3, #4
	ldr r2, [r4, r3]
	subs r3, r3, #4
	ldr r3, [r4, r3]
	adds r0, r4, r0
	adds r1, r4, #0
	bl ov19_021DEC04
	ands r5, r0
	ldr r0, _021D6468 @ =0x0000B3B0
	adds r1, r4, #0
	str r7, [r4, r0]
	ldr r0, _021D646C @ =ov19_021D6474
	movs r2, #2
	bl FUN_0200D9E8
	str r0, [r4]
	ldr r0, _021D6470 @ =ov19_021D6664
	adds r1, r4, #0
	movs r2, #1
	bl ov19_021D77C8
	str r0, [r4, #4]
	adds r0, r6, #0
	bl FUN_02006CA8
	add sp, #0x20
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D642A:
	movs r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D6430: .4byte 0x0000B3B4
_021D6434: .4byte 0xFFFFE0FF
_021D6438: .4byte 0x04001000
_021D643C: .4byte 0xFFCFFFEF
_021D6440: .4byte 0x00100010
_021D6444: .4byte 0x00005DC0
_021D6448: .4byte 0x00006558
_021D644C: .4byte 0x000065A0
_021D6450: .4byte 0x000065F4
_021D6454: .4byte 0x0000662C
_021D6458: .4byte 0x0000B22C
_021D645C: .4byte 0x0000B3A4
_021D6460: .4byte 0x0000B3A8
_021D6464: .4byte 0x0000B3AC
_021D6468: .4byte 0x0000B3B0
_021D646C: .4byte ov19_021D6474
_021D6470: .4byte ov19_021D6664
	thumb_func_end ov19_021D61B0

	thumb_func_start ov19_021D6474
ov19_021D6474: @ 0x021D6474
	push {r4, lr}
	adds r4, r1, #0
	bl ov19_021D797C
	blx FUN_020BFAB8
	blx FUN_020BFBE4
	blx FUN_020A73C0
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02007768
	ldr r0, _021D649C @ =0x04000540
	movs r1, #0
	str r1, [r0]
	pop {r4, pc}
	nop
_021D649C: .4byte 0x04000540
	thumb_func_end ov19_021D6474

	thumb_func_start ov19_021D64A0
ov19_021D64A0: @ 0x021D64A0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	ldr r0, [r4]
	bl FUN_0200DA58
	ldr r0, [r4, #4]
	bl FUN_0200DA58
	ldr r0, _021D6570 @ =0x0000B3AC
	ldr r0, [r4, r0]
	bl ov19_021DECAC
	ldr r0, _021D6574 @ =0x0000B3A8
	ldr r0, [r4, r0]
	bl ov19_021DE440
	ldr r0, _021D6578 @ =0x0000B3A4
	ldr r0, [r4, r0]
	bl ov19_021DD078
	ldr r0, _021D657C @ =0x0000B22C
	adds r0, r4, r0
	bl ov19_021DC680
	ldr r0, _021D6580 @ =0x0000662C
	adds r0, r4, r0
	bl ov19_021DBAD0
	ldr r0, _021D6584 @ =0x000065F4
	adds r0, r4, r0
	bl ov19_021DB370
	ldr r0, _021D6588 @ =0x000065A0
	adds r0, r4, r0
	bl ov19_021DA9E0
	ldr r0, _021D658C @ =0x00006558
	adds r0, r4, r0
	bl ov19_021DA8D8
	ldr r0, _021D6590 @ =0x00005DC0
	adds r0, r4, r0
	bl ov19_021D8E84
	movs r0, #0x43
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov19_021D7A74
	movs r0, #0x59
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov19_021DA384
	ldr r0, [r4, #0x18]
	bl FUN_02021964
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #3
	bl FUN_02019044
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #2
	bl FUN_02019044
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02019044
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #4
	bl FUN_02019044
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02007B6C
	movs r0, #0
	bl FUN_02002C28
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_020181C4
	bl FUN_0200A878
	pop {r4, pc}
	.align 2, 0
_021D6570: .4byte 0x0000B3AC
_021D6574: .4byte 0x0000B3A8
_021D6578: .4byte 0x0000B3A4
_021D657C: .4byte 0x0000B22C
_021D6580: .4byte 0x0000662C
_021D6584: .4byte 0x000065F4
_021D6588: .4byte 0x000065A0
_021D658C: .4byte 0x00006558
_021D6590: .4byte 0x00005DC0
	thumb_func_end ov19_021D64A0

	thumb_func_start ov19_021D6594
ov19_021D6594: @ 0x021D6594
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	cmp r6, #0x34
	bhs _021D65F0
	movs r4, #0
	adds r1, r5, #0
_021D65A2:
	ldr r0, [r1, #8]
	cmp r0, #0
	bne _021D65E6
	ldr r0, _021D65F8 @ =0x021DFF9C
	lsls r7, r6, #3
	ldr r0, [r0, r7]
	str r0, [sp]
	ldr r1, [sp]
	movs r0, #0xa
	adds r1, #0x14
	bl FUN_02018144
	adds r1, r0, #0
	beq _021D65E0
	str r6, [r1]
	strh r4, [r1, #4]
	movs r0, #0
	strh r0, [r1, #6]
	ldr r0, [sp]
	str r5, [r1, #0xc]
	adds r0, r1, r0
	str r0, [r1, #0x10]
	ldr r0, _021D65FC @ =0x021DFF98
	movs r2, #1
	ldr r0, [r0, r7]
	bl FUN_0200D9E8
	lsls r1, r4, #2
	adds r1, r5, r1
	str r0, [r1, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021D65E0:
	bl FUN_02022974
	pop {r3, r4, r5, r6, r7, pc}
_021D65E6:
	adds r4, r4, #1
	adds r1, r1, #4
	cmp r4, #4
	blo _021D65A2
	pop {r3, r4, r5, r6, r7, pc}
_021D65F0:
	bl FUN_02022974
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D65F8: .4byte 0x021DFF9C
_021D65FC: .4byte 0x021DFF98
	thumb_func_end ov19_021D6594

	thumb_func_start ov19_021D6600
ov19_021D6600: @ 0x021D6600
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
_021D6608:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021D661C
	bl FUN_0201CED0
	ldr r0, [r0]
	cmp r0, r6
	bne _021D661C
	movs r0, #0
	pop {r4, r5, r6, pc}
_021D661C:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _021D6608
	movs r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021D6600

	thumb_func_start ov19_021D6628
ov19_021D6628: @ 0x021D6628
	movs r2, #0
_021D662A:
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _021D6634
	movs r0, #0
	bx lr
_021D6634:
	adds r2, r2, #1
	adds r0, r0, #4
	cmp r2, #4
	blt _021D662A
	movs r0, #1
	bx lr
	thumb_func_end ov19_021D6628

	thumb_func_start ov19_021D6640
ov19_021D6640: @ 0x021D6640
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #4]
	ldr r4, [r5, #0xc]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r0, [r0, #8]
	bl FUN_0200DA58
	ldrh r0, [r5, #4]
	movs r1, #0
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #8]
	adds r0, r5, #0
	bl FUN_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D6640

	thumb_func_start ov19_021D6664
ov19_021D6664: @ 0x021D6664
	push {r4, lr}
	ldr r0, _021D6688 @ =0x000065A0
	adds r4, r1, #0
	adds r0, r4, r0
	bl ov19_021DAA80
	ldr r0, [r4, #0x18]
	bl FUN_020219F8
	bl FUN_0200A858
	ldr r3, _021D668C @ =0x027E0000
	ldr r1, _021D6690 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.align 2, 0
_021D6688: .4byte 0x000065A0
_021D668C: .4byte 0x027E0000
_021D6690: .4byte 0x00003FF8
	thumb_func_end ov19_021D6664

	thumb_func_start ov19_021D6694
ov19_021D6694: @ 0x021D6694
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	movs r0, #0x16
	ldr r4, [r5, #0xc]
	lsls r0, r0, #4
	ldr r6, [r4, r0]
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq _021D66AC
	cmp r0, #1
	beq _021D66FA
	pop {r3, r4, r5, r6, r7, pc}
_021D66AC:
	movs r0, #0x12
	movs r1, #0xa
	bl FUN_02006C24
	adds r7, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov19_021D74B4
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov19_021D75CC
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov19_021D7774
	adds r0, r7, #0
	bl FUN_02006CA8
	adds r0, r6, #0
	bl ov19_021D5E08
	cmp r0, #4
	beq _021D66F2
	ldr r0, _021D6718 @ =0x000065A0
	adds r0, r4, r0
	bl ov19_021DAA90
	ldrh r0, [r5, #6]
	adds r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, r6, r7, pc}
_021D66F2:
	adds r0, r5, #0
	bl ov19_021D6640
	pop {r3, r4, r5, r6, r7, pc}
_021D66FA:
	ldr r0, _021D6718 @ =0x000065A0
	adds r0, r4, r0
	bl ov19_021DAAC4
	cmp r0, #0
	beq _021D6714
	ldr r0, _021D6718 @ =0x000065A0
	adds r0, r4, r0
	bl ov19_021DAF98
	adds r0, r5, #0
	bl ov19_021D6640
_021D6714:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D6718: .4byte 0x000065A0
	thumb_func_end ov19_021D6694

	thumb_func_start ov19_021D671C
ov19_021D671C: @ 0x021D671C
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r1, #0
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _021D6730
	cmp r0, #1
	beq _021D6766
	add sp, #0xc
	pop {r3, r4, pc}
_021D6730:
	ldr r0, _021D6778 @ =0x0000060D
	bl FUN_02005748
	movs r0, #0xa
	str r0, [sp]
	ldr r0, _021D677C @ =0x04000050
	movs r1, #0
	movs r2, #0x3f
	movs r3, #6
	blx FUN_020BF55C
	movs r0, #8
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0xa
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrh r0, [r4, #6]
	add sp, #0xc
	adds r0, r0, #1
	strh r0, [r4, #6]
	pop {r3, r4, pc}
_021D6766:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D6774
	adds r0, r4, #0
	bl ov19_021D6640
_021D6774:
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_021D6778: .4byte 0x0000060D
_021D677C: .4byte 0x04000050
	thumb_func_end ov19_021D671C

	thumb_func_start ov19_021D6780
ov19_021D6780: @ 0x021D6780
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r1, #0
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _021D6794
	cmp r0, #1
	beq _021D67C4
	add sp, #0xc
	pop {r3, r4, pc}
_021D6794:
	movs r0, #0xa
	str r0, [sp]
	ldr r0, _021D67D8 @ =0x04000050
	movs r1, #0
	movs r2, #0x3f
	movs r3, #6
	blx FUN_020BF55C
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0xa
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrh r0, [r4, #6]
	add sp, #0xc
	adds r0, r0, #1
	strh r0, [r4, #6]
	pop {r3, r4, pc}
_021D67C4:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D67D2
	adds r0, r4, #0
	bl ov19_021D6640
_021D67D2:
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021D67D8: .4byte 0x04000050
	thumb_func_end ov19_021D6780

	thumb_func_start ov19_021D67DC
ov19_021D67DC: @ 0x021D67DC
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r1, #0
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _021D67F0
	cmp r0, #1
	beq _021D6812
	add sp, #0xc
	pop {r3, r4, pc}
_021D67F0:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0xa
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrh r0, [r4, #6]
	add sp, #0xc
	adds r0, r0, #1
	strh r0, [r4, #6]
	pop {r3, r4, pc}
_021D6812:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D6820
	adds r0, r4, #0
	bl ov19_021D6640
_021D6820:
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov19_021D67DC

	thumb_func_start ov19_021D6824
ov19_021D6824: @ 0x021D6824
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	movs r0, #0x16
	ldr r5, [r4, #0xc]
	lsls r0, r0, #4
	ldr r6, [r5, r0]
	ldrh r0, [r4, #6]
	cmp r0, #4
	bhi _021D68DA
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D6842: @ jump table
	.2byte _021D684C - _021D6842 - 2 @ case 0
	.2byte _021D685A - _021D6842 - 2 @ case 1
	.2byte _021D686C - _021D6842 - 2 @ case 2
	.2byte _021D68AC - _021D6842 - 2 @ case 3
	.2byte _021D68C8 - _021D6842 - 2 @ case 4
_021D684C:
	ldr r0, _021D68DC @ =0x0000B3A8
	ldr r0, [r5, r0]
	bl ov19_021DE9B8
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
_021D685A:
	ldr r0, _021D68DC @ =0x0000B3A8
	ldr r0, [r5, r0]
	bl ov19_021DE9E4
	cmp r0, #0
	beq _021D68DA
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
_021D686C:
	movs r0, #0x43
	adds r1, r6, #0
	lsls r0, r0, #4
	adds r1, #0x40
	ldrb r0, [r5, r0]
	ldrb r1, [r1]
	bl ov19_021D77A4
	adds r7, r0, #0
	movs r0, #0x43
	lsls r0, r0, #4
	adds r1, r6, #0
	adds r0, r5, r0
	adds r1, #0x40
	adds r2, r7, #0
	movs r3, #1
	bl ov19_021D7B4C
	movs r0, #0x43
	lsls r0, r0, #4
	adds r6, #0x40
	adds r0, r5, r0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov19_021D7D70
	ldr r0, _021D68E0 @ =0x000005DC
	bl FUN_02005748
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
_021D68AC:
	movs r0, #0x43
	lsls r0, r0, #4
	adds r0, r5, r0
	bl ov19_021D7E1C
	cmp r0, #0
	beq _021D68DA
	ldr r0, _021D68DC @ =0x0000B3A8
	ldr r0, [r5, r0]
	bl ov19_021DE7A0
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
_021D68C8:
	ldr r0, _021D68DC @ =0x0000B3A8
	ldr r0, [r5, r0]
	bl ov19_021DE800
	cmp r0, #0
	beq _021D68DA
	adds r0, r4, #0
	bl ov19_021D6640
_021D68DA:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D68DC: .4byte 0x0000B3A8
_021D68E0: .4byte 0x000005DC
	thumb_func_end ov19_021D6824

	thumb_func_start ov19_021D68E4
ov19_021D68E4: @ 0x021D68E4
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldrh r0, [r5, #6]
	ldr r4, [r5, #0xc]
	cmp r0, #0
	beq _021D68F6
	cmp r0, #1
	beq _021D6914
	pop {r3, r4, r5, pc}
_021D68F6:
	ldr r0, _021D6934 @ =0x000005DC
	bl FUN_02005748
	ldr r0, _021D6938 @ =0x00005DC0
	adds r0, r4, r0
	bl ov19_021D8F60
	ldr r0, _021D693C @ =0x0000B3A8
	ldr r0, [r4, r0]
	bl ov19_021DE7A0
	ldrh r0, [r5, #6]
	adds r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
_021D6914:
	ldr r0, _021D6938 @ =0x00005DC0
	adds r0, r4, r0
	bl ov19_021D9074
	cmp r0, #0
	beq _021D6932
	ldr r0, _021D693C @ =0x0000B3A8
	ldr r0, [r4, r0]
	bl ov19_021DE800
	cmp r0, #0
	beq _021D6932
	adds r0, r5, #0
	bl ov19_021D6640
_021D6932:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D6934: .4byte 0x000005DC
_021D6938: .4byte 0x00005DC0
_021D693C: .4byte 0x0000B3A8
	thumb_func_end ov19_021D68E4

	thumb_func_start ov19_021D6940
ov19_021D6940: @ 0x021D6940
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r0, #0x16
	ldr r4, [r5, #0xc]
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5E08
	cmp r0, #4
	ldrh r0, [r5, #6]
	beq _021D6984
	cmp r0, #0
	beq _021D6960
	cmp r0, #1
	beq _021D6970
	pop {r3, r4, r5, pc}
_021D6960:
	ldr r0, _021D69B4 @ =0x000065A0
	adds r0, r4, r0
	bl ov19_021DAFF8
	ldrh r0, [r5, #6]
	adds r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
_021D6970:
	ldr r0, _021D69B4 @ =0x000065A0
	adds r0, r4, r0
	bl ov19_021DB220
	cmp r0, #0
	beq _021D69B0
	adds r0, r5, #0
	bl ov19_021D6640
	pop {r3, r4, r5, pc}
_021D6984:
	cmp r0, #0
	beq _021D698E
	cmp r0, #1
	beq _021D699E
	pop {r3, r4, r5, pc}
_021D698E:
	ldr r0, _021D69B8 @ =0x0000B3AC
	ldr r0, [r4, r0]
	bl ov19_021DEE34
	ldrh r0, [r5, #6]
	adds r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
_021D699E:
	ldr r0, _021D69B8 @ =0x0000B3AC
	ldr r0, [r4, r0]
	bl ov19_021DEE84
	cmp r0, #0
	beq _021D69B0
	adds r0, r5, #0
	bl ov19_021D6640
_021D69B0:
	pop {r3, r4, r5, pc}
	nop
_021D69B4: .4byte 0x000065A0
_021D69B8: .4byte 0x0000B3AC
	thumb_func_end ov19_021D6940

	thumb_func_start ov19_021D69BC
ov19_021D69BC: @ 0x021D69BC
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	movs r0, #0x16
	ldr r4, [r5, #0xc]
	lsls r0, r0, #4
	ldr r6, [r4, r0]
	adds r0, r6, #0
	bl ov19_021D5E38
	cmp r0, #2
	bne _021D69DC
	ldr r0, _021D6A10 @ =0x00005DC0
	adds r0, r4, r0
	bl ov19_021D9A64
	b _021D6A00
_021D69DC:
	adds r0, r6, #0
	bl ov19_021D5E10
	cmp r0, #0
	beq _021D69EC
	cmp r0, #1
	beq _021D69F8
	b _021D6A00
_021D69EC:
	movs r0, #0x43
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov19_021D8A24
	b _021D6A00
_021D69F8:
	ldr r0, _021D6A14 @ =0x0000B22C
	adds r0, r4, r0
	bl ov19_021DCC14
_021D6A00:
	ldr r0, _021D6A18 @ =0x000065A0
	adds r0, r4, r0
	bl ov19_021DB224
	adds r0, r5, #0
	bl ov19_021D6640
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D6A10: .4byte 0x00005DC0
_021D6A14: .4byte 0x0000B22C
_021D6A18: .4byte 0x000065A0
	thumb_func_end ov19_021D69BC

	thumb_func_start ov19_021D6A1C
ov19_021D6A1C: @ 0x021D6A1C
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4, #0xc]
	ldr r0, _021D6A34 @ =0x000065A0
	adds r0, r1, r0
	bl ov19_021DB078
	adds r0, r4, #0
	bl ov19_021D6640
	pop {r4, pc}
	nop
_021D6A34: .4byte 0x000065A0
	thumb_func_end ov19_021D6A1C

	thumb_func_start ov19_021D6A38
ov19_021D6A38: @ 0x021D6A38
	push {r4, lr}
	adds r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D6A4A
	cmp r0, #1
	beq _021D6A5A
	pop {r4, pc}
_021D6A4A:
	ldr r0, _021D6A70 @ =0x00005DC0
	adds r0, r1, r0
	bl ov19_021D9230
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D6A5A:
	ldr r0, _021D6A70 @ =0x00005DC0
	adds r0, r1, r0
	bl ov19_021D9278
	cmp r0, #0
	beq _021D6A6C
	adds r0, r4, #0
	bl ov19_021D6640
_021D6A6C:
	pop {r4, pc}
	nop
_021D6A70: .4byte 0x00005DC0
	thumb_func_end ov19_021D6A38

	thumb_func_start ov19_021D6A74
ov19_021D6A74: @ 0x021D6A74
	push {r4, lr}
	adds r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D6A86
	cmp r0, #1
	beq _021D6A96
	pop {r4, pc}
_021D6A86:
	ldr r0, _021D6AAC @ =0x00005DC0
	adds r0, r1, r0
	bl ov19_021D9368
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D6A96:
	ldr r0, _021D6AAC @ =0x00005DC0
	adds r0, r1, r0
	bl ov19_021D939C
	cmp r0, #0
	beq _021D6AA8
	adds r0, r4, #0
	bl ov19_021D6640
_021D6AA8:
	pop {r4, pc}
	nop
_021D6AAC: .4byte 0x00005DC0
	thumb_func_end ov19_021D6A74

	thumb_func_start ov19_021D6AB0
ov19_021D6AB0: @ 0x021D6AB0
	push {r4, lr}
	adds r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D6AC2
	cmp r0, #1
	beq _021D6AD2
	pop {r4, pc}
_021D6AC2:
	ldr r0, _021D6AE8 @ =0x00005DC0
	adds r0, r1, r0
	bl ov19_021D94B4
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D6AD2:
	ldr r0, _021D6AE8 @ =0x00005DC0
	adds r0, r1, r0
	bl ov19_021D9530
	cmp r0, #0
	beq _021D6AE4
	adds r0, r4, #0
	bl ov19_021D6640
_021D6AE4:
	pop {r4, pc}
	nop
_021D6AE8: .4byte 0x00005DC0
	thumb_func_end ov19_021D6AB0

	thumb_func_start ov19_021D6AEC
ov19_021D6AEC: @ 0x021D6AEC
	push {r4, lr}
	adds r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D6AFE
	cmp r0, #1
	beq _021D6B0E
	pop {r4, pc}
_021D6AFE:
	ldr r0, _021D6B18 @ =0x00005DC0
	adds r0, r1, r0
	bl ov19_021D9900
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D6B0E:
	adds r0, r4, #0
	bl ov19_021D6640
	pop {r4, pc}
	nop
_021D6B18: .4byte 0x00005DC0
	thumb_func_end ov19_021D6AEC

	thumb_func_start ov19_021D6B1C
ov19_021D6B1C: @ 0x021D6B1C
	push {r4, lr}
	adds r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D6B32
	cmp r0, #1
	beq _021D6B42
	cmp r0, #2
	beq _021D6B52
	pop {r4, pc}
_021D6B32:
	ldr r0, _021D6B68 @ =0x0000B22C
	adds r0, r1, r0
	bl ov19_021DCAC0
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D6B42:
	ldr r0, _021D6B68 @ =0x0000B22C
	adds r0, r1, r0
	bl ov19_021DC834
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D6B52:
	ldr r0, _021D6B68 @ =0x0000B22C
	adds r0, r1, r0
	bl ov19_021DC95C
	cmp r0, #0
	beq _021D6B64
	adds r0, r4, #0
	bl ov19_021D6640
_021D6B64:
	pop {r4, pc}
	nop
_021D6B68: .4byte 0x0000B22C
	thumb_func_end ov19_021D6B1C

	thumb_func_start ov19_021D6B6C
ov19_021D6B6C: @ 0x021D6B6C
	push {r4, lr}
	adds r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D6B7E
	cmp r0, #1
	beq _021D6B8E
	pop {r4, pc}
_021D6B7E:
	ldr r0, _021D6BA4 @ =0x00005DC0
	adds r0, r1, r0
	bl ov19_021D9938
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D6B8E:
	ldr r0, _021D6BA4 @ =0x00005DC0
	adds r0, r1, r0
	bl ov19_021D995C
	cmp r0, #0
	beq _021D6BA0
	adds r0, r4, #0
	bl ov19_021D6640
_021D6BA0:
	pop {r4, pc}
	nop
_021D6BA4: .4byte 0x00005DC0
	thumb_func_end ov19_021D6B6C

	thumb_func_start ov19_021D6BA8
ov19_021D6BA8: @ 0x021D6BA8
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldrh r1, [r5, #6]
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r4, [r5, #0xc]
	cmp r1, #0
	ldr r0, [r4, r0]
	beq _021D6BC0
	cmp r1, #1
	beq _021D6BD8
	pop {r3, r4, r5, pc}
_021D6BC0:
	bl ov19_021D5E24
	adds r1, r0, #0
	movs r0, #0x43
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov19_021D8860
	ldrh r0, [r5, #6]
	adds r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
_021D6BD8:
	movs r0, #0x43
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov19_021D8898
	cmp r0, #0
	beq _021D6BEC
	adds r0, r5, #0
	bl ov19_021D6640
_021D6BEC:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021D6BA8

	thumb_func_start ov19_021D6BF0
ov19_021D6BF0: @ 0x021D6BF0
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldrh r1, [r5, #6]
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r4, [r5, #0xc]
	cmp r1, #0
	ldr r0, [r4, r0]
	beq _021D6C08
	cmp r1, #1
	beq _021D6C1E
	pop {r3, r4, r5, pc}
_021D6C08:
	bl ov19_021D5E2C
	adds r1, r0, #0
	ldr r0, _021D6C34 @ =0x0000B22C
	adds r0, r4, r0
	bl ov19_021DCAFC
	ldrh r0, [r5, #6]
	adds r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
_021D6C1E:
	ldr r0, _021D6C34 @ =0x0000B22C
	adds r0, r4, r0
	bl ov19_021DCB20
	cmp r0, #0
	beq _021D6C30
	adds r0, r5, #0
	bl ov19_021D6640
_021D6C30:
	pop {r3, r4, r5, pc}
	nop
_021D6C34: .4byte 0x0000B22C
	thumb_func_end ov19_021D6BF0

	thumb_func_start ov19_021D6C38
ov19_021D6C38: @ 0x021D6C38
	push {r4, lr}
	adds r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D6C4A
	cmp r0, #1
	beq _021D6C5A
	pop {r4, pc}
_021D6C4A:
	ldr r0, _021D6C70 @ =0x0000662C
	adds r0, r1, r0
	bl ov19_021DC29C
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D6C5A:
	ldr r0, _021D6C70 @ =0x0000662C
	adds r0, r1, r0
	bl ov19_021DC364
	cmp r0, #0
	beq _021D6C6C
	adds r0, r4, #0
	bl ov19_021D6640
_021D6C6C:
	pop {r4, pc}
	nop
_021D6C70: .4byte 0x0000662C
	thumb_func_end ov19_021D6C38

	thumb_func_start ov19_021D6C74
ov19_021D6C74: @ 0x021D6C74
	push {r4, lr}
	adds r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D6C86
	cmp r0, #1
	beq _021D6C96
	pop {r4, pc}
_021D6C86:
	ldr r0, _021D6CAC @ =0x0000662C
	adds r0, r1, r0
	bl ov19_021DC3F4
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D6C96:
	ldr r0, _021D6CAC @ =0x0000662C
	adds r0, r1, r0
	bl ov19_021DC43C
	cmp r0, #0
	beq _021D6CA8
	adds r0, r4, #0
	bl ov19_021D6640
_021D6CA8:
	pop {r4, pc}
	nop
_021D6CAC: .4byte 0x0000662C
	thumb_func_end ov19_021D6C74

	thumb_func_start ov19_021D6CB0
ov19_021D6CB0: @ 0x021D6CB0
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldrh r0, [r5, #6]
	ldr r4, [r5, #0xc]
	cmp r0, #0
	beq _021D6CC2
	cmp r0, #1
	beq _021D6CD2
	pop {r3, r4, r5, pc}
_021D6CC2:
	ldr r0, _021D6CF0 @ =0x00005DC0
	adds r0, r4, r0
	bl ov19_021D9B34
	ldrh r0, [r5, #6]
	adds r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
_021D6CD2:
	ldr r0, _021D6CF0 @ =0x00005DC0
	adds r0, r4, r0
	bl ov19_021D9B64
	cmp r0, #0
	beq _021D6CEC
	ldr r0, _021D6CF4 @ =0x000065A0
	adds r0, r4, r0
	bl ov19_021DB2B0
	adds r0, r5, #0
	bl ov19_021D6640
_021D6CEC:
	pop {r3, r4, r5, pc}
	nop
_021D6CF0: .4byte 0x00005DC0
_021D6CF4: .4byte 0x000065A0
	thumb_func_end ov19_021D6CB0

	thumb_func_start ov19_021D6CF8
ov19_021D6CF8: @ 0x021D6CF8
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldrh r0, [r5, #6]
	ldr r4, [r5, #0xc]
	cmp r0, #0
	beq _021D6D0A
	cmp r0, #1
	beq _021D6D1A
	pop {r3, r4, r5, pc}
_021D6D0A:
	ldr r0, _021D6D38 @ =0x00005DC0
	adds r0, r4, r0
	bl ov19_021D9BD4
	ldrh r0, [r5, #6]
	adds r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
_021D6D1A:
	ldr r0, _021D6D38 @ =0x00005DC0
	adds r0, r4, r0
	bl ov19_021D9C04
	cmp r0, #0
	beq _021D6D34
	ldr r0, _021D6D3C @ =0x000065A0
	adds r0, r4, r0
	bl ov19_021DB2B0
	adds r0, r5, #0
	bl ov19_021D6640
_021D6D34:
	pop {r3, r4, r5, pc}
	nop
_021D6D38: .4byte 0x00005DC0
_021D6D3C: .4byte 0x000065A0
	thumb_func_end ov19_021D6CF8

	thumb_func_start ov19_021D6D40
ov19_021D6D40: @ 0x021D6D40
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldrh r0, [r5, #6]
	ldr r4, [r5, #0xc]
	cmp r0, #0
	beq _021D6D52
	cmp r0, #1
	beq _021D6D62
	pop {r3, r4, r5, pc}
_021D6D52:
	ldr r0, _021D6D80 @ =0x00005DC0
	adds r0, r4, r0
	bl ov19_021D9C74
	ldrh r0, [r5, #6]
	adds r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
_021D6D62:
	ldr r0, _021D6D80 @ =0x00005DC0
	adds r0, r4, r0
	bl ov19_021D9CA0
	cmp r0, #0
	beq _021D6D7C
	ldr r0, _021D6D84 @ =0x000065A0
	adds r0, r4, r0
	bl ov19_021DB2B0
	adds r0, r5, #0
	bl ov19_021D6640
_021D6D7C:
	pop {r3, r4, r5, pc}
	nop
_021D6D80: .4byte 0x00005DC0
_021D6D84: .4byte 0x000065A0
	thumb_func_end ov19_021D6D40

	thumb_func_start ov19_021D6D88
ov19_021D6D88: @ 0x021D6D88
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	movs r0, #0x16
	ldr r4, [r7, #0xc]
	lsls r0, r0, #4
	ldr r5, [r4, r0]
	adds r0, r5, #0
	bl ov19_021D5E74
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov19_021D5E38
	cmp r0, #2
	bne _021D6DB2
	ldr r0, _021D6DF0 @ =0x00005DC0
	adds r1, r6, #0
	adds r0, r4, r0
	bl ov19_021D9AB0
	b _021D6DE8
_021D6DB2:
	adds r0, r5, #0
	bl ov19_021D5E10
	cmp r0, #0
	beq _021D6DD4
	cmp r0, #1
	bne _021D6DE8
	adds r0, r5, #0
	bl ov19_021D5E2C
	adds r1, r0, #0
	ldr r0, _021D6DF4 @ =0x0000B22C
	adds r2, r6, #0
	adds r0, r4, r0
	bl ov19_021DCBDC
	b _021D6DE8
_021D6DD4:
	adds r0, r5, #0
	bl ov19_021D5E24
	adds r1, r0, #0
	movs r0, #0x43
	lsls r0, r0, #4
	adds r0, r4, r0
	adds r2, r6, #0
	bl ov19_021D8988
_021D6DE8:
	adds r0, r7, #0
	bl ov19_021D6640
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D6DF0: .4byte 0x00005DC0
_021D6DF4: .4byte 0x0000B22C
	thumb_func_end ov19_021D6D88

	thumb_func_start ov19_021D6DF8
ov19_021D6DF8: @ 0x021D6DF8
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldrh r0, [r5, #6]
	ldr r4, [r5, #0xc]
	cmp r0, #0
	beq _021D6E0A
	cmp r0, #1
	beq _021D6E22
	pop {r3, r4, r5, pc}
_021D6E0A:
	ldr r0, _021D6E40 @ =0x00005DC0
	adds r0, r4, r0
	bl ov19_021D9D10
	ldr r0, _021D6E44 @ =0x0000B3A8
	ldr r0, [r4, r0]
	bl ov19_021DEB18
	ldrh r0, [r5, #6]
	adds r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
_021D6E22:
	ldr r0, _021D6E44 @ =0x0000B3A8
	ldr r0, [r4, r0]
	bl ov19_021DEB60
	cmp r0, #0
	beq _021D6E3C
	ldr r0, _021D6E40 @ =0x00005DC0
	adds r0, r4, r0
	bl ov19_021D9D28
	adds r0, r5, #0
	bl ov19_021D6640
_021D6E3C:
	pop {r3, r4, r5, pc}
	nop
_021D6E40: .4byte 0x00005DC0
_021D6E44: .4byte 0x0000B3A8
	thumb_func_end ov19_021D6DF8

	thumb_func_start ov19_021D6E48
ov19_021D6E48: @ 0x021D6E48
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r0, #0x16
	ldr r4, [r5, #0xc]
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5E94
	adds r1, r0, #0
	ldr r0, _021D6E6C @ =0x000065F4
	adds r0, r4, r0
	bl ov19_021DB448
	adds r0, r5, #0
	bl ov19_021D6640
	pop {r3, r4, r5, pc}
	nop
_021D6E6C: .4byte 0x000065F4
	thumb_func_end ov19_021D6E48

	thumb_func_start ov19_021D6E70
ov19_021D6E70: @ 0x021D6E70
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	movs r0, #0x16
	ldr r4, [r6, #0xc]
	lsls r0, r0, #4
	ldr r5, [r4, r0]
	adds r0, r5, #0
	bl ov19_021D5E94
	adds r1, r0, #0
	ldr r0, _021D6EA0 @ =0x000065F4
	adds r0, r4, r0
	bl ov19_021DB448
	ldr r0, _021D6EA0 @ =0x000065F4
	adds r5, #0x74
	adds r0, r4, r0
	adds r1, r5, #0
	bl ov19_021DB57C
	adds r0, r6, #0
	bl ov19_021D6640
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D6EA0: .4byte 0x000065F4
	thumb_func_end ov19_021D6E70

	thumb_func_start ov19_021D6EA4
ov19_021D6EA4: @ 0x021D6EA4
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4, #0xc]
	ldr r0, _021D6EBC @ =0x000065F4
	adds r0, r1, r0
	bl ov19_021DB6F0
	adds r0, r4, #0
	bl ov19_021D6640
	pop {r4, pc}
	nop
_021D6EBC: .4byte 0x000065F4
	thumb_func_end ov19_021D6EA4

	thumb_func_start ov19_021D6EC0
ov19_021D6EC0: @ 0x021D6EC0
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4, #0xc]
	ldr r0, _021D6ED8 @ =0x000065F4
	adds r0, r1, r0
	bl ov19_021DB724
	adds r0, r4, #0
	bl ov19_021D6640
	pop {r4, pc}
	nop
_021D6ED8: .4byte 0x000065F4
	thumb_func_end ov19_021D6EC0

	thumb_func_start ov19_021D6EDC
ov19_021D6EDC: @ 0x021D6EDC
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	movs r0, #0x16
	ldr r4, [r6, #0xc]
	lsls r0, r0, #4
	ldr r5, [r4, r0]
	ldr r0, _021D6F04 @ =0x000005DC
	bl FUN_02005748
	ldr r0, _021D6F08 @ =0x000065F4
	adds r5, #0x74
	adds r0, r4, r0
	adds r1, r5, #0
	bl ov19_021DB748
	adds r0, r6, #0
	bl ov19_021D6640
	pop {r4, r5, r6, pc}
	nop
_021D6F04: .4byte 0x000005DC
_021D6F08: .4byte 0x000065F4
	thumb_func_end ov19_021D6EDC

	thumb_func_start ov19_021D6F0C
ov19_021D6F0C: @ 0x021D6F0C
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	movs r0, #0x16
	ldr r4, [r6, #0xc]
	lsls r0, r0, #4
	ldr r5, [r4, r0]
	ldr r0, _021D6F34 @ =0x000005DD
	bl FUN_02005748
	ldr r0, _021D6F38 @ =0x000065F4
	adds r5, #0x74
	adds r0, r4, r0
	adds r1, r5, #0
	bl ov19_021DB790
	adds r0, r6, #0
	bl ov19_021D6640
	pop {r4, r5, r6, pc}
	nop
_021D6F34: .4byte 0x000005DD
_021D6F38: .4byte 0x000065F4
	thumb_func_end ov19_021D6F0C

	thumb_func_start ov19_021D6F3C
ov19_021D6F3C: @ 0x021D6F3C
	push {r4, lr}
	adds r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D6F4E
	cmp r0, #1
	beq _021D6F5E
	pop {r4, pc}
_021D6F4E:
	ldr r0, _021D6F74 @ =0x0000662C
	adds r0, r1, r0
	bl ov19_021DBB48
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D6F5E:
	ldr r0, _021D6F74 @ =0x0000662C
	adds r0, r1, r0
	bl ov19_021DBB68
	cmp r0, #0
	beq _021D6F70
	adds r0, r4, #0
	bl ov19_021D6640
_021D6F70:
	pop {r4, pc}
	nop
_021D6F74: .4byte 0x0000662C
	thumb_func_end ov19_021D6F3C

	thumb_func_start ov19_021D6F78
ov19_021D6F78: @ 0x021D6F78
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldrh r0, [r5, #6]
	ldr r4, [r5, #0xc]
	cmp r0, #0
	beq _021D6F8A
	cmp r0, #1
	beq _021D6FA0
	pop {r3, r4, r5, pc}
_021D6F8A:
	ldr r0, _021D6FA8 @ =0x000005DD
	bl FUN_02005748
	ldr r0, _021D6FAC @ =0x0000662C
	adds r0, r4, r0
	bl ov19_021DBB70
	ldrh r0, [r5, #6]
	adds r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
_021D6FA0:
	adds r0, r5, #0
	bl ov19_021D6640
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D6FA8: .4byte 0x000005DD
_021D6FAC: .4byte 0x0000662C
	thumb_func_end ov19_021D6F78

	thumb_func_start ov19_021D6FB0
ov19_021D6FB0: @ 0x021D6FB0
	push {r4, lr}
	adds r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D6FC2
	cmp r0, #1
	beq _021D6FD2
	pop {r4, pc}
_021D6FC2:
	ldr r0, _021D6FE8 @ =0x0000662C
	adds r0, r1, r0
	bl ov19_021DBB94
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D6FD2:
	ldr r0, _021D6FE8 @ =0x0000662C
	adds r0, r1, r0
	bl ov19_021DBBA0
	cmp r0, #0
	beq _021D6FE4
	adds r0, r4, #0
	bl ov19_021D6640
_021D6FE4:
	pop {r4, pc}
	nop
_021D6FE8: .4byte 0x0000662C
	thumb_func_end ov19_021D6FB0

	thumb_func_start ov19_021D6FEC
ov19_021D6FEC: @ 0x021D6FEC
	push {r4, lr}
	adds r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D6FFE
	cmp r0, #1
	beq _021D7010
	pop {r4, pc}
_021D6FFE:
	movs r0, #0x43
	lsls r0, r0, #4
	adds r0, r1, r0
	bl ov19_021D8350
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D7010:
	movs r0, #0x43
	lsls r0, r0, #4
	adds r0, r1, r0
	bl ov19_021D8370
	cmp r0, #0
	beq _021D7024
	adds r0, r4, #0
	bl ov19_021D6640
_021D7024:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021D6FEC

	thumb_func_start ov19_021D7028
ov19_021D7028: @ 0x021D7028
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	movs r0, #0x16
	ldr r5, [r4, #0xc]
	lsls r0, r0, #4
	ldr r6, [r5, r0]
	ldrh r0, [r4, #6]
	cmp r0, #3
	bhi _021D70DA
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D7046: @ jump table
	.2byte _021D704E - _021D7046 - 2 @ case 0
	.2byte _021D7064 - _021D7046 - 2 @ case 1
	.2byte _021D70A2 - _021D7046 - 2 @ case 2
	.2byte _021D70C8 - _021D7046 - 2 @ case 3
_021D704E:
	ldr r0, _021D70DC @ =0x000005DD
	bl FUN_02005748
	ldr r0, _021D70E0 @ =0x00005DC0
	adds r0, r5, r0
	bl ov19_021D9690
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, r5, r6, pc}
_021D7064:
	ldr r0, _021D70E0 @ =0x00005DC0
	adds r0, r5, r0
	bl ov19_021D9704
	cmp r0, #0
	beq _021D70DA
	adds r0, r6, #0
	bl ov19_021D5E10
	cmp r0, #3
	beq _021D7080
	cmp r0, #4
	beq _021D708C
	b _021D7096
_021D7080:
	ldr r0, _021D70E4 @ =0x00006558
	movs r1, #1
	adds r0, r5, r0
	bl ov19_021DA8FC
	b _021D7096
_021D708C:
	ldr r0, _021D70E4 @ =0x00006558
	movs r1, #2
	adds r0, r5, r0
	bl ov19_021DA8FC
_021D7096:
	movs r0, #0
	strh r0, [r4, #8]
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, r5, r6, pc}
_021D70A2:
	ldrh r0, [r4, #8]
	adds r0, r0, #1
	strh r0, [r4, #8]
	ldrh r0, [r4, #8]
	cmp r0, #6
	blo _021D70DA
	ldr r0, _021D70E0 @ =0x00005DC0
	adds r0, r5, r0
	bl ov19_021D97FC
	ldr r0, _021D70E4 @ =0x00006558
	movs r1, #0
	adds r0, r5, r0
	bl ov19_021DA8FC
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, r5, r6, pc}
_021D70C8:
	ldr r0, _021D70E0 @ =0x00005DC0
	adds r0, r5, r0
	bl ov19_021D9858
	cmp r0, #0
	beq _021D70DA
	adds r0, r4, #0
	bl ov19_021D6640
_021D70DA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D70DC: .4byte 0x000005DD
_021D70E0: .4byte 0x00005DC0
_021D70E4: .4byte 0x00006558
	thumb_func_end ov19_021D7028

	thumb_func_start ov19_021D70E8
ov19_021D70E8: @ 0x021D70E8
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldrh r0, [r5, #6]
	ldr r4, [r5, #0xc]
	cmp r0, #0
	beq _021D70FA
	cmp r0, #1
	beq _021D7118
	pop {r3, r4, r5, pc}
_021D70FA:
	ldr r0, _021D712C @ =0x00000633
	bl FUN_02005748
	ldr r0, _021D7130 @ =0x00005DC0
	adds r0, r4, r0
	bl ov19_021D99F4
	ldr r0, _021D7134 @ =0x0000B22C
	adds r0, r4, r0
	bl ov19_021DC6C8
	ldrh r0, [r5, #6]
	adds r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
_021D7118:
	ldr r0, _021D7134 @ =0x0000B22C
	adds r0, r4, r0
	bl ov19_021DC6F8
	cmp r0, #0
	beq _021D712A
	adds r0, r5, #0
	bl ov19_021D6640
_021D712A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D712C: .4byte 0x00000633
_021D7130: .4byte 0x00005DC0
_021D7134: .4byte 0x0000B22C
	thumb_func_end ov19_021D70E8

	thumb_func_start ov19_021D7138
ov19_021D7138: @ 0x021D7138
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r5, [r4, #0xc]
	cmp r0, #3
	bhi _021D71A8
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D7150: @ jump table
	.2byte _021D7158 - _021D7150 - 2 @ case 0
	.2byte _021D7166 - _021D7150 - 2 @ case 1
	.2byte _021D7178 - _021D7150 - 2 @ case 2
	.2byte _021D718E - _021D7150 - 2 @ case 3
_021D7158:
	ldr r0, _021D71AC @ =0x0000B3A8
	ldr r0, [r5, r0]
	bl ov19_021DE9B8
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
_021D7166:
	ldr r0, _021D71AC @ =0x0000B3A8
	ldr r0, [r5, r0]
	bl ov19_021DE9E4
	cmp r0, #0
	beq _021D71A8
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
_021D7178:
	ldr r0, _021D71B0 @ =0x00000634
	bl FUN_02005748
	ldr r0, _021D71B4 @ =0x0000B22C
	adds r0, r5, r0
	bl ov19_021DC768
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
	pop {r3, r4, r5, pc}
_021D718E:
	ldr r0, _021D71B4 @ =0x0000B22C
	adds r0, r5, r0
	bl ov19_021DC788
	cmp r0, #0
	beq _021D71A8
	ldr r0, _021D71B8 @ =0x00005DC0
	adds r0, r5, r0
	bl ov19_021D9A2C
	adds r0, r4, #0
	bl ov19_021D6640
_021D71A8:
	pop {r3, r4, r5, pc}
	nop
_021D71AC: .4byte 0x0000B3A8
_021D71B0: .4byte 0x00000634
_021D71B4: .4byte 0x0000B22C
_021D71B8: .4byte 0x00005DC0
	thumb_func_end ov19_021D7138

	thumb_func_start ov19_021D71BC
ov19_021D71BC: @ 0x021D71BC
	push {r4, lr}
	adds r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D71CE
	cmp r0, #1
	beq _021D71DE
	pop {r4, pc}
_021D71CE:
	ldr r0, _021D71F4 @ =0x0000B22C
	adds r0, r1, r0
	bl ov19_021DC834
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D71DE:
	ldr r0, _021D71F4 @ =0x0000B22C
	adds r0, r1, r0
	bl ov19_021DC95C
	cmp r0, #0
	beq _021D71F0
	adds r0, r4, #0
	bl ov19_021D6640
_021D71F0:
	pop {r4, pc}
	nop
_021D71F4: .4byte 0x0000B22C
	thumb_func_end ov19_021D71BC

	thumb_func_start ov19_021D71F8
ov19_021D71F8: @ 0x021D71F8
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldrh r1, [r5, #6]
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r4, [r5, #0xc]
	cmp r1, #0
	ldr r0, [r4, r0]
	beq _021D7210
	cmp r1, #1
	beq _021D7230
	pop {r3, r4, r5, pc}
_021D7210:
	bl ov19_021D5E10
	cmp r0, #1
	bne _021D7228
	ldr r0, _021D7244 @ =0x0000B22C
	adds r0, r4, r0
	bl ov19_021DC96C
	ldrh r0, [r5, #6]
	adds r0, r0, #1
	strh r0, [r5, #6]
	pop {r3, r4, r5, pc}
_021D7228:
	adds r0, r5, #0
	bl ov19_021D6640
	pop {r3, r4, r5, pc}
_021D7230:
	ldr r0, _021D7244 @ =0x0000B22C
	adds r0, r4, r0
	bl ov19_021DCA08
	cmp r0, #0
	beq _021D7242
	adds r0, r5, #0
	bl ov19_021D6640
_021D7242:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D7244: .4byte 0x0000B22C
	thumb_func_end ov19_021D71F8

	thumb_func_start ov19_021D7248
ov19_021D7248: @ 0x021D7248
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r0, #0x43
	ldr r4, [r5, #0xc]
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov19_021D8938
	ldr r0, _021D7270 @ =0x0000B22C
	adds r0, r4, r0
	bl ov19_021DCBA0
	ldr r0, _021D7274 @ =0x00005DC0
	adds r0, r4, r0
	bl ov19_021D9A8C
	adds r0, r5, #0
	bl ov19_021D6640
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D7270: .4byte 0x0000B22C
_021D7274: .4byte 0x00005DC0
	thumb_func_end ov19_021D7248

	thumb_func_start ov19_021D7278
ov19_021D7278: @ 0x021D7278
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	movs r0, #0x16
	ldr r4, [r5, #0xc]
	lsls r0, r0, #4
	ldr r6, [r4, r0]
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq _021D7294
	cmp r0, #1
	beq _021D72A4
	cmp r0, #2
	beq _021D72D0
	pop {r4, r5, r6, pc}
_021D7294:
	ldr r0, _021D72E4 @ =0x0000B3A4
	ldr r0, [r4, r0]
	bl ov19_021DD378
	ldrh r0, [r5, #6]
	adds r0, r0, #1
	strh r0, [r5, #6]
	pop {r4, r5, r6, pc}
_021D72A4:
	ldr r0, _021D72E4 @ =0x0000B3A4
	ldr r0, [r4, r0]
	bl ov19_021DD45C
	cmp r0, #0
	beq _021D72E2
	adds r6, #0x9c
	ldrb r0, [r6]
	cmp r0, #0
	bne _021D72C0
	adds r0, r5, #0
	bl ov19_021D6640
	pop {r4, r5, r6, pc}
_021D72C0:
	ldr r0, _021D72E4 @ =0x0000B3A4
	ldr r0, [r4, r0]
	bl ov19_021DD714
	ldrh r0, [r5, #6]
	adds r0, r0, #1
	strh r0, [r5, #6]
	pop {r4, r5, r6, pc}
_021D72D0:
	ldr r0, _021D72E4 @ =0x0000B3A4
	ldr r0, [r4, r0]
	bl ov19_021DD740
	cmp r0, #0
	beq _021D72E2
	adds r0, r5, #0
	bl ov19_021D6640
_021D72E2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D72E4: .4byte 0x0000B3A4
	thumb_func_end ov19_021D7278

	thumb_func_start ov19_021D72E8
ov19_021D72E8: @ 0x021D72E8
	push {r4, lr}
	adds r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D72FA
	cmp r0, #1
	beq _021D730A
	pop {r4, pc}
_021D72FA:
	ldr r0, _021D7320 @ =0x0000B3A4
	ldr r0, [r1, r0]
	bl ov19_021DD768
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D730A:
	ldr r0, _021D7320 @ =0x0000B3A4
	ldr r0, [r1, r0]
	bl ov19_021DD820
	cmp r0, #0
	beq _021D731C
	adds r0, r4, #0
	bl ov19_021D6640
_021D731C:
	pop {r4, pc}
	nop
_021D7320: .4byte 0x0000B3A4
	thumb_func_end ov19_021D72E8

	thumb_func_start ov19_021D7324
ov19_021D7324: @ 0x021D7324
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4, #0xc]
	ldr r0, _021D733C @ =0x0000B3A4
	ldr r0, [r1, r0]
	bl ov19_021DE2F4
	adds r0, r4, #0
	bl ov19_021D6640
	pop {r4, pc}
	nop
_021D733C: .4byte 0x0000B3A4
	thumb_func_end ov19_021D7324

	thumb_func_start ov19_021D7340
ov19_021D7340: @ 0x021D7340
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4, #0xc]
	ldr r0, _021D7358 @ =0x00005DC0
	adds r0, r1, r0
	bl ov19_021D9AEC
	adds r0, r4, #0
	bl ov19_021D6640
	pop {r4, pc}
	nop
_021D7358: .4byte 0x00005DC0
	thumb_func_end ov19_021D7340

	thumb_func_start ov19_021D735C
ov19_021D735C: @ 0x021D735C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0xc]
	ldr r0, _021D737C @ =0x00005DC0
	adds r0, r4, r0
	bl ov19_021D9B10
	movs r0, #0x43
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov19_021D8A6C
	adds r0, r5, #0
	bl ov19_021D6640
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D737C: .4byte 0x00005DC0
	thumb_func_end ov19_021D735C

	thumb_func_start ov19_021D7380
ov19_021D7380: @ 0x021D7380
	push {r4, lr}
	adds r4, r1, #0
	movs r0, #0x43
	ldr r1, [r4, #0xc]
	lsls r0, r0, #4
	adds r0, r1, r0
	bl ov19_021D8B14
	adds r0, r4, #0
	bl ov19_021D6640
	pop {r4, pc}
	thumb_func_end ov19_021D7380

	thumb_func_start ov19_021D7398
ov19_021D7398: @ 0x021D7398
	push {r4, lr}
	adds r4, r1, #0
	movs r0, #0x43
	ldr r1, [r4, #0xc]
	lsls r0, r0, #4
	adds r0, r1, r0
	bl ov19_021D8A6C
	adds r0, r4, #0
	bl ov19_021D6640
	pop {r4, pc}
	thumb_func_end ov19_021D7398

	thumb_func_start ov19_021D73B0
ov19_021D73B0: @ 0x021D73B0
	push {r4, lr}
	adds r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D73C2
	cmp r0, #1
	beq _021D73D2
	pop {r4, pc}
_021D73C2:
	ldr r0, _021D73E8 @ =0x00005DC0
	adds r0, r1, r0
	bl ov19_021D9230
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D73D2:
	ldr r0, _021D73E8 @ =0x00005DC0
	adds r0, r1, r0
	bl ov19_021D9278
	cmp r0, #0
	beq _021D73E4
	adds r0, r4, #0
	bl ov19_021D6640
_021D73E4:
	pop {r4, pc}
	nop
_021D73E8: .4byte 0x00005DC0
	thumb_func_end ov19_021D73B0

	thumb_func_start ov19_021D73EC
ov19_021D73EC: @ 0x021D73EC
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4, #0xc]
	ldr r0, _021D7404 @ =0x0000B3AC
	ldr r0, [r1, r0]
	movs r1, #0
	bl ov19_021DEDDC
	adds r0, r4, #0
	bl ov19_021D6640
	pop {r4, pc}
	.align 2, 0
_021D7404: .4byte 0x0000B3AC
	thumb_func_end ov19_021D73EC

	thumb_func_start ov19_021D7408
ov19_021D7408: @ 0x021D7408
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4, #0xc]
	ldr r0, _021D7420 @ =0x0000B3AC
	ldr r0, [r1, r0]
	movs r1, #1
	bl ov19_021DEDDC
	adds r0, r4, #0
	bl ov19_021D6640
	pop {r4, pc}
	.align 2, 0
_021D7420: .4byte 0x0000B3AC
	thumb_func_end ov19_021D7408

	thumb_func_start ov19_021D7424
ov19_021D7424: @ 0x021D7424
	push {r4, lr}
	adds r4, r1, #0
	ldrh r0, [r4, #6]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	beq _021D7436
	cmp r0, #1
	beq _021D7446
	pop {r4, pc}
_021D7436:
	ldr r0, _021D745C @ =0x0000B3AC
	ldr r0, [r1, r0]
	bl ov19_021DEE88
	ldrh r0, [r4, #6]
	adds r0, r0, #1
	strh r0, [r4, #6]
	pop {r4, pc}
_021D7446:
	ldr r0, _021D745C @ =0x0000B3AC
	ldr r0, [r1, r0]
	bl ov19_021DEEA8
	cmp r0, #0
	beq _021D7458
	adds r0, r4, #0
	bl ov19_021D6640
_021D7458:
	pop {r4, pc}
	nop
_021D745C: .4byte 0x0000B3AC
	thumb_func_end ov19_021D7424

	thumb_func_start ov19_021D7460
ov19_021D7460: @ 0x021D7460
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r1, #0
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _021D7474
	cmp r0, #1
	beq _021D749C
	add sp, #0xc
	pop {r3, r4, pc}
_021D7474:
	ldr r0, _021D74B0 @ =0x0000060E
	bl FUN_02005748
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0xa
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrh r0, [r4, #6]
	add sp, #0xc
	adds r0, r0, #1
	strh r0, [r4, #6]
	pop {r3, r4, pc}
_021D749C:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D74AA
	adds r0, r4, #0
	bl ov19_021D6640
_021D74AA:
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021D74B0: .4byte 0x0000060E
	thumb_func_end ov19_021D7460

	thumb_func_start ov19_021D74B4
ov19_021D74B4: @ 0x021D74B4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _021D759C @ =0x021DFF70
	adds r4, r1, #0
	bl FUN_0201FE94
	ldr r2, _021D75A0 @ =0x04000304
	ldrh r1, [r2]
	lsrs r0, r2, #0xb
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	movs r1, #0
	adds r2, r0, #0
	blx FUN_020BDE40
	ldr r0, _021D75A4 @ =0x021DFE48
	bl FUN_02018368
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, _021D75A8 @ =0x021DFF1C
	movs r1, #1
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, _021D75AC @ =0x021DFF00
	movs r1, #2
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, _021D75B0 @ =0x021DFEC8
	movs r1, #3
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	bl ov19_021D5E08
	cmp r0, #4
	beq _021D7556
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, _021D75B4 @ =0x021DFEE4
	movs r1, #4
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, _021D75B8 @ =0x021DFEAC
	movs r1, #5
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, _021D75BC @ =0x021DFE90
	movs r1, #6
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, _021D75C0 @ =0x021DFE74
	movs r1, #7
	movs r3, #0
	bl FUN_020183C4
	b _021D7596
_021D7556:
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, _021D75B4 @ =0x021DFEE4
	movs r1, #4
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, _021D75C4 @ =0x021DFF54
	movs r1, #5
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, _021D75C8 @ =0x021DFE58
	movs r1, #6
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, _021D75C0 @ =0x021DFE74
	movs r1, #7
	movs r3, #0
	bl FUN_020183C4
_021D7596:
	bl ov19_021D76FC
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D759C: .4byte 0x021DFF70
_021D75A0: .4byte 0x04000304
_021D75A4: .4byte 0x021DFE48
_021D75A8: .4byte 0x021DFF1C
_021D75AC: .4byte 0x021DFF00
_021D75B0: .4byte 0x021DFEC8
_021D75B4: .4byte 0x021DFEE4
_021D75B8: .4byte 0x021DFEAC
_021D75BC: .4byte 0x021DFE90
_021D75C0: .4byte 0x021DFE74
_021D75C4: .4byte 0x021DFF54
_021D75C8: .4byte 0x021DFE58
	thumb_func_end ov19_021D74B4

	thumb_func_start ov19_021D75CC
ov19_021D75CC: @ 0x021D75CC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r3, #1
	adds r4, r2, #0
	movs r2, #0x57
	adds r6, r1, #0
	str r3, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	lsls r2, r2, #2
	ldr r2, [r5, r2]
	adds r0, r4, #0
	movs r1, #4
	bl FUN_020070E8
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x11
	str r0, [sp, #0xc]
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	adds r3, r2, #0
	bl FUN_02019CB8
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02019448
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r1, #1
	movs r2, #0x57
	str r1, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	lsls r2, r2, #2
	ldr r2, [r5, r2]
	adds r0, r4, #0
	movs r3, #2
	bl FUN_020070E8
	movs r0, #0xe0
	str r0, [sp]
	movs r0, #0xa
	movs r2, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #5
	adds r3, r2, #0
	bl FUN_02007130
	adds r0, r6, #0
	bl ov19_021D5E08
	cmp r0, #4
	beq _021D7670
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0xa
	movs r2, #0x57
	str r0, [sp, #0xc]
	lsls r2, r2, #2
	ldr r2, [r5, r2]
	adds r0, r4, #0
	movs r3, #2
	bl FUN_0200710C
_021D7670:
	movs r0, #0x43
	lsls r0, r0, #4
	adds r0, r5, r0
	bl ov19_021D7A9C
	movs r0, #0x43
	lsls r0, r0, #4
	adds r1, r6, #0
	adds r0, r5, r0
	adds r1, #0x40
	movs r2, #0
	movs r3, #1
	bl ov19_021D7B4C
	ldr r0, _021D76E4 @ =0x000065A0
	adds r0, r5, r0
	bl ov19_021DAADC
	ldr r0, _021D76E8 @ =0x000065F4
	adds r0, r5, r0
	bl ov19_021DB3C4
	ldr r0, _021D76EC @ =0x0000662C
	adds r0, r5, r0
	bl ov19_021DBA9C
	ldr r0, _021D76F0 @ =0x0000B3A4
	adds r1, r4, #0
	ldr r0, [r5, r0]
	bl ov19_021DD114
	ldr r0, _021D76F4 @ =0x0000B3AC
	adds r1, r4, #0
	ldr r0, [r5, r0]
	bl ov19_021DECE8
	adds r0, r6, #0
	bl ov19_021D5E10
	cmp r0, #1
	bne _021D76CA
	ldr r0, _021D76F8 @ =0x0000B22C
	adds r0, r5, r0
	bl ov19_021DC6A0
_021D76CA:
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	blx FUN_020BDDF8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021D76E4: .4byte 0x000065A0
_021D76E8: .4byte 0x000065F4
_021D76EC: .4byte 0x0000662C
_021D76F0: .4byte 0x0000B3A4
_021D76F4: .4byte 0x0000B3AC
_021D76F8: .4byte 0x0000B22C
	thumb_func_end ov19_021D75CC

	thumb_func_start ov19_021D76FC
ov19_021D76FC: @ 0x021D76FC
	push {r3, lr}
	blx FUN_020B28CC
	blx FUN_020BFB4C
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	ldr r0, _021D7760 @ =0x04000008
	movs r1, #3
	ldrh r2, [r0]
	bics r2, r1
	movs r1, #1
	orrs r1, r2
	strh r1, [r0]
	adds r0, #0x58
	ldrh r1, [r0]
	ldr r2, _021D7764 @ =0xFFFFCFFD
	ands r1, r2
	strh r1, [r0]
	ldrh r3, [r0]
	adds r1, r2, #2
	ands r3, r1
	movs r1, #0x10
	orrs r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _021D7768 @ =0x0000CFFB
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
	ldr r1, _021D776C @ =0x04000540
	movs r0, #2
	str r0, [r1]
	ldr r0, _021D7770 @ =0xBFFF0000
	str r0, [r1, #0x40]
	pop {r3, pc}
	.align 2, 0
_021D7760: .4byte 0x04000008
_021D7764: .4byte 0xFFFFCFFD
_021D7768: .4byte 0x0000CFFB
_021D776C: .4byte 0x04000540
_021D7770: .4byte 0xBFFF0000
	thumb_func_end ov19_021D76FC

	thumb_func_start ov19_021D7774
ov19_021D7774: @ 0x021D7774
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _021D7798 @ =0x00005DC0
	adds r4, r2, #0
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov19_021D8C1C
	ldr r0, _021D779C @ =0x00006558
	adds r1, r4, #0
	adds r0, r5, r0
	bl ov19_021DA864
	ldr r0, _021D77A0 @ =0x0000B3A8
	ldr r0, [r5, r0]
	bl ov19_021DE584
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D7798: .4byte 0x00005DC0
_021D779C: .4byte 0x00006558
_021D77A0: .4byte 0x0000B3A8
	thumb_func_end ov19_021D7774

	thumb_func_start ov19_021D77A4
ov19_021D77A4: @ 0x021D77A4
	cmp r1, r0
	bls _021D77B2
	movs r2, #0x12
	subs r3, r1, r0
	subs r1, r2, r1
	adds r0, r0, r1
	b _021D77BA
_021D77B2:
	movs r2, #0x12
	subs r2, r2, r0
	adds r3, r1, r2
	subs r0, r0, r1
_021D77BA:
	cmp r3, r0
	blt _021D77C4
	movs r0, #0
	mvns r0, r0
	bx lr
_021D77C4:
	movs r0, #1
	bx lr
	thumb_func_end ov19_021D77A4

	thumb_func_start ov19_021D77C8
ov19_021D77C8: @ 0x021D77C8
	ldr r3, _021D77CC @ =FUN_0200DA04
	bx r3
	.align 2, 0
_021D77CC: .4byte FUN_0200DA04
	thumb_func_end ov19_021D77C8

	thumb_func_start ov19_021D77D0
ov19_021D77D0: @ 0x021D77D0
	movs r1, #0x51
	lsls r1, r1, #2
	adds r0, r0, r1
	bx lr
	thumb_func_end ov19_021D77D0

	thumb_func_start ov19_021D77D8
ov19_021D77D8: @ 0x021D77D8
	movs r1, #0x59
	lsls r1, r1, #2
	adds r0, r0, r1
	bx lr
	thumb_func_end ov19_021D77D8

	thumb_func_start ov19_021D77E0
ov19_021D77E0: @ 0x021D77E0
	movs r1, #0x43
	lsls r1, r1, #4
	adds r0, r0, r1
	bx lr
	thumb_func_end ov19_021D77E0

	thumb_func_start ov19_021D77E8
ov19_021D77E8: @ 0x021D77E8
	ldr r1, _021D77F0 @ =0x0000B22C
	adds r0, r0, r1
	bx lr
	nop
_021D77F0: .4byte 0x0000B22C
	thumb_func_end ov19_021D77E8

	thumb_func_start ov19_021D77F4
ov19_021D77F4: @ 0x021D77F4
	ldr r1, _021D77FC @ =0x00005DC0
	adds r0, r0, r1
	bx lr
	nop
_021D77FC: .4byte 0x00005DC0
	thumb_func_end ov19_021D77F4

	thumb_func_start ov19_021D7800
ov19_021D7800: @ 0x021D7800
	ldr r1, _021D7808 @ =0x0000B3A8
	ldr r0, [r0, r1]
	bx lr
	nop
_021D7808: .4byte 0x0000B3A8
	thumb_func_end ov19_021D7800

	thumb_func_start ov19_021D780C
ov19_021D780C: @ 0x021D780C
	ldr r1, _021D7814 @ =0x0000662C
	adds r0, r0, r1
	bx lr
	nop
_021D7814: .4byte 0x0000662C
	thumb_func_end ov19_021D780C

	thumb_func_start ov19_021D7818
ov19_021D7818: @ 0x021D7818
	movs r1, #0x56
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov19_021D7818

	thumb_func_start ov19_021D7820
ov19_021D7820: @ 0x021D7820
	push {r3, lr}
	movs r1, #0x16
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	bl ov19_021D5E08
	cmp r0, #4
	beq _021D7834
	movs r0, #0
	pop {r3, pc}
_021D7834:
	movs r0, #0x2b
	mvns r0, r0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov19_021D7820

	thumb_func_start ov19_021D783C
ov19_021D783C: @ 0x021D783C
	str r1, [r0]
	str r2, [r0, #8]
	ldr r1, [sp]
	str r3, [r0, #0xc]
	str r1, [r0, #0x10]
	adds r1, r0, #0
	ldr r2, [sp, #4]
	adds r1, #0x20
	strb r2, [r1]
	movs r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D783C

	thumb_func_start ov19_021D785C
ov19_021D785C: @ 0x021D785C
	push {r3, r4, r5, lr}
	sub sp, #0x20
	str r0, [sp]
	lsls r0, r2, #0xc
	str r0, [sp, #8]
	lsls r0, r3, #0xc
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x30]
	str r1, [sp, #4]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0x18]
	movs r0, #0xa
	str r0, [sp, #0x1c]
	blx FUN_020C3D98
	adds r4, r0, #0
	add r0, sp, #0
	bl FUN_02021B90
	adds r5, r0, #0
	adds r0, r4, #0
	blx FUN_020C3DAC
	cmp r5, #0
	beq _021D78A6
	adds r0, r5, #0
	movs r1, #1
	bl FUN_02021CC8
	movs r1, #1
	adds r0, r5, #0
	lsls r1, r1, #0xc
	bl FUN_02021CE4
_021D78A6:
	adds r0, r5, #0
	add sp, #0x20
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021D785C

	thumb_func_start ov19_021D78AC
ov19_021D78AC: @ 0x021D78AC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	blx FUN_020C3D98
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_02021F58
	adds r0, r6, #0
	blx FUN_020C3DAC
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021D78AC

	thumb_func_start ov19_021D78C8
ov19_021D78C8: @ 0x021D78C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r1, #0
	lsls r1, r3, #0x1b
	lsrs r1, r1, #0x13
	mov ip, r1
	asrs r1, r3, #5
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x13
	mov lr, r1
	asrs r1, r3, #0xa
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x13
	str r1, [sp, #4]
	adds r7, r0, #0
	str r2, [sp]
	adds r1, r2, #0
	subs r2, r2, #1
	ldr r0, [sp, #0x20]
	str r2, [sp]
	cmp r1, #0
	beq _021D795E
_021D78F4:
	ldrh r1, [r7]
	adds r7, r7, #2
	lsls r2, r1, #0x1b
	lsrs r4, r2, #0x13
	asrs r2, r1, #5
	asrs r1, r1, #0xa
	lsls r2, r2, #0x1b
	lsls r1, r1, #0x1b
	lsrs r3, r2, #0x13
	lsrs r2, r1, #0x13
	mov r1, ip
	subs r5, r1, r4
	asrs r1, r5, #3
	lsrs r1, r1, #0x1c
	adds r1, r5, r1
	asrs r1, r1, #4
	muls r1, r0, r1
	adds r5, r4, r1
	mov r1, lr
	subs r1, r1, r3
	asrs r4, r1, #3
	lsrs r4, r4, #0x1c
	adds r4, r1, r4
	asrs r1, r4, #4
	muls r1, r0, r1
	adds r3, r3, r1
	ldr r1, [sp, #4]
	subs r1, r1, r2
	asrs r4, r1, #3
	lsrs r4, r4, #0x1c
	adds r4, r1, r4
	asrs r1, r4, #4
	muls r1, r0, r1
	adds r4, r2, r1
	asrs r2, r5, #8
	movs r1, #0x1f
	ands r1, r2
	asrs r2, r3, #8
	asrs r3, r4, #8
	lsls r3, r3, #0x1b
	lsls r2, r2, #0x1b
	lsrs r3, r3, #0x11
	lsrs r2, r2, #0x16
	orrs r2, r3
	orrs r1, r2
	strh r1, [r6]
	ldr r1, [sp]
	adds r6, r6, #2
	adds r2, r1, #0
	subs r2, r2, #1
	str r2, [sp]
	cmp r1, #0
	bne _021D78F4
_021D795E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov19_021D78C8

	thumb_func_start ov19_021D7964
ov19_021D7964: @ 0x021D7964
	ldr r1, _021D796C @ =0x0000B3B0
	ldr r0, [r0, r1]
	bx lr
	nop
_021D796C: .4byte 0x0000B3B0
	thumb_func_end ov19_021D7964

	thumb_func_start ov19_021D7970
ov19_021D7970: @ 0x021D7970
	ldr r0, _021D7978 @ =0x021E05EC
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_021D7978: .4byte 0x021E05EC
	thumb_func_end ov19_021D7970

	thumb_func_start ov19_021D797C
ov19_021D797C: @ 0x021D797C
	push {r4, r5, r6, lr}
	ldr r6, _021D79B0 @ =0x021E05EC
	ldr r0, [r6]
	cmp r0, #0
	beq _021D79AE
	movs r4, #0
	cmp r0, #0
	bls _021D79A8
	ldr r5, _021D79B4 @ =0x021E05F0
_021D798E:
	ldr r0, [r5, #8]
	bl FUN_020181C4
	ldr r1, [r5]
	cmp r1, #0
	beq _021D799E
	ldr r0, [r5, #4]
	blx r1
_021D799E:
	ldr r0, [r6]
	adds r4, r4, #1
	adds r5, #0xc
	cmp r4, r0
	blo _021D798E
_021D79A8:
	ldr r0, _021D79B0 @ =0x021E05EC
	movs r1, #0
	str r1, [r0]
_021D79AE:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D79B0: .4byte 0x021E05EC
_021D79B4: .4byte 0x021E05F0
	thumb_func_end ov19_021D797C

	thumb_func_start ov19_021D79B8
ov19_021D79B8: @ 0x021D79B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _021D79E8 @ =0x021E05EC
	adds r4, r1, #0
	ldr r0, [r0]
	adds r6, r2, #0
	cmp r0, #0x20
	blo _021D79CC
	bl FUN_02022974
_021D79CC:
	ldr r2, _021D79E8 @ =0x021E05EC
	movs r1, #0xc
	ldr r0, [r2]
	ldr r3, _021D79EC @ =0x021E05F8
	muls r1, r0, r1
	str r5, [r3, r1]
	ldr r3, _021D79F0 @ =0x021E05F0
	adds r0, r0, #1
	str r4, [r3, r1]
	ldr r3, _021D79F4 @ =0x021E05F4
	str r0, [r2]
	str r6, [r3, r1]
	pop {r4, r5, r6, pc}
	nop
_021D79E8: .4byte 0x021E05EC
_021D79EC: .4byte 0x021E05F8
_021D79F0: .4byte 0x021E05F0
_021D79F4: .4byte 0x021E05F4
	thumb_func_end ov19_021D79B8

	thumb_func_start ov19_021D79F8
ov19_021D79F8: @ 0x021D79F8
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r2, #0
	adds r5, r0, #0
	adds r0, r6, #0
	adds r0, #0x40
	ldrb r0, [r0]
	adds r4, r1, #0
	adds r7, r3, #0
	strb r0, [r5]
	movs r0, #0xb
	strb r0, [r5, #1]
	movs r0, #0
	strb r0, [r5, #2]
	adds r0, r4, #0
	bl ov19_021D7820
	ldr r1, _021D7A68 @ =0x0000585C
	str r0, [r5, r1]
	ldr r2, [r5, r1]
	adds r0, r1, #0
	adds r2, #0x48
	subs r0, #8
	str r2, [r5, r0]
	movs r0, #0x11
	ldr r2, [r5, r1]
	lsls r0, r0, #4
	adds r2, r2, r0
	subs r0, r1, #4
	str r2, [r5, r0]
	adds r0, r4, #0
	bl ov19_021D77D8
	ldr r1, _021D7A6C @ =0x00005980
	movs r2, #0x1e
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	adds r1, r5, #0
	adds r1, #0xa8
	bl ov19_021DA3CC
	ldr r0, _021D7A6C @ =0x00005980
	movs r1, #0x1b
	lsls r1, r1, #6
	ldr r0, [r5, r0]
	adds r1, r5, r1
	movs r2, #0x1e
	bl ov19_021DA3CC
	ldr r1, _021D7A70 @ =0x00005984
	str r7, [r5, r1]
	adds r0, r1, #4
	str r6, [r5, r0]
	adds r1, #8
	str r4, [r5, r1]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D7A68: .4byte 0x0000585C
_021D7A6C: .4byte 0x00005980
_021D7A70: .4byte 0x00005984
	thumb_func_end ov19_021D79F8

	thumb_func_start ov19_021D7A74
ov19_021D7A74: @ 0x021D7A74
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D7A98 @ =0x00005980
	adds r1, r4, #0
	ldr r0, [r4, r0]
	adds r1, #0xa8
	movs r2, #0x1e
	bl ov19_021DA3F0
	ldr r0, _021D7A98 @ =0x00005980
	movs r1, #0x1b
	lsls r1, r1, #6
	ldr r0, [r4, r0]
	adds r1, r4, r1
	movs r2, #0x1e
	bl ov19_021DA3F0
	pop {r4, pc}
	.align 2, 0
_021D7A98: .4byte 0x00005980
	thumb_func_end ov19_021D7A74

	thumb_func_start ov19_021D7A9C
ov19_021D7A9C: @ 0x021D7A9C
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r0, _021D7AE8 @ =0x00005984
	movs r1, #3
	ldr r0, [r4, r0]
	bl FUN_020192EC
	ldr r1, _021D7AEC @ =0x0000585C
	str r0, [r4, #0xc]
	ldr r1, [r4, r1]
	movs r2, #0
	subs r1, r0, r1
	adds r3, r1, #0
	ldr r0, _021D7AF0 @ =0x000001FF
	movs r1, #3
	ands r3, r0
	ldr r0, _021D7AE8 @ =0x00005984
	str r3, [r4, #0xc]
	ldr r0, [r4, r0]
	bl FUN_02019184
	movs r3, #0
	str r3, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	movs r0, #0x20
	str r0, [sp, #8]
	movs r0, #9
	str r0, [sp, #0xc]
	ldr r0, _021D7AE8 @ =0x00005984
	movs r1, #3
	ldr r0, [r4, r0]
	movs r2, #0x18
	bl FUN_02019CB8
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_021D7AE8: .4byte 0x00005984
_021D7AEC: .4byte 0x0000585C
_021D7AF0: .4byte 0x000001FF
	thumb_func_end ov19_021D7A9C

	thumb_func_start ov19_021D7AF4
ov19_021D7AF4: @ 0x021D7AF4
	push {r4, r5, r6, r7}
	ldr r5, [sp, #0x10]
	cmp r1, #0
	beq _021D7B2A
	ldrb r6, [r0, #2]
	movs r4, #1
	adds r7, r6, #0
	movs r6, #0x69
	eors r7, r4
	lsls r6, r6, #2
	muls r6, r7, r6
	str r6, [r2]
	movs r2, #0x17
	muls r2, r1, r2
	ldrb r6, [r0, #1]
	movs r1, #0x3f
	adds r2, r6, r2
	ands r1, r2
	str r1, [r3]
	ldrb r0, [r0, #2]
	eors r0, r4
	lsls r1, r0, #1
	ldr r0, _021D7B48 @ =0x021E0138
	ldrh r0, [r0, r1]
	str r0, [r5]
	pop {r4, r5, r6, r7}
	bx lr
_021D7B2A:
	ldrb r4, [r0, #2]
	movs r1, #0x69
	lsls r1, r1, #2
	muls r1, r4, r1
	str r1, [r2]
	ldrb r1, [r0, #1]
	str r1, [r3]
	ldrb r0, [r0, #2]
	lsls r1, r0, #1
	ldr r0, _021D7B48 @ =0x021E0138
	ldrh r0, [r0, r1]
	str r0, [r5]
	pop {r4, r5, r6, r7}
	bx lr
	nop
_021D7B48: .4byte 0x021E0138
	thumb_func_end ov19_021D7AF4

	thumb_func_start ov19_021D7B4C
ov19_021D7B4C: @ 0x021D7B4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r4, r1, #0
	adds r6, r2, #0
	add r1, sp, #8
	adds r7, r3, #0
	str r1, [sp]
	adds r1, r6, #0
	add r2, sp, #0x10
	add r3, sp, #0xc
	adds r5, r0, #0
	bl ov19_021D7AF4
	ldr r2, [sp, #8]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r7, #0
	bl ov19_021D7BC0
	ldr r2, [sp, #0x10]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov19_021D7C58
	ldr r0, [sp, #8]
	adds r1, r4, #0
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	adds r0, r5, #0
	bl ov19_021D7D00
	cmp r7, #0
	beq _021D7BB4
	cmp r6, #0
	bne _021D7BB4
	ldrb r3, [r5, #2]
	movs r0, #0xb8
	muls r0, r6, r0
	str r0, [sp]
	ldr r0, _021D7BB8 @ =0x00000618
	adds r1, r5, #0
	adds r1, #0xa8
	muls r0, r3, r0
	adds r0, r1, r0
	str r0, [sp, #4]
	ldr r1, _021D7BBC @ =0x00005980
	ldrb r2, [r4]
	ldr r1, [r5, r1]
	adds r0, r5, #0
	bl ov19_021D85C4
_021D7BB4:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D7BB8: .4byte 0x00000618
_021D7BBC: .4byte 0x00005980
	thumb_func_end ov19_021D7B4C

	thumb_func_start ov19_021D7BC0
ov19_021D7BC0: @ 0x021D7BC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r2, #0
	ldrb r2, [r1, #1]
	adds r7, r0, #0
	adds r5, r3, #0
	lsls r1, r2, #1
	adds r2, r2, r1
	ldr r1, _021D7C4C @ =0x021E017A
	movs r0, #0x12
	ldrb r1, [r1, r2]
	add r2, sp, #8
	movs r3, #0xa
	bl FUN_02006F88
	str r0, [sp, #4]
	cmp r0, #0
	beq _021D7C48
	cmp r5, #0
	beq _021D7BFE
	ldr r0, [sp, #8]
	movs r1, #0x20
	ldr r0, [r0, #0xc]
	blx FUN_020C2C54
	ldr r0, [sp, #8]
	lsls r1, r4, #5
	ldr r0, [r0, #0xc]
	movs r2, #0x20
	blx FUN_020C00B4
_021D7BFE:
	ldr r0, _021D7C50 @ =0x00005860
	movs r6, #0
	adds r4, r6, #0
	adds r5, r7, r0
_021D7C06:
	str r4, [sp]
	ldr r0, [sp, #8]
	ldr r3, _021D7C54 @ =0x00007FFF
	ldr r0, [r0, #0xc]
	adds r1, r5, #0
	movs r2, #0x10
	bl ov19_021D78C8
	adds r6, r6, #1
	adds r4, r4, #2
	adds r5, #0x20
	cmp r6, #8
	blt _021D7C06
	movs r2, #0x10
	str r2, [sp]
	ldr r1, _021D7C50 @ =0x00005860
	ldr r0, [sp, #8]
	adds r3, r7, r1
	lsls r1, r6, #5
	adds r1, r3, r1
	ldr r0, [r0, #0xc]
	ldr r3, _021D7C54 @ =0x00007FFF
	bl ov19_021D78C8
	ldr r0, _021D7C50 @ =0x00005860
	movs r1, #0x12
	adds r0, r7, r0
	lsls r1, r1, #4
	blx FUN_020C2C54
	ldr r0, [sp, #4]
	bl FUN_020181C4
_021D7C48:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D7C4C: .4byte 0x021E017A
_021D7C50: .4byte 0x00005860
_021D7C54: .4byte 0x00007FFF
	thumb_func_end ov19_021D7BC0

	thumb_func_start ov19_021D7C58
ov19_021D7C58: @ 0x021D7C58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r7, r2, #0
	movs r2, #1
	adds r5, r1, #0
	str r2, [sp]
	ldrb r3, [r5, #1]
	adds r6, r0, #0
	movs r0, #0x12
	lsls r1, r3, #1
	adds r3, r3, r1
	ldr r1, _021D7CF4 @ =0x021E0179
	ldrb r1, [r1, r3]
	movs r3, #0xa
	bl FUN_02006FE8
	str r0, [sp, #0x10]
	cmp r0, #0
	beq _021D7CF0
	add r1, sp, #0x14
	blx FUN_020A7164
	cmp r0, #0
	beq _021D7CEA
	movs r0, #0xa
	movs r1, #1
	bl FUN_0201A778
	adds r4, r0, #0
	beq _021D7CD8
	ldr r0, _021D7CF8 @ =0x00005984
	ldr r0, [r6, r0]
	str r0, [r4]
	movs r0, #0x15
	strb r0, [r4, #7]
	movs r0, #4
	strb r0, [r4, #8]
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x14]
	str r0, [r4, #0xc]
	movs r0, #0
	ldr r1, [r5, #4]
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r3, r0, #0
	movs r0, #0xd
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D7CFC @ =0x00020100
	movs r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #4]
	lsrs r5, r3, #1
	movs r3, #0x54
	adds r0, r4, #0
	subs r3, r3, r5
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020181C4
_021D7CD8:
	ldr r3, [sp, #0x14]
	ldr r0, _021D7CF8 @ =0x00005984
	str r7, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r6, r0]
	ldr r3, [r3, #0x10]
	movs r1, #3
	bl FUN_0201958C
_021D7CEA:
	ldr r0, [sp, #0x10]
	bl FUN_020181C4
_021D7CF0:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D7CF4: .4byte 0x021E0179
_021D7CF8: .4byte 0x00005984
_021D7CFC: .4byte 0x00020100
	thumb_func_end ov19_021D7C58

	thumb_func_start ov19_021D7D00
ov19_021D7D00: @ 0x021D7D00
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r2, #0
	movs r2, #1
	str r2, [sp]
	adds r6, r3, #0
	ldrb r3, [r1, #1]
	adds r5, r0, #0
	movs r0, #0x12
	lsls r1, r3, #1
	adds r3, r3, r1
	ldr r1, _021D7D68 @ =0x021E0178
	ldrb r1, [r1, r3]
	movs r3, #0xa
	bl FUN_02006FE8
	str r0, [sp, #4]
	cmp r0, #0
	beq _021D7D64
	add r1, sp, #8
	blx FUN_020A7248
	ldr r0, _021D7D6C @ =0x00005984
	movs r1, #3
	ldr r0, [r5, r0]
	bl FUN_02019FE4
	adds r7, r0, #0
	beq _021D7D4A
	ldr r1, [sp, #0x20]
	adds r2, r4, #0
	str r1, [sp]
	ldr r1, [sp, #8]
	adds r3, r6, #0
	adds r1, #0xc
	bl ov19_021D8764
_021D7D4A:
	ldr r0, [sp, #4]
	bl FUN_020181C4
	movs r0, #0
	str r0, [sp]
	ldr r0, _021D7D6C @ =0x00005984
	movs r3, #1
	ldr r0, [r5, r0]
	movs r1, #3
	adds r2, r7, #0
	lsls r3, r3, #0xc
	bl FUN_02019460
_021D7D64:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D7D68: .4byte 0x021E0178
_021D7D6C: .4byte 0x00005984
	thumb_func_end ov19_021D7D00

	thumb_func_start ov19_021D7D70
ov19_021D7D70: @ 0x021D7D70
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _021D7E0C @ =0x00005984
	adds r4, r1, #0
	ldr r0, [r5, r0]
	movs r1, #3
	adds r6, r2, #0
	bl FUN_020192EC
	lsls r0, r0, #0x17
	lsrs r1, r0, #0xb
	movs r0, #0xb8
	adds r7, r6, #0
	muls r7, r0, r7
	lsls r0, r7, #0xc
	str r1, [r5, #8]
	adds r1, r1, r0
	str r1, [r5, #0x14]
	ldr r0, [r5, #8]
	subs r0, r1, r0
	movs r1, #0x1e
	blx FUN_020E1F6C
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x14]
	asrs r1, r0, #0xc
	ldr r0, _021D7E10 @ =0x000001FF
	ands r0, r1
	str r0, [r5, #0x14]
	movs r0, #0x1e
	str r0, [r5, #4]
	ldrb r0, [r5, #2]
	strb r0, [r5, #3]
	movs r0, #0x17
	ldrb r1, [r5, #1]
	muls r0, r6, r0
	adds r0, r1, r0
	strb r0, [r5, #1]
	ldrb r1, [r5, #1]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r5, #1]
	ldrb r1, [r5, #2]
	movs r0, #1
	eors r0, r1
	strb r0, [r5, #2]
	ldrb r1, [r4]
	adds r0, r5, #0
	bl ov19_021D813C
	ldr r1, [r5, #0x10]
	adds r0, r5, #0
	adds r2, r7, #0
	bl ov19_021D7F14
	ldrb r0, [r4]
	movs r1, #1
	movs r2, #0
	str r0, [r5, #0x30]
	ldrb r0, [r5, #2]
	str r0, [r5, #0x34]
	adds r0, r5, #0
	adds r0, #0x98
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0x9c
	str r2, [r0]
	ldr r0, _021D7E14 @ =ov19_021D7E24
	adds r1, r5, #0
	bl FUN_0200D9E8
	ldr r0, _021D7E18 @ =ov19_021D7E6C
	adds r1, r5, #0
	movs r2, #1
	bl ov19_021D77C8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D7E0C: .4byte 0x00005984
_021D7E10: .4byte 0x000001FF
_021D7E14: .4byte ov19_021D7E24
_021D7E18: .4byte ov19_021D7E6C
	thumb_func_end ov19_021D7D70

	thumb_func_start ov19_021D7E1C
ov19_021D7E1C: @ 0x021D7E1C
	adds r0, #0x9c
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021D7E1C

	thumb_func_start ov19_021D7E24
ov19_021D7E24: @ 0x021D7E24
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021D7E4A
	adds r0, r4, #0
	adds r0, #0x98
	ldr r0, [r0]
	cmp r0, #2
	bne _021D7E64
	ldr r1, [r4, #0x10]
	adds r0, r4, #0
	bl ov19_021D7F9C
	movs r0, #0
	adds r4, #0x98
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021D7E4A:
	ldr r0, [r4, #0x14]
	str r0, [r4, #0xc]
	ldr r0, _021D7E68 @ =0x00005988
	ldr r0, [r4, r0]
	bl ov19_021D5E68
	strb r0, [r4]
	adds r0, r5, #0
	bl FUN_0200DA58
	movs r0, #1
	adds r4, #0x9c
	str r0, [r4]
_021D7E64:
	pop {r3, r4, r5, pc}
	nop
_021D7E68: .4byte 0x00005988
	thumb_func_end ov19_021D7E24

	thumb_func_start ov19_021D7E6C
ov19_021D7E6C: @ 0x021D7E6C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r3, [r5, #3]
	adds r6, r0, #0
	movs r0, #1
	adds r4, r3, #0
	eors r4, r0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021D7EE4
	adds r0, r5, #0
	adds r0, #0x98
	ldr r2, [r0]
	cmp r2, #2
	bhs _021D7F06
	ldr r6, _021D7F08 @ =0x00000618
	adds r1, #0xa8
	muls r6, r3, r6
	adds r0, r5, #0
	adds r1, r1, r6
	bl ov19_021D865C
	ldr r1, _021D7F08 @ =0x00000618
	adds r2, r5, #0
	adds r2, #0xa8
	muls r1, r4, r1
	adds r1, r2, r1
	adds r2, r5, #0
	adds r2, #0x98
	ldr r2, [r2]
	adds r0, r5, #0
	bl ov19_021D86B4
	adds r0, r5, #0
	adds r0, #0x98
	ldr r0, [r0]
	movs r2, #0
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0x98
	str r1, [r0]
	ldr r0, [r5, #8]
	asrs r1, r0, #0xc
	ldr r0, _021D7F0C @ =0x000001FF
	ands r0, r1
	str r0, [r5, #0xc]
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x10]
	adds r0, r1, r0
	str r0, [r5, #8]
	ldr r0, _021D7F10 @ =0x00005984
	ldr r3, [r5, #0xc]
	ldr r0, [r5, r0]
	movs r1, #3
	bl FUN_02019184
	ldr r0, [r5, #4]
	subs r0, r0, #1
	str r0, [r5, #4]
	pop {r4, r5, r6, pc}
_021D7EE4:
	ldr r0, _021D7F10 @ =0x00005984
	ldr r3, [r5, #0x14]
	ldr r0, [r5, r0]
	movs r1, #3
	movs r2, #0
	bl FUN_02019184
	ldr r1, _021D7F08 @ =0x00000618
	adds r0, r5, #0
	adds r5, #0xa8
	muls r1, r4, r1
	adds r1, r5, r1
	bl ov19_021D870C
	adds r0, r6, #0
	bl FUN_0200DA58
_021D7F06:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D7F08: .4byte 0x00000618
_021D7F0C: .4byte 0x000001FF
_021D7F10: .4byte 0x00005984
	thumb_func_end ov19_021D7E6C

	thumb_func_start ov19_021D7F14
ov19_021D7F14: @ 0x021D7F14
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r7, #0
	str r0, [sp, #8]
	adds r0, #0xa8
	str r1, [sp]
	str r2, [sp, #4]
	adds r6, r7, #0
	adds r4, r5, #0
	str r0, [sp, #8]
_021D7F2A:
	ldr r0, _021D7F8C @ =0x0000585C
	ldr r0, [r5, r0]
	adds r0, #0x70
	adds r0, r0, r6
	lsls r1, r0, #0xc
	ldr r0, [sp]
	str r1, [r4, #0x68]
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x80
	str r1, [r0]
	ldr r0, _021D7F8C @ =0x0000585C
	ldr r0, [r5, r0]
	adds r0, #0x70
	adds r1, r0, r6
	ldr r0, [sp, #4]
	adds r0, r0, r1
	lsls r1, r0, #0xc
	ldr r0, [sp]
	str r1, [r4, #0x38]
	subs r0, r1, r0
	str r0, [r4, #0x50]
	asrs r2, r0, #0xc
	ldr r0, _021D7F90 @ =0x00005854
	ldr r0, [r5, r0]
	cmp r2, r0
	ble _021D7F7E
	ldr r0, _021D7F94 @ =0x00005858
	ldr r0, [r5, r0]
	cmp r2, r0
	bge _021D7F7E
	ldrb r3, [r5, #3]
	movs r1, #1
	adds r0, r5, #0
	eors r1, r3
	ldr r3, _021D7F98 @ =0x00000618
	muls r3, r1, r3
	ldr r1, [sp, #8]
	adds r1, r1, r3
	adds r3, r7, #0
	bl ov19_021D803C
_021D7F7E:
	adds r7, r7, #1
	adds r6, #0x18
	adds r4, r4, #4
	cmp r7, #6
	blt _021D7F2A
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D7F8C: .4byte 0x0000585C
_021D7F90: .4byte 0x00005854
_021D7F94: .4byte 0x00005858
_021D7F98: .4byte 0x00000618
	thumb_func_end ov19_021D7F14

	thumb_func_start ov19_021D7F9C
ov19_021D7F9C: @ 0x021D7F9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	ldrb r1, [r5, #3]
	str r0, [sp]
	adds r0, #0xa8
	str r0, [sp]
	ldr r0, _021D8030 @ =0x00000618
	adds r2, r1, #0
	muls r2, r0, r2
	str r2, [sp, #4]
	movs r2, #1
	eors r1, r2
	muls r0, r1, r0
	movs r7, #0
	adds r4, r5, #0
	str r0, [sp, #8]
_021D7FC0:
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, _021D8034 @ =0x00005854
	ldr r0, [r0]
	ldr r1, [r5, r1]
	asrs r0, r0, #0xc
	cmp r0, r1
	ble _021D7FD8
	ldr r1, _021D8038 @ =0x00005858
	ldr r1, [r5, r1]
	cmp r0, r1
	blt _021D7FE6
_021D7FD8:
	ldr r2, [sp]
	ldr r1, [sp, #4]
	adds r0, r5, #0
	adds r1, r2, r1
	adds r2, r7, #0
	bl ov19_021D8114
_021D7FE6:
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	subs r0, r0, r6
	str r0, [r4, #0x68]
	subs r1, r0, r6
	adds r0, r4, #0
	adds r0, #0x80
	str r1, [r0]
	ldr r0, [r4, #0x50]
	subs r0, r0, r6
	str r0, [r4, #0x38]
	subs r0, r0, r6
	str r0, [r4, #0x50]
	asrs r2, r0, #0xc
	ldr r0, _021D8034 @ =0x00005854
	ldr r0, [r5, r0]
	cmp r2, r0
	ble _021D8022
	ldr r0, _021D8038 @ =0x00005858
	ldr r0, [r5, r0]
	cmp r2, r0
	bge _021D8022
	ldr r3, [sp]
	ldr r1, [sp, #8]
	adds r0, r5, #0
	adds r1, r3, r1
	adds r3, r7, #0
	bl ov19_021D803C
_021D8022:
	adds r7, r7, #1
	adds r4, r4, #4
	cmp r7, #6
	blt _021D7FC0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021D8030: .4byte 0x00000618
_021D8034: .4byte 0x00005854
_021D8038: .4byte 0x00005858
	thumb_func_end ov19_021D7F9C

	thumb_func_start ov19_021D803C
ov19_021D803C: @ 0x021D803C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	adds r5, r1, #0
	ldr r1, _021D8100 @ =0x00005988
	str r0, [sp, #0x1c]
	ldr r0, [r0, r1]
	str r2, [sp, #0x20]
	adds r4, r3, #0
	bl ov19_021D5E90
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x1c]
	movs r7, #0x28
	ldr r1, [r0, #0x34]
	movs r0, #0x1e
	adds r2, r1, #0
	lsls r0, r0, #4
	muls r2, r0, r2
	adds r2, #0x58
	lsls r0, r4, #4
	adds r0, r2, r0
	str r0, [sp, #0x28]
	movs r0, #0x34
	muls r0, r4, r0
	adds r5, r5, r0
	movs r0, #0
	str r0, [sp, #0x2c]
	ldr r1, _021D8104 @ =0x00000CD8
	ldr r0, [sp, #0x1c]
	adds r1, r0, r1
	lsls r0, r7, #4
	muls r0, r4, r0
	adds r0, r1, r0
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	lsls r1, r4, #1
	adds r6, r0, r1
_021D8086:
	ldr r0, [r5]
	cmp r0, #0
	bne _021D80D6
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x30]
	ldr r1, [r1, #0x30]
	adds r2, r4, #0
	bl FUN_02079C9C
	movs r1, #0xac
	movs r2, #0
	str r0, [sp, #0x34]
	bl FUN_02074570
	cmp r0, #0
	beq _021D80D6
	adds r0, r4, #0
	bl ov19_021D85B4
	ldr r1, [sp, #0x24]
	ldr r2, _021D8108 @ =0x00005814
	str r1, [sp]
	ldr r1, [sp, #0x20]
	ldr r3, _021D810C @ =0x000057D8
	str r1, [sp, #4]
	str r7, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x14]
	str r5, [sp, #0x18]
	ldr r0, _021D8110 @ =0x00005980
	ldrh r2, [r6, r2]
	ldr r0, [r1, r0]
	ldrh r3, [r6, r3]
	ldr r1, [sp, #0x34]
	bl ov19_021DA548
_021D80D6:
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x24]
	adds r0, #0x60
	str r0, [sp, #0x28]
	movs r0, #0x4e
	lsls r0, r0, #2
	adds r5, r5, r0
	movs r0, #0xf
	lsls r0, r0, #8
	adds r0, r1, r0
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	adds r6, #0xc
	adds r0, r0, #1
	adds r4, r4, #6
	adds r7, #0x18
	str r0, [sp, #0x2c]
	cmp r0, #5
	blt _021D8086
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D8100: .4byte 0x00005988
_021D8104: .4byte 0x00000CD8
_021D8108: .4byte 0x00005814
_021D810C: .4byte 0x000057D8
_021D8110: .4byte 0x00005980
	thumb_func_end ov19_021D803C

	thumb_func_start ov19_021D8114
ov19_021D8114: @ 0x021D8114
	push {r3, r4, r5, r6, r7, lr}
	movs r0, #0x34
	movs r4, #0
	movs r7, #0x4e
	adds r5, r1, #0
	muls r0, r2, r0
	adds r5, r5, r0
	adds r6, r4, #0
	lsls r7, r7, #2
_021D8126:
	ldr r0, [r5]
	cmp r0, #0
	beq _021D8132
	bl FUN_02021BD4
	str r6, [r5]
_021D8132:
	adds r4, r4, #1
	adds r5, r5, r7
	cmp r4, #5
	blt _021D8126
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021D8114

	thumb_func_start ov19_021D813C
ov19_021D813C: @ 0x021D813C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	ldr r1, _021D81A4 @ =0x00005988
	str r0, [sp]
	ldr r0, [r0, r1]
	bl ov19_021D5E90
	ldr r4, [sp]
	str r0, [sp, #8]
	ldr r1, _021D81A8 @ =0x00000CD8
	adds r0, r4, #0
	movs r6, #0
	adds r5, r0, r1
_021D8158:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	adds r2, r6, #0
	bl FUN_02079C9C
	movs r1, #5
	movs r2, #0
	adds r7, r0, #0
	bl FUN_02074570
	cmp r0, #0
	beq _021D8192
	ldr r1, _021D81AC @ =0x00005814
	strh r0, [r4, r1]
	adds r0, r7, #0
	bl FUN_02079D40
	ldr r1, _021D81B0 @ =0x000057D8
	movs r3, #0xa
	strh r0, [r4, r1]
	ldr r2, _021D81B0 @ =0x000057D8
	ldr r1, [sp]
	ldr r0, _021D81B4 @ =0x00005980
	ldrh r2, [r4, r2]
	ldr r0, [r1, r0]
	adds r1, r5, #0
	lsls r3, r3, #6
	bl ov19_021DA744
_021D8192:
	movs r0, #0xa
	lsls r0, r0, #6
	adds r6, r6, #1
	adds r4, r4, #2
	adds r5, r5, r0
	cmp r6, #0x1e
	blo _021D8158
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D81A4: .4byte 0x00005988
_021D81A8: .4byte 0x00000CD8
_021D81AC: .4byte 0x00005814
_021D81B0: .4byte 0x000057D8
_021D81B4: .4byte 0x00005980
	thumb_func_end ov19_021D813C

	thumb_func_start ov19_021D81B8
ov19_021D81B8: @ 0x021D81B8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r1, #0
	adds r0, #0xa3
	strb r1, [r0]
	movs r0, #0xa
	movs r1, #0x10
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	beq _021D820A
	str r5, [r4]
	strh r6, [r4, #4]
	ldr r0, [sp]
	strh r7, [r4, #6]
	str r0, [r4, #0xc]
	movs r0, #2
	strh r0, [r4, #0xa]
	cmp r7, r6
	ble _021D81EA
	movs r0, #1
	b _021D81EC
_021D81EA:
	subs r0, r0, #3
_021D81EC:
	strh r0, [r4, #8]
	ldr r0, _021D820C @ =ov19_021D8210
	adds r1, r4, #0
	movs r2, #0
	bl ov19_021D77C8
	cmp r0, #0
	beq _021D8204
	movs r0, #1
	adds r5, #0xa3
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021D8204:
	adds r0, r4, #0
	bl FUN_020181C4
_021D820A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D820C: .4byte ov19_021D8210
	thumb_func_end ov19_021D81B8

	thumb_func_start ov19_021D8210
ov19_021D8210: @ 0x021D8210
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0xa
	ldrsh r0, [r4, r0]
	cmp r0, #0
	beq _021D8224
	subs r0, r0, #1
	strh r0, [r4, #0xa]
	pop {r3, r4, r5, pc}
_021D8224:
	movs r2, #4
	movs r1, #6
	ldrsh r0, [r4, r2]
	ldrsh r1, [r4, r1]
	cmp r0, r1
	beq _021D8252
	movs r1, #8
	ldrsh r1, [r4, r1]
	adds r0, r0, r1
	strh r0, [r4, #4]
	ldr r1, [r4]
	ldr r0, _021D8264 @ =0x00005860
	adds r1, r1, r0
	ldrsh r0, [r4, r2]
	movs r2, #0x20
	lsls r0, r0, #5
	adds r0, r1, r0
	ldr r1, [r4, #0xc]
	blx FUN_020C00B4
	movs r0, #2
	strh r0, [r4, #0xa]
	pop {r3, r4, r5, pc}
_021D8252:
	ldr r1, _021D8268 @ =ov19_021D826C
	ldr r2, [r4]
	adds r0, r4, #0
	bl ov19_021D79B8
	adds r0, r5, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D8264: .4byte 0x00005860
_021D8268: .4byte ov19_021D826C
	thumb_func_end ov19_021D8210

	thumb_func_start ov19_021D826C
ov19_021D826C: @ 0x021D826C
	movs r1, #0
	adds r0, #0xa3
	strb r1, [r0]
	bx lr
	thumb_func_end ov19_021D826C

	thumb_func_start ov19_021D8274
ov19_021D8274: @ 0x021D8274
	push {r3, r4, lr}
	sub sp, #4
	ldr r3, _021D8300 @ =0x021E0770
	adds r4, r1, #0
	ldr r1, [r3, #0xc]
	cmp r1, #0
	beq _021D828E
	cmp r1, #1
	beq _021D82C4
	cmp r1, #2
	beq _021D82F0
	add sp, #4
	pop {r3, r4, pc}
_021D828E:
	ldr r0, _021D8304 @ =0x021E0774
	ldr r2, _021D8308 @ =0x021E0778
	str r0, [sp]
	ldr r3, _021D830C @ =0x021E0770
	adds r0, r4, #0
	movs r1, #0
	bl ov19_021D7AF4
	ldr r0, _021D8310 @ =0x00005988
	ldr r0, [r4, r0]
	bl ov19_021D5E8C
	ldr r2, _021D8300 @ =0x021E0770
	adds r1, r0, #0
	ldr r0, _021D8314 @ =0x021E05C0
	ldr r2, [r2, #4]
	str r1, [r0]
	adds r0, r4, #0
	movs r3, #0
	bl ov19_021D7BC0
	ldr r0, _021D8300 @ =0x021E0770
	add sp, #4
	ldr r1, [r0, #0xc]
	adds r1, r1, #1
	str r1, [r0, #0xc]
	pop {r3, r4, pc}
_021D82C4:
	ldr r0, [r3, #4]
	ldr r1, _021D8314 @ =0x021E05C0
	str r0, [sp]
	ldr r2, [r3]
	ldr r1, [r1]
	ldr r3, [r3, #8]
	adds r0, r4, #0
	bl ov19_021D7D00
	ldr r1, _021D8314 @ =0x021E05C0
	ldr r2, _021D8300 @ =0x021E0770
	ldr r1, [r1]
	ldr r2, [r2, #8]
	adds r0, r4, #0
	bl ov19_021D7C58
	ldr r0, _021D8300 @ =0x021E0770
	add sp, #4
	ldr r1, [r0, #0xc]
	adds r1, r1, #1
	str r1, [r0, #0xc]
	pop {r3, r4, pc}
_021D82F0:
	movs r1, #0
	adds r4, #0xa3
	strb r1, [r4]
	str r1, [r3, #0xc]
	bl FUN_0200DA58
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021D8300: .4byte 0x021E0770
_021D8304: .4byte 0x021E0774
_021D8308: .4byte 0x021E0778
_021D830C: .4byte 0x021E0770
_021D8310: .4byte 0x00005988
_021D8314: .4byte 0x021E05C0
	thumb_func_end ov19_021D8274

	thumb_func_start ov19_021D8318
ov19_021D8318: @ 0x021D8318
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D8348 @ =ov19_021D8274
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0200DA3C
	cmp r0, #0
	beq _021D832E
	movs r1, #1
	b _021D8330
_021D832E:
	movs r1, #0
_021D8330:
	adds r0, r4, #0
	adds r0, #0xa3
	adds r4, #0xa3
	strb r1, [r0]
	ldrb r0, [r4]
	cmp r0, #0
	beq _021D8344
	ldr r0, _021D834C @ =0x021E0770
	movs r1, #0
	str r1, [r0, #0xc]
_021D8344:
	pop {r4, pc}
	nop
_021D8348: .4byte ov19_021D8274
_021D834C: .4byte 0x021E0770
	thumb_func_end ov19_021D8318

	thumb_func_start ov19_021D8350
ov19_021D8350: @ 0x021D8350
	push {r4, lr}
	adds r2, r0, #0
	movs r1, #0
	adds r2, #0xa2
	strb r1, [r2]
	ldrb r3, [r0, #2]
	movs r2, #8
	lsls r4, r3, #1
	ldr r3, _021D836C @ =0x021E0138
	ldrh r3, [r3, r4]
	lsls r3, r3, #5
	bl ov19_021D81B8
	pop {r4, pc}
	.align 2, 0
_021D836C: .4byte 0x021E0138
	thumb_func_end ov19_021D8350

	thumb_func_start ov19_021D8370
ov19_021D8370: @ 0x021D8370
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0xa2
	ldrb r1, [r1]
	cmp r1, #4
	bhi _021D83FE
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D838A: @ jump table
	.2byte _021D8394 - _021D838A - 2 @ case 0
	.2byte _021D83AA - _021D838A - 2 @ case 1
	.2byte _021D83BC - _021D838A - 2 @ case 2
	.2byte _021D83D2 - _021D838A - 2 @ case 3
	.2byte _021D83F2 - _021D838A - 2 @ case 4
_021D8394:
	adds r0, #0xa3
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D83FE
	adds r0, r4, #0
	adds r0, #0xa2
	ldrb r0, [r0]
	adds r4, #0xa2
	adds r0, r0, #1
	strb r0, [r4]
	b _021D83FE
_021D83AA:
	bl ov19_021D8318
	adds r0, r4, #0
	adds r0, #0xa2
	ldrb r0, [r0]
	adds r4, #0xa2
	adds r0, r0, #1
	strb r0, [r4]
	b _021D83FE
_021D83BC:
	adds r0, #0xa3
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D83FE
	adds r0, r4, #0
	adds r0, #0xa2
	ldrb r0, [r0]
	adds r4, #0xa2
	adds r0, r0, #1
	strb r0, [r4]
	b _021D83FE
_021D83D2:
	ldrb r3, [r4, #2]
	movs r1, #8
	movs r2, #0
	lsls r5, r3, #1
	ldr r3, _021D8404 @ =0x021E0138
	ldrh r3, [r3, r5]
	lsls r3, r3, #5
	bl ov19_021D81B8
	adds r0, r4, #0
	adds r0, #0xa2
	ldrb r0, [r0]
	adds r4, #0xa2
	adds r0, r0, #1
	strb r0, [r4]
	b _021D83FE
_021D83F2:
	adds r4, #0xa3
	ldrb r0, [r4]
	cmp r0, #0
	bne _021D83FE
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D83FE:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D8404: .4byte 0x021E0138
	thumb_func_end ov19_021D8370

	thumb_func_start ov19_021D8408
ov19_021D8408: @ 0x021D8408
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r2, #0
	adds r4, r1, #0
	movs r0, #0x34
	muls r4, r0, r4
	adds r0, r5, #0
	ldrb r2, [r5, #2]
	ldr r1, _021D8454 @ =0x00000618
	adds r0, #0xa8
	muls r1, r2, r1
	adds r0, r0, r1
	adds r6, r3, #0
	adds r0, r0, r4
	adds r1, r6, #0
	movs r2, #1
	bl ov19_021DA418
	ldr r0, _021D8458 @ =0x00005980
	adds r1, r6, #0
	ldr r0, [r5, r0]
	adds r2, r7, #0
	bl ov19_021DA754
	ldr r0, _021D8458 @ =0x00005980
	adds r3, r5, #0
	ldrb r2, [r5, #2]
	ldr r1, _021D8454 @ =0x00000618
	adds r3, #0xa8
	muls r1, r2, r1
	adds r1, r3, r1
	ldr r0, [r5, r0]
	adds r1, r1, r4
	movs r2, #1
	bl ov19_021DA3CC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D8454: .4byte 0x00000618
_021D8458: .4byte 0x00005980
	thumb_func_end ov19_021D8408

	thumb_func_start ov19_021D845C
ov19_021D845C: @ 0x021D845C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #2]
	adds r7, r1, #0
	adds r3, r6, #0
	str r0, [sp]
	ldr r1, _021D84C0 @ =0x00000618
	ldr r0, [sp]
	adds r3, #0xa8
	muls r1, r0, r1
	movs r0, #0x34
	adds r4, r7, #0
	muls r4, r0, r4
	adds r5, r3, r1
	adds r0, r2, #0
	adds r1, r5, r4
	movs r2, #1
	bl ov19_021DA418
	ldr r0, _021D84C4 @ =0x00005980
	adds r1, r5, r4
	ldr r0, [r6, r0]
	movs r2, #0
	bl ov19_021DA7F4
	movs r2, #0x1e
	ldr r0, _021D84C4 @ =0x00005980
	ldr r3, [sp]
	lsls r2, r2, #4
	muls r2, r3, r2
	ldr r0, [r6, r0]
	adds r2, #0x58
	lsls r3, r7, #4
	adds r1, r5, r4
	adds r2, r2, r3
	bl ov19_021DA754
	adds r0, r7, #0
	bl ov19_021D85B4
	adds r1, r0, #0
	ldr r0, [r5, r4]
	bl ov19_021D78AC
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov19_021D89F4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D84C0: .4byte 0x00000618
_021D84C4: .4byte 0x00005980
	thumb_func_end ov19_021D845C

	thumb_func_start ov19_021D84C8
ov19_021D84C8: @ 0x021D84C8
	ldrb r2, [r0, #2]
	adds r3, r0, #0
	ldr r0, _021D84DC @ =0x00000618
	adds r3, #0xa8
	muls r0, r2, r0
	adds r2, r3, r0
	movs r0, #0x34
	muls r0, r1, r0
	adds r0, r2, r0
	bx lr
	.align 2, 0
_021D84DC: .4byte 0x00000618
	thumb_func_end ov19_021D84C8

	thumb_func_start ov19_021D84E0
ov19_021D84E0: @ 0x021D84E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r5, r0, #0
	ldr r0, _021D85A4 @ =0x00005988
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl FUN_0207999C
	movs r4, #0
	str r0, [sp, #0x1c]
	adds r0, r5, #0
	str r0, [sp, #0x28]
	adds r0, #0xa8
	adds r7, r4, #0
	str r4, [sp, #0x2c]
	str r0, [sp, #0x28]
_021D8500:
	ldr r0, _021D85A4 @ =0x00005988
	ldr r1, [sp, #0x1c]
	ldr r0, [r5, r0]
	adds r2, r4, #0
	ldr r0, [r0]
	bl FUN_02079C9C
	movs r1, #0xac
	movs r2, #0
	str r0, [sp, #0x20]
	bl FUN_02074570
	cmp r0, #0
	beq _021D8592
	ldrb r1, [r5, #2]
	ldr r0, _021D85A8 @ =0x00000618
	muls r0, r1, r0
	str r0, [sp, #0x18]
	adds r0, r5, r0
	adds r0, r7, r0
	str r1, [sp, #0x14]
	adds r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	bne _021D8592
	adds r0, r4, #0
	bl ov19_021D85B4
	str r0, [sp, #0x24]
	adds r0, r4, #0
	movs r1, #6
	blx FUN_020E1F6C
	str r1, [sp, #0x10]
	adds r0, r4, #0
	movs r1, #6
	blx FUN_020E1F6C
	mov ip, r0
	movs r0, #2
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x10]
	str r0, [sp, #4]
	ldr r1, [sp, #0x14]
	movs r0, #0x1e
	adds r2, r1, #0
	lsls r0, r0, #4
	muls r2, r0, r2
	ldr r0, [sp, #0x2c]
	adds r2, #0x58
	adds r0, r2, r0
	str r0, [sp, #8]
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x18]
	ldr r2, _021D85AC @ =0x0000585C
	adds r0, r1, r0
	adds r0, r0, r7
	str r0, [sp, #0xc]
	ldr r6, [r5, r2]
	movs r2, #0x18
	ldr r0, _021D85B0 @ =0x00005980
	muls r2, r3, r2
	adds r6, #0x70
	adds r2, r6, r2
	mov r6, ip
	movs r3, #0x18
	muls r3, r6, r3
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x20]
	adds r3, #0x28
	bl ov19_021DA428
_021D8592:
	ldr r0, [sp, #0x2c]
	adds r4, r4, #1
	adds r0, #0x10
	adds r7, #0x34
	str r0, [sp, #0x2c]
	cmp r4, #0x1e
	blt _021D8500
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D85A4: .4byte 0x00005988
_021D85A8: .4byte 0x00000618
_021D85AC: .4byte 0x0000585C
_021D85B0: .4byte 0x00005980
	thumb_func_end ov19_021D84E0

	thumb_func_start ov19_021D85B4
ov19_021D85B4: @ 0x021D85B4
	lsls r1, r0, #1
	ldr r0, _021D85C0 @ =0x021E013C
	ldrh r0, [r0, r1]
	adds r0, #0xb
	bx lr
	nop
_021D85C0: .4byte 0x021E013C
	thumb_func_end ov19_021D85B4

	thumb_func_start ov19_021D85C4
ov19_021D85C4: @ 0x021D85C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #0x10]
	movs r0, #0x1e
	lsls r0, r0, #4
	adds r6, r3, #0
	muls r6, r0, r6
	movs r0, #0x28
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x48]
	movs r4, #0
	ldr r7, [sp, #0x4c]
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	adds r6, #0x58
	str r4, [sp, #0x24]
	str r0, [sp, #0x20]
_021D85E6:
	movs r0, #0
	str r0, [sp, #0x28]
	adds r5, r0, #0
_021D85EC:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #0x40]
	adds r2, r4, #0
	ldr r0, [r0]
	bl FUN_02079C9C
	movs r1, #5
	movs r2, #0
	str r0, [sp, #0x2c]
	bl FUN_02074570
	cmp r0, #0
	beq _021D8630
	adds r0, r4, #0
	bl ov19_021D85B4
	movs r1, #2
	str r1, [sp]
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r3, [sp, #0x10]
	ldr r2, _021D8658 @ =0x0000585C
	str r7, [sp, #0xc]
	ldr r2, [r3, r2]
	ldr r0, [sp, #0x14]
	adds r2, #0x70
	adds r3, r2, r5
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #0x2c]
	adds r2, r2, r3
	ldr r3, [sp, #0x1c]
	bl ov19_021DA428
_021D8630:
	ldr r0, [sp, #0x28]
	adds r7, #0x34
	adds r0, r0, #1
	adds r4, r4, #1
	adds r6, #0x10
	adds r5, #0x18
	str r0, [sp, #0x28]
	cmp r0, #6
	blo _021D85EC
	ldr r0, [sp, #0x1c]
	adds r0, #0x18
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	adds r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #5
	blo _021D85E6
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D8658: .4byte 0x0000585C
	thumb_func_end ov19_021D85C4

	thumb_func_start ov19_021D865C
ov19_021D865C: @ 0x021D865C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x18
	muls r0, r2, r0
	adds r5, r1, #0
	str r0, [sp, #8]
_021D866E:
	ldr r1, [sp]
	ldr r0, [sp, #8]
	movs r7, #0
	adds r4, r1, r0
_021D8676:
	ldr r0, [r5]
	cmp r0, #0
	beq _021D869A
	bl FUN_02021D28
	adds r6, r0, #0
	add r3, sp, #0xc
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r6]
	adds r1, r2, #0
	str r0, [r3]
	ldr r0, [r4, #0x68]
	str r0, [sp, #0xc]
	ldr r0, [r5]
	bl FUN_02021C50
_021D869A:
	adds r7, r7, #1
	adds r5, #0x34
	adds r4, r4, #4
	cmp r7, #6
	blt _021D8676
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blt _021D866E
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov19_021D865C

	thumb_func_start ov19_021D86B4
ov19_021D86B4: @ 0x021D86B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x18
	muls r0, r2, r0
	adds r5, r1, #0
	str r0, [sp, #8]
_021D86C6:
	ldr r1, [sp]
	ldr r0, [sp, #8]
	movs r7, #0
	adds r4, r1, r0
_021D86CE:
	ldr r0, [r5]
	cmp r0, #0
	beq _021D86F2
	bl FUN_02021D28
	adds r6, r0, #0
	add r3, sp, #0xc
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r6]
	adds r1, r2, #0
	str r0, [r3]
	ldr r0, [r4, #0x38]
	str r0, [sp, #0xc]
	ldr r0, [r5]
	bl FUN_02021C50
_021D86F2:
	adds r7, r7, #1
	adds r5, #0x34
	adds r4, r4, #4
	cmp r7, #6
	blt _021D86CE
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blt _021D86C6
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov19_021D86B4

	thumb_func_start ov19_021D870C
ov19_021D870C: @ 0x021D870C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #0x10]
	movs r0, #0x28
	adds r5, r1, #0
	str r0, [sp]
_021D871E:
	ldr r0, [sp]
	movs r6, #0
	lsls r0, r0, #0xc
	str r0, [sp, #0xc]
	adds r4, r6, #0
_021D8728:
	ldr r0, _021D8760 @ =0x0000585C
	ldr r0, [r7, r0]
	adds r0, #0x70
	adds r0, r0, r4
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, [r5]
	cmp r0, #0
	beq _021D8740
	add r1, sp, #8
	bl FUN_02021C50
_021D8740:
	adds r6, r6, #1
	adds r5, #0x34
	adds r4, #0x18
	cmp r6, #6
	blt _021D8728
	ldr r0, [sp]
	adds r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blt _021D871E
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D8760: .4byte 0x0000585C
	thumb_func_end ov19_021D870C

	thumb_func_start ov19_021D8764
ov19_021D8764: @ 0x021D8764
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	adds r0, r2, #0
	adds r7, r3, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	cmp r0, #0x20
	blo _021D8780
	movs r1, #2
	ldr r0, [sp]
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [sp]
_021D8780:
	movs r0, #0
	mov ip, r0
	ldr r0, [sp, #0x28]
	lsls r0, r0, #0xc
	str r0, [sp, #0xc]
	orrs r0, r7
	mov lr, r0
_021D878E:
	ldr r0, [sp, #8]
	movs r2, #0
	lsls r0, r0, #0x1b
	lsrs r1, r0, #0x1a
	ldr r0, [sp]
	adds r4, r2, #0
	adds r3, r0, r1
	mov r0, ip
	lsls r1, r0, #1
	ldr r0, [sp, #4]
	adds r6, r0, r1
_021D87A4:
	lsls r0, r4, #1
	ldrh r1, [r6, r0]
	movs r0, #3
	lsls r0, r0, #0xa
	adds r5, r1, #0
	ands r5, r0
	ldr r0, _021D885C @ =0x000003FF
	adds r2, r2, #1
	ands r0, r1
	adds r0, r0, r7
	adds r1, r5, #0
	orrs r1, r0
	ldr r0, [sp, #0xc]
	adds r4, #0x15
	orrs r0, r1
	strh r0, [r3]
	adds r3, #0x40
	cmp r2, #0x14
	blo _021D87A4
	mov r1, lr
	lsls r1, r1, #0x10
	movs r0, #0
	lsrs r1, r1, #0x10
_021D87D2:
	adds r0, r0, #1
	strh r1, [r3]
	adds r3, #0x40
	cmp r0, #4
	blo _021D87D2
	ldr r0, [sp, #8]
	adds r1, r0, #1
	movs r0, #0x3f
	ands r0, r1
	str r0, [sp, #8]
	bne _021D87F2
	movs r1, #2
	ldr r0, [sp]
	lsls r1, r1, #0xa
	subs r0, r0, r1
	str r0, [sp]
_021D87F2:
	ldr r0, [sp, #8]
	cmp r0, #0x20
	bne _021D8802
	movs r1, #2
	ldr r0, [sp]
	lsls r1, r1, #0xa
	adds r0, r0, r1
	str r0, [sp]
_021D8802:
	mov r0, ip
	adds r0, r0, #1
	mov ip, r0
	cmp r0, #0x15
	blo _021D878E
	mov r1, lr
	movs r3, #2
	movs r0, #0
	lsls r1, r1, #0x10
	lsls r3, r3, #0xa
	lsrs r5, r1, #0x10
	adds r7, r0, #0
	movs r4, #0x3f
	adds r2, r3, #0
_021D881E:
	ldr r1, [sp, #8]
	lsls r1, r1, #0x1b
	lsrs r6, r1, #0x1a
	ldr r1, [sp]
	adds r1, r1, r6
	adds r6, r7, #0
_021D882A:
	adds r6, r6, #1
	strh r5, [r1]
	adds r1, #0x40
	cmp r6, #0x18
	blo _021D882A
	ldr r1, [sp, #8]
	adds r1, r1, #1
	ands r1, r4
	str r1, [sp, #8]
	bne _021D8844
	ldr r1, [sp]
	subs r1, r1, r3
	str r1, [sp]
_021D8844:
	ldr r1, [sp, #8]
	cmp r1, #0x20
	bne _021D8850
	ldr r1, [sp]
	adds r1, r1, r2
	str r1, [sp]
_021D8850:
	adds r0, r0, #1
	cmp r0, #2
	blo _021D881E
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D885C: .4byte 0x000003FF
	thumb_func_end ov19_021D8764

	thumb_func_start ov19_021D8860
ov19_021D8860: @ 0x021D8860
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0xa0
	strh r1, [r0]
	adds r0, r2, #0
	movs r3, #0
	adds r0, #0xa4
	strb r3, [r0]
	ldr r0, _021D8890 @ =0x00005980
	adds r4, r2, #0
	ldrb r3, [r2, #2]
	ldr r0, [r2, r0]
	ldr r2, _021D8894 @ =0x00000618
	adds r4, #0xa8
	muls r2, r3, r2
	adds r3, r4, r2
	movs r2, #0x34
	muls r2, r1, r2
	adds r1, r3, r2
	movs r2, #1
	bl ov19_021DA7B8
	pop {r4, pc}
	nop
_021D8890: .4byte 0x00005980
_021D8894: .4byte 0x00000618
	thumb_func_end ov19_021D8860

	thumb_func_start ov19_021D8898
ov19_021D8898: @ 0x021D8898
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #2]
	ldr r0, _021D892C @ =0x00000618
	adds r2, r5, #0
	adds r2, #0xa8
	muls r0, r1, r0
	adds r4, r2, r0
	adds r0, r5, #0
	adds r0, #0xa0
	ldrh r1, [r0]
	movs r0, #0x34
	adds r6, r1, #0
	muls r6, r0, r6
	adds r0, r5, #0
	adds r0, #0xa4
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D88C4
	cmp r0, #1
	beq _021D8916
	b _021D8928
_021D88C4:
	ldr r0, _021D8930 @ =0x00005980
	adds r1, r4, r6
	ldr r0, [r5, r0]
	bl ov19_021DA7E0
	cmp r0, #0
	beq _021D8928
	ldr r0, _021D8934 @ =0x0000598C
	ldr r0, [r5, r0]
	bl ov19_021D7964
	adds r7, r0, #0
	bl ov19_021D3B18
	cmp r0, #0
	beq _021D8928
	adds r0, r7, #0
	bl ov19_021D3B20
	cmp r0, #0
	ldr r0, _021D8930 @ =0x00005980
	beq _021D88FE
	ldr r0, [r5, r0]
	adds r1, r4, r6
	movs r2, #1
	bl ov19_021DA3F0
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D88FE:
	ldr r0, [r5, r0]
	adds r1, r4, r6
	movs r2, #2
	bl ov19_021DA7B8
	adds r0, r5, #0
	adds r0, #0xa4
	ldrb r0, [r0]
	adds r5, #0xa4
	adds r0, r0, #1
	strb r0, [r5]
	b _021D8928
_021D8916:
	ldr r0, _021D8930 @ =0x00005980
	adds r1, r4, r6
	ldr r0, [r5, r0]
	bl ov19_021DA7E0
	cmp r0, #0
	beq _021D8928
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D8928:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D892C: .4byte 0x00000618
_021D8930: .4byte 0x00005980
_021D8934: .4byte 0x0000598C
	thumb_func_end ov19_021D8898

	thumb_func_start ov19_021D8938
ov19_021D8938: @ 0x021D8938
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _021D897C @ =0x00005988
	ldr r0, [r5, r0]
	bl ov19_021D5EC8
	movs r6, #0
	adds r7, r5, #0
	str r0, [sp]
	adds r4, r6, #0
	adds r7, #0xa8
_021D894E:
	ldrb r2, [r5, #2]
	ldr r0, _021D8980 @ =0x00000618
	adds r1, r2, #0
	muls r1, r0, r1
	adds r0, r5, r1
	adds r0, r4, r0
	adds r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	beq _021D8970
	ldr r0, _021D8984 @ =0x00005980
	adds r1, r7, r1
	ldr r0, [r5, r0]
	ldr r2, [sp]
	adds r1, r1, r4
	bl ov19_021DA63C
_021D8970:
	adds r6, r6, #1
	adds r4, #0x34
	cmp r6, #0x1e
	blt _021D894E
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D897C: .4byte 0x00005988
_021D8980: .4byte 0x00000618
_021D8984: .4byte 0x00005980
	thumb_func_end ov19_021D8938

	thumb_func_start ov19_021D8988
ov19_021D8988: @ 0x021D8988
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0x34
	muls r4, r0, r4
	adds r3, r5, #0
	ldrb r1, [r5, #2]
	ldr r0, _021D89E8 @ =0x00000618
	adds r3, #0xa8
	muls r0, r1, r0
	adds r1, r3, r0
	ldr r0, [r1, r4]
	cmp r0, #0
	beq _021D89E6
	ldr r0, _021D89EC @ =0x00005980
	adds r1, r1, r4
	ldr r0, [r5, r0]
	bl ov19_021DA690
	ldr r0, _021D89F0 @ =0x00005988
	ldr r0, [r5, r0]
	bl ov19_021D5EC8
	adds r2, r0, #0
	ldr r0, _021D89EC @ =0x00005980
	adds r1, r5, #0
	ldrb r6, [r5, #2]
	ldr r3, _021D89E8 @ =0x00000618
	adds r1, #0xa8
	muls r3, r6, r3
	adds r1, r1, r3
	ldr r0, [r5, r0]
	adds r1, r1, r4
	bl ov19_021DA63C
	ldr r0, _021D89EC @ =0x00005980
	adds r3, r5, #0
	ldrb r2, [r5, #2]
	ldr r1, _021D89E8 @ =0x00000618
	adds r3, #0xa8
	muls r1, r2, r1
	adds r1, r3, r1
	ldr r0, [r5, r0]
	adds r1, r1, r4
	movs r2, #1
	bl ov19_021DA694
_021D89E6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D89E8: .4byte 0x00000618
_021D89EC: .4byte 0x00005980
_021D89F0: .4byte 0x00005988
	thumb_func_end ov19_021D8988

	thumb_func_start ov19_021D89F4
ov19_021D89F4: @ 0x021D89F4
	push {r4, lr}
	ldrb r3, [r0, #2]
	ldr r2, _021D8A1C @ =0x00000618
	adds r4, r0, #0
	adds r4, #0xa8
	muls r2, r3, r2
	adds r3, r4, r2
	movs r2, #0x34
	muls r2, r1, r2
	ldr r1, [r3, r2]
	cmp r1, #0
	beq _021D8A18
	ldr r1, _021D8A20 @ =0x00005980
	ldr r0, [r0, r1]
	adds r1, r3, r2
	movs r2, #1
	bl ov19_021DA694
_021D8A18:
	pop {r4, pc}
	nop
_021D8A1C: .4byte 0x00000618
_021D8A20: .4byte 0x00005980
	thumb_func_end ov19_021D89F4

	thumb_func_start ov19_021D8A24
ov19_021D8A24: @ 0x021D8A24
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _021D8A60 @ =0x00005988
	ldr r0, [r5, r0]
	bl ov19_021D5E24
	adds r4, r0, #0
	ldr r0, _021D8A60 @ =0x00005988
	ldr r0, [r5, r0]
	bl ov19_021D5EA0
	adds r2, r0, #0
	adds r3, r5, #0
	ldrb r1, [r5, #2]
	ldr r0, _021D8A64 @ =0x00000618
	adds r3, #0xa8
	muls r0, r1, r0
	adds r3, r3, r0
	movs r0, #0x34
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, [r3, r1]
	cmp r0, #0
	beq _021D8A5E
	ldr r0, _021D8A68 @ =0x00005980
	adds r1, r3, r1
	ldr r0, [r5, r0]
	bl ov19_021DA68C
_021D8A5E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D8A60: .4byte 0x00005988
_021D8A64: .4byte 0x00000618
_021D8A68: .4byte 0x00005980
	thumb_func_end ov19_021D8A24

	thumb_func_start ov19_021D8A6C
ov19_021D8A6C: @ 0x021D8A6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	add r0, sp, #0xc
	str r0, [sp]
	ldr r0, _021D8B08 @ =0x00005988
	add r1, sp, #0x18
	ldr r0, [r4, r0]
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl ov19_021D5EE8
	movs r5, #0
	str r5, [sp, #4]
_021D8A88:
	adds r0, r4, #0
	str r0, [sp, #8]
	adds r0, #0xa8
	movs r7, #0
	str r0, [sp, #8]
_021D8A92:
	ldrb r2, [r4, #2]
	ldr r0, _021D8B0C @ =0x00000618
	adds r1, r2, #0
	muls r1, r0, r1
	adds r0, r4, r1
	adds r0, r5, r0
	adds r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	beq _021D8AF0
	ldr r6, [sp, #0x18]
	ldr r2, [sp, #0x14]
	subs r3, r7, r6
	subs r2, r2, r6
	ldr r0, [sp, #0x10]
	cmp r3, r2
	bhi _021D8AB8
	movs r6, #1
	b _021D8ABA
_021D8AB8:
	movs r6, #0
_021D8ABA:
	ldr r2, [sp, #4]
	subs r3, r2, r0
	ldr r2, [sp, #0xc]
	subs r0, r2, r0
	cmp r3, r0
	bhi _021D8ACA
	movs r0, #1
	b _021D8ACC
_021D8ACA:
	movs r0, #0
_021D8ACC:
	tst r0, r6
	ldr r0, _021D8B10 @ =0x00005980
	beq _021D8AE2
	ldr r2, [sp, #8]
	ldr r0, [r4, r0]
	adds r1, r2, r1
	adds r1, r1, r5
	movs r2, #1
	bl ov19_021DA7F4
	b _021D8AF0
_021D8AE2:
	ldr r2, [sp, #8]
	ldr r0, [r4, r0]
	adds r1, r2, r1
	adds r1, r1, r5
	movs r2, #0
	bl ov19_021DA7F4
_021D8AF0:
	adds r7, r7, #1
	adds r5, #0x34
	cmp r7, #6
	blo _021D8A92
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blo _021D8A88
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021D8B08: .4byte 0x00005988
_021D8B0C: .4byte 0x00000618
_021D8B10: .4byte 0x00005980
	thumb_func_end ov19_021D8A6C

	thumb_func_start ov19_021D8B14
ov19_021D8B14: @ 0x021D8B14
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r6, #0
	adds r7, r5, #0
	adds r4, r6, #0
	adds r7, #0xa8
_021D8B20:
	ldrb r2, [r5, #2]
	ldr r0, _021D8B4C @ =0x00000618
	adds r1, r2, #0
	muls r1, r0, r1
	adds r0, r5, r1
	adds r0, r4, r0
	adds r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	beq _021D8B42
	ldr r0, _021D8B50 @ =0x00005980
	adds r1, r7, r1
	ldr r0, [r5, r0]
	adds r1, r1, r4
	movs r2, #0
	bl ov19_021DA7F4
_021D8B42:
	adds r6, r6, #1
	adds r4, #0x34
	cmp r6, #0x1e
	blt _021D8B20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D8B4C: .4byte 0x00000618
_021D8B50: .4byte 0x00005980
	thumb_func_end ov19_021D8B14

	thumb_func_start ov19_021D8B54
ov19_021D8B54: @ 0x021D8B54
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _021D8C00 @ =0x00000794
	adds r6, r1, #0
	str r6, [r5, r0]
	adds r4, r2, #0
	subs r0, r0, #4
	str r4, [r5, r0]
	adds r0, r6, #0
	str r3, [r5]
	bl ov19_021D77E0
	ldr r1, _021D8C04 @ =0x00000758
	str r0, [r5, r1]
	adds r0, r6, #0
	bl ov19_021D77E8
	ldr r1, _021D8C08 @ =0x0000075C
	str r0, [r5, r1]
	adds r0, r6, #0
	bl ov19_021D77D8
	str r0, [r5, #0x48]
	adds r0, r4, #0
	bl ov19_021D5E10
	ldr r1, _021D8C0C @ =0x00000785
	strb r0, [r5, r1]
	adds r0, r4, #0
	bl ov19_021D5E14
	ldr r1, _021D8C10 @ =0x00000789
	strb r0, [r5, r1]
	adds r0, r4, #0
	bl ov19_021D5E1C
	ldr r1, _021D8C14 @ =0x0000078A
	strb r0, [r5, r1]
	adds r0, r4, #0
	bl ov19_021D5E2C
	ldr r1, _021D8C18 @ =0x0000078B
	adds r3, r5, #0
	strb r0, [r5, r1]
	movs r2, #0
	str r2, [r5, #4]
	str r2, [r5, #8]
	str r2, [r5, #0xc]
	adds r0, r1, #0
	str r2, [r5, #0x10]
	subs r0, #0x37
	str r2, [r5, r0]
	adds r0, r1, #3
	movs r2, #1
	strb r2, [r5, r0]
	movs r0, #0xa
	str r0, [sp]
	ldr r0, [sp, #0x18]
	movs r1, #0xd
	adds r3, #0x1c
	bl FUN_02007204
	str r0, [r5, #0x14]
	movs r0, #0xa
	str r0, [sp]
	adds r3, r5, #0
	ldr r0, [sp, #0x18]
	movs r1, #0xe
	movs r2, #1
	adds r3, #0x20
	bl FUN_02007220
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021D8BF4
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _021D8BFA
_021D8BF4:
	add sp, #4
	movs r0, #0
	pop {r3, r4, r5, r6, pc}
_021D8BFA:
	movs r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D8C00: .4byte 0x00000794
_021D8C04: .4byte 0x00000758
_021D8C08: .4byte 0x0000075C
_021D8C0C: .4byte 0x00000785
_021D8C10: .4byte 0x00000789
_021D8C14: .4byte 0x0000078A
_021D8C18: .4byte 0x0000078B
	thumb_func_end ov19_021D8B54

	thumb_func_start ov19_021D8C1C
ov19_021D8C1C: @ 0x021D8C1C
	push {r4, r5, r6, lr}
	sub sp, #0x38
	adds r4, r0, #0
	adds r0, #0x24
	adds r5, r1, #0
	blx FUN_020A818C
	movs r3, #0
	str r3, [sp]
	movs r2, #1
	str r2, [sp, #4]
	str r3, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r0, #0x24
	str r0, [sp, #0x10]
	adds r0, r5, #0
	movs r1, #0xc
	bl FUN_0200718C
	ldr r0, _021D8DEC @ =0x00000785
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _021D8C52
	movs r5, #1
	b _021D8C54
_021D8C52:
	movs r5, #2
_021D8C54:
	ldr r0, _021D8DF0 @ =0x00000794
	ldr r0, [r4, r0]
	bl ov19_021D77D0
	adds r2, r0, #0
	ldr r0, [r4, #0x20]
	adds r1, r4, #0
	str r0, [sp]
	str r5, [sp, #4]
	ldr r3, [r4, #0x1c]
	add r0, sp, #0x14
	adds r1, #0x24
	bl ov19_021D783C
	ldr r2, _021D8DF4 @ =0x00000764
	adds r3, r4, #0
	adds r1, r2, #4
	adds r0, r4, r2
	adds r2, #0x21
	adds r1, r4, r1
	adds r2, r4, r2
	bl ov19_021D9D48
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r3, _021D8DF4 @ =0x00000764
	ldr r0, [r4]
	ldr r2, [r4, r3]
	adds r3, r3, #4
	ldr r3, [r4, r3]
	add r1, sp, #0x14
	bl ov19_021D785C
	str r0, [r4, #4]
	movs r0, #0x2a
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r3, _021D8DF4 @ =0x00000764
	ldr r0, [r4]
	ldr r2, [r4, r3]
	adds r3, r3, #4
	ldr r3, [r4, r3]
	add r1, sp, #0x14
	adds r3, #0x18
	bl ov19_021D785C
	str r0, [r4, #8]
	movs r0, #0x79
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5E10
	movs r0, #0x79
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5E08
	adds r6, r0, #0
	cmp r6, #4
	beq _021D8CD6
	movs r2, #0x6c
	movs r5, #0xec
	b _021D8CDA
_021D8CD6:
	movs r2, #0x40
	movs r5, #0xc0
_021D8CDA:
	movs r1, #2
	add r0, sp, #0x34
	strb r1, [r0]
	movs r0, #0x2b
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	add r1, sp, #0x14
	movs r3, #0x14
	bl ov19_021D785C
	str r0, [r4, #0xc]
	movs r0, #0x2b
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	add r1, sp, #0x14
	adds r2, r5, #0
	movs r3, #0x14
	bl ov19_021D785C
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	movs r1, #5
	bl FUN_02021D6C
	ldr r0, [r4, #8]
	movs r1, #2
	bl FUN_02021E80
	movs r0, #0x79
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5E10
	adds r5, r0, #0
	cmp r5, #2
	ldr r0, [r4, #0xc]
	beq _021D8D3C
	movs r1, #6
	bl FUN_02021D6C
	ldr r0, [r4, #0x10]
	movs r1, #7
	bl FUN_02021D6C
	b _021D8D4A
_021D8D3C:
	movs r1, #8
	bl FUN_02021D6C
	ldr r0, [r4, #0x10]
	movs r1, #9
	bl FUN_02021D6C
_021D8D4A:
	cmp r5, #0
	beq _021D8D56
	ldr r0, [r4, #8]
	movs r1, #0
	bl FUN_02021CAC
_021D8D56:
	cmp r6, #3
	beq _021D8D9A
	movs r0, #0x79
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5E38
	cmp r0, #1
	ldr r0, [r4, #4]
	bne _021D8D80
	movs r1, #0
	bl FUN_02021D6C
	adds r1, r4, #0
	ldr r0, [r4, #0x48]
	adds r1, #0x4c
	movs r2, #0x1e
	bl ov19_021DA3CC
	movs r1, #0
	b _021D8D8E
_021D8D80:
	movs r1, #2
	bl FUN_02021D6C
	adds r0, r4, #0
	bl ov19_021D8E00
	movs r1, #1
_021D8D8E:
	ldr r0, _021D8DF8 @ =0x0000078C
	strb r1, [r4, r0]
	ldr r0, _021D8DFC @ =0x0000078D
	movs r1, #0
	strb r1, [r4, r0]
	b _021D8DD2
_021D8D9A:
	movs r0, #0x79
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5F7C
	cmp r0, #0
	ldr r0, [r4, #4]
	bne _021D8DB4
	movs r1, #0
	bl FUN_02021D6C
	movs r1, #0
	b _021D8DBC
_021D8DB4:
	movs r1, #2
	bl FUN_02021D6C
	movs r1, #1
_021D8DBC:
	ldr r0, _021D8DFC @ =0x0000078D
	movs r2, #0x1e
	strb r1, [r4, r0]
	adds r1, r4, #0
	ldr r0, [r4, #0x48]
	adds r1, #0x4c
	bl ov19_021DA3CC
	ldr r0, _021D8DF8 @ =0x0000078C
	movs r1, #0
	strb r1, [r4, r0]
_021D8DD2:
	ldr r0, _021D8DF0 @ =0x00000794
	ldr r0, [r4, r0]
	bl ov19_021D7800
	movs r1, #0x76
	lsls r1, r1, #4
	str r0, [r4, r1]
	adds r0, r4, #0
	bl ov19_021D9AEC
	add sp, #0x38
	pop {r4, r5, r6, pc}
	nop
_021D8DEC: .4byte 0x00000785
_021D8DF0: .4byte 0x00000794
_021D8DF4: .4byte 0x00000764
_021D8DF8: .4byte 0x0000078C
_021D8DFC: .4byte 0x0000078D
	thumb_func_end ov19_021D8C1C

	thumb_func_start ov19_021D8E00
ov19_021D8E00: @ 0x021D8E00
	push {r4, r5, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r0, [r5, #4]
	bl FUN_02021D28
	adds r3, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0x10
	stm r2!, {r0, r1}
	ldr r0, [r3]
	adds r1, r5, #0
	str r0, [r2]
	ldr r0, [r5, #0x48]
	adds r1, #0x4c
	movs r2, #1
	bl ov19_021DA3CC
	movs r0, #0x79
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl ov19_021D5E9C
	adds r4, r0, #0
	ldr r0, [r5, #4]
	bl FUN_02021E88
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, _021D8E74 @ =0x000004D8
	adds r1, r4, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x4c
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x10]
	asrs r3, r3, #0xc
	ldr r0, [r5, #0x48]
	asrs r2, r2, #0xc
	adds r3, r3, #4
	bl ov19_021DA428
	ldr r1, _021D8E78 @ =0x00000664
	movs r0, #0
	str r0, [r5, r1]
	adds r0, r1, #4
	ldr r2, _021D8E7C @ =0xFFFFC000
	adds r1, #0xf0
	str r2, [r5, r0]
	movs r2, #1
	ldr r0, _021D8E80 @ =0x0000078C
	str r2, [r5, r1]
	strb r2, [r5, r0]
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_021D8E74: .4byte 0x000004D8
_021D8E78: .4byte 0x00000664
_021D8E7C: .4byte 0xFFFFC000
_021D8E80: .4byte 0x0000078C
	thumb_func_end ov19_021D8E00

	thumb_func_start ov19_021D8E84
ov19_021D8E84: @ 0x021D8E84
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021D8E96
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #0x14]
_021D8E96:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021D8EA4
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #0x18]
_021D8EA4:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021D8EB2
	bl FUN_02021BD4
	movs r0, #0
	str r0, [r4, #4]
_021D8EB2:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021D8EC0
	bl FUN_02021BD4
	movs r0, #0
	str r0, [r4, #8]
_021D8EC0:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021D8ECE
	bl FUN_02021BD4
	movs r0, #0
	str r0, [r4, #0xc]
_021D8ECE:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021D8EDC
	bl FUN_02021BD4
	movs r0, #0
	str r0, [r4, #0x10]
_021D8EDC:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021D8E84

	thumb_func_start ov19_021D8EE0
ov19_021D8EE0: @ 0x021D8EE0
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	adds r5, r1, #0
	str r0, [r2]
	str r0, [r5]
	ldr r0, _021D8F58 @ =0x00000785
	ldrb r1, [r4, r0]
	cmp r1, #4
	bhi _021D8F54
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D8F00: @ jump table
	.2byte _021D8F0A - _021D8F00 - 2 @ case 0
	.2byte _021D8F54 - _021D8F00 - 2 @ case 1
	.2byte _021D8F34 - _021D8F00 - 2 @ case 2
	.2byte _021D8F48 - _021D8F00 - 2 @ case 3
	.2byte _021D8F48 - _021D8F00 - 2 @ case 4
_021D8F0A:
	adds r1, r0, #1
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _021D8F54
	adds r0, #0xb
	ldr r0, [r4, r0]
	bl ov19_021D5E14
	ldr r1, _021D8F5C @ =0x00000789
	ldrsb r1, [r4, r1]
	cmp r1, #0
	bne _021D8F26
	cmp r0, #5
	beq _021D8F2E
_021D8F26:
	cmp r1, #5
	bne _021D8F54
	cmp r0, #0
	bne _021D8F54
_021D8F2E:
	movs r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D8F34:
	adds r0, r0, #1
	ldrb r0, [r4, r0]
	adds r0, #0xfd
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _021D8F54
	movs r0, #1
	str r0, [r2]
	pop {r3, r4, r5, pc}
_021D8F48:
	adds r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r0, #2
	bne _021D8F54
	movs r0, #1
	str r0, [r2]
_021D8F54:
	pop {r3, r4, r5, pc}
	nop
_021D8F58: .4byte 0x00000785
_021D8F5C: .4byte 0x00000789
	thumb_func_end ov19_021D8EE0

	thumb_func_start ov19_021D8F60
ov19_021D8F60: @ 0x021D8F60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r2, _021D905C @ =0x0000076C
	adds r5, r0, #0
	adds r1, r2, #4
	adds r0, r5, r2
	adds r2, #0x1a
	adds r1, r5, r1
	adds r2, r5, r2
	adds r3, r5, #0
	bl ov19_021D9D48
	adds r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov19_021D8EE0
	ldr r0, _021D9060 @ =0x00000786
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _021D8F92
	ldr r0, [r5, #8]
	movs r1, #0
	bl FUN_02021CAC
_021D8F92:
	ldr r6, _021D9064 @ =0x00000764
	ldr r0, [r5, r6]
	adds r2, r6, #0
	lsls r1, r0, #0xc
	adds r0, r6, #0
	adds r0, #0x10
	str r1, [r5, r0]
	adds r0, r6, #4
	ldr r0, [r5, r0]
	adds r2, #0xc
	lsls r1, r0, #0xc
	adds r0, r6, #0
	adds r0, #0x14
	str r1, [r5, r0]
	adds r0, r6, #0
	adds r0, #8
	ldr r1, [r5, r0]
	ldr r3, [r5, r2]
	ldr r7, [sp, #4]
	lsls r0, r1, #0xc
	lsls r2, r3, #0xc
	cmp r7, #0
	bne _021D8FC8
	adds r6, #0x10
	ldr r1, [r5, r6]
	subs r0, r0, r1
	b _021D8FF0
_021D8FC8:
	adds r4, r6, #0
	adds r4, #0x10
	ldr r4, [r5, r4]
	cmp r0, r4
	ble _021D8FE2
	movs r0, #0x11
	lsls r0, r0, #4
	subs r1, r0, r1
	ldr r0, [r5, r6]
	subs r0, #0x46
	adds r0, r1, r0
	rsbs r0, r0, #0
	b _021D8FEE
_021D8FE2:
	movs r0, #0x11
	ldr r4, [r5, r6]
	lsls r0, r0, #4
	subs r0, r0, r4
	subs r1, #0x46
	adds r0, r0, r1
_021D8FEE:
	lsls r0, r0, #0xc
_021D8FF0:
	ldr r1, [sp]
	cmp r1, #0
	bne _021D8FFE
	ldr r3, _021D9068 @ =0x00000778
	ldr r3, [r5, r3]
	subs r4, r2, r3
	b _021D9024
_021D8FFE:
	ldr r4, _021D9068 @ =0x00000778
	ldr r6, [r5, r4]
	cmp r2, r6
	ble _021D9016
	movs r2, #0xd0
	subs r4, #0x10
	subs r3, r2, r3
	ldr r2, [r5, r4]
	adds r2, #0x18
	adds r2, r3, r2
	rsbs r4, r2, #0
	b _021D9022
_021D9016:
	subs r4, #0x10
	ldr r4, [r5, r4]
	movs r2, #0xd0
	subs r2, r2, r4
	adds r3, #0x18
	adds r4, r2, r3
_021D9022:
	lsls r4, r4, #0xc
_021D9024:
	cmp r7, #0
	bne _021D902C
	cmp r1, #0
	beq _021D9030
_021D902C:
	movs r6, #0xc
	b _021D9032
_021D9030:
	movs r6, #6
_021D9032:
	adds r1, r6, #0
	blx FUN_020E1F6C
	ldr r1, _021D906C @ =0x0000077C
	str r0, [r5, r1]
	adds r0, r4, #0
	adds r1, r6, #0
	blx FUN_020E1F6C
	movs r1, #0x1e
	lsls r1, r1, #6
	str r0, [r5, r1]
	adds r0, r1, #7
	strb r6, [r5, r0]
	ldr r0, _021D9070 @ =ov19_021D9088
	adds r1, r5, #0
	movs r2, #0
	bl ov19_021D77C8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D905C: .4byte 0x0000076C
_021D9060: .4byte 0x00000786
_021D9064: .4byte 0x00000764
_021D9068: .4byte 0x00000778
_021D906C: .4byte 0x0000077C
_021D9070: .4byte ov19_021D9088
	thumb_func_end ov19_021D8F60

	thumb_func_start ov19_021D9074
ov19_021D9074: @ 0x021D9074
	ldr r1, _021D9084 @ =0x00000787
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021D9080
	movs r0, #1
	bx lr
_021D9080:
	movs r0, #0
	bx lr
	.align 2, 0
_021D9084: .4byte 0x00000787
	thumb_func_end ov19_021D9074

	thumb_func_start ov19_021D9088
ov19_021D9088: @ 0x021D9088
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r1, #0
	movs r1, #0
	ldr r0, _021D9204 @ =0x00000787
	str r1, [sp, #8]
	ldrb r2, [r4, r0]
	cmp r2, #0
	beq _021D9162
	adds r1, r0, #0
	subs r1, #0x13
	ldr r2, [r4, r1]
	adds r1, r0, #0
	subs r1, #0xb
	ldr r1, [r4, r1]
	adds r2, r2, r1
	adds r1, r0, #0
	subs r1, #0x13
	str r2, [r4, r1]
	adds r1, r0, #0
	subs r1, #0xb
	ldr r1, [r4, r1]
	cmp r1, #0
	ble _021D90D0
	adds r1, r0, #0
	subs r1, #0x13
	ldr r2, [r4, r1]
	movs r1, #0x11
	lsls r1, r1, #0x10
	cmp r2, r1
	ble _021D90D0
	ldr r1, _021D9208 @ =0x00156000
	subs r0, #0x13
	subs r1, r1, r2
	str r1, [r4, r0]
_021D90D0:
	ldr r1, _021D920C @ =0x0000077C
	ldr r0, [r4, r1]
	cmp r0, #0
	bge _021D90F2
	adds r0, r1, #0
	subs r0, #8
	ldr r2, [r4, r0]
	movs r0, #0x46
	lsls r0, r0, #0xc
	cmp r2, r0
	bge _021D90F2
	subs r2, r0, r2
	movs r0, #0x11
	lsls r0, r0, #0x10
	subs r0, r0, r2
	subs r1, #8
	str r0, [r4, r1]
_021D90F2:
	ldr r1, _021D9210 @ =0x00000778
	adds r0, r1, #0
	adds r0, #8
	ldr r2, [r4, r1]
	ldr r0, [r4, r0]
	adds r0, r2, r0
	str r0, [r4, r1]
	adds r0, r1, #0
	adds r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _021D911C
	movs r0, #0xd
	ldr r2, [r4, r1]
	lsls r0, r0, #0x10
	cmp r2, r0
	ble _021D911C
	movs r0, #0x2e
	lsls r0, r0, #0xe
	subs r0, r0, r2
	str r0, [r4, r1]
_021D911C:
	movs r1, #0x1e
	lsls r1, r1, #6
	ldr r0, [r4, r1]
	cmp r0, #0
	bge _021D913E
	adds r0, r1, #0
	subs r0, #8
	ldr r2, [r4, r0]
	ldr r0, _021D9214 @ =0xFFFE8000
	cmp r2, r0
	bge _021D913E
	subs r2, r0, r2
	movs r0, #0xd
	lsls r0, r0, #0x10
	subs r0, r0, r2
	subs r1, #8
	str r0, [r4, r1]
_021D913E:
	ldr r0, _021D9218 @ =0x00000774
	ldr r1, [r4, r0]
	adds r0, r0, #4
	str r1, [sp]
	ldr r0, [r4, r0]
	add r1, sp, #0
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	bl ov19_021D9E04
	ldr r0, _021D9204 @ =0x00000787
	add sp, #0xc
	ldrb r1, [r4, r0]
	subs r1, r1, #1
	strb r1, [r4, r0]
	pop {r4, r5, pc}
_021D9162:
	adds r2, r0, #0
	subs r2, #0x1b
	ldr r2, [r4, r2]
	subs r0, #0x17
	lsls r2, r2, #0xc
	str r2, [sp]
	ldr r0, [r4, r0]
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r4, #0
	add r1, sp, #0
	bl ov19_021D9E04
	ldr r0, _021D921C @ =0x0000076C
	adds r1, r0, #0
	ldr r2, [r4, r0]
	subs r1, #8
	str r2, [r4, r1]
	adds r1, r0, #4
	ldr r2, [r4, r1]
	subs r1, r0, #4
	str r2, [r4, r1]
	adds r1, r0, #0
	adds r1, #0x1a
	ldrb r2, [r4, r1]
	adds r1, r0, #0
	adds r1, #0x19
	strb r2, [r4, r1]
	adds r0, #0x24
	ldr r0, [r4, r0]
	bl ov19_021D5E14
	ldr r1, _021D9220 @ =0x00000789
	strb r0, [r4, r1]
	adds r0, r1, #7
	ldr r0, [r4, r0]
	bl ov19_021D5E1C
	ldr r1, _021D9224 @ =0x0000078A
	strb r0, [r4, r1]
	adds r0, r1, #6
	ldr r0, [r4, r0]
	bl ov19_021D5E2C
	ldr r1, _021D9228 @ =0x0000078B
	strb r0, [r4, r1]
	subs r0, r1, #5
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021D91D0
	ldr r0, [r4, #8]
	movs r1, #1
	bl FUN_02021CAC
_021D91D0:
	ldr r0, _021D922C @ =0x00000786
	ldrb r0, [r4, r0]
	cmp r0, #2
	ldr r0, [r4, #0xc]
	beq _021D91EA
	movs r1, #6
	bl FUN_02021D6C
	ldr r0, [r4, #0x10]
	movs r1, #7
	bl FUN_02021D6C
	b _021D91F8
_021D91EA:
	movs r1, #8
	bl FUN_02021D6C
	ldr r0, [r4, #0x10]
	movs r1, #9
	bl FUN_02021D6C
_021D91F8:
	adds r0, r5, #0
	bl FUN_0200DA58
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D9204: .4byte 0x00000787
_021D9208: .4byte 0x00156000
_021D920C: .4byte 0x0000077C
_021D9210: .4byte 0x00000778
_021D9214: .4byte 0xFFFE8000
_021D9218: .4byte 0x00000774
_021D921C: .4byte 0x0000076C
_021D9220: .4byte 0x00000789
_021D9224: .4byte 0x0000078A
_021D9228: .4byte 0x0000078B
_021D922C: .4byte 0x00000786
	thumb_func_end ov19_021D9088

	thumb_func_start ov19_021D9230
ov19_021D9230: @ 0x021D9230
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_02021D6C
	movs r1, #2
	movs r0, #0x1e
	lsls r1, r1, #0xc
	lsls r0, r0, #6
	str r1, [r4, r0]
	adds r1, r0, #0
	subs r1, #0x18
	ldr r2, [r4, r1]
	adds r1, r0, #0
	adds r2, #0xc
	subs r1, #0x10
	str r2, [r4, r1]
	adds r1, r0, #7
	movs r2, #6
	strb r2, [r4, r1]
	movs r1, #0
	adds r0, r0, #4
	strb r1, [r4, r0]
	adds r0, r4, #0
	bl ov19_021D9EB0
	ldr r0, _021D9274 @ =ov19_021D928C
	adds r1, r4, #0
	movs r2, #0
	bl ov19_021D77C8
	pop {r4, pc}
	nop
_021D9274: .4byte ov19_021D928C
	thumb_func_end ov19_021D9230

	thumb_func_start ov19_021D9278
ov19_021D9278: @ 0x021D9278
	ldr r1, _021D9288 @ =0x00000784
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	bne _021D9284
	movs r0, #1
	bx lr
_021D9284:
	movs r0, #0
	bx lr
	.align 2, 0
_021D9288: .4byte 0x00000784
	thumb_func_end ov19_021D9278

	thumb_func_start ov19_021D928C
ov19_021D928C: @ 0x021D928C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #4]
	bl FUN_02021D28
	adds r6, r0, #0
	add r3, sp, #0
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r6]
	ldr r1, _021D9360 @ =0x00000784
	str r0, [r3]
	ldrb r0, [r4, r1]
	cmp r0, #0
	beq _021D92B8
	cmp r0, #1
	beq _021D9314
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021D92B8:
	adds r0, r1, #0
	movs r3, #0
	adds r0, #0xa
	strb r3, [r4, r0]
	adds r0, r1, #3
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021D92E6
	subs r0, r1, #4
	ldr r3, [sp, #4]
	ldr r0, [r4, r0]
	adds r1, r2, #0
	adds r0, r3, r0
	str r0, [sp, #4]
	adds r0, r4, #0
	bl ov19_021D9E04
	ldr r0, _021D9364 @ =0x00000787
	add sp, #0xc
	ldrb r1, [r4, r0]
	subs r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_021D92E6:
	subs r1, #0x14
	ldr r0, [r4, r1]
	adds r1, r2, #0
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl ov19_021D9E04
	ldr r0, [r4, #4]
	movs r1, #2
	bl FUN_02021D6C
	adds r0, r4, #0
	bl ov19_021DA038
	ldr r0, _021D9364 @ =0x00000787
	movs r1, #6
	strb r1, [r4, r0]
	subs r1, r0, #3
	ldrb r1, [r4, r1]
	subs r0, r0, #3
	adds r1, r1, #1
	strb r1, [r4, r0]
_021D9314:
	ldr r0, _021D9364 @ =0x00000787
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _021D933A
	subs r0, r0, #7
	ldr r1, [sp, #4]
	ldr r0, [r4, r0]
	subs r0, r1, r0
	str r0, [sp, #4]
	adds r0, r4, #0
	add r1, sp, #0
	bl ov19_021D9E04
	ldr r0, _021D9364 @ =0x00000787
	add sp, #0xc
	ldrb r1, [r4, r0]
	subs r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_021D933A:
	subs r0, #0x1f
	ldr r0, [r4, r0]
	add r1, sp, #0
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl ov19_021D9E04
	ldr r0, _021D9360 @ =0x00000784
	movs r1, #0xff
	strb r1, [r4, r0]
	movs r1, #1
	adds r0, #0xa
	strb r1, [r4, r0]
	adds r0, r5, #0
	bl FUN_0200DA58
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D9360: .4byte 0x00000784
_021D9364: .4byte 0x00000787
	thumb_func_end ov19_021D928C

	thumb_func_start ov19_021D9368
ov19_021D9368: @ 0x021D9368
	adds r1, r0, #0
	movs r2, #2
	movs r0, #0x1e
	lsls r2, r2, #0xc
	lsls r0, r0, #6
	str r2, [r1, r0]
	adds r2, r0, #0
	subs r2, #0x18
	ldr r3, [r1, r2]
	adds r2, r0, #0
	adds r3, #0xc
	subs r2, #0x10
	str r3, [r1, r2]
	adds r2, r0, #7
	movs r3, #6
	strb r3, [r1, r2]
	ldr r3, _021D9394 @ =ov19_021D77C8
	movs r2, #0
	adds r0, r0, #4
	strb r2, [r1, r0]
	ldr r0, _021D9398 @ =ov19_021D93D0
	bx r3
	.align 2, 0
_021D9394: .4byte ov19_021D77C8
_021D9398: .4byte ov19_021D93D0
	thumb_func_end ov19_021D9368

	thumb_func_start ov19_021D939C
ov19_021D939C: @ 0x021D939C
	push {r4, lr}
	ldr r1, _021D93C8 @ =0x00000784
	adds r4, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #0xff
	bne _021D93C4
	bl ov19_021DA06C
	ldr r2, _021D93CC @ =0x00000754
	adds r1, r4, #0
	ldr r0, [r4, #0x48]
	ldr r2, [r4, r2]
	adds r1, #0x4c
	bl ov19_021DA3CC
	ldr r0, _021D93CC @ =0x00000754
	movs r1, #0
	str r1, [r4, r0]
	movs r0, #1
	pop {r4, pc}
_021D93C4:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_021D93C8: .4byte 0x00000784
_021D93CC: .4byte 0x00000754
	thumb_func_end ov19_021D939C

	thumb_func_start ov19_021D93D0
ov19_021D93D0: @ 0x021D93D0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #4]
	bl FUN_02021D28
	adds r6, r0, #0
	add r3, sp, #0
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r6]
	ldr r1, _021D94AC @ =0x00000784
	str r0, [r3]
	ldrb r0, [r4, r1]
	cmp r0, #0
	beq _021D93FC
	cmp r0, #1
	beq _021D9458
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021D93FC:
	adds r0, r1, #0
	movs r3, #0
	adds r0, #0xa
	strb r3, [r4, r0]
	adds r0, r1, #3
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021D942A
	subs r0, r1, #4
	ldr r3, [sp, #4]
	ldr r0, [r4, r0]
	adds r1, r2, #0
	adds r0, r3, r0
	str r0, [sp, #4]
	adds r0, r4, #0
	bl ov19_021D9E04
	ldr r0, _021D94B0 @ =0x00000787
	add sp, #0xc
	ldrb r1, [r4, r0]
	subs r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_021D942A:
	subs r1, #0x14
	ldr r0, [r4, r1]
	adds r1, r2, #0
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl ov19_021D9E04
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_02021D6C
	adds r0, r4, #0
	bl ov19_021DA1F8
	ldr r0, _021D94B0 @ =0x00000787
	movs r1, #6
	strb r1, [r4, r0]
	subs r1, r0, #3
	ldrb r1, [r4, r1]
	subs r0, r0, #3
	adds r1, r1, #1
	strb r1, [r4, r0]
_021D9458:
	ldr r0, _021D94B0 @ =0x00000787
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _021D947E
	subs r0, r0, #7
	ldr r1, [sp, #4]
	ldr r0, [r4, r0]
	subs r0, r1, r0
	str r0, [sp, #4]
	adds r0, r4, #0
	add r1, sp, #0
	bl ov19_021D9E04
	ldr r0, _021D94B0 @ =0x00000787
	add sp, #0xc
	ldrb r1, [r4, r0]
	subs r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_021D947E:
	subs r0, #0x1f
	ldr r0, [r4, r0]
	add r1, sp, #0
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl ov19_021D9E04
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_02021D6C
	ldr r0, _021D94AC @ =0x00000784
	movs r1, #0xff
	strb r1, [r4, r0]
	movs r1, #1
	adds r0, #0xa
	strb r1, [r4, r0]
	adds r0, r5, #0
	bl FUN_0200DA58
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D94AC: .4byte 0x00000784
_021D94B0: .4byte 0x00000787
	thumb_func_end ov19_021D93D0

	thumb_func_start ov19_021D94B4
ov19_021D94B4: @ 0x021D94B4
	push {r4, r5, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r0, [r5, #4]
	movs r1, #1
	bl FUN_02021D6C
	ldr r0, _021D9528 @ =0x00000788
	movs r1, #0
	strb r1, [r5, r0]
	adds r0, r5, #0
	bl ov19_021DA224
	adds r4, r0, #0
	bl FUN_02021D28
	adds r3, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0x10
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	adds r0, r4, #0
	bl FUN_02021F74
	str r0, [sp]
	ldr r1, [r5, #0x4c]
	ldr r2, [sp, #0x14]
	adds r0, r5, #0
	movs r3, #1
	bl ov19_021D9554
	ldr r0, [r5, #0x4c]
	bl FUN_02021D28
	adds r3, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #4
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r5, #0x4c]
	bl FUN_02021F74
	str r0, [sp]
	movs r3, #0
	ldr r2, [sp, #8]
	adds r0, r5, #0
	adds r1, r4, #0
	mvns r3, r3
	bl ov19_021D9554
	ldr r0, _021D952C @ =0x00000784
	movs r1, #0
	strb r1, [r5, r0]
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_021D9528: .4byte 0x00000788
_021D952C: .4byte 0x00000784
	thumb_func_end ov19_021D94B4

	thumb_func_start ov19_021D9530
ov19_021D9530: @ 0x021D9530
	push {r4, lr}
	adds r4, r0, #0
	bl ov19_021D95E0
	cmp r0, #0
	beq _021D954E
	ldr r0, [r4, #4]
	movs r1, #2
	bl FUN_02021D6C
	adds r0, r4, #0
	bl ov19_021DA110
	movs r0, #1
	pop {r4, pc}
_021D954E:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021D9530

	thumb_func_start ov19_021D9554
ov19_021D9554: @ 0x021D9554
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0xa
	movs r1, #0x2c
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	beq _021D95D4
	adds r0, r6, #0
	bl FUN_02021D28
	adds r3, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #4
	stm r2!, {r0, r1}
	ldr r0, [r3]
	movs r1, #0xc
	str r0, [r2]
	str r6, [r4]
	strh r1, [r4, #4]
	movs r0, #6
	strh r0, [r4, #6]
	ldr r0, [sp, #0x28]
	str r0, [r4, #8]
	ldr r0, [sp, #8]
	str r0, [r4, #0xc]
	ldr r0, [sp, #4]
	str r0, [r4, #0x14]
	str r7, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x18]
	ldr r0, [sp]
	adds r2, r0, #0
	muls r2, r1, r2
	str r2, [r4, #0x24]
	ldr r2, [r4, #0x10]
	ldr r0, [r4, #0xc]
	subs r0, r2, r0
	blx FUN_020E1F6C
	str r0, [r4, #0x1c]
	movs r0, #0xf
	lsls r0, r0, #0xc
	str r0, [r4, #0x20]
	ldr r0, _021D95D8 @ =ov19_021D9600
	adds r1, r4, #0
	movs r2, #0
	str r5, [r4, #0x28]
	bl ov19_021D77C8
	cmp r0, #0
	beq _021D95CE
	ldr r0, _021D95DC @ =0x00000788
	movs r1, #1
	add sp, #0x10
	strb r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021D95CE:
	adds r0, r4, #0
	bl FUN_020181C4
_021D95D4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D95D8: .4byte ov19_021D9600
_021D95DC: .4byte 0x00000788
	thumb_func_end ov19_021D9554

	thumb_func_start ov19_021D95E0
ov19_021D95E0: @ 0x021D95E0
	ldr r1, _021D95F0 @ =0x00000788
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021D95EC
	movs r0, #1
	bx lr
_021D95EC:
	movs r0, #0
	bx lr
	.align 2, 0
_021D95F0: .4byte 0x00000788
	thumb_func_end ov19_021D95E0

	thumb_func_start ov19_021D95F4
ov19_021D95F4: @ 0x021D95F4
	ldr r1, _021D95FC @ =0x00000788
	movs r2, #0
	strb r2, [r0, r1]
	bx lr
	.align 2, 0
_021D95FC: .4byte 0x00000788
	thumb_func_end ov19_021D95F4

	thumb_func_start ov19_021D9600
ov19_021D9600: @ 0x021D9600
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	bl FUN_02021D28
	adds r6, r0, #0
	add r3, sp, #0
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _021D9668
	subs r0, r0, #1
	strh r0, [r4, #4]
	ldrh r1, [r4, #4]
	ldrh r0, [r4, #6]
	cmp r1, r0
	bne _021D9636
	ldr r0, [r4]
	ldr r1, [r4, #8]
	bl ov19_021D78AC
_021D9636:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x1c]
	adds r0, r1, r0
	str r0, [r4, #0xc]
	str r0, [sp, #4]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x20]
	adds r0, r1, r0
	str r0, [r4, #0x18]
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	bl FUN_0201D15C
	ldr r1, [r4, #0x24]
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, [r4, #0x14]
	add r1, sp, #0
	adds r0, r0, r2
	str r0, [sp]
	ldr r0, [r4]
	bl FUN_02021C50
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021D9668:
	ldr r0, [r4, #0x14]
	adds r1, r2, #0
	str r0, [sp]
	ldr r0, [r4, #0x10]
	str r0, [sp, #4]
	ldr r0, [r4]
	bl FUN_02021C50
	ldr r1, _021D968C @ =ov19_021D95F4
	ldr r2, [r4, #0x28]
	adds r0, r4, #0
	bl ov19_021D79B8
	adds r0, r5, #0
	bl FUN_0200DA58
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D968C: .4byte ov19_021D95F4
	thumb_func_end ov19_021D9600

	thumb_func_start ov19_021D9690
ov19_021D9690: @ 0x021D9690
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, _021D96F4 @ =0x0000078C
	ldrb r1, [r4, r0]
	cmp r1, #0
	bne _021D96AE
	adds r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021D96AE
	ldr r0, [r4, #4]
	movs r1, #3
	bl FUN_02021D6C
_021D96AE:
	ldr r0, [r4, #4]
	bl FUN_02021D28
	adds r5, r0, #0
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	movs r0, #2
	ldr r1, [sp, #4]
	lsls r0, r0, #0xc
	subs r0, r1, r0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r2, #0
	bl ov19_021D9E04
	ldr r0, _021D96F8 @ =0x00000784
	movs r2, #0
	strb r2, [r4, r0]
	adds r0, r0, #3
	strb r2, [r4, r0]
	ldr r0, _021D96FC @ =ov19_021D9718
	adds r1, r4, #0
	bl ov19_021D77C8
	cmp r0, #0
	beq _021D96F0
	ldr r0, _021D9700 @ =0x00000788
	movs r1, #1
	strb r1, [r4, r0]
_021D96F0:
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_021D96F4: .4byte 0x0000078C
_021D96F8: .4byte 0x00000784
_021D96FC: .4byte ov19_021D9718
_021D9700: .4byte 0x00000788
	thumb_func_end ov19_021D9690

	thumb_func_start ov19_021D9704
ov19_021D9704: @ 0x021D9704
	ldr r1, _021D9714 @ =0x00000788
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021D9710
	movs r0, #1
	bx lr
_021D9710:
	movs r0, #0
	bx lr
	.align 2, 0
_021D9714: .4byte 0x00000788
	thumb_func_end ov19_021D9704

	thumb_func_start ov19_021D9718
ov19_021D9718: @ 0x021D9718
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r4, r1, #0
	ldr r1, _021D97F0 @ =0x00000784
	adds r5, r0, #0
	ldrb r0, [r4, r1]
	cmp r0, #0
	beq _021D9730
	cmp r0, #1
	beq _021D9796
	add sp, #0x18
	pop {r4, r5, r6, pc}
_021D9730:
	adds r0, r1, #3
	ldrb r0, [r4, r0]
	adds r2, r0, #1
	adds r0, r1, #3
	strb r2, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #4
	blo _021D97EC
	ldr r0, [r4, #4]
	bl FUN_02021D28
	adds r3, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0xc
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [sp, #0x10]
	movs r2, #3
	asrs r0, r0, #0xc
	adds r1, r0, #6
	movs r0, #0x77
	lsls r0, r0, #4
	str r1, [r4, r0]
	adds r1, r0, #0
	lsls r2, r2, #0xc
	adds r1, #0x10
	str r2, [r4, r1]
	adds r1, r0, #0
	movs r2, #2
	adds r1, #0x17
	strb r2, [r4, r1]
	adds r1, r0, #0
	adds r1, #0x1c
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _021D978A
	adds r0, #0x1d
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021D978A
	ldr r0, [r4, #4]
	movs r1, #4
	bl FUN_02021D6C
_021D978A:
	ldr r0, _021D97F0 @ =0x00000784
	add sp, #0x18
	ldrb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021D9796:
	ldr r0, [r4, #4]
	bl FUN_02021D28
	adds r6, r0, #0
	add r3, sp, #0
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	ldr r0, _021D97F4 @ =0x00000787
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _021D97D0
	subs r0, r0, #7
	ldr r1, [sp, #4]
	ldr r0, [r4, r0]
	adds r0, r1, r0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r2, #0
	bl ov19_021D9E04
	ldr r0, _021D97F4 @ =0x00000787
	add sp, #0x18
	ldrb r1, [r4, r0]
	subs r1, r1, #1
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021D97D0:
	subs r0, #0x17
	ldr r0, [r4, r0]
	adds r1, r2, #0
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl ov19_021D9E04
	ldr r0, _021D97F8 @ =0x00000788
	movs r1, #0
	strb r1, [r4, r0]
	adds r0, r5, #0
	bl FUN_0200DA58
_021D97EC:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D97F0: .4byte 0x00000784
_021D97F4: .4byte 0x00000787
_021D97F8: .4byte 0x00000788
	thumb_func_end ov19_021D9718

	thumb_func_start ov19_021D97FC
ov19_021D97FC: @ 0x021D97FC
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl FUN_02021D28
	adds r3, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0
	stm r2!, {r0, r1}
	ldr r0, [r3]
	movs r1, #0x77
	str r0, [r2]
	ldr r0, [sp, #4]
	lsls r1, r1, #4
	asrs r0, r0, #0xc
	subs r0, r0, #4
	str r0, [r4, r1]
	adds r0, r1, #0
	ldr r2, _021D984C @ =0xFFFFF000
	adds r0, #0x10
	str r2, [r4, r0]
	adds r0, r1, #0
	movs r2, #4
	adds r0, #0x17
	strb r2, [r4, r0]
	movs r2, #0
	adds r1, #0x14
	strb r2, [r4, r1]
	ldr r0, _021D9850 @ =ov19_021D9894
	adds r1, r4, #0
	bl ov19_021D77C8
	cmp r0, #0
	beq _021D9848
	ldr r0, _021D9854 @ =0x00000788
	movs r1, #1
	strb r1, [r4, r0]
_021D9848:
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_021D984C: .4byte 0xFFFFF000
_021D9850: .4byte ov19_021D9894
_021D9854: .4byte 0x00000788
	thumb_func_end ov19_021D97FC

	thumb_func_start ov19_021D9858
ov19_021D9858: @ 0x021D9858
	push {r4, lr}
	ldr r1, _021D9890 @ =0x00000788
	adds r4, r0, #0
	ldrb r0, [r4, r1]
	cmp r0, #0
	bne _021D988A
	adds r0, r1, #4
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021D9886
	adds r0, r1, #5
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021D9886
	ldr r0, [r4, #4]
	bl FUN_02021E24
	cmp r0, #0
	beq _021D9886
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_02021D6C
_021D9886:
	movs r0, #1
	pop {r4, pc}
_021D988A:
	movs r0, #0
	pop {r4, pc}
	nop
_021D9890: .4byte 0x00000788
	thumb_func_end ov19_021D9858

	thumb_func_start ov19_021D9894
ov19_021D9894: @ 0x021D9894
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #4]
	bl FUN_02021D28
	adds r6, r0, #0
	add r3, sp, #0
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	ldr r0, _021D98F8 @ =0x00000787
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _021D98D6
	subs r0, r0, #7
	ldr r1, [sp, #4]
	ldr r0, [r4, r0]
	adds r0, r1, r0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r2, #0
	bl ov19_021D9E04
	ldr r0, _021D98F8 @ =0x00000787
	add sp, #0xc
	ldrb r1, [r4, r0]
	subs r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, r6, pc}
_021D98D6:
	subs r0, #0x17
	ldr r0, [r4, r0]
	adds r1, r2, #0
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl ov19_021D9E04
	ldr r0, _021D98FC @ =0x00000788
	movs r1, #0
	strb r1, [r4, r0]
	adds r0, r5, #0
	bl FUN_0200DA58
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021D98F8: .4byte 0x00000787
_021D98FC: .4byte 0x00000788
	thumb_func_end ov19_021D9894

	thumb_func_start ov19_021D9900
ov19_021D9900: @ 0x021D9900
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x79
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5E68
	movs r1, #0x79
	lsls r1, r1, #4
	movs r2, #0x11
	ldr r3, [r4, r1]
	lsls r2, r2, #4
	ldrh r2, [r3, r2]
	cmp r2, r0
	bne _021D9926
	subs r1, #0x38
	ldr r0, [r4, r1]
	bl ov19_021D84E0
_021D9926:
	adds r0, r4, #0
	bl ov19_021DA204
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_02021D6C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021D9900

	thumb_func_start ov19_021D9938
ov19_021D9938: @ 0x021D9938
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_02021D6C
	adds r1, r4, #0
	ldr r0, [r4, #0x48]
	adds r1, #0x4c
	movs r2, #1
	bl ov19_021DA7B8
	ldr r0, _021D9958 @ =0x00000784
	movs r1, #0
	strb r1, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_021D9958: .4byte 0x00000784
	thumb_func_end ov19_021D9938

	thumb_func_start ov19_021D995C
ov19_021D995C: @ 0x021D995C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _021D99EC @ =0x00000794
	ldr r0, [r5, r0]
	bl ov19_021D7964
	ldr r1, _021D99F0 @ =0x00000784
	adds r4, r0, #0
	ldrb r1, [r5, r1]
	cmp r1, #0
	beq _021D997C
	cmp r1, #1
	beq _021D9994
	cmp r1, #2
	beq _021D99CE
	b _021D99E8
_021D997C:
	adds r1, r5, #0
	ldr r0, [r5, #0x48]
	adds r1, #0x4c
	bl ov19_021DA7E0
	cmp r0, #0
	beq _021D99E8
	ldr r0, _021D99F0 @ =0x00000784
	ldrb r1, [r5, r0]
	adds r1, r1, #1
	strb r1, [r5, r0]
	b _021D99E8
_021D9994:
	bl ov19_021D3B18
	cmp r0, #0
	beq _021D99E8
	adds r0, r4, #0
	bl ov19_021D3B20
	cmp r0, #0
	beq _021D99B8
	ldr r0, [r5, #4]
	movs r1, #0
	bl FUN_02021D6C
	adds r0, r5, #0
	bl ov19_021DA204
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D99B8:
	adds r1, r5, #0
	ldr r0, [r5, #0x48]
	adds r1, #0x4c
	movs r2, #2
	bl ov19_021DA7B8
	ldr r0, _021D99F0 @ =0x00000784
	ldrb r1, [r5, r0]
	adds r1, r1, #1
	strb r1, [r5, r0]
	b _021D99E8
_021D99CE:
	adds r1, r5, #0
	ldr r0, [r5, #0x48]
	adds r1, #0x4c
	bl ov19_021DA7E0
	cmp r0, #0
	beq _021D99E8
	ldr r0, [r5, #4]
	movs r1, #2
	bl FUN_02021D6C
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D99E8:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D99EC: .4byte 0x00000794
_021D99F0: .4byte 0x00000784
	thumb_func_end ov19_021D995C

	thumb_func_start ov19_021D99F4
ov19_021D99F4: @ 0x021D99F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_02021E80
	ldr r0, _021D9A24 @ =0x0000078C
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021D9A10
	ldr r0, [r4, #0x4c]
	movs r1, #1
	bl FUN_02021E80
_021D9A10:
	ldr r0, _021D9A28 @ =0x0000078D
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _021D9A22
	subs r0, #0x2d
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov19_021DEBDC
_021D9A22:
	pop {r4, pc}
	.align 2, 0
_021D9A24: .4byte 0x0000078C
_021D9A28: .4byte 0x0000078D
	thumb_func_end ov19_021D99F4

	thumb_func_start ov19_021D9A2C
ov19_021D9A2C: @ 0x021D9A2C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #2
	bl FUN_02021E80
	ldr r0, _021D9A5C @ =0x0000078C
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021D9A48
	ldr r0, [r4, #0x4c]
	movs r1, #2
	bl FUN_02021E80
_021D9A48:
	ldr r0, _021D9A60 @ =0x0000078D
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _021D9A5A
	subs r0, #0x2d
	ldr r0, [r4, r0]
	movs r1, #2
	bl ov19_021DEBDC
_021D9A5A:
	pop {r4, pc}
	.align 2, 0
_021D9A5C: .4byte 0x0000078C
_021D9A60: .4byte 0x0000078D
	thumb_func_end ov19_021D9A2C

	thumb_func_start ov19_021D9A64
ov19_021D9A64: @ 0x021D9A64
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D9A88 @ =0x0000078C
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _021D9A84
	adds r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5EA0
	adds r2, r0, #0
	ldr r0, [r4, #0x48]
	adds r4, #0x4c
	adds r1, r4, #0
	bl ov19_021DA68C
_021D9A84:
	pop {r4, pc}
	nop
_021D9A88: .4byte 0x0000078C
	thumb_func_end ov19_021D9A64

	thumb_func_start ov19_021D9A8C
ov19_021D9A8C: @ 0x021D9A8C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x79
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5EC8
	adds r2, r0, #0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _021D9AAC
	ldr r0, [r4, #0x48]
	adds r4, #0x4c
	adds r1, r4, #0
	bl ov19_021DA63C
_021D9AAC:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021D9A8C

	thumb_func_start ov19_021D9AB0
ov19_021D9AB0: @ 0x021D9AB0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x4c]
	adds r2, r1, #0
	cmp r0, #0
	beq _021D9AE8
	adds r1, r4, #0
	ldr r0, [r4, #0x48]
	adds r1, #0x4c
	bl ov19_021DA690
	movs r0, #0x79
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5EC8
	adds r2, r0, #0
	adds r1, r4, #0
	ldr r0, [r4, #0x48]
	adds r1, #0x4c
	bl ov19_021DA63C
	ldr r0, [r4, #0x48]
	adds r4, #0x4c
	adds r1, r4, #0
	movs r2, #0
	bl ov19_021DA694
_021D9AE8:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021D9AB0

	thumb_func_start ov19_021D9AEC
ov19_021D9AEC: @ 0x021D9AEC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x79
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5EE0
	cmp r0, #0
	ldr r0, [r4, #4]
	beq _021D9B08
	movs r1, #1
	bl FUN_02021E90
	pop {r4, pc}
_021D9B08:
	movs r1, #0
	bl FUN_02021E90
	pop {r4, pc}
	thumb_func_end ov19_021D9AEC

	thumb_func_start ov19_021D9B10
ov19_021D9B10: @ 0x021D9B10
	ldr r3, _021D9B18 @ =FUN_02021D6C
	ldr r0, [r0, #4]
	movs r1, #1
	bx r3
	.align 2, 0
_021D9B18: .4byte FUN_02021D6C
	thumb_func_end ov19_021D9B10

	thumb_func_start ov19_021D9B1C
ov19_021D9B1C: @ 0x021D9B1C
	push {r4, lr}
	ldr r0, [r0, #4]
	adds r4, r1, #0
	bl FUN_02021D28
	adds r2, r0, #0
	ldm r2!, {r0, r1}
	stm r4!, {r0, r1}
	ldr r0, [r2]
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021D9B1C

	thumb_func_start ov19_021D9B34
ov19_021D9B34: @ 0x021D9B34
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D9B58 @ =0x00000784
	movs r2, #0
	strb r2, [r4, r0]
	ldr r0, _021D9B5C @ =ov19_021D9B78
	adds r1, r4, #0
	bl FUN_0200D9E8
	cmp r0, #0
	beq _021D9B54
	ldr r0, _021D9B60 @ =0x0000078D
	movs r1, #1
	strb r1, [r4, r0]
	subs r0, r0, #5
	strb r1, [r4, r0]
_021D9B54:
	pop {r4, pc}
	nop
_021D9B58: .4byte 0x00000784
_021D9B5C: .4byte ov19_021D9B78
_021D9B60: .4byte 0x0000078D
	thumb_func_end ov19_021D9B34

	thumb_func_start ov19_021D9B64
ov19_021D9B64: @ 0x021D9B64
	ldr r1, _021D9B74 @ =0x00000788
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021D9B70
	movs r0, #1
	bx lr
_021D9B70:
	movs r0, #0
	bx lr
	.align 2, 0
_021D9B74: .4byte 0x00000788
	thumb_func_end ov19_021D9B64

	thumb_func_start ov19_021D9B78
ov19_021D9B78: @ 0x021D9B78
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _021D9BCC @ =0x00000784
	adds r4, r1, #0
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _021D9B8C
	cmp r1, #1
	beq _021D9BA8
	pop {r3, r4, r5, pc}
_021D9B8C:
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_02021D6C
	movs r0, #0x76
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021DE954
	ldr r0, _021D9BCC @ =0x00000784
	ldrb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D9BA8:
	subs r0, #0x24
	ldr r0, [r4, r0]
	bl ov19_021DE9A8
	cmp r0, #0
	beq _021D9BC8
	ldr r0, [r4, #4]
	movs r1, #2
	bl FUN_02021D6C
	ldr r0, _021D9BD0 @ =0x00000788
	movs r1, #0
	strb r1, [r4, r0]
	adds r0, r5, #0
	bl FUN_0200DA58
_021D9BC8:
	pop {r3, r4, r5, pc}
	nop
_021D9BCC: .4byte 0x00000784
_021D9BD0: .4byte 0x00000788
	thumb_func_end ov19_021D9B78

	thumb_func_start ov19_021D9BD4
ov19_021D9BD4: @ 0x021D9BD4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D9BF8 @ =0x00000784
	movs r2, #0
	strb r2, [r4, r0]
	ldr r0, _021D9BFC @ =ov19_021D9C18
	adds r1, r4, #0
	bl FUN_0200D9E8
	cmp r0, #0
	beq _021D9BF6
	ldr r0, _021D9C00 @ =0x0000078D
	movs r1, #0
	strb r1, [r4, r0]
	movs r1, #1
	subs r0, r0, #5
	strb r1, [r4, r0]
_021D9BF6:
	pop {r4, pc}
	.align 2, 0
_021D9BF8: .4byte 0x00000784
_021D9BFC: .4byte ov19_021D9C18
_021D9C00: .4byte 0x0000078D
	thumb_func_end ov19_021D9BD4

	thumb_func_start ov19_021D9C04
ov19_021D9C04: @ 0x021D9C04
	ldr r1, _021D9C14 @ =0x00000788
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021D9C10
	movs r0, #1
	bx lr
_021D9C10:
	movs r0, #0
	bx lr
	.align 2, 0
_021D9C14: .4byte 0x00000788
	thumb_func_end ov19_021D9C04

	thumb_func_start ov19_021D9C18
ov19_021D9C18: @ 0x021D9C18
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _021D9C6C @ =0x00000784
	adds r4, r1, #0
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _021D9C2C
	cmp r1, #1
	beq _021D9C48
	pop {r3, r4, r5, pc}
_021D9C2C:
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_02021D6C
	movs r0, #0x76
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021DEA18
	ldr r0, _021D9C6C @ =0x00000784
	ldrb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D9C48:
	subs r0, #0x24
	ldr r0, [r4, r0]
	bl ov19_021DEA64
	cmp r0, #0
	beq _021D9C68
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_02021D6C
	ldr r0, _021D9C70 @ =0x00000788
	movs r1, #0
	strb r1, [r4, r0]
	adds r0, r5, #0
	bl FUN_0200DA58
_021D9C68:
	pop {r3, r4, r5, pc}
	nop
_021D9C6C: .4byte 0x00000784
_021D9C70: .4byte 0x00000788
	thumb_func_end ov19_021D9C18

	thumb_func_start ov19_021D9C74
ov19_021D9C74: @ 0x021D9C74
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D9C94 @ =0x00000784
	movs r2, #0
	strb r2, [r4, r0]
	ldr r0, _021D9C98 @ =ov19_021D9CB4
	adds r1, r4, #0
	bl FUN_0200D9E8
	cmp r0, #0
	beq _021D9C90
	ldr r0, _021D9C9C @ =0x00000788
	movs r1, #1
	strb r1, [r4, r0]
_021D9C90:
	pop {r4, pc}
	nop
_021D9C94: .4byte 0x00000784
_021D9C98: .4byte ov19_021D9CB4
_021D9C9C: .4byte 0x00000788
	thumb_func_end ov19_021D9C74

	thumb_func_start ov19_021D9CA0
ov19_021D9CA0: @ 0x021D9CA0
	ldr r1, _021D9CB0 @ =0x00000788
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021D9CAC
	movs r0, #1
	bx lr
_021D9CAC:
	movs r0, #0
	bx lr
	.align 2, 0
_021D9CB0: .4byte 0x00000788
	thumb_func_end ov19_021D9CA0

	thumb_func_start ov19_021D9CB4
ov19_021D9CB4: @ 0x021D9CB4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _021D9D08 @ =0x00000784
	adds r4, r1, #0
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _021D9CC8
	cmp r1, #1
	beq _021D9CE4
	pop {r3, r4, r5, pc}
_021D9CC8:
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_02021D6C
	movs r0, #0x76
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021DEA74
	ldr r0, _021D9D08 @ =0x00000784
	ldrb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D9CE4:
	subs r0, #0x24
	ldr r0, [r4, r0]
	bl ov19_021DEB08
	cmp r0, #0
	beq _021D9D04
	ldr r0, [r4, #4]
	movs r1, #2
	bl FUN_02021D6C
	ldr r0, _021D9D0C @ =0x00000788
	movs r1, #0
	strb r1, [r4, r0]
	adds r0, r5, #0
	bl FUN_0200DA58
_021D9D04:
	pop {r3, r4, r5, pc}
	nop
_021D9D08: .4byte 0x00000784
_021D9D0C: .4byte 0x00000788
	thumb_func_end ov19_021D9CB4

	thumb_func_start ov19_021D9D10
ov19_021D9D10: @ 0x021D9D10
	push {r3, lr}
	ldr r1, _021D9D24 @ =0x0000078D
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _021D9D22
	ldr r0, [r0, #4]
	movs r1, #1
	bl FUN_02021D6C
_021D9D22:
	pop {r3, pc}
	.align 2, 0
_021D9D24: .4byte 0x0000078D
	thumb_func_end ov19_021D9D10

	thumb_func_start ov19_021D9D28
ov19_021D9D28: @ 0x021D9D28
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D9D44 @ =0x0000078D
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021D9D42
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_02021D6C
	ldr r0, _021D9D44 @ =0x0000078D
	movs r1, #0
	strb r1, [r4, r0]
_021D9D42:
	pop {r4, pc}
	.align 2, 0
_021D9D44: .4byte 0x0000078D
	thumb_func_end ov19_021D9D28

	thumb_func_start ov19_021D9D48
ov19_021D9D48: @ 0x021D9D48
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0x79
	adds r5, r3, #0
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r7, r2, #0
	adds r4, r1, #0
	str r0, [sp]
	bl ov19_021D5E10
	strb r0, [r7]
	ldrb r0, [r7]
	cmp r0, #4
	bhi _021D9DFC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D9D72: @ jump table
	.2byte _021D9D7C - _021D9D72 - 2 @ case 0
	.2byte _021D9DA6 - _021D9D72 - 2 @ case 1
	.2byte _021D9DC8 - _021D9D72 - 2 @ case 2
	.2byte _021D9DDA - _021D9D72 - 2 @ case 3
	.2byte _021D9DEC - _021D9D72 - 2 @ case 4
_021D9D7C:
	ldr r0, _021D9E00 @ =0x00000794
	ldr r0, [r5, r0]
	bl ov19_021D7820
	adds r5, r0, #0
	ldr r0, [sp]
	bl ov19_021D5E14
	movs r1, #0x18
	adds r5, #0x70
	muls r1, r0, r1
	adds r0, r5, r1
	str r0, [r6]
	ldr r0, [sp]
	bl ov19_021D5E1C
	movs r1, #0x18
	muls r1, r0, r1
	adds r1, #0x18
	str r1, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021D9DA6:
	ldr r0, [sp]
	bl ov19_021D5E2C
	adds r7, r0, #0
	ldr r0, _021D9E00 @ =0x00000794
	ldr r0, [r5, r0]
	bl ov19_021D77E8
	adds r1, r7, #0
	adds r2, r6, #0
	adds r3, r4, #0
	bl ov19_021DCD30
	ldr r0, [r4]
	subs r0, #0x10
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021D9DC8:
	ldr r0, _021D9E00 @ =0x00000794
	ldr r0, [r5, r0]
	bl ov19_021D7820
	adds r0, #0xa8
	str r0, [r6]
	movs r0, #8
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021D9DDA:
	ldr r0, _021D9E00 @ =0x00000794
	ldr r0, [r5, r0]
	bl ov19_021D7820
	adds r0, #0x9f
	str r0, [r6]
	movs r0, #0xa0
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021D9DEC:
	ldr r0, _021D9E00 @ =0x00000794
	ldr r0, [r5, r0]
	bl ov19_021D7820
	adds r0, #0xeb
	str r0, [r6]
	movs r0, #0xa0
	str r0, [r4]
_021D9DFC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D9E00: .4byte 0x00000794
	thumb_func_end ov19_021D9D48

	thumb_func_start ov19_021D9E04
ov19_021D9E04: @ 0x021D9E04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r7, r0, #0
	ldr r0, [r7, #4]
	adds r6, r1, #0
	bl FUN_02021C50
	ldr r1, _021D9E98 @ =0x0000078C
	ldrb r0, [r7, r1]
	cmp r0, #0
	beq _021D9E5C
	movs r0, #0
	subs r1, #0x38
	str r0, [sp]
	str r0, [sp, #0x18]
	ldr r0, [r7, r1]
	cmp r0, #0
	bls _021D9E5C
	adds r4, r7, #0
	adds r5, r7, #0
_021D9E2C:
	ldr r0, _021D9E9C @ =0x00000664
	ldr r1, [r6]
	ldr r0, [r4, r0]
	adds r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, _021D9EA0 @ =0x00000668
	ldr r1, [r6, #4]
	ldr r0, [r4, r0]
	subs r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x4c]
	add r1, sp, #0x10
	bl FUN_02021C50
	ldr r0, [sp]
	adds r4, #8
	adds r0, r0, #1
	str r0, [sp]
	ldr r0, _021D9EA4 @ =0x00000754
	adds r5, #0x34
	ldr r1, [r7, r0]
	ldr r0, [sp]
	cmp r0, r1
	blo _021D9E2C
_021D9E5C:
	ldr r0, _021D9EA8 @ =0x0000078D
	ldrb r1, [r7, r0]
	cmp r1, #0
	beq _021D9E6E
	subs r0, #0x2d
	ldr r0, [r7, r0]
	adds r1, r6, #0
	bl ov19_021DEB9C
_021D9E6E:
	ldr r0, _021D9EAC @ =0x0000078E
	ldrb r0, [r7, r0]
	cmp r0, #0
	beq _021D9E94
	ldm r6!, {r0, r1}
	add r3, sp, #4
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	movs r0, #6
	ldr r1, [sp, #8]
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [r7, #8]
	adds r1, r2, #0
	bl FUN_02021C50
_021D9E94:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D9E98: .4byte 0x0000078C
_021D9E9C: .4byte 0x00000664
_021D9EA0: .4byte 0x00000668
_021D9EA4: .4byte 0x00000754
_021D9EA8: .4byte 0x0000078D
_021D9EAC: .4byte 0x0000078E
	thumb_func_end ov19_021D9E04

	thumb_func_start ov19_021D9EB0
ov19_021D9EB0: @ 0x021D9EB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	movs r1, #0x79
	lsls r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r0, r1]
	bl ov19_021D5E10
	cmp r0, #0
	beq _021D9EC6
	b _021D9FE8
_021D9EC6:
	movs r1, #0x79
	ldr r0, [sp, #4]
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	bl ov19_021D5F20
	cmp r0, #0
	beq _021D9F0E
	movs r1, #0x79
	ldr r0, [sp, #4]
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	bl ov19_021D5E24
	adds r1, r0, #0
	ldr r3, [sp, #4]
	ldr r2, _021DA020 @ =0x00000758
	ldr r0, [sp, #4]
	adds r3, #0x4c
	ldr r0, [r0, r2]
	ldr r2, _021DA024 @ =0x000004D8
	bl ov19_021D8408
	ldr r0, [sp, #4]
	ldr r2, _021DA028 @ =0x00000754
	movs r1, #1
	str r1, [r0, r2]
	adds r1, r2, #0
	movs r3, #0
	subs r1, #0xf0
	str r3, [r0, r1]
	ldr r1, _021DA02C @ =0xFFFFC000
	subs r2, #0xec
	str r1, [r0, r2]
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
_021D9F0E:
	add r0, sp, #0x24
	str r0, [sp]
	movs r1, #0x79
	ldr r0, [sp, #4]
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	add r1, sp, #0x30
	add r2, sp, #0x2c
	add r3, sp, #0x28
	bl ov19_021D5EE8
	movs r1, #0x79
	ldr r0, [sp, #4]
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	bl ov19_021D5E14
	str r0, [sp, #0x18]
	movs r1, #0x79
	ldr r0, [sp, #4]
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	bl ov19_021D5E1C
	str r0, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x1c]
	cmp r0, r1
	bhi _021D9FDC
	ldr r0, [sp, #4]
	ldr r6, [sp, #4]
	str r0, [sp, #0x10]
	adds r0, #0x4c
	str r0, [sp, #0x10]
	movs r7, #0x5f
	ldr r0, [sp, #0x1c]
	movs r1, #6
	muls r1, r0, r1
	lsls r7, r7, #4
	str r1, [sp, #0xc]
	adds r5, r6, #0
_021D9F66:
	ldr r4, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	cmp r4, r0
	bhi _021D9FCA
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	subs r1, r1, r0
	movs r0, #0x18
	adds r2, r1, #0
	muls r2, r0, r2
	subs r0, #0x1c
	subs r0, r0, r2
	lsls r0, r0, #0xc
	str r0, [sp, #8]
_021D9F82:
	ldr r1, [sp, #4]
	ldr r0, _021DA020 @ =0x00000758
	ldr r3, [sp, #0x10]
	ldr r0, [r1, r0]
	ldr r1, [sp, #0xc]
	adds r2, r7, #0
	adds r1, r4, r1
	bl ov19_021D8408
	ldr r0, [r6, #0x4c]
	cmp r0, #0
	beq _021D9FC2
	ldr r0, [sp, #0x18]
	adds r7, #0x10
	subs r1, r4, r0
	movs r0, #6
	adds r2, r1, #0
	lsls r0, r0, #0xe
	muls r2, r0, r2
	ldr r0, _021DA030 @ =0x00000664
	ldr r1, [sp, #8]
	str r2, [r5, r0]
	adds r0, r0, #4
	str r1, [r5, r0]
	ldr r0, [sp, #0x10]
	adds r6, #0x34
	adds r0, #0x34
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x20]
	adds r5, #8
	adds r0, r0, #1
	str r0, [sp, #0x20]
_021D9FC2:
	ldr r0, [sp, #0x2c]
	adds r4, r4, #1
	cmp r4, r0
	bls _021D9F82
_021D9FCA:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x24]
	adds r0, r0, #6
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	adds r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, r1
	bls _021D9F66
_021D9FDC:
	ldr r2, _021DA028 @ =0x00000754
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #4]
	add sp, #0x34
	str r1, [r0, r2]
	pop {r4, r5, r6, r7, pc}
_021D9FE8:
	movs r1, #0x79
	ldr r0, [sp, #4]
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	bl ov19_021D5E2C
	adds r1, r0, #0
	ldr r3, [sp, #4]
	ldr r2, _021DA034 @ =0x0000075C
	ldr r0, [sp, #4]
	adds r3, #0x4c
	ldr r0, [r0, r2]
	ldr r2, _021DA024 @ =0x000004D8
	bl ov19_021DCC44
	ldr r2, _021DA028 @ =0x00000754
	ldr r0, [sp, #4]
	movs r1, #1
	str r1, [r0, r2]
	adds r1, r2, #0
	movs r3, #0
	subs r1, #0xf0
	str r3, [r0, r1]
	ldr r1, _021DA02C @ =0xFFFFC000
	subs r2, #0xec
	str r1, [r0, r2]
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DA020: .4byte 0x00000758
_021DA024: .4byte 0x000004D8
_021DA028: .4byte 0x00000754
_021DA02C: .4byte 0xFFFFC000
_021DA030: .4byte 0x00000664
_021DA034: .4byte 0x0000075C
	thumb_func_end ov19_021D9EB0

	thumb_func_start ov19_021DA038
ov19_021DA038: @ 0x021DA038
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _021DA064 @ =0x00000754
	movs r4, #0
	ldr r0, [r6, r0]
	cmp r0, #0
	bls _021DA05C
	ldr r7, _021DA064 @ =0x00000754
	adds r5, r6, #0
_021DA04A:
	ldr r0, [r5, #0x4c]
	movs r1, #2
	bl ov19_021D78AC
	ldr r0, [r6, r7]
	adds r4, r4, #1
	adds r5, #0x34
	cmp r4, r0
	blo _021DA04A
_021DA05C:
	ldr r0, _021DA068 @ =0x0000078C
	movs r1, #1
	strb r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DA064: .4byte 0x00000754
_021DA068: .4byte 0x0000078C
	thumb_func_end ov19_021DA038

	thumb_func_start ov19_021DA06C
ov19_021DA06C: @ 0x021DA06C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x79
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl ov19_021D5E10
	cmp r0, #0
	bne _021DA0E8
	movs r0, #0x79
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl ov19_021D5F20
	cmp r0, #0
	beq _021DA0A6
	movs r0, #0x79
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl ov19_021D5E24
	adds r1, r0, #0
	ldr r0, _021DA104 @ =0x00000758
	ldr r0, [r5, r0]
	adds r5, #0x4c
	adds r2, r5, #0
	bl ov19_021D845C
	pop {r3, r4, r5, r6, r7, pc}
_021DA0A6:
	movs r0, #0x79
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl ov19_021D5F3C
	adds r7, r0, #0
	ldr r0, _021DA108 @ =0x00000754
	movs r4, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	bls _021DA100
	adds r6, r5, #0
	adds r6, #0x4c
_021DA0C0:
	movs r0, #0x79
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl ov19_021D5F6C
	adds r1, r0, #0
	ldr r0, _021DA104 @ =0x00000758
	adds r1, r7, r1
	ldr r0, [r5, r0]
	adds r2, r6, #0
	bl ov19_021D845C
	ldr r0, _021DA108 @ =0x00000754
	adds r4, r4, #1
	ldr r0, [r5, r0]
	adds r6, #0x34
	cmp r4, r0
	blo _021DA0C0
	pop {r3, r4, r5, r6, r7, pc}
_021DA0E8:
	movs r0, #0x79
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl ov19_021D5E2C
	adds r1, r0, #0
	ldr r0, _021DA10C @ =0x0000075C
	ldr r0, [r5, r0]
	adds r5, #0x4c
	adds r2, r5, #0
	bl ov19_021DCC80
_021DA100:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DA104: .4byte 0x00000758
_021DA108: .4byte 0x00000754
_021DA10C: .4byte 0x0000075C
	thumb_func_end ov19_021DA06C

	thumb_func_start ov19_021DA110
ov19_021DA110: @ 0x021DA110
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x79
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl ov19_021D5E10
	cmp r0, #0
	bne _021DA186
	movs r0, #0x79
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl ov19_021D5E24
	adds r4, r0, #0
	ldr r0, _021DA1EC @ =0x00000758
	adds r1, r4, #0
	ldr r0, [r5, r0]
	bl ov19_021D84C8
	adds r6, r0, #0
	adds r1, r5, #0
	movs r2, #0x5f
	ldr r0, [r5, #0x48]
	adds r1, #0x4c
	lsls r2, r2, #4
	bl ov19_021DA754
	movs r2, #6
	ldr r0, [r5, #0x48]
	adds r1, r6, #0
	lsls r2, r2, #8
	bl ov19_021DA754
	blx FUN_020C3E14
	ldr r0, _021DA1EC @ =0x00000758
	adds r3, r5, #0
	ldr r0, [r5, r0]
	ldr r2, _021DA1F0 @ =0x000004D8
	adds r1, r4, #0
	adds r3, #0x80
	bl ov19_021D8408
	ldr r0, _021DA1EC @ =0x00000758
	adds r2, r5, #0
	ldr r0, [r5, r0]
	adds r1, r4, #0
	adds r2, #0x4c
	bl ov19_021D845C
	adds r0, r5, #0
	adds r5, #0x4c
	adds r0, #0x80
	adds r1, r5, #0
	movs r2, #1
	bl ov19_021DA418
	pop {r4, r5, r6, pc}
_021DA186:
	movs r0, #0x79
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl ov19_021D5E2C
	adds r4, r0, #0
	ldr r0, _021DA1F4 @ =0x0000075C
	adds r1, r4, #0
	ldr r0, [r5, r0]
	bl ov19_021DCD18
	adds r6, r0, #0
	adds r1, r5, #0
	movs r2, #0x5f
	ldr r0, [r5, #0x48]
	adds r1, #0x4c
	lsls r2, r2, #4
	bl ov19_021DA754
	movs r2, #6
	ldr r0, [r5, #0x48]
	adds r1, r6, #0
	lsls r2, r2, #8
	bl ov19_021DA754
	blx FUN_020C3E14
	ldr r0, _021DA1F4 @ =0x0000075C
	adds r3, r5, #0
	ldr r0, [r5, r0]
	ldr r2, _021DA1F0 @ =0x000004D8
	adds r1, r4, #0
	adds r3, #0x80
	bl ov19_021DCC44
	ldr r0, _021DA1F4 @ =0x0000075C
	adds r2, r5, #0
	ldr r0, [r5, r0]
	adds r1, r4, #0
	adds r2, #0x4c
	bl ov19_021DCCD4
	adds r0, r5, #0
	adds r5, #0x4c
	adds r0, #0x80
	adds r1, r5, #0
	movs r2, #1
	bl ov19_021DA418
	pop {r4, r5, r6, pc}
	nop
_021DA1EC: .4byte 0x00000758
_021DA1F0: .4byte 0x000004D8
_021DA1F4: .4byte 0x0000075C
	thumb_func_end ov19_021DA110

	thumb_func_start ov19_021DA1F8
ov19_021DA1F8: @ 0x021DA1F8
	ldr r1, _021DA200 @ =0x0000078C
	movs r2, #0
	strb r2, [r0, r1]
	bx lr
	.align 2, 0
_021DA200: .4byte 0x0000078C
	thumb_func_end ov19_021DA1F8

	thumb_func_start ov19_021DA204
ov19_021DA204: @ 0x021DA204
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	ldr r0, [r4, #0x48]
	adds r1, #0x4c
	movs r2, #1
	bl ov19_021DA3F0
	ldr r0, _021DA220 @ =0x0000078C
	movs r1, #0
	strb r1, [r4, r0]
	subs r0, #0x38
	str r1, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_021DA220: .4byte 0x0000078C
	thumb_func_end ov19_021DA204

	thumb_func_start ov19_021DA224
ov19_021DA224: @ 0x021DA224
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x79
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5E10
	cmp r0, #0
	bne _021DA24E
	movs r0, #0x79
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5E24
	adds r1, r0, #0
	ldr r0, _021DA268 @ =0x00000758
	ldr r0, [r4, r0]
	bl ov19_021D84C8
	ldr r0, [r0]
	pop {r4, pc}
_021DA24E:
	movs r0, #0x79
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov19_021D5E2C
	adds r1, r0, #0
	ldr r0, _021DA26C @ =0x0000075C
	ldr r0, [r4, r0]
	bl ov19_021DCD18
	ldr r0, [r0]
	pop {r4, pc}
	nop
_021DA268: .4byte 0x00000758
_021DA26C: .4byte 0x0000075C
	thumb_func_end ov19_021DA224

	thumb_func_start ov19_021DA270
ov19_021DA270: @ 0x021DA270
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0x13
	movs r1, #0xa
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r4, [sp, #0x48]
	bl FUN_02006C24
	str r0, [r5, #0x48]
	add r0, sp, #0x1c
	blx FUN_020A81D0
	bl FUN_02079FD0
	adds r1, r0, #0
	movs r0, #0xa
	str r0, [sp]
	add r0, sp, #0x1c
	str r0, [sp, #4]
	ldr r0, [r5, #0x48]
	movs r2, #1
	movs r3, #0x40
	bl FUN_0200716C
	bl FUN_02079FD0
	adds r1, r0, #0
	ldr r0, [r5, #0x48]
	add r2, sp, #0x18
	movs r3, #0xa
	bl FUN_020071EC
	str r0, [sp, #0x10]
	cmp r0, #0
	beq _021DA308
	add r0, sp, #0x1c
	blx FUN_020A81D0
	ldr r0, [sp, #0x10]
	add r1, sp, #0x14
	blx FUN_020A71EC
	ldr r2, [sp, #0x18]
	adds r7, r0, #0
	ldr r0, [r2, #0xc]
	movs r1, #8
	str r1, [sp]
	ldr r2, [r2, #8]
	ldr r3, _021DA380 @ =0x0000057F
	adds r1, r0, #0
	lsrs r2, r2, #1
	bl ov19_021D78C8
	cmp r7, #0
	beq _021DA2F6
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	movs r2, #0xc0
	movs r3, #1
	blx FUN_020A8948
	b _021DA302
_021DA2F6:
	ldr r0, [sp, #0x18]
	movs r1, #0xc0
	movs r2, #1
	add r3, sp, #0x1c
	blx FUN_020A8850
_021DA302:
	ldr r0, [sp, #0x10]
	bl FUN_020181C4
_021DA308:
	movs r0, #0xa
	adds r3, r5, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x15
	movs r2, #1
	adds r3, #0x10
	bl FUN_02007204
	str r0, [r5, #8]
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x16
	movs r2, #1
	adds r3, r5, #4
	bl FUN_02007220
	str r0, [r5]
	movs r0, #0xa
	adds r3, r5, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x17
	movs r2, #1
	adds r3, #0x1c
	bl FUN_02007204
	str r0, [r5, #0x14]
	movs r0, #0xa
	adds r3, r5, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x18
	movs r2, #1
	adds r3, #0x20
	bl FUN_02007220
	str r0, [r5, #0x18]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021DA368
	ldr r0, [r5]
	cmp r0, #0
	beq _021DA368
	ldr r0, [r5, #0x48]
	cmp r0, #0
	bne _021DA36E
_021DA368:
	add sp, #0x30
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021DA36E:
	ldr r0, [sp, #0xc]
	str r0, [r5, #0x24]
	ldr r0, [sp, #8]
	str r0, [r5, #0x40]
	str r6, [r5, #0x44]
	movs r0, #1
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DA380: .4byte 0x0000057F
	thumb_func_end ov19_021DA270

	thumb_func_start ov19_021DA384
ov19_021DA384: @ 0x021DA384
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021DA396
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #8]
_021DA396:
	ldr r0, [r4]
	cmp r0, #0
	beq _021DA3A4
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4]
_021DA3A4:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021DA3B2
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #0x14]
_021DA3B2:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021DA3C0
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #0x18]
_021DA3C0:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _021DA3CA
	bl FUN_02006CA8
_021DA3CA:
	pop {r4, pc}
	thumb_func_end ov19_021DA384

	thumb_func_start ov19_021DA3CC
ov19_021DA3CC: @ 0x021DA3CC
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	adds r0, r4, #0
	adds r5, r1, #0
	subs r4, r4, #1
	cmp r0, #0
	beq _021DA3EE
	movs r6, #0
_021DA3DC:
	adds r0, r5, #4
	str r6, [r5]
	blx FUN_020A818C
	adds r0, r4, #0
	adds r5, #0x34
	subs r4, r4, #1
	cmp r0, #0
	bne _021DA3DC
_021DA3EE:
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021DA3CC

	thumb_func_start ov19_021DA3F0
ov19_021DA3F0: @ 0x021DA3F0
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	adds r0, r4, #0
	adds r5, r1, #0
	subs r4, r4, #1
	cmp r0, #0
	beq _021DA416
	movs r6, #0
_021DA400:
	ldr r0, [r5]
	cmp r0, #0
	beq _021DA40C
	bl FUN_02021BD4
	str r6, [r5]
_021DA40C:
	adds r0, r4, #0
	adds r5, #0x34
	subs r4, r4, #1
	cmp r0, #0
	bne _021DA400
_021DA416:
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021DA3F0

	thumb_func_start ov19_021DA418
ov19_021DA418: @ 0x021DA418
	movs r3, #0x34
	muls r3, r2, r3
	adds r2, r3, #0
	ldr r3, _021DA424 @ =FUN_020C4B68
	bx r3
	nop
_021DA424: .4byte FUN_020C4B68
	thumb_func_end ov19_021DA418

	thumb_func_start ov19_021DA428
ov19_021DA428: @ 0x021DA428
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	adds r6, r1, #0
	adds r5, r0, #0
	adds r0, r6, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r4, [sp, #0x64]
	bl FUN_02073D20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x44]
	bl ov19_021D77D0
	adds r2, r0, #0
	ldr r0, [r5, #4]
	movs r1, #0
	str r0, [sp]
	ldr r0, [sp, #0x58]
	str r0, [sp, #4]
	ldr r3, [r5, #0x10]
	add r0, sp, #0x20
	bl ov19_021D783C
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074570
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	adds r0, r6, #0
	movs r1, #0x4c
	movs r2, #0
	bl FUN_02074570
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	adds r0, r6, #0
	movs r1, #0x70
	movs r2, #0
	bl FUN_02074570
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r6, #0
	bl FUN_02079D40
	str r0, [r4, #0x28]
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x14]
	adds r1, r7, #0
	bl FUN_02079EDC
	strh r0, [r4, #0x2c]
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0
	bl FUN_02074570
	strh r0, [r4, #0x30]
	adds r0, r6, #0
	movs r1, #0xb
	movs r2, #0
	bl FUN_02074570
	strh r0, [r4, #0x2e]
	adds r0, r4, #4
	blx FUN_020A818C
	adds r0, r5, #0
	adds r0, #0x4c
	str r0, [sp]
	movs r3, #0xa
	ldr r0, [r5, #0x48]
	ldr r1, [r4, #0x28]
	movs r2, #0
	lsls r3, r3, #6
	bl FUN_02006DC8
	adds r0, r5, #0
	adds r0, #0x4c
	add r1, sp, #0x1c
	blx FUN_020A7118
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021DA544 @ =0x00300010
	adds r3, r4, #4
	ands r1, r0
	ldr r0, [sp, #0x1c]
	str r1, [r0, #8]
	lsrs r1, r2, #0x11
	ldr r0, [sp, #0x1c]
	movs r2, #1
	str r1, [r0, #0x10]
	ldr r1, [sp, #0x60]
	ldr r0, [sp, #0x1c]
	lsls r1, r1, #5
	blx FUN_020A8224
	adds r0, r4, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x5c]
	ldr r2, [sp, #8]
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r3, [sp, #0xc]
	add r1, sp, #0x20
	bl ov19_021D785C
	str r0, [r4]
	cmp r0, #0
	bne _021DA51E
	bl FUN_02022974
_021DA51E:
	ldrh r1, [r4, #0x2c]
	ldr r0, [r4]
	adds r1, r1, #2
	bl FUN_02021E90
	ldr r0, [r5, #0x40]
	bl ov19_021D5EC8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov19_021DA63C
	ldr r1, [sp, #0x10]
	adds r0, r6, #0
	bl FUN_02073D48
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DA544: .4byte 0x00300010
	thumb_func_end ov19_021DA428

	thumb_func_start ov19_021DA548
ov19_021DA548: @ 0x021DA548
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	adds r6, r1, #0
	adds r5, r0, #0
	adds r0, r6, #0
	str r2, [sp, #8]
	adds r7, r3, #0
	ldr r4, [sp, #0x70]
	bl FUN_02073D20
	str r0, [sp, #0x14]
	adds r0, r6, #0
	movs r1, #0x4c
	movs r2, #0
	bl FUN_02074570
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	adds r0, r6, #0
	movs r1, #0x70
	movs r2, #0
	bl FUN_02074570
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x44]
	bl ov19_021D77D0
	adds r2, r0, #0
	ldr r0, [r5, #4]
	movs r1, #0
	str r0, [sp]
	ldr r0, [sp, #0x64]
	str r0, [sp, #4]
	ldr r3, [r5, #0x10]
	add r0, sp, #0x1c
	bl ov19_021D783C
	str r7, [r4, #0x28]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	bl FUN_02079EDC
	strh r0, [r4, #0x2c]
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0
	bl FUN_02074570
	strh r0, [r4, #0x30]
	adds r0, r6, #0
	movs r1, #0xb
	movs r2, #0
	bl FUN_02074570
	strh r0, [r4, #0x2e]
	adds r0, r4, #4
	blx FUN_020A818C
	ldr r0, [sp, #0x58]
	add r1, sp, #0x18
	blx FUN_020A7118
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021DA638 @ =0x00300010
	adds r3, r4, #4
	ands r1, r0
	ldr r0, [sp, #0x18]
	str r1, [r0, #8]
	lsrs r1, r2, #0x11
	ldr r0, [sp, #0x18]
	movs r2, #1
	str r1, [r0, #0x10]
	ldr r1, [sp, #0x6c]
	ldr r0, [sp, #0x18]
	lsls r1, r1, #5
	blx FUN_020A8224
	adds r0, r4, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x68]
	ldr r2, [sp, #0x5c]
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r3, [sp, #0x60]
	add r1, sp, #0x1c
	bl ov19_021D785C
	str r0, [r4]
	cmp r0, #0
	bne _021DA610
	bl FUN_02022974
_021DA610:
	ldrh r1, [r4, #0x2c]
	ldr r0, [r4]
	adds r1, r1, #2
	bl FUN_02021E90
	ldr r0, [r5, #0x40]
	bl ov19_021D5EC8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov19_021DA63C
	ldr r1, [sp, #0x14]
	adds r0, r6, #0
	bl FUN_02073D48
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DA638: .4byte 0x00300010
	thumb_func_end ov19_021DA548

	thumb_func_start ov19_021DA63C
ov19_021DA63C: @ 0x021DA63C
	push {r4, r5, r6, lr}
	cmp r2, #0
	beq _021DA682
	movs r3, #1
	adds r0, r2, #0
	tst r0, r3
	beq _021DA65A
	ldrh r0, [r1, #0x30]
	cmp r0, #0
	bne _021DA65A
	ldr r0, [r1]
	adds r1, r3, #0
	bl FUN_02021FE0
	pop {r4, r5, r6, pc}
_021DA65A:
	movs r3, #0
	movs r4, #1
	movs r0, #2
_021DA660:
	adds r5, r0, #0
	lsls r5, r3
	tst r5, r2
	beq _021DA67C
	adds r5, r4, #0
	ldrh r6, [r1, #0x2e]
	lsls r5, r3
	tst r5, r6
	bne _021DA67C
	ldr r0, [r1]
	adds r1, r4, #0
	bl FUN_02021FE0
	pop {r4, r5, r6, pc}
_021DA67C:
	adds r3, r3, #1
	cmp r3, #6
	blt _021DA660
_021DA682:
	ldr r0, [r1]
	movs r1, #0
	bl FUN_02021FE0
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021DA63C

	thumb_func_start ov19_021DA68C
ov19_021DA68C: @ 0x021DA68C
	strh r2, [r1, #0x2e]
	bx lr
	thumb_func_end ov19_021DA68C

	thumb_func_start ov19_021DA690
ov19_021DA690: @ 0x021DA690
	strh r2, [r1, #0x30]
	bx lr
	thumb_func_end ov19_021DA690

	thumb_func_start ov19_021DA694
ov19_021DA694: @ 0x021DA694
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4, #0x30]
	adds r6, r2, #0
	cmp r0, #0x70
	bne _021DA6C2
	movs r1, #0
	ldr r0, _021DA740 @ =0x000001E7
	adds r2, r1, #0
	bl FUN_02079D8C
	ldr r1, [r4, #0x28]
	cmp r1, r0
	bne _021DA6C2
	ldr r0, _021DA740 @ =0x000001E7
	movs r1, #0
	movs r2, #1
	bl FUN_02079D8C
	str r0, [r4, #0x28]
	b _021DA70A
_021DA6C2:
	ldrh r0, [r4, #0x30]
	cmp r0, #0x70
	beq _021DA6E6
	ldr r0, _021DA740 @ =0x000001E7
	movs r1, #0
	movs r2, #1
	bl FUN_02079D8C
	ldr r1, [r4, #0x28]
	cmp r1, r0
	bne _021DA6E6
	movs r1, #0
	ldr r0, _021DA740 @ =0x000001E7
	adds r2, r1, #0
	bl FUN_02079D8C
	str r0, [r4, #0x28]
	b _021DA70A
_021DA6E6:
	cmp r6, #1
	bne _021DA73C
	movs r0, #0x7b
	lsls r0, r0, #2
	movs r1, #0
	movs r2, #1
	bl FUN_02079D8C
	ldr r1, [r4, #0x28]
	cmp r1, r0
	bne _021DA73C
	movs r0, #0x7b
	movs r1, #0
	lsls r0, r0, #2
	adds r2, r1, #0
	bl FUN_02079D8C
	str r0, [r4, #0x28]
_021DA70A:
	adds r0, r5, #0
	ldr r6, [r4, #8]
	adds r0, #0x4c
	str r0, [sp]
	movs r3, #0xa
	movs r7, #0x19
	ldr r0, [r5, #0x48]
	ldr r1, [r4, #0x28]
	movs r2, #0
	lsls r3, r3, #6
	lsls r7, r7, #0x16
	bl FUN_02006DC8
	adds r5, #0x4c
	adds r0, r5, #0
	add r1, sp, #4
	blx FUN_020A7118
	ldr r0, [sp, #4]
	movs r2, #2
	ldr r0, [r0, #0x14]
	adds r1, r6, r7
	lsls r2, r2, #8
	blx FUN_020C4B68
_021DA73C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DA740: .4byte 0x000001E7
	thumb_func_end ov19_021DA694

	thumb_func_start ov19_021DA744
ov19_021DA744: @ 0x021DA744
	push {r3, lr}
	str r1, [sp]
	ldr r0, [r0, #0x48]
	adds r1, r2, #0
	movs r2, #0
	bl FUN_02006DC8
	pop {r3, pc}
	thumb_func_end ov19_021DA744

	thumb_func_start ov19_021DA754
ov19_021DA754: @ 0x021DA754
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	adds r6, r2, #0
	cmp r0, #0
	beq _021DA7B0
	adds r0, r4, #4
	blx FUN_020A818C
	adds r0, r5, #0
	adds r0, #0x4c
	str r0, [sp]
	movs r3, #0xa
	ldr r0, [r5, #0x48]
	ldr r1, [r4, #0x28]
	movs r2, #0
	lsls r3, r3, #6
	bl FUN_02006DC8
	adds r5, #0x4c
	adds r0, r5, #0
	add r1, sp, #4
	blx FUN_020A7118
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021DA7B4 @ =0x00300010
	adds r3, r4, #4
	ands r1, r0
	ldr r0, [sp, #4]
	str r1, [r0, #8]
	lsrs r1, r2, #0x11
	ldr r0, [sp, #4]
	movs r2, #1
	str r1, [r0, #0x10]
	ldr r0, [sp, #4]
	lsls r1, r6, #5
	blx FUN_020A8224
	ldr r0, [r4]
	adds r1, r4, #4
	bl FUN_02021F7C
_021DA7B0:
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021DA7B4: .4byte 0x00300010
	thumb_func_end ov19_021DA754

	thumb_func_start ov19_021DA7B8
ov19_021DA7B8: @ 0x021DA7B8
	push {r3, r4, r5, lr}
	adds r4, r2, #0
	adds r5, r1, #0
	subs r0, r4, #1
	cmp r0, #1
	ldr r0, [r5]
	bhi _021DA7CE
	movs r1, #1
	bl FUN_02021CF8
	b _021DA7D4
_021DA7CE:
	movs r1, #0
	bl FUN_02021CF8
_021DA7D4:
	ldr r0, [r5]
	adds r1, r4, #0
	bl FUN_02021D6C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021DA7B8

	thumb_func_start ov19_021DA7E0
ov19_021DA7E0: @ 0x021DA7E0
	push {r3, lr}
	ldr r0, [r1]
	bl FUN_02021FD0
	cmp r0, #0
	bne _021DA7F0
	movs r0, #1
	pop {r3, pc}
_021DA7F0:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov19_021DA7E0

	thumb_func_start ov19_021DA7F4
ov19_021DA7F4: @ 0x021DA7F4
	cmp r2, #0
	beq _021DA7FC
	movs r2, #6
	b _021DA7FE
_021DA7FC:
	movs r2, #2
_021DA7FE:
	ldr r0, [r1]
	ldrh r1, [r1, #0x2c]
	ldr r3, _021DA808 @ =FUN_02021E90
	adds r1, r1, r2
	bx r3
	.align 2, 0
_021DA808: .4byte FUN_02021E90
	thumb_func_end ov19_021DA7F4

	thumb_func_start ov19_021DA80C
ov19_021DA80C: @ 0x021DA80C
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov19_021DA80C

	thumb_func_start ov19_021DA810
ov19_021DA810: @ 0x021DA810
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end ov19_021DA810

	thumb_func_start ov19_021DA814
ov19_021DA814: @ 0x021DA814
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	str r1, [r4, #0x44]
	str r3, [r4, #0x3c]
	str r2, [r4, #0x40]
	str r3, [r4]
	movs r0, #0
	str r0, [r4, #4]
	movs r1, #0xa
	adds r3, r4, #0
	ldr r0, [sp, #0x10]
	str r1, [sp]
	movs r2, #1
	adds r3, #0x10
	bl FUN_02007204
	str r0, [r4, #8]
	movs r0, #0xa
	str r0, [sp]
	adds r3, r4, #0
	ldr r0, [sp, #0x10]
	movs r1, #0xb
	movs r2, #1
	adds r3, #0x14
	bl FUN_02007220
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021DA858
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021DA85E
_021DA858:
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_021DA85E:
	movs r0, #1
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov19_021DA814

	thumb_func_start ov19_021DA864
ov19_021DA864: @ 0x021DA864
	push {r3, r4, r5, lr}
	sub sp, #0x38
	adds r5, r0, #0
	adds r0, #0x18
	adds r4, r1, #0
	blx FUN_020A818C
	movs r3, #0
	movs r0, #0x9d
	str r3, [sp]
	movs r2, #1
	str r2, [sp, #4]
	lsls r0, r0, #8
	str r0, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r0, #0x18
	str r0, [sp, #0x10]
	adds r0, r4, #0
	movs r1, #9
	bl FUN_0200718C
	ldr r0, [r5, #0x44]
	bl ov19_021D77D0
	adds r2, r0, #0
	ldr r0, [r5, #0x14]
	adds r1, r5, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r3, [r5, #0x10]
	add r0, sp, #0x14
	adds r1, #0x18
	bl ov19_021D783C
	ldr r0, [r5, #0x44]
	bl ov19_021D7820
	adds r2, r0, #0
	movs r0, #0x2c
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r5]
	add r1, sp, #0x14
	adds r2, #0xb7
	movs r3, #0xb0
	bl ov19_021D785C
	movs r1, #1
	str r0, [r5, #4]
	bl FUN_02021E90
	add sp, #0x38
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021DA864

	thumb_func_start ov19_021DA8D8
ov19_021DA8D8: @ 0x021DA8D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021DA8EA
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #8]
_021DA8EA:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021DA8F8
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #0xc]
_021DA8F8:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021DA8D8

	thumb_func_start ov19_021DA8FC
ov19_021DA8FC: @ 0x021DA8FC
	push {r3, lr}
	cmp r1, #0
	beq _021DA90C
	cmp r1, #1
	beq _021DA916
	cmp r1, #2
	beq _021DA920
	pop {r3, pc}
_021DA90C:
	ldr r0, [r0, #4]
	movs r1, #0
	bl FUN_02021D6C
	pop {r3, pc}
_021DA916:
	ldr r0, [r0, #4]
	movs r1, #1
	bl FUN_02021D6C
	pop {r3, pc}
_021DA920:
	ldr r0, [r0, #4]
	movs r1, #2
	bl FUN_02021D6C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov19_021DA8FC

	thumb_func_start ov19_021DA92C
ov19_021DA92C: @ 0x021DA92C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r2, #0
	adds r5, r0, #0
	adds r0, r6, #0
	adds r4, r1, #0
	adds r7, r3, #0
	bl ov19_021D5E08
	cmp r0, #4
	bne _021DA948
	movs r0, #0
	str r0, [r5]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DA948:
	str r4, [r5, #0x14]
	str r7, [r5, #8]
	ldr r0, [sp, #0x18]
	str r6, [r5, #0x10]
	str r0, [r5, #0xc]
	movs r0, #0
	str r0, [r5, #4]
	str r0, [r5, #0x4c]
	str r0, [r5, #0x24]
	adds r0, r4, #0
	bl ov19_021D7818
	str r0, [r5, #0x20]
	movs r0, #9
	movs r1, #6
	movs r2, #0xf
	movs r3, #0xa
	bl FUN_0200C440
	str r0, [r5, #0x18]
	movs r0, #1
	movs r1, #2
	movs r2, #0xf
	movs r3, #0xa
	bl FUN_0200C440
	str r0, [r5, #0x1c]
	movs r0, #0xa
	str r0, [sp]
	adds r3, r5, #0
	ldr r0, [sp, #0x20]
	movs r1, #0x10
	movs r2, #1
	adds r3, #0x2c
	bl FUN_02007204
	str r0, [r5, #0x28]
	movs r0, #0
	str r0, [r5, #0x30]
	ldr r0, [sp, #0x1c]
	movs r1, #0x15
	bl FUN_0200B1EC
	str r0, [r5, #0x44]
	ldr r0, [sp, #0x1c]
	movs r1, #0x16
	bl FUN_0200B1EC
	str r0, [r5, #0x48]
	bl FUN_0207C944
	adds r4, r0, #0
	bl FUN_0207C924
	adds r1, r0, #0
	movs r0, #0xa
	adds r3, r5, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #1
	adds r3, #0x38
	bl FUN_02006FA0
	movs r1, #0
	str r0, [r5, #0x34]
	adds r2, r5, #0
	adds r0, r1, #0
_021DA9CE:
	adds r1, r1, #1
	str r0, [r2, #0x3c]
	adds r2, r2, #4
	cmp r1, #2
	blt _021DA9CE
	movs r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov19_021DA92C

	thumb_func_start ov19_021DA9E0
ov19_021DA9E0: @ 0x021DA9E0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _021DAA7E
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021DAA0E
	movs r6, #0
	adds r4, r6, #0
_021DA9F4:
	ldr r0, [r5, #4]
	adds r0, r0, r4
	bl FUN_0201A8FC
	adds r6, r6, #1
	adds r4, #0x10
	cmp r6, #4
	blt _021DA9F4
	ldr r0, [r5, #4]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r5, #4]
_021DAA0E:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _021DAA18
	bl FUN_0200C560
_021DAA18:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021DAA22
	bl FUN_0200C560
_021DAA22:
	ldr r0, [r5, #0x44]
	cmp r0, #0
	beq _021DAA2C
	bl FUN_020237BC
_021DAA2C:
	ldr r0, [r5, #0x48]
	cmp r0, #0
	beq _021DAA36
	bl FUN_020237BC
_021DAA36:
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _021DAA44
	bl FUN_02007DC8
	movs r0, #0
	str r0, [r5, #0x24]
_021DAA44:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _021DAA4E
	bl FUN_020181C4
_021DAA4E:
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _021DAA58
	bl FUN_02021BD4
_021DAA58:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _021DAA62
	bl FUN_020181C4
_021DAA62:
	movs r6, #0
	adds r4, r5, #0
_021DAA66:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _021DAA70
	bl FUN_02021BD4
_021DAA70:
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #2
	blt _021DAA66
	adds r0, r5, #0
	bl ov19_021DAC90
_021DAA7E:
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021DA9E0

	thumb_func_start ov19_021DAA80
ov19_021DAA80: @ 0x021DAA80
	push {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	beq _021DAA8E
	ldr r0, [r0, #0x20]
	bl FUN_02008A94
_021DAA8E:
	pop {r3, pc}
	thumb_func_end ov19_021DAA80

	thumb_func_start ov19_021DAA90
ov19_021DAA90: @ 0x021DAA90
	push {r4, lr}
	sub sp, #0x20
	movs r2, #0
	str r2, [sp]
	adds r4, r0, #0
	str r2, [sp, #4]
	add r0, sp, #0x10
	movs r1, #1
	adds r3, r2, #0
	str r2, [sp, #8]
	bl FUN_02075FB4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x20]
	add r1, sp, #0x10
	movs r2, #0x2c
	movs r3, #0x54
	bl FUN_02007C34
	str r0, [r4, #0x24]
	add sp, #0x20
	pop {r4, pc}
	thumb_func_end ov19_021DAA90

	thumb_func_start ov19_021DAAC4
ov19_021DAAC4: @ 0x021DAAC4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021DAAD8
	bl FUN_02007DC8
	movs r0, #0
	str r0, [r4, #0x24]
	pop {r4, pc}
_021DAAD8:
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov19_021DAAC4

	thumb_func_start ov19_021DAADC
ov19_021DAADC: @ 0x021DAADC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _021DAB3C
	movs r0, #0xa
	movs r1, #4
	bl FUN_0201A778
	str r0, [r5, #4]
	cmp r0, #0
	beq _021DAB30
	movs r7, #0
	ldr r6, _021DAB40 @ =0x021E01D8
	adds r4, r7, #0
_021DAAFA:
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	adds r1, r1, r4
	adds r2, r6, #0
	bl FUN_0201A8D4
	cmp r7, #3
	ldr r0, [r5, #4]
	beq _021DAB14
	adds r0, r0, r4
	bl FUN_0201A9F4
	b _021DAB1E
_021DAB14:
	adds r0, r0, r4
	movs r1, #0xc
	movs r2, #2
	bl FUN_0201AA10
_021DAB1E:
	adds r7, r7, #1
	adds r6, #8
	adds r4, #0x10
	cmp r7, #4
	blt _021DAAFA
	ldr r0, [r5, #8]
	movs r1, #2
	bl FUN_02019448
_021DAB30:
	adds r0, r5, #0
	bl ov19_021DAB44
	adds r0, r5, #0
	bl ov19_021DAC4C
_021DAB3C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DAB40: .4byte 0x021E01D8
	thumb_func_end ov19_021DAADC

	thumb_func_start ov19_021DAB44
ov19_021DAB44: @ 0x021DAB44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	adds r5, r0, #0
	bl FUN_0207C944
	str r0, [sp, #0x1c]
	movs r0, #2
	bl FUN_0207C908
	str r0, [sp, #0x18]
	bl FUN_0207C920
	adds r1, r0, #0
	movs r0, #0x60
	str r0, [sp]
	movs r3, #0xa
	str r3, [sp, #4]
	ldr r0, [sp, #0x1c]
	movs r2, #1
	lsls r3, r3, #5
	bl FUN_02006E84
	movs r0, #0
	movs r6, #0x5e
	str r0, [sp, #0x14]
	lsls r6, r6, #4
	movs r7, #0x18
	adds r4, r5, #0
_021DAB7C:
	add r0, sp, #0x44
	blx FUN_020A818C
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	lsls r0, r6, #5
	str r0, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	add r0, sp, #0x44
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	movs r2, #1
	movs r3, #0
	bl FUN_02006F28
	ldr r0, [r5, #0x14]
	bl ov19_021D77D0
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	ldr r3, [r5, #0x38]
	add r0, sp, #0x20
	add r1, sp, #0x44
	bl ov19_021D783C
	movs r0, #0x2e
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	add r1, sp, #0x20
	adds r2, r7, #0
	movs r3, #0xb0
	bl ov19_021D785C
	str r0, [r4, #0x3c]
	cmp r0, #0
	bne _021DABDA
	bl FUN_02022974
_021DABDA:
	ldr r0, [r4, #0x3c]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [sp, #0x14]
	adds r6, #8
	adds r0, r0, #1
	adds r7, #0x24
	adds r4, r4, #4
	str r0, [sp, #0x14]
	cmp r0, #2
	blo _021DAB7C
	add r0, sp, #0x44
	blx FUN_020A818C
	movs r3, #0
	movs r0, #0xb9
	str r3, [sp]
	movs r2, #1
	str r2, [sp, #4]
	lsls r0, r0, #8
	str r0, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	add r0, sp, #0x44
	str r0, [sp, #0x10]
	movs r0, #0x12
	movs r1, #0xf
	bl FUN_02006F00
	ldr r0, [r5, #0x14]
	bl ov19_021D77D0
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	ldr r3, [r5, #0x2c]
	add r0, sp, #0x20
	add r1, sp, #0x44
	bl ov19_021D783C
	movs r0, #0x2f
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	add r1, sp, #0x20
	movs r2, #0x38
	movs r3, #0xb0
	bl ov19_021D785C
	str r0, [r5, #0x30]
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov19_021DAB44

	thumb_func_start ov19_021DAC4C
ov19_021DAC4C: @ 0x021DAC4C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	bne _021DAC8A
	movs r0, #0xa
	movs r1, #0xc
	bl FUN_02018144
	adds r4, r0, #0
	beq _021DAC86
	ldr r0, [r5, #0x10]
	bl ov19_021D5E70
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq _021DAC72
	movs r0, #4
	b _021DAC74
_021DAC72:
	movs r0, #0
_021DAC74:
	strh r0, [r4]
	ldr r0, _021DAC8C @ =ov19_021DACF8
	str r5, [r4, #8]
	adds r1, r4, #0
	movs r2, #1
	bl FUN_0200D9E8
	str r0, [r5, #0x4c]
	pop {r3, r4, r5, pc}
_021DAC86:
	bl FUN_02022974
_021DAC8A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021DAC8C: .4byte ov19_021DACF8
	thumb_func_end ov19_021DAC4C

	thumb_func_start ov19_021DAC90
ov19_021DAC90: @ 0x021DAC90
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _021DACAC
	bl FUN_0201CED0
	bl FUN_020181C4
	ldr r0, [r4, #0x4c]
	bl FUN_0200DA58
	movs r0, #0
	str r0, [r4, #0x4c]
_021DACAC:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021DAC90

	thumb_func_start ov19_021DACB0
ov19_021DACB0: @ 0x021DACB0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x4c]
	bl FUN_0201CED0
	adds r4, r0, #0
	beq _021DACD8
	ldr r0, [r5, #0x10]
	bl ov19_021D5E70
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq _021DACCE
	movs r0, #4
	b _021DACD0
_021DACCE:
	movs r0, #0
_021DACD0:
	strh r0, [r4]
	adds r0, r5, #0
	bl ov19_021DAE10
_021DACD8:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021DACB0

	thumb_func_start ov19_021DACDC
ov19_021DACDC: @ 0x021DACDC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x4c]
	bl FUN_0201CED0
	cmp r0, #0
	beq _021DACF4
	movs r1, #4
	strh r1, [r0]
	adds r0, r4, #0
	bl ov19_021DAE10
_021DACF4:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021DACDC

	thumb_func_start ov19_021DACF8
ov19_021DACF8: @ 0x021DACF8
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldrh r0, [r4]
	ldr r5, [r4, #8]
	cmp r0, #4
	bhi _021DADC8
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DAD10: @ jump table
	.2byte _021DAD1A - _021DAD10 - 2 @ case 0
	.2byte _021DAD2C - _021DAD10 - 2 @ case 1
	.2byte _021DAD4C - _021DAD10 - 2 @ case 2
	.2byte _021DAD76 - _021DAD10 - 2 @ case 3
	.2byte _021DADC8 - _021DAD10 - 2 @ case 4
_021DAD1A:
	ldr r0, [r5, #0x10]
	bl ov19_021D5E4C
	cmp r0, #0
	beq _021DADC8
	movs r0, #0
	strh r0, [r4, #2]
	movs r0, #1
	strh r0, [r4]
_021DAD2C:
	ldr r0, [r5, #4]
	ldrh r2, [r4, #2]
	adds r0, #0x30
	adds r1, r5, #0
	movs r3, #0
	bl ov19_021DAE60
	ldr r0, [r5, #4]
	adds r0, #0x30
	bl FUN_0201ACCC
	movs r0, #0
	strh r0, [r4, #4]
	movs r0, #2
	strh r0, [r4]
	pop {r3, r4, r5, pc}
_021DAD4C:
	ldr r0, [r5, #0x10]
	bl ov19_021D5E70
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	bne _021DADC8
	ldrh r0, [r4, #4]
	adds r0, r0, #1
	strh r0, [r4, #4]
	ldrh r0, [r4, #4]
	cmp r0, #0x50
	bls _021DADC8
	adds r0, r4, #0
	bl ov19_021DAE2C
	movs r0, #0
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	movs r0, #3
	strh r0, [r4]
	pop {r3, r4, r5, pc}
_021DAD76:
	ldrh r0, [r4, #6]
	movs r1, #1
	lsls r1, r1, #0xe
	adds r0, r0, #4
	strh r0, [r4, #6]
	adds r0, r5, #0
	bl ov19_021DADCC
	ldr r0, [r5, #4]
	movs r1, #0
	adds r0, #0x30
	movs r2, #4
	adds r3, r1, #0
	bl FUN_0201C04C
	ldr r0, [r5, #4]
	adds r0, #0x30
	bl FUN_0201ACCC
	ldrh r0, [r4, #6]
	cmp r0, #0x10
	blo _021DADC8
	ldrh r0, [r4, #2]
	cmp r0, #1
	bne _021DADAE
	adds r0, r5, #0
	bl ov19_021DAE10
_021DADAE:
	ldrh r0, [r4, #2]
	adds r0, r0, #1
	strh r0, [r4, #2]
	ldrh r0, [r4, #2]
	cmp r0, #4
	blo _021DADBE
	movs r0, #0
	strh r0, [r4, #2]
_021DADBE:
	movs r0, #0
	strh r0, [r4, #6]
	strh r0, [r4, #4]
	movs r0, #2
	strh r0, [r4]
_021DADC8:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021DACF8

	thumb_func_start ov19_021DADCC
ov19_021DADCC: @ 0x021DADCC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r7, r1, #0
	movs r4, #0
_021DADD6:
	ldr r0, [r5, #0x3c]
	bl FUN_02021D28
	adds r6, r0, #0
	add r3, sp, #0
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r6]
	adds r1, r2, #0
	str r0, [r3]
	ldr r0, [sp, #4]
	subs r0, r0, r7
	str r0, [sp, #4]
	ldr r0, [r5, #0x3c]
	bl FUN_02021C50
	cmp r4, #0
	bne _021DAE02
	ldr r0, [r5, #0x3c]
	bl FUN_02021D34
_021DAE02:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _021DADD6
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov19_021DADCC

	thumb_func_start ov19_021DAE10
ov19_021DAE10: @ 0x021DAE10
	push {r4, r5, r6, lr}
	movs r4, #0
	adds r5, r0, #0
	adds r6, r4, #0
_021DAE18:
	ldr r0, [r5, #0x3c]
	adds r1, r6, #0
	bl FUN_02021CAC
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _021DAE18
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov19_021DAE10

	thumb_func_start ov19_021DAE2C
ov19_021DAE2C: @ 0x021DAE2C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #0
	ldr r4, [r0, #4]
	adds r4, #0x30
	adds r0, r4, #0
	bl FUN_0201ADA4
	ldrh r2, [r5, #2]
	ldr r1, [r5, #8]
	adds r0, r4, #0
	movs r3, #0
	bl ov19_021DAE60
	ldrh r0, [r5, #2]
	adds r2, r0, #1
	cmp r2, #4
	blo _021DAE54
	movs r2, #0
_021DAE54:
	ldr r1, [r5, #8]
	adds r0, r4, #0
	movs r3, #1
	bl ov19_021DAE60
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021DAE2C

	thumb_func_start ov19_021DAE60
ov19_021DAE60: @ 0x021DAE60
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	adds r4, r1, #0
	lsls r5, r3, #4
	cmp r2, #3
	bls _021DAE6E
	b _021DAF8E
_021DAE6E:
	adds r1, r2, r2
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021DAE7A: @ jump table
	.2byte _021DAE82 - _021DAE7A - 2 @ case 0
	.2byte _021DAE94 - _021DAE7A - 2 @ case 1
	.2byte _021DAE88 - _021DAE7A - 2 @ case 2
	.2byte _021DAE8E - _021DAE7A - 2 @ case 3
_021DAE82:
	ldr r1, [r4, #0x10]
	ldr r2, [r1, #0x68]
	b _021DAF7A
_021DAE88:
	ldr r1, [r4, #0x10]
	ldr r2, [r1, #0x6c]
	b _021DAF7A
_021DAE8E:
	ldr r1, [r4, #0x10]
	ldr r2, [r1, #0x70]
	b _021DAF7A
_021DAE94:
	bl FUN_0207C944
	ldr r0, [r4, #0x10]
	adds r0, #0x58
	ldrb r0, [r0]
	bl FUN_0207C908
	bl FUN_0207C944
	adds r6, r0, #0
	ldr r0, [r4, #0x10]
	adds r0, #0x58
	ldrb r0, [r0]
	bl FUN_0207C908
	movs r2, #0
	adds r1, r0, #0
	movs r3, #0x2f
	str r2, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0xa
	str r0, [sp, #8]
	adds r0, r6, #0
	lsls r3, r3, #0xa
	bl FUN_02006EC0
	ldr r0, [r4, #0x3c]
	bl FUN_02021D28
	adds r6, r0, #0
	add r3, sp, #0x10
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r6]
	adds r5, #0xb0
	str r0, [r3]
	lsls r0, r5, #0xc
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x3c]
	adds r1, r2, #0
	bl FUN_02021C50
	ldr r0, [r4, #0x10]
	adds r0, #0x58
	ldrb r0, [r0]
	bl FUN_0207C92C
	adds r1, r0, #0
	ldr r0, [r4, #0x3c]
	adds r1, #0xa
	bl FUN_02021E90
	ldr r0, [r4, #0x3c]
	movs r1, #1
	bl FUN_02021CAC
	ldr r1, [r4, #0x10]
	adds r0, r1, #0
	adds r0, #0x59
	adds r1, #0x58
	ldrb r5, [r0]
	ldrb r0, [r1]
	cmp r0, r5
	beq _021DAF6E
	bl FUN_0207C944
	adds r6, r0, #0
	adds r0, r5, #0
	bl FUN_0207C908
	movs r2, #0
	adds r1, r0, #0
	movs r3, #0xbd
	str r2, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0xa
	str r0, [sp, #8]
	adds r0, r6, #0
	lsls r3, r3, #8
	bl FUN_02006EC0
	movs r0, #9
	ldr r1, [sp, #0x10]
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x40]
	add r1, sp, #0x10
	bl FUN_02021C50
	ldr r0, [r4, #0x10]
	adds r0, #0x59
	ldrb r0, [r0]
	bl FUN_0207C92C
	adds r1, r0, #0
	ldr r0, [r4, #0x40]
	adds r1, #0xa
	bl FUN_02021E90
	ldr r0, [r4, #0x40]
	movs r1, #1
	bl FUN_02021CAC
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
_021DAF6E:
	ldr r0, [r4, #0x40]
	movs r1, #0
	bl FUN_02021CAC
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
_021DAF7A:
	str r5, [sp]
	movs r1, #0xff
	str r1, [sp, #4]
	ldr r1, _021DAF94 @ =0x00090600
	str r1, [sp, #8]
	movs r1, #0
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
_021DAF8E:
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_021DAF94: .4byte 0x00090600
	thumb_func_end ov19_021DAE60

	thumb_func_start ov19_021DAF98
ov19_021DAF98: @ 0x021DAF98
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021DAFF6
	ldr r0, [r4, #4]
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r0, [r4, #4]
	movs r1, #0xf
	adds r0, #0x10
	bl FUN_0201ADA4
	ldr r0, [r4, #4]
	movs r1, #0xf
	adds r0, #0x20
	bl FUN_0201ADA4
	ldr r0, [r4, #4]
	movs r1, #0
	adds r0, #0x30
	bl FUN_0201ADA4
	ldr r0, [r4, #0x10]
	bl ov19_021D5E4C
	cmp r0, #0
	beq _021DAFD8
	adds r0, r4, #0
	bl ov19_021DB0E4
_021DAFD8:
	ldr r0, [r4, #4]
	bl FUN_0201ACCC
	ldr r0, [r4, #4]
	adds r0, #0x10
	bl FUN_0201ACCC
	ldr r0, [r4, #4]
	adds r0, #0x20
	bl FUN_0201ACCC
	ldr r0, [r4, #4]
	adds r0, #0x30
	bl FUN_0201ACCC
_021DAFF6:
	pop {r4, pc}
	thumb_func_end ov19_021DAF98

	thumb_func_start ov19_021DAFF8
ov19_021DAFF8: @ 0x021DAFF8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021DB074
	ldr r0, [r4, #4]
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r0, [r4, #4]
	movs r1, #0xf
	adds r0, #0x10
	bl FUN_0201ADA4
	ldr r0, [r4, #4]
	movs r1, #0xf
	adds r0, #0x20
	bl FUN_0201ADA4
	ldr r0, [r4, #4]
	movs r1, #0
	adds r0, #0x30
	bl FUN_0201ADA4
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021DB036
	bl FUN_02007DC8
	movs r0, #0
	str r0, [r4, #0x24]
_021DB036:
	ldr r0, [r4, #0x10]
	bl ov19_021D5E4C
	cmp r0, #0
	beq _021DB048
	adds r0, r4, #0
	bl ov19_021DB0E4
	b _021DB050
_021DB048:
	adds r0, r4, #0
	movs r1, #0
	bl ov19_021DB24C
_021DB050:
	ldr r0, [r4, #4]
	bl FUN_0201ACCC
	ldr r0, [r4, #4]
	adds r0, #0x10
	bl FUN_0201ACCC
	ldr r0, [r4, #4]
	adds r0, #0x20
	bl FUN_0201ACCC
	ldr r0, [r4, #4]
	adds r0, #0x30
	bl FUN_0201ACCC
	adds r0, r4, #0
	bl ov19_021DACB0
_021DB074:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021DAFF8

	thumb_func_start ov19_021DB078
ov19_021DB078: @ 0x021DB078
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021DB0E2
	ldr r0, [r4, #4]
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r0, [r4, #4]
	movs r1, #0xf
	adds r0, #0x10
	bl FUN_0201ADA4
	ldr r0, [r4, #4]
	movs r1, #0xf
	adds r0, #0x20
	bl FUN_0201ADA4
	ldr r0, [r4, #4]
	movs r1, #0
	adds r0, #0x30
	bl FUN_0201ADA4
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021DB0B6
	bl FUN_02007DC8
	movs r0, #0
	str r0, [r4, #0x24]
_021DB0B6:
	adds r0, r4, #0
	movs r1, #0
	bl ov19_021DB24C
	ldr r0, [r4, #4]
	bl FUN_0201ACCC
	ldr r0, [r4, #4]
	adds r0, #0x10
	bl FUN_0201ACCC
	ldr r0, [r4, #4]
	adds r0, #0x20
	bl FUN_0201ACCC
	ldr r0, [r4, #4]
	adds r0, #0x30
	bl FUN_0201ACCC
	adds r0, r4, #0
	bl ov19_021DACDC
_021DB0E2:
	pop {r4, pc}
	thumb_func_end ov19_021DB078

	thumb_func_start ov19_021DB0E4
ov19_021DB0E4: @ 0x021DB0E4
	push {r3, r4, r5, lr}
	sub sp, #0x20
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	bl ov19_021D5E70
	movs r1, #0
	adds r4, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DB20C @ =0x0009060F
	movs r3, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r2, [r4, #0x18]
	bl FUN_0201D78C
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DB210 @ =0x0001020F
	movs r3, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r2, [r4, #0x14]
	adds r0, #0x20
	bl FUN_0201D78C
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DB210 @ =0x0001020F
	movs r3, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r2, [r4, #0x14]
	adds r0, #0x20
	bl FUN_0201D78C
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _021DB14A
	cmp r0, #1
	beq _021DB166
	b _021DB180
_021DB14A:
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DB214 @ =0x0007080F
	movs r3, #0x46
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x44]
	adds r0, #0x20
	bl FUN_0201D78C
	b _021DB180
_021DB166:
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DB218 @ =0x0003040F
	movs r3, #0x46
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x48]
	adds r0, #0x20
	bl FUN_0201D78C
_021DB180:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _021DB1DA
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DB21C @ =0x00090600
	adds r3, r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r2, [r4, #0x1c]
	adds r0, #0x30
	bl FUN_0201D78C
	ldrh r2, [r4, #8]
	cmp r2, #0
	beq _021DB1BE
	movs r1, #2
	str r1, [sp]
	ldr r0, [r5, #4]
	movs r3, #3
	adds r0, #0x10
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	bl FUN_0200C648
_021DB1BE:
	movs r1, #1
	str r1, [sp]
	ldr r0, [r5, #4]
	movs r3, #3
	adds r0, #0x20
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #0x10
	str r0, [sp, #0xc]
	ldrb r2, [r4, #0xa]
	ldr r0, [r5, #0x1c]
	bl FUN_0200C648
_021DB1DA:
	ldr r1, [r4]
	add r0, sp, #0x10
	movs r2, #2
	movs r3, #0
	bl FUN_02075F0C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x20]
	add r1, sp, #0x10
	movs r2, #0x2c
	movs r3, #0x54
	bl FUN_02007C34
	str r0, [r5, #0x24]
	ldrb r1, [r4, #0xb]
	adds r0, r5, #0
	bl ov19_021DB24C
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_021DB20C: .4byte 0x0009060F
_021DB210: .4byte 0x0001020F
_021DB214: .4byte 0x0007080F
_021DB218: .4byte 0x0003040F
_021DB21C: .4byte 0x00090600
	thumb_func_end ov19_021DB0E4

	thumb_func_start ov19_021DB220
ov19_021DB220: @ 0x021DB220
	movs r0, #1
	bx lr
	thumb_func_end ov19_021DB220

	thumb_func_start ov19_021DB224
ov19_021DB224: @ 0x021DB224
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021DB248
	ldr r0, [r4, #0x10]
	bl ov19_021D5E4C
	cmp r0, #0
	beq _021DB248
	ldr r0, [r4, #0x10]
	bl ov19_021D5E70
	adds r1, r0, #0
	ldrb r1, [r1, #0xb]
	adds r0, r4, #0
	bl ov19_021DB24C
_021DB248:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021DB224

	thumb_func_start ov19_021DB24C
ov19_021DB24C: @ 0x021DB24C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	adds r4, r1, #0
	ldr r0, [r0, #8]
	movs r1, #2
	bl FUN_02019FE4
	mov ip, r0
	adds r2, r0, #0
	movs r0, #1
	ldr r6, _021DB2AC @ =0x000004C8
	movs r1, #0
	lsls r7, r0, #0xd
_021DB268:
	adds r3, r0, #0
	lsls r3, r1
	tst r3, r4
	beq _021DB27A
	adds r3, r1, #0
	adds r3, #0x98
	orrs r3, r7
	strh r3, [r2, r6]
	b _021DB288
_021DB27A:
	adds r5, r1, #0
	movs r3, #2
	adds r5, #0x84
	lsls r3, r3, #0xc
	orrs r5, r3
	ldr r3, _021DB2AC @ =0x000004C8
	strh r5, [r2, r3]
_021DB288:
	adds r1, r1, #1
	adds r2, r2, #2
	cmp r1, #6
	blt _021DB268
	movs r2, #0x99
	lsls r2, r2, #2
	ldr r0, [sp, #4]
	str r2, [sp]
	lsls r3, r2, #1
	mov r2, ip
	adds r2, r2, r3
	ldr r0, [r0, #8]
	movs r1, #2
	movs r3, #0xc
	bl FUN_02019460
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DB2AC: .4byte 0x000004C8
	thumb_func_end ov19_021DB24C

	thumb_func_start ov19_021DB2B0
ov19_021DB2B0: @ 0x021DB2B0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _021DB2F4
	ldr r0, [r5, #0x10]
	bl ov19_021D5E70
	adds r4, r0, #0
	ldr r0, [r5, #4]
	movs r1, #0
	adds r0, #0x30
	bl FUN_0201ADA4
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _021DB2EE
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DB2F8 @ =0x00090600
	adds r3, r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r2, [r4, #0x1c]
	adds r0, #0x30
	bl FUN_0201D78C
_021DB2EE:
	adds r0, r5, #0
	bl ov19_021DACB0
_021DB2F4:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_021DB2F8: .4byte 0x00090600
	thumb_func_end ov19_021DB2B0

	thumb_func_start ov19_021DB2FC
ov19_021DB2FC: @ 0x021DB2FC
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	str r1, [r4, #0xc]
	str r3, [r4]
	str r2, [r4, #8]
	ldr r0, [sp, #0x18]
	movs r1, #0x1a
	str r0, [r4, #0x2c]
	ldr r0, [sp, #0x1c]
	movs r2, #0x12
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x14]
	movs r3, #0xa
	str r0, [r4, #0x10]
	movs r0, #0
	bl FUN_0200B144
	str r0, [r4, #0x14]
	movs r0, #0x40
	movs r1, #0xa
	bl FUN_02023790
	str r0, [r4, #0x30]
	movs r0, #0x40
	movs r1, #0xa
	bl FUN_02023790
	str r0, [r4, #0x34]
	movs r0, #0
	strh r0, [r4, #0x1c]
	strh r0, [r4, #0x1e]
	str r0, [r4, #0x18]
	movs r0, #0xa
	str r0, [sp]
	adds r3, r4, #0
	ldr r0, [sp, #0x20]
	movs r1, #0x19
	movs r2, #1
	adds r3, #0x28
	bl FUN_020071B4
	str r0, [r4, #0x24]
	cmp r0, #0
	beq _021DB362
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021DB362
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _021DB368
_021DB362:
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_021DB368:
	movs r0, #1
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov19_021DB2FC

	thumb_func_start ov19_021DB370
ov19_021DB370: @ 0x021DB370
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _021DB3C0
	movs r6, #0
	adds r4, r6, #0
_021DB37E:
	ldr r0, [r5, #0x18]
	adds r0, r0, r4
	bl FUN_0201A8FC
	adds r6, r6, #1
	adds r4, #0x10
	cmp r6, #2
	blt _021DB37E
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _021DB398
	bl FUN_020181C4
_021DB398:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021DB3A2
	bl FUN_0200B190
_021DB3A2:
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _021DB3AC
	bl FUN_020237BC
_021DB3AC:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _021DB3B6
	bl FUN_020237BC
_021DB3B6:
	ldr r0, [r5, #0x18]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r5, #0x18]
_021DB3C0:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov19_021DB370

	thumb_func_start ov19_021DB3C4
ov19_021DB3C4: @ 0x021DB3C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	movs r0, #0xa
	movs r1, #2
	bl FUN_0201A778
	str r0, [r6, #0x18]
	cmp r0, #0
	beq _021DB3F4
	movs r7, #0
	ldr r4, _021DB440 @ =0x021E01F8
	adds r5, r7, #0
_021DB3DE:
	ldr r1, [r6, #0x18]
	ldr r0, [r6]
	adds r1, r1, r5
	adds r2, r4, #0
	bl FUN_0201A8D4
	adds r7, r7, #1
	adds r4, #8
	adds r5, #0x10
	cmp r7, #2
	blt _021DB3DE
_021DB3F4:
	movs r0, #2
	lsls r0, r0, #8
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r6]
	movs r0, #0x26
	movs r3, #1
	bl FUN_02006E3C
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #0x26
	movs r1, #0x18
	movs r2, #0
	movs r3, #0xe0
	bl FUN_02006E84
	ldr r0, [r6, #0x20]
	ldr r2, _021DB444 @ =0x00000209
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	ldr r0, [r6]
	movs r1, #1
	movs r3, #8
	bl FUN_0200DD0C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DB440: .4byte 0x021E01F8
_021DB444: .4byte 0x00000209
	thumb_func_end ov19_021DB3C4

	thumb_func_start ov19_021DB448
ov19_021DB448: @ 0x021DB448
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [r5, #0x18]
	adds r4, r1, #0
	bl FUN_0201A9F4
	ldr r3, [r5, #0x18]
	ldrb r0, [r3, #7]
	str r0, [sp]
	ldrb r0, [r3, #8]
	str r0, [sp, #4]
	ldrb r1, [r3, #4]
	ldrb r2, [r3, #5]
	ldrb r3, [r3, #6]
	ldr r0, [r5]
	bl ov19_021DB4B4
	ldr r0, [r5, #0x18]
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #0x30]
	adds r1, r4, #0
	bl FUN_0200B1B8
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x34]
	ldr r2, [r5, #0x30]
	bl FUN_0200C388
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r5, #0x18]
	ldr r2, [r5, #0x34]
	movs r1, #1
	bl FUN_0201D738
	ldr r0, [r5, #0x18]
	bl FUN_0201ACCC
	ldr r0, [r5]
	movs r1, #1
	bl FUN_02019448
	movs r0, #1
	strh r0, [r5, #0x1c]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021DB448

	thumb_func_start ov19_021DB4B4
ov19_021DB4B4: @ 0x021DB4B4
	push {r3, r4, r5, r6, r7, lr}
	lsls r1, r1, #0x18
	adds r7, r3, #0
	lsrs r1, r1, #0x18
	adds r6, r2, #0
	ldr r4, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	bl FUN_02019FE4
	subs r1, r7, #1
	subs r2, r6, #2
	lsls r1, r1, #5
	adds r1, r2, r1
	lsls r3, r1, #1
	ldr r2, _021DB558 @ =0x00008209
	adds r1, r0, r3
	strh r2, [r0, r3]
	adds r0, r2, #1
	movs r2, #0
	strh r0, [r1, #2]
	cmp r4, #0
	bls _021DB4EE
	ldr r0, _021DB55C @ =0x0000820B
	adds r3, r1, #0
_021DB4E4:
	adds r2, r2, #1
	strh r0, [r3, #4]
	adds r3, r3, #2
	cmp r2, r4
	blo _021DB4E4
_021DB4EE:
	lsls r0, r4, #1
	adds r2, r1, r0
	ldr r3, _021DB560 @ =0x0000820C
	mov ip, r0
	strh r3, [r2, #4]
	adds r0, r3, #1
	strh r0, [r2, #6]
	adds r0, r3, #2
	strh r0, [r2, #8]
	adds r1, #0x40
	movs r3, #0
	cmp r5, #0
	bls _021DB52A
	mov r0, ip
	adds r2, r0, r1
	ldr r0, _021DB564 @ =0x0000820F
	adds r7, r0, #1
_021DB510:
	strh r0, [r1]
	strh r7, [r1, #2]
	ldr r6, _021DB568 @ =0x00008212
	adds r3, r3, #1
	strh r6, [r2, #4]
	adds r6, r6, #1
	strh r6, [r2, #6]
	ldr r6, _021DB56C @ =0x00008214
	adds r1, #0x40
	strh r6, [r2, #8]
	adds r2, #0x40
	cmp r3, r5
	blo _021DB510
_021DB52A:
	ldr r0, _021DB570 @ =0x00008215
	movs r3, #0
	strh r0, [r1]
	adds r0, r0, #1
	strh r0, [r1, #2]
	cmp r4, #0
	bls _021DB546
	ldr r0, _021DB574 @ =0x00008217
	adds r2, r1, #0
_021DB53C:
	adds r3, r3, #1
	strh r0, [r2, #4]
	adds r2, r2, #2
	cmp r3, r4
	blo _021DB53C
_021DB546:
	mov r0, ip
	ldr r2, _021DB578 @ =0x00008218
	adds r1, r1, r0
	strh r2, [r1, #4]
	adds r0, r2, #1
	strh r0, [r1, #6]
	adds r0, r2, #2
	strh r0, [r1, #8]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DB558: .4byte 0x00008209
_021DB55C: .4byte 0x0000820B
_021DB560: .4byte 0x0000820C
_021DB564: .4byte 0x0000820F
_021DB568: .4byte 0x00008212
_021DB56C: .4byte 0x00008214
_021DB570: .4byte 0x00008215
_021DB574: .4byte 0x00008217
_021DB578: .4byte 0x00008218
	thumb_func_end ov19_021DB4B4

	thumb_func_start ov19_021DB57C
ov19_021DB57C: @ 0x021DB57C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldrh r0, [r5, #0x1e]
	str r1, [sp, #0x10]
	cmp r0, #0
	beq _021DB594
	ldr r1, [r5, #0x18]
	ldr r0, [r5]
	adds r1, #0x10
	bl ov19_021DB84C
_021DB594:
	ldr r0, [r5, #0x18]
	movs r1, #0xf
	str r0, [sp, #0x14]
	adds r0, #0x10
	str r0, [sp, #0x14]
	bl FUN_0201ADA4
	ldr r0, [sp, #0x10]
	movs r6, #0
	adds r0, #0x21
	ldrb r1, [r0]
	movs r0, #8
	subs r0, r0, r1
	lsls r7, r0, #4
	cmp r1, #0
	bls _021DB608
	ldr r4, [sp, #0x10]
_021DB5B6:
	ldr r3, [r4]
	cmp r3, #0x38
	blt _021DB5D2
	cmp r3, #0x3d
	bgt _021DB5D2
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	adds r2, #0x22
	ldrb r2, [r2]
	adds r0, r5, #0
	subs r3, #0x38
	bl ov19_021DB638
	b _021DB5F8
_021DB5D2:
	adds r3, #0x18
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x30]
	adds r1, r3, #0
	bl FUN_0200B1B8
	str r7, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DB634 @ =0x000B0C0F
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r2, [r5, #0x30]
	movs r3, #0xa
	bl FUN_0201D78C
_021DB5F8:
	ldr r0, [sp, #0x10]
	adds r6, r6, #1
	adds r0, #0x21
	ldrb r0, [r0]
	adds r7, #0x10
	adds r4, r4, #4
	cmp r6, r0
	blo _021DB5B6
_021DB608:
	ldr r1, [sp, #0x10]
	adds r0, r5, #0
	bl ov19_021DB748
	ldr r1, [sp, #0x10]
	adds r0, r5, #0
	adds r1, #0x21
	str r1, [sp, #0x10]
	ldrb r1, [r1]
	bl ov19_021DB684
	ldr r0, [sp, #0x14]
	bl FUN_0201ACCC
	ldr r0, [r5]
	movs r1, #1
	bl FUN_02019448
	movs r0, #1
	strh r0, [r5, #0x1e]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DB634: .4byte 0x000B0C0F
	thumb_func_end ov19_021DB57C

	thumb_func_start ov19_021DB638
ov19_021DB638: @ 0x021DB638
	push {r4, r5, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	movs r0, #1
	lsls r0, r3
	tst r0, r2
	beq _021DB64A
	movs r4, #0
	b _021DB64C
_021DB64A:
	movs r4, #8
_021DB64C:
	movs r0, #0x30
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x2c
	str r0, [sp, #8]
	lsls r0, r3, #4
	adds r0, r0, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	movs r0, #8
	str r0, [sp, #0x10]
	lsls r2, r3, #0x13
	str r0, [sp, #0x14]
	movs r0, #0xff
	str r0, [sp, #0x18]
	adds r0, r1, #0
	ldr r1, [r5, #0x28]
	lsls r3, r4, #0x10
	ldr r1, [r1, #0x14]
	lsrs r2, r2, #0x10
	lsrs r3, r3, #0x10
	bl FUN_0201AE08
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021DB638

	thumb_func_start ov19_021DB684
ov19_021DB684: @ 0x021DB684
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #8]
	adds r5, r1, #0
	ldr r0, [r0]
	movs r1, #1
	bl FUN_02019FE4
	movs r2, #8
	subs r2, r2, r5
	mov ip, r2
	adds r0, #0xe6
	lsls r2, r2, #7
	adds r2, r0, r2
	ldr r1, _021DB6EC @ =0x00000251
	movs r3, #0x18
	mov r0, ip
	muls r3, r0, r3
	adds r4, r1, r3
	movs r6, #0
	lsls r7, r5, #1
	beq _021DB6D0
	movs r0, #1
	lsls r0, r0, #0xe
_021DB6B4:
	movs r3, #0
	adds r5, r2, #0
_021DB6B8:
	adds r1, r4, #0
	orrs r1, r0
	strh r1, [r5]
	adds r3, r3, #1
	adds r4, r4, #1
	adds r5, r5, #2
	cmp r3, #0xc
	blo _021DB6B8
	adds r6, r6, #1
	adds r2, #0x40
	cmp r6, r7
	blo _021DB6B4
_021DB6D0:
	movs r0, #0xc
	str r0, [sp]
	mov r3, ip
	lsls r3, r3, #1
	ldr r0, [sp, #8]
	str r7, [sp, #4]
	ldr r0, [r0]
	movs r1, #1
	movs r2, #0x13
	adds r3, r3, #3
	bl ov19_021DB7BC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DB6EC: .4byte 0x00000251
	thumb_func_end ov19_021DB684

	thumb_func_start ov19_021DB6F0
ov19_021DB6F0: @ 0x021DB6F0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x1c]
	cmp r0, #0
	beq _021DB706
	ldr r0, [r4]
	ldr r1, [r4, #0x18]
	bl ov19_021DB898
	movs r0, #0
	strh r0, [r4, #0x1c]
_021DB706:
	ldrh r0, [r4, #0x1e]
	cmp r0, #0
	beq _021DB71A
	ldr r1, [r4, #0x18]
	ldr r0, [r4]
	adds r1, #0x10
	bl ov19_021DB84C
	movs r0, #0
	strh r0, [r4, #0x1e]
_021DB71A:
	ldr r0, [r4]
	movs r1, #1
	bl FUN_02019448
	pop {r4, pc}
	thumb_func_end ov19_021DB6F0

	thumb_func_start ov19_021DB724
ov19_021DB724: @ 0x021DB724
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x1e]
	cmp r0, #0
	beq _021DB73C
	ldr r1, [r4, #0x18]
	ldr r0, [r4]
	adds r1, #0x10
	bl ov19_021DB84C
	movs r0, #0
	strh r0, [r4, #0x1e]
_021DB73C:
	ldr r0, [r4]
	movs r1, #1
	bl FUN_02019448
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021DB724

	thumb_func_start ov19_021DB748
ov19_021DB748: @ 0x021DB748
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r1, #0
	ldr r4, [r0, #0x18]
	adds r0, r6, #0
	adds r0, #0x21
	ldrb r1, [r0]
	movs r0, #8
	adds r4, #0x10
	subs r0, r0, r1
	lsls r5, r0, #4
	movs r0, #0xa
	str r0, [sp]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x10
	lsls r3, r5, #0x10
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0xf
	movs r2, #0
	lsrs r3, r3, #0x10
	bl FUN_0201AE78
	adds r6, #0x20
	ldrb r2, [r6]
	adds r0, r4, #0
	movs r1, #0
	lsls r2, r2, #4
	adds r2, r5, r2
	bl FUN_02002180
	adds r0, r4, #0
	bl FUN_0201ACCC
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021DB748

	thumb_func_start ov19_021DB790
ov19_021DB790: @ 0x021DB790
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r4, [r6, #0x18]
	adds r7, r1, #0
	adds r4, #0x10
	movs r5, #0
_021DB79C:
	adds r2, r7, #0
	adds r2, #0x22
	ldrb r2, [r2]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r3, r5, #0
	bl ov19_021DB638
	adds r5, r5, #1
	cmp r5, #6
	blt _021DB79C
	adds r0, r4, #0
	bl FUN_0201ACCC
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov19_021DB790

	thumb_func_start ov19_021DB7BC
ov19_021DB7BC: @ 0x021DB7BC
	push {r3, r4, r5, r6, r7, lr}
	lsls r1, r1, #0x18
	adds r7, r3, #0
	lsrs r1, r1, #0x18
	adds r6, r2, #0
	ldr r5, [sp, #0x18]
	ldr r4, [sp, #0x1c]
	bl FUN_02019FE4
	subs r1, r7, #1
	subs r2, r6, #1
	lsls r1, r1, #5
	adds r1, r2, r1
	movs r2, #0x72
	lsls r3, r1, #1
	lsls r2, r2, #8
	strh r2, [r0, r3]
	adds r1, r0, r3
	movs r2, #0
	cmp r5, #0
	bls _021DB7F4
	ldr r0, _021DB838 @ =0x00007201
	adds r3, r1, #0
_021DB7EA:
	adds r2, r2, #1
	strh r0, [r3, #2]
	adds r3, r3, #2
	cmp r2, r5
	blo _021DB7EA
_021DB7F4:
	lsls r0, r5, #1
	adds r2, r1, r0
	ldr r3, _021DB83C @ =0x00007202
	adds r1, #0x40
	movs r7, #0
	strh r3, [r2, #2]
	cmp r4, #0
	bls _021DB818
	ldr r2, _021DB840 @ =0x00007205
	adds r6, r0, r1
	adds r3, r3, #1
_021DB80A:
	strh r3, [r1]
	strh r2, [r6, #2]
	adds r7, r7, #1
	adds r6, #0x40
	adds r1, #0x40
	cmp r7, r4
	blo _021DB80A
_021DB818:
	ldr r2, _021DB844 @ =0x00007206
	movs r4, #0
	strh r2, [r1]
	cmp r5, #0
	bls _021DB830
	adds r3, r1, #0
	adds r2, r2, #1
_021DB826:
	adds r4, r4, #1
	strh r2, [r3, #2]
	adds r3, r3, #2
	cmp r4, r5
	blo _021DB826
_021DB830:
	ldr r2, _021DB848 @ =0x00007208
	adds r0, r1, r0
	strh r2, [r0, #2]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DB838: .4byte 0x00007201
_021DB83C: .4byte 0x00007202
_021DB840: .4byte 0x00007205
_021DB844: .4byte 0x00007206
_021DB848: .4byte 0x00007208
	thumb_func_end ov19_021DB7BC

	thumb_func_start ov19_021DB84C
ov19_021DB84C: @ 0x021DB84C
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	ldrb r1, [r4, #4]
	bl FUN_02019FE4
	ldrb r1, [r4, #5]
	movs r5, #0
	subs r2, r1, #1
	ldrb r1, [r4, #6]
	subs r1, r1, #1
	lsls r1, r1, #5
	adds r1, r2, r1
	lsls r1, r1, #1
	adds r2, r0, r1
	ldrb r0, [r4, #8]
	adds r0, r0, #2
	beq _021DB896
	adds r0, r5, #0
	adds r1, r5, #0
_021DB872:
	ldrb r6, [r4, #7]
	adds r3, r1, #0
	adds r6, r6, #2
	beq _021DB88A
	adds r6, r2, #0
_021DB87C:
	strh r0, [r6]
	ldrb r7, [r4, #7]
	adds r3, r3, #1
	adds r6, r6, #2
	adds r7, r7, #2
	cmp r3, r7
	blo _021DB87C
_021DB88A:
	ldrb r3, [r4, #8]
	adds r5, r5, #1
	adds r2, #0x40
	adds r3, r3, #2
	cmp r5, r3
	blo _021DB872
_021DB896:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DB84C

	thumb_func_start ov19_021DB898
ov19_021DB898: @ 0x021DB898
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	ldrb r1, [r4, #4]
	bl FUN_02019FE4
	ldrb r1, [r4, #5]
	movs r5, #0
	subs r2, r1, #2
	ldrb r1, [r4, #6]
	subs r1, r1, #1
	lsls r1, r1, #5
	adds r1, r2, r1
	lsls r1, r1, #1
	adds r2, r0, r1
	ldrb r0, [r4, #8]
	adds r0, r0, #2
	beq _021DB8E2
	adds r0, r5, #0
	adds r1, r5, #0
_021DB8BE:
	ldrb r6, [r4, #7]
	adds r3, r1, #0
	adds r6, r6, #5
	beq _021DB8D6
	adds r6, r2, #0
_021DB8C8:
	strh r0, [r6]
	ldrb r7, [r4, #7]
	adds r3, r3, #1
	adds r6, r6, #2
	adds r7, r7, #5
	cmp r3, r7
	blo _021DB8C8
_021DB8D6:
	ldrb r3, [r4, #8]
	adds r5, r5, #1
	adds r2, #0x40
	adds r3, r3, #2
	cmp r5, r3
	blo _021DB8BE
_021DB8E2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DB898

	thumb_func_start ov19_021DB8E4
ov19_021DB8E4: @ 0x021DB8E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	str r1, [r5]
	ldr r0, [sp, #0x34]
	str r3, [r5, #4]
	str r0, [sp, #0x34]
	str r2, [r5, #0xc]
	ldr r0, [sp, #0x30]
	movs r4, #1
	str r0, [r5, #8]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r2, r3, #0
	str r4, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	movs r1, #4
	adds r3, r4, #0
	bl FUN_020070E8
	ldr r0, [sp, #0x34]
	movs r1, #0x1b
	add r2, sp, #0x14
	movs r3, #0xa
	bl FUN_020071EC
	adds r4, r0, #0
	ldr r0, [sp, #0x14]
	adds r1, r5, #0
	ldr r0, [r0, #0xc]
	adds r1, #0xe4
	movs r2, #0x40
	blx FUN_020C4B18
	adds r0, r4, #0
	bl FUN_020181C4
	ldr r0, [sp, #0x34]
	movs r1, #0x14
	add r2, sp, #0x14
	movs r3, #0xa
	bl FUN_020071EC
	adds r4, r0, #0
	ldr r0, [sp, #0x14]
	movs r1, #0x49
	lsls r1, r1, #2
	ldr r0, [r0, #0xc]
	adds r1, r5, r1
	movs r2, #0x20
	blx FUN_020C4B18
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	movs r1, #0x2a
	movs r4, #1
	str r0, [sp, #0x10]
	adds r0, #0xe4
	lsls r1, r1, #4
	lsls r4, r4, #0x10
	movs r7, #7
	str r0, [sp, #0x10]
	adds r6, r0, r1
_021DB96C:
	asrs r0, r4, #0xc
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldr r3, _021DBA88 @ =0x00007FFF
	adds r1, r6, #0
	movs r2, #0x30
	bl ov19_021D78C8
	ldr r0, _021DBA8C @ =0x00002492
	subs r7, r7, #1
	subs r4, r4, r0
	subs r6, #0x60
	cmp r7, #1
	bge _021DB96C
	adds r0, r5, #0
	movs r1, #3
	adds r0, #0xe4
	lsls r1, r1, #8
	blx FUN_020C2C54
	movs r0, #0xe1
	lsls r0, r0, #2
	movs r1, #0x1a
	adds r0, r5, r0
	lsls r1, r1, #4
	movs r2, #0x60
	blx FUN_020C0160
	adds r0, r5, #0
	movs r1, #0x1a
	adds r0, #0xe4
	lsls r1, r1, #4
	movs r2, #0x60
	blx FUN_020C01B8
	movs r0, #0xa
	str r0, [sp]
	adds r3, r5, #0
	ldr r0, [sp, #0x34]
	movs r1, #0x11
	movs r2, #1
	adds r3, #0x18
	bl FUN_020071B4
	str r0, [r5, #0x14]
	movs r0, #0xa
	str r0, [sp]
	adds r3, r5, #0
	ldr r0, [sp, #0x34]
	movs r1, #0x12
	movs r2, #1
	adds r3, #0x20
	bl FUN_02007204
	str r0, [r5, #0x1c]
	movs r0, #0xa
	str r0, [sp]
	adds r3, r5, #0
	ldr r0, [sp, #0x34]
	movs r1, #2
	movs r2, #1
	adds r3, #0x38
	bl FUN_020071D0
	str r0, [r5, #0x34]
	movs r0, #0xa
	str r0, [sp]
	adds r3, r5, #0
	ldr r0, [sp, #0x34]
	movs r1, #3
	movs r2, #1
	adds r3, #0x30
	bl FUN_020071D0
	str r0, [r5, #0x2c]
	movs r0, #2
	movs r1, #0xd
	movs r2, #4
	movs r3, #0xa
	bl FUN_0200C440
	str r0, [r5, #0x44]
	movs r0, #0x7d
	lsls r0, r0, #2
	movs r1, #0xa
	bl FUN_02023790
	ldr r1, _021DBA90 @ =0x00004BFC
	ldr r2, _021DBA94 @ =0x00000187
	str r0, [r5, r1]
	movs r0, #0
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	movs r1, #0x20
	ldr r0, [r0, #0x14]
	movs r3, #0xa
	str r0, [r5, #0x3c]
	adds r0, r5, #0
	adds r0, #0x40
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x42
	strh r1, [r0]
	movs r0, #1
	movs r1, #0x1a
	bl FUN_0200B144
	ldr r1, _021DBA98 @ =0x00004BF8
	adds r2, r5, #0
	str r0, [r5, r1]
	movs r1, #0
	adds r0, r1, #0
_021DBA4C:
	adds r1, r1, #1
	str r0, [r2, #0x48]
	adds r2, r2, #4
	cmp r1, #0x12
	blt _021DBA4C
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021DBA7C
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021DBA7C
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _021DBA7C
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _021DBA7C
	ldr r0, [r5, #0x44]
	cmp r0, #0
	beq _021DBA7C
	ldr r0, _021DBA90 @ =0x00004BFC
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021DBA82
_021DBA7C:
	add sp, #0x18
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021DBA82:
	movs r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DBA88: .4byte 0x00007FFF
_021DBA8C: .4byte 0x00002492
_021DBA90: .4byte 0x00004BFC
_021DBA94: .4byte 0x00000187
_021DBA98: .4byte 0x00004BF8
	thumb_func_end ov19_021DB8E4

	thumb_func_start ov19_021DBA9C
ov19_021DBA9C: @ 0x021DBA9C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0xa
	movs r1, #3
	bl FUN_0201A778
	str r0, [r7, #0x10]
	cmp r0, #0
	beq _021DBACA
	movs r6, #0
	ldr r4, _021DBACC @ =0x021E0210
	adds r5, r6, #0
_021DBAB4:
	ldr r1, [r7, #0x10]
	ldr r0, [r7, #4]
	adds r1, r1, r5
	adds r2, r4, #0
	bl FUN_0201A8D4
	adds r6, r6, #1
	adds r4, #8
	adds r5, #0x10
	cmp r6, #3
	blo _021DBAB4
_021DBACA:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DBACC: .4byte 0x021E0210
	thumb_func_end ov19_021DBA9C

	thumb_func_start ov19_021DBAD0
ov19_021DBAD0: @ 0x021DBAD0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _021DBB40 @ =0x00004BF8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021DBAE0
	bl FUN_0200B190
_021DBAE0:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021DBAEA
	bl FUN_020181C4
_021DBAEA:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021DBAF4
	bl FUN_020181C4
_021DBAF4:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _021DBAFE
	bl FUN_020181C4
_021DBAFE:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _021DBB08
	bl FUN_020181C4
_021DBB08:
	ldr r0, [r5, #0x44]
	cmp r0, #0
	beq _021DBB12
	bl FUN_0200C560
_021DBB12:
	ldr r0, _021DBB44 @ =0x00004BFC
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021DBB1E
	bl FUN_020237BC
_021DBB1E:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _021DBB3E
	movs r6, #0
	adds r4, r6, #0
_021DBB28:
	ldr r0, [r5, #0x10]
	adds r0, r0, r4
	bl FUN_0201A8FC
	adds r6, r6, #1
	adds r4, #0x10
	cmp r6, #3
	blt _021DBB28
	ldr r0, [r5, #0x10]
	bl FUN_020181C4
_021DBB3E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021DBB40: .4byte 0x00004BF8
_021DBB44: .4byte 0x00004BFC
	thumb_func_end ov19_021DBAD0

	thumb_func_start ov19_021DBB48
ov19_021DBB48: @ 0x021DBB48
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	bl ov19_021D5EA8
	adds r1, r4, #0
	adds r1, #0xe0
	str r0, [r1]
	adds r0, r4, #0
	bl ov19_021DBDF4
	adds r0, r4, #0
	movs r1, #0
	bl ov19_021DC034
	pop {r4, pc}
	thumb_func_end ov19_021DBB48

	thumb_func_start ov19_021DBB68
ov19_021DBB68: @ 0x021DBB68
	ldr r3, _021DBB6C @ =ov19_021DC090
	bx r3
	.align 2, 0
_021DBB6C: .4byte ov19_021DC090
	thumb_func_end ov19_021DBB68

	thumb_func_start ov19_021DBB70
ov19_021DBB70: @ 0x021DBB70
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	bl ov19_021D5EA8
	adds r1, r4, #0
	adds r1, #0xe0
	str r0, [r1]
	adds r0, r4, #0
	bl ov19_021DBF18
	adds r0, r4, #0
	bl ov19_021DBF4C
	adds r0, r4, #0
	bl ov19_021DBFC4
	pop {r4, pc}
	thumb_func_end ov19_021DBB70

	thumb_func_start ov19_021DBB94
ov19_021DBB94: @ 0x021DBB94
	ldr r3, _021DBB9C @ =ov19_021DC034
	movs r1, #1
	bx r3
	nop
_021DBB9C: .4byte ov19_021DC034
	thumb_func_end ov19_021DBB94

	thumb_func_start ov19_021DBBA0
ov19_021DBBA0: @ 0x021DBBA0
	ldr r3, _021DBBA4 @ =ov19_021DC090
	bx r3
	.align 2, 0
_021DBBA4: .4byte ov19_021DC090
	thumb_func_end ov19_021DBBA0

	thumb_func_start ov19_021DBBA8
ov19_021DBBA8: @ 0x021DBBA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp, #8]
	ldr r0, [r0, #0xc]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl ov19_021D5E90
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x28]
	bl FUN_02079AA8
	cmp r0, #0x18
	blt _021DBBC8
	subs r0, #8
_021DBBC8:
	adds r0, #0xd0
	movs r1, #0xc
	lsls r0, r0, #0x18
	str r1, [sp]
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	movs r1, #9
	adds r0, #0x3c
	movs r2, #0xa
	movs r3, #0xe
	bl FUN_0201A6D0
	movs r4, #0
	movs r0, #0xb
	str r4, [sp, #0x20]
	str r0, [sp, #0x18]
_021DBBEA:
	movs r0, #0
	str r0, [sp, #0x24]
	ldr r0, [sp, #8]
	movs r6, #0xa
	str r0, [sp, #0x2c]
	adds r0, #0x3c
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x18]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
_021DBC00:
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0xc]
	adds r2, r4, #0
	bl FUN_02079C9C
	adds r4, r4, #1
	adds r5, r0, #0
	bl FUN_02073D20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x1c]
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074570
	adds r7, r0, #0
	beq _021DBC7E
	adds r0, r5, #0
	movs r1, #0x4c
	movs r2, #0
	bl FUN_02074570
	cmp r0, #0
	bne _021DBC50
	adds r0, r5, #0
	movs r1, #0x70
	movs r2, #0
	bl FUN_02074570
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r7, #0
	movs r2, #0x1b
	bl FUN_020759CC
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	b _021DBC60
_021DBC50:
	ldr r0, _021DBD2C @ =0x000001EA
	cmp r7, r0
	beq _021DBC5A
	movs r0, #8
	b _021DBC5C
_021DBC5A:
	movs r0, #1
_021DBC5C:
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_021DBC60:
	ldr r0, _021DBD30 @ =0x021E0228
	ldr r2, [sp, #0x30]
	ldrb r0, [r0, r1]
	movs r3, #2
	adds r0, #0xe0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #2
	str r0, [sp]
	str r1, [sp, #4]
	lsls r1, r6, #0x10
	ldr r0, [sp, #0x2c]
	lsrs r1, r1, #0x10
	bl FUN_0201A6D0
_021DBC7E:
	ldr r1, [sp, #0x1c]
	adds r0, r5, #0
	bl FUN_02073D48
	ldr r0, [sp, #0x24]
	adds r6, r6, #2
	adds r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #6
	blo _021DBC00
	ldr r0, [sp, #0x18]
	adds r0, r0, #2
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #5
	blo _021DBBEA
	ldr r0, [sp, #0x48]
	cmp r0, #0
	beq _021DBCE8
	ldr r0, [sp, #0x14]
	cmp r0, #1
	beq _021DBCB4
	cmp r0, #2
	beq _021DBCC6
	b _021DBCD4
_021DBCB4:
	movs r0, #1
	lsls r0, r0, #0x1a
	ldr r1, [r0]
	ldr r0, _021DBD34 @ =0x00300010
	ands r1, r0
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x18]
	str r1, [r0, #8]
	b _021DBCD4
_021DBCC6:
	ldr r0, _021DBD38 @ =0x04001000
	ldr r1, [r0]
	ldr r0, _021DBD34 @ =0x00300010
	ands r1, r0
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x18]
	str r1, [r0, #8]
_021DBCD4:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0x18]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x48]
	lsls r1, r1, #5
	blx FUN_020A8224
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
_021DBCE8:
	ldr r0, [sp, #8]
	ldr r1, [r0, #0x18]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x10]
	blx FUN_020C2C54
	ldr r0, [sp, #0x14]
	cmp r0, #1
	beq _021DBD02
	cmp r0, #2
	beq _021DBD16
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
_021DBD02:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	ldr r2, [r0, #0x18]
	lsls r1, r1, #5
	ldr r0, [r2, #0x14]
	ldr r2, [r2, #0x10]
	blx FUN_020C02BC
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
_021DBD16:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	ldr r2, [r0, #0x18]
	lsls r1, r1, #5
	ldr r0, [r2, #0x14]
	ldr r2, [r2, #0x10]
	blx FUN_020C0314
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021DBD2C: .4byte 0x000001EA
_021DBD30: .4byte 0x021E0228
_021DBD34: .4byte 0x00300010
_021DBD38: .4byte 0x04001000
	thumb_func_end ov19_021DBBA8

	thumb_func_start ov19_021DBD3C
ov19_021DBD3C: @ 0x021DBD3C
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end ov19_021DBD3C

	thumb_func_start ov19_021DBD40
ov19_021DBD40: @ 0x021DBD40
	adds r0, #0xe0
	ldr r0, [r0]
	subs r0, r0, #3
	bpl _021DBD4A
	adds r0, #0x12
_021DBD4A:
	bx lr
	thumb_func_end ov19_021DBD40

	thumb_func_start ov19_021DBD4C
ov19_021DBD4C: @ 0x021DBD4C
	push {r3, r4}
	movs r4, #0
	ldr r1, _021DBD64 @ =0x00004BE4
	adds r3, r4, #0
_021DBD54:
	adds r2, r0, r4
	adds r4, r4, #1
	strb r3, [r2, r1]
	cmp r4, #0x12
	blt _021DBD54
	pop {r3, r4}
	bx lr
	nop
_021DBD64: .4byte 0x00004BE4
	thumb_func_end ov19_021DBD4C

	thumb_func_start ov19_021DBD68
ov19_021DBD68: @ 0x021DBD68
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x18]
	movs r2, #0xf9
	adds r4, r1, #0
	lsls r2, r2, #2
	adds r3, r5, r2
	lsls r1, r4, #0xa
	ldr r0, [r0, #0x14]
	adds r1, r3, r1
	adds r2, #0x1c
	blx FUN_020C4B68
	movs r1, #0xf9
	lsls r1, r1, #2
	adds r0, r5, r1
	adds r1, #0x1c
	blx FUN_020C2C54
	ldr r0, _021DBD98 @ =0x00004BE4
	movs r2, #1
	adds r1, r5, r4
	strb r2, [r1, r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021DBD98: .4byte 0x00004BE4
	thumb_func_end ov19_021DBD68

	thumb_func_start ov19_021DBD9C
ov19_021DBD9C: @ 0x021DBD9C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r5, r0, #0
	movs r0, #0x63
	lsls r1, r1, #5
	lsls r0, r0, #4
	adds r6, r1, r0
	adds r4, r2, #0
	ldr r0, _021DBDF0 @ =0x00004BE4
	adds r1, r5, r4
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _021DBDCC
	movs r2, #0xf9
	lsls r2, r2, #2
	adds r1, r5, r2
	lsls r0, r4, #0xa
	adds r0, r1, r0
	lsls r1, r6, #5
	adds r2, #0x1c
	blx FUN_020C02BC
	add sp, #0x28
	pop {r4, r5, r6, pc}
_021DBDCC:
	add r0, sp, #4
	blx FUN_020A818C
	add r0, sp, #4
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #1
	bl ov19_021DBBA8
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov19_021DBD68
	add sp, #0x28
	pop {r4, r5, r6, pc}
	nop
_021DBDF0: .4byte 0x00004BE4
	thumb_func_end ov19_021DBD9C

	thumb_func_start ov19_021DBDF4
ov19_021DBDF4: @ 0x021DBDF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	adds r6, r0, #0
	bl ov19_021DBD4C
	ldr r0, [r6]
	bl ov19_021D77D8
	adds r4, r0, #0
	ldr r0, [r6]
	bl ov19_021D77D0
	adds r2, r0, #0
	ldr r0, [r4, #4]
	movs r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r3, [r6, #0x20]
	add r0, sp, #0x40
	bl ov19_021D783C
	adds r0, r6, #0
	bl ov19_021DBD40
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #0xc]
	movs r0, #0x63
	lsls r0, r0, #4
	str r0, [sp, #8]
	adds r4, r6, #0
	movs r5, #0x20
_021DBE34:
	add r0, sp, #0x1c
	blx FUN_020A818C
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, [sp, #8]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r3, #1
	bl ov19_021DBBA8
	add r0, sp, #0x1c
	str r0, [sp, #0x40]
	movs r0, #0xb
	str r0, [sp]
	movs r0, #1
	movs r2, #2
	str r0, [sp, #4]
	lsls r2, r2, #8
	ldr r0, [r6, #8]
	add r1, sp, #0x40
	lsrs r3, r2, #1
	bl ov19_021D785C
	str r0, [r4, #0x48]
	cmp r0, #0
	bne _021DBE6E
	bl FUN_02022974
_021DBE6E:
	ldr r0, [r4, #0x48]
	movs r1, #0
	bl FUN_02021CAC
	cmp r5, #0
	ble _021DBE8C
	lsls r0, r5, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _021DBE9A
_021DBE8C:
	lsls r0, r5, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_021DBE9A:
	blx FUN_020E1740
	str r0, [sp, #0x10]
	movs r0, #0x16
	lsls r0, r0, #0xe
	str r0, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x48]
	add r1, sp, #0x10
	bl FUN_02021C50
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov19_021DBD68
	adds r7, r7, #1
	cmp r7, #0x12
	blt _021DBEC2
	movs r7, #0
_021DBEC2:
	ldr r0, [sp, #8]
	adds r4, r4, #4
	adds r0, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	adds r5, #0x20
	adds r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #7
	blt _021DBE34
	movs r4, #0
	adds r5, r6, #0
_021DBEDA:
	ldr r0, [r6, #0xc]
	bl ov19_021D5E90
	adds r1, r4, #0
	bl FUN_02079B54
	adds r1, r5, #0
	adds r1, #0x94
	adds r4, r4, #1
	adds r5, r5, #4
	str r0, [r1]
	cmp r4, #0x12
	blt _021DBEDA
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DBDF4

	thumb_func_start ov19_021DBEF8
ov19_021DBEF8: @ 0x021DBEF8
	push {r4, r5, r6, lr}
	movs r4, #0
	adds r5, r0, #0
	adds r6, r4, #0
_021DBF00:
	ldr r0, [r5, #0x48]
	cmp r0, #0
	beq _021DBF0C
	bl FUN_02021BD4
	str r6, [r5, #0x48]
_021DBF0C:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #7
	blt _021DBF00
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov19_021DBEF8

	thumb_func_start ov19_021DBF18
ov19_021DBF18: @ 0x021DBF18
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	bl ov19_021DBD40
	adds r4, r0, #0
	movs r6, #0
	adds r5, r7, #0
_021DBF26:
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov19_021DBD9C
	ldr r0, [r5, #0x48]
	movs r1, #1
	bl FUN_02021CAC
	adds r4, r4, #1
	cmp r4, #0x12
	blt _021DBF40
	movs r4, #0
_021DBF40:
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, #7
	blt _021DBF26
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov19_021DBF18

	thumb_func_start ov19_021DBF4C
ov19_021DBF4C: @ 0x021DBF4C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	bl ov19_021D5E90
	adds r1, r5, #0
	ldr r2, _021DBFA8 @ =0x00004BFC
	adds r1, #0xe0
	ldr r1, [r1]
	ldr r2, [r5, r2]
	ldr r4, [r5, #0x10]
	bl FUN_02079AF4
	ldr r1, _021DBFA8 @ =0x00004BFC
	movs r0, #0
	ldr r1, [r5, r1]
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r6, r0, #0
	adds r0, r4, #0
	movs r1, #7
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DBFAC @ =0x00020807
	ldr r2, _021DBFA8 @ =0x00004BFC
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	lsrs r5, r6, #1
	movs r3, #0x30
	adds r0, r4, #0
	subs r3, r3, r5
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_0201ACCC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021DBFA8: .4byte 0x00004BFC
_021DBFAC: .4byte 0x00020807
	thumb_func_end ov19_021DBF4C

	thumb_func_start ov19_021DBFB0
ov19_021DBFB0: @ 0x021DBFB0
	push {r4, lr}
	ldr r4, [r0, #0x10]
	movs r1, #7
	adds r0, r4, #0
	bl FUN_0201ADA4
	adds r0, r4, #0
	bl FUN_0201ACCC
	pop {r4, pc}
	thumb_func_end ov19_021DBFB0

	thumb_func_start ov19_021DBFC4
ov19_021DBFC4: @ 0x021DBFC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r0, [r7, #0x10]
	movs r1, #4
	str r0, [sp, #0xc]
	adds r0, #0x10
	str r0, [sp, #0xc]
	bl FUN_0201ADA4
	adds r0, r7, #0
	bl ov19_021DBD40
	movs r6, #0
	adds r4, r0, #0
	adds r5, r6, #0
_021DBFE4:
	ldr r0, [sp, #0xc]
	lsls r1, r4, #2
	str r0, [sp]
	adds r1, r7, r1
	str r5, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r1, #0x94
	movs r2, #2
	ldr r0, [r7, #0x44]
	ldr r1, [r1]
	adds r3, r2, #0
	bl FUN_0200C5BC
	adds r4, r4, #1
	cmp r4, #0x12
	blt _021DC008
	movs r4, #0
_021DC008:
	adds r6, r6, #1
	adds r5, #0x20
	cmp r6, #7
	blt _021DBFE4
	ldr r0, [sp, #0xc]
	bl FUN_0201ACCC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov19_021DBFC4

	thumb_func_start ov19_021DC01C
ov19_021DC01C: @ 0x021DC01C
	push {r4, lr}
	ldr r4, [r0, #0x10]
	movs r1, #4
	adds r4, #0x10
	adds r0, r4, #0
	bl FUN_0201ADA4
	adds r0, r4, #0
	bl FUN_0201ACCC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021DC01C

	thumb_func_start ov19_021DC034
ov19_021DC034: @ 0x021DC034
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0xa
	movs r1, #0xc
	bl FUN_02018144
	adds r4, r0, #0
	beq _021DC06E
	ldr r0, _021DC070 @ =0x021E0208
	lsls r1, r6, #2
	ldr r0, [r0, r1]
	str r5, [r4]
	movs r2, #0
	strb r2, [r4, #4]
	adds r1, r4, #0
	strb r2, [r4, #5]
	bl FUN_0200D9E8
	adds r1, r5, #0
	adds r1, #0xdc
	adds r5, #0xdc
	str r0, [r1]
	ldr r0, [r5]
	cmp r0, #0
	bne _021DC06E
	adds r0, r4, #0
	bl FUN_020181C4
_021DC06E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021DC070: .4byte 0x021E0208
	thumb_func_end ov19_021DC034

	thumb_func_start ov19_021DC074
ov19_021DC074: @ 0x021DC074
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	movs r2, #0
	adds r0, #0xdc
	str r2, [r0]
	adds r0, r1, #0
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_0200DA58
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021DC074

	thumb_func_start ov19_021DC090
ov19_021DC090: @ 0x021DC090
	adds r0, #0xdc
	ldr r0, [r0]
	cmp r0, #0
	bne _021DC09C
	movs r0, #1
	bx lr
_021DC09C:
	movs r0, #0
	bx lr
	thumb_func_end ov19_021DC090

	thumb_func_start ov19_021DC0A0
ov19_021DC0A0: @ 0x021DC0A0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	adds r4, r1, #0
	ldrb r2, [r4, #4]
	ldr r5, [r4]
	cmp r2, #3
	bls _021DC0B0
	b _021DC1C6
_021DC0B0:
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021DC0BC: @ jump table
	.2byte _021DC0C4 - _021DC0BC - 2 @ case 0
	.2byte _021DC14A - _021DC0BC - 2 @ case 1
	.2byte _021DC170 - _021DC0BC - 2 @ case 2
	.2byte _021DC1C2 - _021DC0BC - 2 @ case 3
_021DC0C4:
	ldrb r0, [r4, #5]
	adds r0, r0, #1
	strb r0, [r4, #5]
	ldrb r0, [r4, #5]
	lsls r1, r0, #1
	cmp r1, #0xa
	bge _021DC11A
	movs r1, #0xa
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [r5, #0x30]
	ldr r0, [r5, #4]
	movs r1, #1
	adds r2, #0xc
	movs r3, #0
	bl FUN_020198C0
	ldrb r6, [r4, #5]
	movs r0, #0x20
	movs r3, #0xa
	str r0, [sp]
	str r6, [sp, #4]
	ldr r1, [r5, #0x30]
	movs r2, #0
	adds r1, #0xc
	str r1, [sp, #8]
	subs r1, r3, r6
	lsls r1, r1, #0x18
	str r2, [sp, #0xc]
	lsrs r1, r1, #0x18
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r0, [r5, #4]
	movs r1, #1
	bl FUN_020198E8
	b _021DC13A
_021DC11A:
	movs r0, #5
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xa
	str r0, [sp, #8]
	ldr r2, [r5, #0x30]
	ldr r0, [r5, #4]
	movs r1, #1
	adds r2, #0xc
	movs r3, #0
	bl FUN_020198C0
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
_021DC13A:
	ldr r0, [r5, #4]
	movs r1, #1
	bl FUN_02019448
	movs r0, #7
	add sp, #0x1c
	strb r0, [r4, #5]
	pop {r3, r4, r5, r6, pc}
_021DC14A:
	ldrb r0, [r4, #5]
	adds r3, r5, #0
	movs r2, #0x60
	adds r1, r0, #0
	adds r3, #0xe4
	muls r1, r2, r1
	adds r0, r3, r1
	movs r1, #0x1a
	lsls r1, r1, #4
	blx FUN_020C0160
	adds r0, r5, #0
	bl ov19_021DBF18
	ldrb r0, [r4, #4]
	add sp, #0x1c
	adds r0, r0, #1
	strb r0, [r4, #4]
	pop {r3, r4, r5, r6, pc}
_021DC170:
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _021DC17A
	subs r0, r0, #1
	strb r0, [r4, #5]
_021DC17A:
	ldrb r0, [r4, #5]
	adds r3, r5, #0
	movs r2, #0x60
	adds r1, r0, #0
	adds r3, #0xe4
	muls r1, r2, r1
	adds r0, r3, r1
	movs r1, #0x1a
	lsls r1, r1, #4
	blx FUN_020C0160
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _021DC1C6
	ldr r0, [r5, #0x10]
	bl FUN_0201A9F4
	ldr r0, [r5, #0x10]
	adds r0, #0x10
	bl FUN_0201A9F4
	adds r0, r5, #0
	bl ov19_021DBF4C
	adds r0, r5, #0
	bl ov19_021DBFC4
	ldr r0, [r5, #4]
	movs r1, #1
	bl FUN_02019448
	ldrb r0, [r4, #4]
	add sp, #0x1c
	adds r0, r0, #1
	strb r0, [r4, #4]
	pop {r3, r4, r5, r6, pc}
_021DC1C2:
	bl ov19_021DC074
_021DC1C6:
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov19_021DC0A0

	thumb_func_start ov19_021DC1CC
ov19_021DC1CC: @ 0x021DC1CC
	push {r4, r5, lr}
	sub sp, #0x1c
	adds r5, r1, #0
	ldrb r2, [r5, #4]
	ldr r4, [r5]
	cmp r2, #0
	beq _021DC1E6
	cmp r2, #1
	beq _021DC202
	cmp r2, #2
	beq _021DC294
	add sp, #0x1c
	pop {r4, r5, pc}
_021DC1E6:
	adds r0, r4, #0
	bl ov19_021DBEF8
	adds r0, r4, #0
	bl ov19_021DBFB0
	adds r0, r4, #0
	bl ov19_021DC01C
	ldrb r0, [r5, #4]
	add sp, #0x1c
	adds r0, r0, #1
	strb r0, [r5, #4]
	pop {r4, r5, pc}
_021DC202:
	movs r0, #5
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xa
	str r0, [sp, #8]
	movs r0, #0x11
	str r0, [sp, #0xc]
	movs r2, #0
	ldr r0, [r4, #4]
	movs r1, #1
	adds r3, r2, #0
	bl FUN_02019CB8
	ldrb r0, [r5, #5]
	adds r0, r0, #1
	strb r0, [r5, #5]
	ldrb r0, [r5, #5]
	lsls r1, r0, #1
	cmp r1, #0xa
	bge _021DC282
	adds r1, r0, #5
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	movs r1, #5
	subs r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r2, [r4, #0x30]
	ldr r0, [r4, #4]
	movs r1, #1
	adds r2, #0xc
	movs r3, #0
	bl FUN_020198C0
	ldrb r1, [r5, #5]
	movs r2, #5
	movs r0, #0x20
	subs r2, r2, r1
	lsls r2, r2, #0x18
	movs r3, #0xa
	subs r1, r3, r1
	lsls r1, r1, #0x18
	str r0, [sp]
	lsrs r2, r2, #0x18
	str r2, [sp, #4]
	ldr r2, [r4, #0x30]
	lsrs r1, r1, #0x18
	adds r2, #0xc
	str r2, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_020198E8
	b _021DC288
_021DC282:
	ldrb r0, [r5, #4]
	adds r0, r0, #1
	strb r0, [r5, #4]
_021DC288:
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_02019448
	add sp, #0x1c
	pop {r4, r5, pc}
_021DC294:
	bl ov19_021DC074
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end ov19_021DC1CC

	thumb_func_start ov19_021DC29C
ov19_021DC29C: @ 0x021DC29C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0xa
	movs r1, #0x18
	bl FUN_02018144
	adds r4, r0, #0
	beq _021DC350
	ldr r0, [r5, #0xc]
	bl ov19_021D5F88
	adds r6, r0, #0
	ldr r0, [r5, #4]
	movs r1, #1
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	movs r0, #0x18
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #7
	str r0, [sp, #8]
	ldr r2, [r5, #0x38]
	ldr r0, [r5, #4]
	movs r1, #1
	adds r2, #0xc
	movs r3, #0
	bl FUN_020198C0
	ldr r0, [r5, #0x10]
	movs r1, #4
	adds r0, #0x20
	bl FUN_0201ADA4
	ldr r2, _021DC354 @ =0x00004BF8
	adds r1, r6, #0
	ldr r0, [r5, r2]
	adds r2, r2, #4
	ldr r2, [r5, r2]
	bl FUN_0200B1B8
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DC358 @ =0x00020104
	ldr r2, _021DC35C @ =0x00004BFC
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0x10]
	ldr r2, [r5, r2]
	adds r0, #0x20
	adds r3, r1, #0
	bl FUN_0201D78C
	ldr r0, [r5, #0x10]
	adds r0, #0x20
	bl FUN_0201A954
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov19_021DC4F8
	movs r1, #0
	strh r1, [r4, #0x16]
	str r5, [r4]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	str r1, [r4, #8]
	movs r1, #0xe
	lsls r1, r1, #0xe
	str r1, [r4, #0xc]
	ldr r0, [r4, #8]
	subs r0, r1, r0
	movs r1, #6
	blx FUN_020E1F6C
	str r0, [r4, #0x10]
	movs r0, #6
	strh r0, [r4, #0x14]
	ldr r0, _021DC360 @ =ov19_021DC37C
	adds r1, r4, #0
	movs r2, #0
	bl ov19_021D77C8
	adds r5, #0xdc
	str r0, [r5]
_021DC350:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_021DC354: .4byte 0x00004BF8
_021DC358: .4byte 0x00020104
_021DC35C: .4byte 0x00004BFC
_021DC360: .4byte ov19_021DC37C
	thumb_func_end ov19_021DC29C

	thumb_func_start ov19_021DC364
ov19_021DC364: @ 0x021DC364
	adds r0, #0xdc
	ldr r0, [r0]
	cmp r0, #0
	bne _021DC370
	movs r0, #1
	bx lr
_021DC370:
	movs r0, #0
	bx lr
	thumb_func_end ov19_021DC364

	thumb_func_start ov19_021DC374
ov19_021DC374: @ 0x021DC374
	movs r1, #0
	adds r0, #0xdc
	str r1, [r0]
	bx lr
	thumb_func_end ov19_021DC374

	thumb_func_start ov19_021DC37C
ov19_021DC37C: @ 0x021DC37C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	beq _021DC38E
	cmp r0, #1
	beq _021DC394
	pop {r3, r4, r5, pc}
_021DC38E:
	adds r0, r0, #1
	strh r0, [r4, #0x16]
	pop {r3, r4, r5, pc}
_021DC394:
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _021DC3C2
	subs r0, r0, #1
	strh r0, [r4, #0x14]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x10]
	movs r2, #3
	adds r3, r1, r0
	str r3, [r4, #8]
	ldr r0, [r4, #4]
	movs r1, #1
	asrs r3, r3, #0xc
	bl FUN_02019184
	movs r1, #0xe
	ldr r2, [r4, #8]
	lsls r1, r1, #0x10
	ldr r0, [r4]
	subs r1, r1, r2
	bl ov19_021DC5B8
	pop {r3, r4, r5, pc}
_021DC3C2:
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #4]
	movs r1, #1
	movs r2, #3
	asrs r3, r3, #0xc
	bl FUN_02019184
	movs r1, #0xe
	ldr r2, [r4, #0xc]
	lsls r1, r1, #0x10
	ldr r0, [r4]
	subs r1, r1, r2
	bl ov19_021DC5B8
	ldr r1, _021DC3F0 @ =ov19_021DC374
	ldr r2, [r4]
	adds r0, r4, #0
	bl ov19_021D79B8
	adds r0, r5, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, pc}
	.align 2, 0
_021DC3F0: .4byte ov19_021DC374
	thumb_func_end ov19_021DC37C

	thumb_func_start ov19_021DC3F4
ov19_021DC3F4: @ 0x021DC3F4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xa
	movs r1, #0x18
	bl FUN_02018144
	adds r4, r0, #0
	beq _021DC434
	movs r1, #0
	strh r1, [r4, #0x16]
	str r5, [r4]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	movs r0, #0xe
	lsls r0, r0, #0xe
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	ldr r0, [r4, #8]
	subs r0, r1, r0
	movs r1, #6
	blx FUN_020E1F6C
	str r0, [r4, #0x10]
	movs r0, #6
	strh r0, [r4, #0x14]
	ldr r0, _021DC438 @ =ov19_021DC46C
	adds r1, r4, #0
	movs r2, #0
	bl ov19_021D77C8
	adds r5, #0xdc
	str r0, [r5]
_021DC434:
	pop {r3, r4, r5, pc}
	nop
_021DC438: .4byte ov19_021DC46C
	thumb_func_end ov19_021DC3F4

	thumb_func_start ov19_021DC43C
ov19_021DC43C: @ 0x021DC43C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xdc
	ldr r0, [r0]
	cmp r0, #0
	bne _021DC45E
	ldr r0, [r4, #4]
	movs r1, #1
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	adds r0, r4, #0
	bl ov19_021DC5E0
	movs r0, #1
	pop {r4, pc}
_021DC45E:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021DC43C

	thumb_func_start ov19_021DC464
ov19_021DC464: @ 0x021DC464
	movs r1, #0
	adds r0, #0xdc
	str r1, [r0]
	bx lr
	thumb_func_end ov19_021DC464

	thumb_func_start ov19_021DC46C
ov19_021DC46C: @ 0x021DC46C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _021DC4A4
	subs r0, r0, #1
	strh r0, [r4, #0x14]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x10]
	movs r2, #3
	adds r3, r1, r0
	str r3, [r4, #8]
	ldr r0, [r4, #4]
	movs r1, #1
	asrs r3, r3, #0xc
	bl FUN_02019184
	movs r1, #0xe
	ldr r2, [r4, #8]
	lsls r1, r1, #0x10
	ldr r0, [r4]
	subs r1, r1, r2
	bl ov19_021DC5B8
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021DC4A4:
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #4]
	movs r1, #1
	movs r2, #3
	asrs r3, r3, #0xc
	bl FUN_02019184
	movs r1, #0xe
	ldr r2, [r4, #0xc]
	lsls r1, r1, #0x10
	ldr r0, [r4]
	subs r1, r1, r2
	bl ov19_021DC5B8
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	movs r1, #1
	adds r3, r2, #0
	bl FUN_02019CB8
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_02019448
	ldr r1, _021DC4F4 @ =ov19_021DC464
	ldr r2, [r4]
	adds r0, r4, #0
	bl ov19_021D79B8
	adds r0, r5, #0
	bl FUN_0200DA58
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_021DC4F4: .4byte ov19_021DC464
	thumb_func_end ov19_021DC46C

	thumb_func_start ov19_021DC4F8
ov19_021DC4F8: @ 0x021DC4F8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x54
	adds r5, r0, #0
	adds r4, r1, #0
	beq _021DC5AE
	ldr r0, [r5]
	bl ov19_021D77D8
	adds r6, r0, #0
	ldr r0, [r5]
	bl ov19_021D77D0
	adds r2, r0, #0
	ldr r0, [r6, #0x20]
	add r1, sp, #0xc
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r3, [r6, #0x1c]
	add r0, sp, #0x30
	bl ov19_021D783C
	add r0, sp, #0xc
	blx FUN_020A818C
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	bl FUN_0207CE78
	adds r1, r0, #0
	movs r0, #0xa
	str r0, [sp]
	movs r0, #0x10
	movs r2, #0
	add r3, sp, #8
	bl FUN_02006F50
	adds r6, r0, #0
	movs r0, #1
	lsls r0, r0, #0x1a
	ldr r1, [r0]
	ldr r0, _021DC5B4 @ =0x00300010
	movs r2, #1
	ands r1, r0
	ldr r0, [sp, #8]
	add r3, sp, #0xc
	str r1, [r0, #8]
	movs r1, #0xbe
	ldr r0, [sp, #8]
	lsls r1, r1, #8
	blx FUN_020A8224
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	movs r1, #2
	bl FUN_0207CE78
	adds r1, r0, #0
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #0x10
	movs r2, #1
	movs r3, #0xc0
	bl FUN_02006E84
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	add r1, sp, #0x30
	movs r2, #0x12
	movs r3, #0xe0
	bl ov19_021D785C
	adds r1, r5, #0
	adds r1, #0x90
	adds r5, #0x90
	str r0, [r1]
	ldr r0, [r5]
	cmp r0, #0
	beq _021DC5A8
	movs r1, #6
	bl FUN_02021E90
_021DC5A8:
	adds r0, r6, #0
	bl FUN_020181C4
_021DC5AE:
	add sp, #0x54
	pop {r3, r4, r5, r6, pc}
	nop
_021DC5B4: .4byte 0x00300010
	thumb_func_end ov19_021DC4F8

	thumb_func_start ov19_021DC5B8
ov19_021DC5B8: @ 0x021DC5B8
	push {lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r2, #0x90
	ldr r2, [r2]
	cmp r2, #0
	beq _021DC5DC
	movs r2, #0x12
	lsls r2, r2, #0xc
	str r1, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	str r2, [sp]
	adds r0, #0x90
	ldr r0, [r0]
	add r1, sp, #0
	bl FUN_02021C50
_021DC5DC:
	add sp, #0xc
	pop {pc}
	thumb_func_end ov19_021DC5B8

	thumb_func_start ov19_021DC5E0
ov19_021DC5E0: @ 0x021DC5E0
	push {r3, lr}
	adds r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	beq _021DC5EE
	bl FUN_02021BD4
_021DC5EE:
	pop {r3, pc}
	thumb_func_end ov19_021DC5E0

	thumb_func_start ov19_021DC5F0
ov19_021DC5F0: @ 0x021DC5F0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	str r4, [r5]
	ldr r0, [sp, #0x18]
	str r6, [r5, #0xc]
	str r0, [r5, #8]
	str r3, [r5, #4]
	adds r0, r4, #0
	bl ov19_021D77D8
	str r0, [r5, #0x38]
	adds r0, r4, #0
	bl ov19_021D77E0
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl ov19_021D5E08
	cmp r0, #4
	beq _021DC626
	movs r0, #0xe
	str r0, [r5, #0x30]
	movs r0, #0
	b _021DC62C
_021DC626:
	movs r0, #9
	str r0, [r5, #0x30]
	subs r0, #0x31
_021DC62C:
	str r0, [r5, #0x34]
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0x2b
	strb r1, [r0]
	str r1, [r5, #0x2c]
	adds r1, r5, #0
	ldr r0, [r5, #0x38]
	adds r1, #0x3c
	movs r2, #6
	bl ov19_021DA3CC
	movs r1, #9
	movs r0, #0xa
	lsls r1, r1, #6
	bl FUN_02018144
	str r0, [r5, #0x1c]
	movs r0, #0xa
	str r0, [sp]
	adds r3, r5, #0
	ldr r0, [sp, #0x1c]
	movs r1, #6
	movs r2, #1
	adds r3, #0x18
	bl FUN_020071D0
	str r0, [r5, #0x14]
	cmp r0, #0
	beq _021DC66E
	ldr r1, [r5, #0x1c]
	cmp r1, #0
	bne _021DC674
_021DC66E:
	add sp, #4
	movs r0, #0
	pop {r3, r4, r5, r6, pc}
_021DC674:
	adds r0, r5, #0
	bl ov19_021DCDB4
	movs r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov19_021DC5F0

	thumb_func_start ov19_021DC680
ov19_021DC680: @ 0x021DC680
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021DC68E
	bl FUN_020181C4
_021DC68E:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021DC698
	bl FUN_020181C4
_021DC698:
	adds r0, r4, #0
	bl ov19_021DCF50
	pop {r4, pc}
	thumb_func_end ov19_021DC680

	thumb_func_start ov19_021DC6A0
ov19_021DC6A0: @ 0x021DC6A0
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	movs r2, #0
	adds r1, #0x2b
	strb r2, [r1]
	adds r1, r4, #0
	adds r1, #0x2b
	ldrb r1, [r1]
	bl ov19_021DCD64
	adds r0, r4, #0
	movs r1, #1
	bl ov19_021DCEB8
	ldr r0, [r4, #4]
	movs r1, #2
	bl FUN_02019448
	pop {r4, pc}
	thumb_func_end ov19_021DC6A0

	thumb_func_start ov19_021DC6C8
ov19_021DC6C8: @ 0x021DC6C8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl ov19_021DCEB8
	adds r0, r4, #0
	movs r1, #0x1a
	adds r0, #0x2b
	strb r1, [r0]
	ldr r0, _021DC6F4 @ =ov19_021DC708
	adds r1, r4, #0
	movs r2, #0
	bl ov19_021D77C8
	cmp r0, #0
	beq _021DC6EC
	movs r0, #1
	b _021DC6EE
_021DC6EC:
	movs r0, #0
_021DC6EE:
	str r0, [r4, #0x2c]
	pop {r4, pc}
	nop
_021DC6F4: .4byte ov19_021DC708
	thumb_func_end ov19_021DC6C8

	thumb_func_start ov19_021DC6F8
ov19_021DC6F8: @ 0x021DC6F8
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	bne _021DC702
	movs r0, #1
	bx lr
_021DC702:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov19_021DC6F8

	thumb_func_start ov19_021DC708
ov19_021DC708: @ 0x021DC708
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r0, #0
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #2
	bls _021DC724
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	ldr r4, _021DC764 @ =0xFFFF0000
	subs r1, r0, #2
	b _021DC72A
_021DC724:
	lsls r0, r0, #0xf
	rsbs r4, r0, #0
	movs r1, #0
_021DC72A:
	adds r0, r5, #0
	adds r0, #0x2b
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x2b
	ldrb r1, [r1]
	adds r0, r5, #0
	bl ov19_021DCD64
	ldr r0, [r5, #4]
	movs r1, #2
	bl FUN_02019448
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov19_021DCE50
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	bne _021DC760
	movs r0, #0
	str r0, [r5, #0x2c]
	adds r0, r6, #0
	bl FUN_0200DA58
_021DC760:
	pop {r4, r5, r6, pc}
	nop
_021DC764: .4byte 0xFFFF0000
	thumb_func_end ov19_021DC708

	thumb_func_start ov19_021DC768
ov19_021DC768: @ 0x021DC768
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021DC784 @ =ov19_021DC79C
	adds r1, r4, #0
	movs r2, #0
	bl ov19_021D77C8
	cmp r0, #0
	beq _021DC77E
	movs r0, #1
	b _021DC780
_021DC77E:
	movs r0, #0
_021DC780:
	str r0, [r4, #0x2c]
	pop {r4, pc}
	.align 2, 0
_021DC784: .4byte ov19_021DC79C
	thumb_func_end ov19_021DC768

	thumb_func_start ov19_021DC788
ov19_021DC788: @ 0x021DC788
	push {r3, lr}
	ldr r1, [r0, #0x2c]
	cmp r1, #0
	bne _021DC798
	bl ov19_021DCF50
	movs r0, #1
	pop {r3, pc}
_021DC798:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov19_021DC788

	thumb_func_start ov19_021DC79C
ov19_021DC79C: @ 0x021DC79C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r1, #0
	adds r6, r0, #0
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0x18
	bhs _021DC7BC
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	movs r4, #1
	lsls r4, r4, #0x10
	adds r1, r0, #2
	b _021DC7C2
_021DC7BC:
	movs r1, #0x1a
	subs r0, r1, r0
	lsls r4, r0, #0xf
_021DC7C2:
	adds r0, r5, #0
	adds r0, #0x2b
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r1, [r0]
	cmp r1, #2
	bls _021DC7FE
	asrs r0, r4, #0xc
	lsrs r0, r0, #3
	subs r1, r1, #2
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	movs r1, #0xf
	lsls r0, r0, #0x18
	str r1, [sp, #4]
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x11
	str r0, [sp, #0xc]
	ldr r3, [r5, #0x30]
	ldr r0, [r5, #4]
	lsls r3, r3, #0x18
	movs r1, #2
	movs r2, #0
	lsrs r3, r3, #0x18
	bl FUN_02019CB8
_021DC7FE:
	adds r1, r5, #0
	adds r1, #0x2b
	ldrb r1, [r1]
	adds r0, r5, #0
	bl ov19_021DCD64
	ldr r0, [r5, #4]
	movs r1, #2
	bl FUN_02019448
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov19_021DCE50
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0x1a
	bne _021DC82E
	movs r0, #0
	str r0, [r5, #0x2c]
	adds r0, r6, #0
	bl FUN_0200DA58
_021DC82E:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov19_021DC79C

	thumb_func_start ov19_021DC834
ov19_021DC834: @ 0x021DC834
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	ldr r0, [r6, #0xc]
	ldr r0, [r0, #4]
	bl FUN_0207A0F8
	adds r1, r6, #0
	adds r1, #0x28
	ldrb r4, [r1]
	cmp r4, r0
	bge _021DC8D8
	subs r0, r0, r4
	str r0, [sp, #8]
	cmp r4, #5
	bge _021DC8B0
	movs r0, #0x34
	adds r1, r4, #0
	muls r1, r0, r1
	adds r0, r6, #0
	str r0, [sp, #0xc]
	adds r0, #0x3c
	str r0, [sp, #0xc]
	adds r5, r0, r1
	adds r7, r6, r1
	ldr r0, _021DC8E0 @ =0x00000418
	lsls r1, r4, #5
	adds r0, r1, r0
	str r0, [sp, #4]
_021DC86E:
	adds r1, r4, #1
	movs r0, #0x34
	muls r0, r1, r0
	ldr r1, [sp, #0xc]
	str r0, [sp]
	adds r0, r1, r0
	adds r1, r5, #0
	movs r2, #1
	bl ov19_021DA418
	ldr r2, [sp, #0xc]
	ldr r1, [sp]
	ldr r0, [r6, #0x38]
	adds r1, r2, r1
	movs r2, #1
	bl ov19_021DA3CC
	ldr r0, [r7, #0x3c]
	cmp r0, #0
	beq _021DC8A0
	ldr r0, [r6, #0x38]
	ldr r2, [sp, #4]
	adds r1, r5, #0
	bl ov19_021DA754
_021DC8A0:
	ldr r0, [sp, #4]
	adds r4, r4, #1
	adds r0, #0x20
	adds r5, #0x34
	adds r7, #0x34
	str r0, [sp, #4]
	cmp r4, #5
	blt _021DC86E
_021DC8B0:
	adds r1, r6, #0
	ldr r0, [sp, #8]
	adds r1, #0x29
	strb r0, [r1]
	adds r0, r6, #0
	movs r2, #0
	adds r0, #0x2a
	strb r2, [r0]
	ldr r0, _021DC8E4 @ =ov19_021DC8E8
	adds r1, r6, #0
	bl ov19_021D77C8
	cmp r0, #0
	beq _021DC8D0
	movs r0, #1
	b _021DC8D2
_021DC8D0:
	movs r0, #0
_021DC8D2:
	add sp, #0x10
	str r0, [r6, #0x2c]
	pop {r3, r4, r5, r6, r7, pc}
_021DC8D8:
	movs r0, #0
	str r0, [r6, #0x2c]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DC8E0: .4byte 0x00000418
_021DC8E4: .4byte ov19_021DC8E8
	thumb_func_end ov19_021DC834

	thumb_func_start ov19_021DC8E8
ov19_021DC8E8: @ 0x021DC8E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp, #4]
	ldr r2, [sp, #4]
	str r0, [sp]
	adds r1, #0x28
	ldr r0, [sp, #4]
	adds r2, #0x2a
	adds r0, #0x29
	ldrb r7, [r0]
	ldr r0, [sp, #4]
	ldrb r1, [r1]
	ldrb r3, [r2]
	ldr r0, [r0, #0x1c]
	lsls r2, r1, #3
	adds r3, r3, r2
	movs r2, #0xc
	muls r2, r3, r2
	adds r4, r0, r2
	movs r6, #0
	cmp r7, #0
	ble _021DC934
	movs r0, #0x34
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, [sp, #4]
	adds r5, r0, r2
_021DC91E:
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	beq _021DC92A
	adds r1, r4, #0
	bl FUN_02021C50
_021DC92A:
	adds r6, r6, #1
	adds r5, #0x34
	adds r4, #0x60
	cmp r6, r7
	blt _021DC91E
_021DC934:
	ldr r0, [sp, #4]
	adds r0, #0x2a
	ldrb r0, [r0]
	adds r1, r0, #1
	ldr r0, [sp, #4]
	adds r0, #0x2a
	strb r1, [r0]
	ldr r0, [sp, #4]
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #8
	blo _021DC958
	ldr r0, [sp, #4]
	movs r1, #0
	str r1, [r0, #0x2c]
	ldr r0, [sp]
	bl FUN_0200DA58
_021DC958:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DC8E8

	thumb_func_start ov19_021DC95C
ov19_021DC95C: @ 0x021DC95C
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	bne _021DC966
	movs r0, #1
	bx lr
_021DC966:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov19_021DC95C

	thumb_func_start ov19_021DC96C
ov19_021DC96C: @ 0x021DC96C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #4]
	bl FUN_0207A0F8
	subs r4, r0, #1
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, r4
	bls _021DC9F2
	movs r0, #0x34
	muls r0, r4, r0
	adds r0, r5, r0
	ldr r0, [r0, #0x3c]
	bl FUN_02021D28
	adds r3, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0
	stm r2!, {r0, r1}
	ldr r0, [r3]
	ldr r1, _021DC9FC @ =0x021E0234
	str r0, [r2]
	lsls r0, r4, #2
	ldrh r1, [r1, r0]
	ldr r2, [r5, #0x34]
	adds r1, r2, r1
	lsls r2, r1, #0xc
	ldr r1, [sp]
	subs r2, r2, r1
	asrs r1, r2, #2
	lsrs r1, r1, #0x1d
	adds r1, r2, r1
	asrs r1, r1, #3
	str r1, [r5, #0x20]
	ldr r1, _021DCA00 @ =0x021E0236
	movs r2, #0
	ldrh r0, [r1, r0]
	lsls r1, r0, #0xc
	ldr r0, [sp, #4]
	subs r1, r1, r0
	asrs r0, r1, #2
	lsrs r0, r0, #0x1d
	adds r0, r1, r0
	asrs r0, r0, #3
	str r0, [r5, #0x24]
	adds r0, r5, #0
	adds r0, #0x2a
	strb r2, [r0]
	adds r0, r5, #0
	adds r0, #0x28
	strb r4, [r0]
	ldr r0, _021DCA04 @ =ov19_021DCA18
	adds r1, r5, #0
	bl ov19_021D77C8
	cmp r0, #0
	beq _021DC9EA
	movs r0, #1
	b _021DC9EC
_021DC9EA:
	movs r0, #0
_021DC9EC:
	add sp, #0xc
	str r0, [r5, #0x2c]
	pop {r4, r5, pc}
_021DC9F2:
	movs r0, #0
	str r0, [r5, #0x2c]
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021DC9FC: .4byte 0x021E0234
_021DCA00: .4byte 0x021E0236
_021DCA04: .4byte ov19_021DCA18
	thumb_func_end ov19_021DC96C

	thumb_func_start ov19_021DCA08
ov19_021DCA08: @ 0x021DCA08
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	bne _021DCA12
	movs r0, #1
	bx lr
_021DCA12:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov19_021DCA08

	thumb_func_start ov19_021DCA18
ov19_021DCA18: @ 0x021DCA18
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r1, #0
	adds r6, r0, #0
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #0x34
	muls r0, r1, r0
	adds r0, r5, r0
	ldr r0, [r0, #0x3c]
	bl FUN_02021D28
	adds r3, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0x2a
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #8
	blo _021DCA7E
	adds r1, r5, #0
	adds r1, #0x28
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	movs r4, #1
	lsls r2, r1, #2
	ldr r1, _021DCAB8 @ =0x021E0234
	ldrh r1, [r1, r2]
	adds r0, r0, r1
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r1, r0, #2
	ldr r0, _021DCABC @ =0x021E0236
	ldrh r0, [r0, r1]
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	b _021DCA90
_021DCA7E:
	ldr r1, [sp]
	ldr r0, [r5, #0x20]
	movs r4, #0
	adds r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r5, #0x24]
	adds r0, r1, r0
	str r0, [sp, #4]
_021DCA90:
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #0x34
	muls r0, r1, r0
	adds r0, r5, r0
	ldr r0, [r0, #0x3c]
	add r1, sp, #0
	bl FUN_02021C50
	cmp r4, #0
	beq _021DCAB2
	movs r0, #0
	str r0, [r5, #0x2c]
	adds r0, r6, #0
	bl FUN_0200DA58
_021DCAB2:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021DCAB8: .4byte 0x021E0234
_021DCABC: .4byte 0x021E0236
	thumb_func_end ov19_021DCA18

	thumb_func_start ov19_021DCAC0
ov19_021DCAC0: @ 0x021DCAC0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	bl ov19_021D5E68
	movs r1, #0x11
	ldr r2, [r5, #0xc]
	lsls r1, r1, #4
	ldrh r1, [r2, r1]
	cmp r1, r0
	bne _021DCADC
	ldr r0, [r5, #0x10]
	bl ov19_021D84E0
_021DCADC:
	ldr r0, [r5, #0xc]
	bl ov19_021D5E2C
	adds r4, r0, #0
	adds r2, r5, #0
	movs r1, #0x34
	ldr r0, [r5, #0x38]
	adds r2, #0x3c
	muls r1, r4, r1
	adds r1, r2, r1
	movs r2, #1
	bl ov19_021DA3F0
	adds r5, #0x28
	strb r4, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021DCAC0

	thumb_func_start ov19_021DCAFC
ov19_021DCAFC: @ 0x021DCAFC
	adds r2, r0, #0
	movs r0, #0x5d
	movs r3, #0
	lsls r0, r0, #2
	strb r3, [r2, r0]
	adds r0, r2, #0
	adds r0, #0x28
	movs r3, #0x34
	strb r1, [r0]
	ldr r0, [r2, #0x38]
	adds r2, #0x3c
	muls r3, r1, r3
	adds r1, r2, r3
	ldr r3, _021DCB1C @ =ov19_021DA7B8
	movs r2, #1
	bx r3
	.align 2, 0
_021DCB1C: .4byte ov19_021DA7B8
	thumb_func_end ov19_021DCAFC

	thumb_func_start ov19_021DCB20
ov19_021DCB20: @ 0x021DCB20
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x28
	ldrb r1, [r0]
	adds r4, r5, #0
	movs r0, #0x34
	adds r6, r1, #0
	muls r6, r0, r6
	movs r0, #0x5d
	lsls r0, r0, #2
	ldrb r0, [r5, r0]
	adds r4, #0x3c
	cmp r0, #0
	beq _021DCB42
	cmp r0, #1
	beq _021DCB8A
	b _021DCB9A
_021DCB42:
	ldr r0, [r5, #0x38]
	adds r1, r4, r6
	bl ov19_021DA7E0
	cmp r0, #0
	beq _021DCB9A
	ldr r0, [r5]
	bl ov19_021D7964
	adds r7, r0, #0
	bl ov19_021D3B18
	cmp r0, #0
	beq _021DCB9A
	adds r0, r7, #0
	bl ov19_021D3B20
	cmp r0, #0
	ldr r0, [r5, #0x38]
	beq _021DCB76
	adds r1, r4, r6
	movs r2, #1
	bl ov19_021DA3F0
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DCB76:
	adds r1, r4, r6
	movs r2, #2
	bl ov19_021DA7B8
	movs r0, #0x5d
	lsls r0, r0, #2
	ldrb r1, [r5, r0]
	adds r1, r1, #1
	strb r1, [r5, r0]
	b _021DCB9A
_021DCB8A:
	ldr r0, [r5, #0x38]
	adds r1, r4, r6
	bl ov19_021DA7E0
	cmp r0, #0
	beq _021DCB9A
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DCB9A:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov19_021DCB20

	thumb_func_start ov19_021DCBA0
ov19_021DCBA0: @ 0x021DCBA0
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, [r7, #0xc]
	bl ov19_021D5E10
	cmp r0, #1
	bne _021DCBD8
	ldr r0, [r7, #0xc]
	bl ov19_021D5EC8
	adds r5, r7, #0
	str r0, [sp]
	movs r6, #0
	adds r4, r7, #0
	adds r5, #0x3c
_021DCBBE:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _021DCBCE
	ldr r0, [r7, #0x38]
	ldr r2, [sp]
	adds r1, r5, #0
	bl ov19_021DA63C
_021DCBCE:
	adds r6, r6, #1
	adds r4, #0x34
	adds r5, #0x34
	cmp r6, #6
	blt _021DCBBE
_021DCBD8:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov19_021DCBA0

	thumb_func_start ov19_021DCBDC
ov19_021DCBDC: @ 0x021DCBDC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	movs r0, #0x34
	adds r4, r1, #0
	muls r4, r0, r4
	adds r6, #0x3c
	ldr r0, [r6, r4]
	cmp r0, #0
	beq _021DCC12
	ldr r0, [r5, #0x38]
	adds r1, r6, r4
	bl ov19_021DA690
	ldr r0, [r5, #0xc]
	bl ov19_021D5EC8
	adds r2, r0, #0
	ldr r0, [r5, #0x38]
	adds r1, r6, r4
	bl ov19_021DA63C
	ldr r0, [r5, #0x38]
	adds r1, r6, r4
	movs r2, #0
	bl ov19_021DA694
_021DCC12:
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021DCBDC

	thumb_func_start ov19_021DCC14
ov19_021DCC14: @ 0x021DCC14
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	bl ov19_021D5E2C
	adds r4, r0, #0
	ldr r0, [r5, #0xc]
	bl ov19_021D5EA0
	adds r2, r0, #0
	adds r1, r5, #0
	movs r0, #0x34
	adds r3, r4, #0
	adds r1, #0x3c
	muls r3, r0, r3
	ldr r0, [r1, r3]
	cmp r0, #0
	beq _021DCC40
	ldr r0, [r5, #0x38]
	adds r1, r1, r3
	bl ov19_021DA68C
_021DCC40:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021DCC14

	thumb_func_start ov19_021DCC44
ov19_021DCC44: @ 0x021DCC44
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	movs r0, #0x34
	adds r6, r4, #0
	muls r6, r0, r6
	adds r0, r5, #0
	adds r7, r3, #0
	adds r0, #0x3c
	str r2, [sp]
	adds r0, r0, r6
	adds r1, r7, #0
	movs r2, #1
	bl ov19_021DA418
	ldr r0, [r5, #0x38]
	ldr r2, [sp]
	adds r1, r7, #0
	bl ov19_021DA754
	adds r1, r5, #0
	adds r1, #0x3c
	ldr r0, [r5, #0x38]
	adds r1, r1, r6
	movs r2, #1
	bl ov19_021DA3CC
	adds r5, #0x28
	strb r4, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DCC44

	thumb_func_start ov19_021DCC80
ov19_021DCC80: @ 0x021DCC80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	str r1, [sp]
	ldr r0, [r0, #4]
	str r2, [sp, #4]
	bl FUN_0207A0F8
	subs r7, r0, #1
	adds r4, r5, #0
	movs r0, #0x34
	adds r6, r7, #0
	muls r6, r0, r6
	adds r4, #0x3c
	ldr r0, [sp, #4]
	adds r1, r4, r6
	movs r2, #1
	bl ov19_021DA418
	ldr r2, _021DCCD0 @ =0x00000418
	lsls r3, r7, #5
	ldr r0, [r5, #0x38]
	adds r1, r4, r6
	adds r2, r3, r2
	bl ov19_021DA754
	ldr r0, [r4, r6]
	movs r1, #1
	bl FUN_02021E80
	ldr r0, [r4, r6]
	adds r1, r7, #4
	bl ov19_021D78AC
	ldr r0, [sp]
	adds r5, #0x28
	strb r0, [r5]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DCCD0: .4byte 0x00000418
	thumb_func_end ov19_021DCC80

	thumb_func_start ov19_021DCCD4
ov19_021DCCD4: @ 0x021DCCD4
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r6, #0
	movs r0, #0x34
	adds r4, r7, #0
	muls r4, r0, r4
	adds r5, #0x3c
	adds r0, r2, #0
	adds r1, r5, r4
	movs r2, #1
	bl ov19_021DA418
	ldr r2, _021DCD14 @ =0x00000418
	lsls r3, r7, #5
	ldr r0, [r6, #0x38]
	adds r1, r5, r4
	adds r2, r3, r2
	bl ov19_021DA754
	ldr r0, [r5, r4]
	movs r1, #1
	bl FUN_02021E80
	ldr r0, [r5, r4]
	adds r1, r7, #4
	bl ov19_021D78AC
	adds r6, #0x28
	strb r7, [r6]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DCD14: .4byte 0x00000418
	thumb_func_end ov19_021DCCD4

	thumb_func_start ov19_021DCD18
ov19_021DCD18: @ 0x021DCD18
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r4, #6
	blo _021DCD26
	bl FUN_02022974
_021DCD26:
	movs r0, #0x34
	adds r5, #0x3c
	muls r0, r4, r0
	adds r0, r5, r0
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021DCD18

	thumb_func_start ov19_021DCD30
ov19_021DCD30: @ 0x021DCD30
	push {r3, r4}
	cmp r1, #6
	bne _021DCD44
	ldr r0, [r0, #0x34]
	adds r0, #0xc0
	str r0, [r2]
	movs r0, #0xb8
	str r0, [r3]
	pop {r3, r4}
	bx lr
_021DCD44:
	ldr r4, [r0, #0x34]
	ldr r0, _021DCD5C @ =0x021E0234
	lsls r1, r1, #2
	ldrh r0, [r0, r1]
	adds r0, r4, r0
	str r0, [r2]
	ldr r0, _021DCD60 @ =0x021E0236
	ldrh r0, [r0, r1]
	str r0, [r3]
	pop {r3, r4}
	bx lr
	nop
_021DCD5C: .4byte 0x021E0234
_021DCD60: .4byte 0x021E0236
	thumb_func_end ov19_021DCD30

	thumb_func_start ov19_021DCD64
ov19_021DCD64: @ 0x021DCD64
	push {r3, r4, lr}
	sub sp, #0xc
	adds r3, r0, #0
	cmp r1, #2
	bhi _021DCD7E
	movs r0, #2
	subs r1, r0, r1
	adds r2, r1, #0
	movs r0, #0x1e
	muls r2, r0, r2
	movs r1, #0x18
	movs r0, #0
	b _021DCD8C
_021DCD7E:
	cmp r1, #0x1a
	bhs _021DCDB0
	movs r0, #0x1a
	subs r1, r0, r1
	movs r0, #0x18
	movs r2, #0
	subs r0, r0, r1
_021DCD8C:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r4, [r3, #0x18]
	ldr r0, [r3, #4]
	ldr r3, [r3, #0x30]
	adds r4, #0xc
	lsls r3, r3, #0x18
	movs r1, #2
	adds r2, r4, r2
	lsrs r3, r3, #0x18
	bl FUN_020198C0
_021DCDB0:
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov19_021DCD64

	thumb_func_start ov19_021DCDB4
ov19_021DCDB4: @ 0x021DCDB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0
	ldr r1, _021DCE4C @ =0x021E0234
	mov ip, r0
_021DCDC2:
	ldrh r3, [r1]
	ldrh r2, [r1, #4]
	movs r0, #0
	ldrh r4, [r1, #2]
	subs r2, r3, r2
	lsls r3, r2, #0xc
	asrs r2, r3, #2
	lsrs r2, r2, #0x1d
	adds r2, r3, r2
	ldrh r3, [r1, #6]
	asrs r2, r2, #3
	mov lr, r2
	subs r3, r4, r3
	lsls r4, r3, #0xc
	asrs r3, r4, #2
	lsrs r3, r3, #0x1d
	adds r3, r4, r3
	ldr r2, [sp, #4]
	adds r6, r0, #0
	asrs r7, r3, #3
	adds r5, r0, #0
_021DCDEC:
	ldr r3, [sp]
	adds r5, r5, r7
	ldr r4, [r3, #0x34]
	ldrh r3, [r1, #4]
	adds r0, r0, #1
	adds r3, r4, r3
	lsls r4, r3, #0xc
	mov r3, lr
	adds r6, r6, r3
	adds r3, r4, r6
	str r3, [r2]
	ldrh r3, [r1, #6]
	lsls r3, r3, #0xc
	adds r3, r3, r5
	str r3, [r2, #4]
	movs r3, #0
	str r3, [r2, #8]
	adds r2, #0xc
	cmp r0, #7
	blo _021DCDEC
	ldr r3, [sp]
	movs r2, #0xc
	ldr r4, [r3, #0x34]
	ldrh r3, [r1]
	muls r2, r0, r2
	ldr r0, [sp, #4]
	adds r3, r4, r3
	lsls r4, r3, #0xc
	ldr r3, [sp, #4]
	adds r0, r0, r2
	str r4, [r3, r2]
	ldrh r2, [r1, #2]
	adds r1, r1, #4
	lsls r2, r2, #0xc
	str r2, [r0, #4]
	movs r2, #0
	str r2, [r0, #8]
	adds r0, r3, #0
	adds r0, #0x60
	str r0, [sp, #4]
	mov r0, ip
	adds r0, r0, #1
	mov ip, r0
	cmp r0, #5
	blo _021DCDC2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DCE4C: .4byte 0x021E0234
	thumb_func_end ov19_021DCDB4

	thumb_func_start ov19_021DCE50
ov19_021DCE50: @ 0x021DCE50
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r1, #0
	movs r7, #0
_021DCE5A:
	ldr r0, [r5, #0x3c]
	cmp r0, #0
	beq _021DCEB2
	bl FUN_02021D28
	adds r6, r0, #0
	add r3, sp, #0
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r6]
	adds r1, r2, #0
	str r0, [r3]
	ldr r0, [sp, #4]
	adds r0, r0, r4
	str r0, [sp, #4]
	ldr r0, [r5, #0x3c]
	bl FUN_02021C50
	cmp r4, #0
	bge _021DCE98
	movs r0, #0xd
	ldr r1, [sp, #4]
	lsls r0, r0, #0x10
	cmp r1, r0
	bge _021DCEAA
	ldr r0, [r5, #0x3c]
	movs r1, #1
	bl FUN_02021CAC
	b _021DCEAA
_021DCE98:
	movs r0, #0xd
	ldr r1, [sp, #4]
	lsls r0, r0, #0x10
	cmp r1, r0
	blt _021DCEAA
	ldr r0, [r5, #0x3c]
	movs r1, #0
	bl FUN_02021CAC
_021DCEAA:
	adds r7, r7, #1
	adds r5, #0x34
	cmp r7, #6
	blt _021DCE5A
_021DCEB2:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov19_021DCE50

	thumb_func_start ov19_021DCEB8
ov19_021DCEB8: @ 0x021DCEB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #0x24]
	str r1, [sp, #0x10]
	cmp r1, #0
	beq _021DCECA
	movs r0, #0
	str r0, [sp, #0x14]
	b _021DCECE
_021DCECA:
	movs r0, #0xd0
	str r0, [sp, #0x14]
_021DCECE:
	ldr r0, [sp, #0x24]
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #4]
	bl FUN_0207A0F8
	movs r4, #0
	str r0, [sp, #0x20]
	cmp r0, #0
	ble _021DCF44
	ldr r0, [sp, #0x24]
	ldr r7, _021DCF48 @ =0x00000418
	str r0, [sp, #0x1c]
	adds r0, #0x3c
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	ldr r5, _021DCF4C @ =0x021E0234
	str r0, [sp, #0x18]
_021DCEF0:
	ldr r0, [sp, #0x24]
	adds r1, r4, #0
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #4]
	bl FUN_0207A0FC
	adds r1, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #4
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x24]
	ldr r0, [sp, #0x24]
	ldr r3, [r2, #0x34]
	ldrh r2, [r5]
	ldrh r6, [r5, #2]
	ldr r0, [r0, #0x38]
	adds r2, r3, r2
	ldr r3, [sp, #0x14]
	adds r3, r3, r6
	bl ov19_021DA428
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0x3c]
	bl FUN_02021CAC
	ldr r0, [sp, #0x1c]
	adds r4, r4, #1
	adds r0, #0x34
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	adds r7, #0x20
	adds r0, #0x34
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r5, r5, #4
	cmp r4, r0
	blt _021DCEF0
_021DCF44:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DCF48: .4byte 0x00000418
_021DCF4C: .4byte 0x021E0234
	thumb_func_end ov19_021DCEB8

	thumb_func_start ov19_021DCF50
ov19_021DCF50: @ 0x021DCF50
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, [r7, #0xc]
	ldr r0, [r0, #4]
	bl FUN_0207A0F8
	movs r6, #0
	str r0, [sp]
	cmp r0, #0
	ble _021DCF86
	adds r5, r7, #0
	adds r4, r7, #0
	adds r5, #0x3c
_021DCF6A:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _021DCF7A
	ldr r0, [r7, #0x38]
	adds r1, r5, #0
	movs r2, #1
	bl ov19_021DA3F0
_021DCF7A:
	ldr r0, [sp]
	adds r6, r6, #1
	adds r4, #0x34
	adds r5, #0x34
	cmp r6, r0
	blt _021DCF6A
_021DCF86:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DCF50

	thumb_func_start ov19_021DCF88
ov19_021DCF88: @ 0x021DCF88
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r2, #0
	adds r6, r0, #0
	adds r0, r5, #0
	adds r7, r1, #0
	str r3, [sp]
	bl ov19_021D5E08
	cmp r0, #4
	bne _021DCFA4
	movs r0, #0
	str r0, [r6]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DCFA4:
	movs r0, #0xa
	movs r1, #0xf4
	bl FUN_02018144
	adds r4, r0, #0
	beq _021DD020
	ldr r0, [sp]
	movs r1, #0xa
	str r0, [r4, #8]
	str r7, [r4]
	ldr r0, [sp, #0x18]
	str r5, [r4, #4]
	str r0, [r4, #0xc]
	movs r0, #0
	str r0, [r4, #0x14]
	movs r0, #0x20
	bl FUN_02023790
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
	adds r5, #0x9c
	ldrb r0, [r5]
	movs r1, #0
	adds r2, r1, #0
	str r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x98
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xa0
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xa8
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xb0
	str r1, [r0]
	str r1, [r4, #0x2c]
	str r1, [r4, #0x30]
	adds r0, r4, #0
_021DCFF6:
	adds r1, r1, #1
	str r2, [r0, #0x34]
	adds r0, r0, #4
	cmp r1, #8
	blt _021DCFF6
	adds r0, r4, #0
	movs r1, #0
_021DD004:
	adds r2, r2, #1
	str r1, [r0, #0x54]
	adds r0, r0, #4
	cmp r2, #0xa
	blt _021DD004
	adds r0, r4, #0
	adds r0, #0x80
	str r1, [r0]
	adds r0, r4, #0
	bl ov19_021DD024
	str r4, [r6]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DD020:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DCF88

	thumb_func_start ov19_021DD024
ov19_021DD024: @ 0x021DD024
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r6, #0
	adds r0, #0xd4
	strb r6, [r0]
	adds r0, r5, #0
	movs r1, #0x10
	adds r0, #0xe4
	strb r1, [r0]
	movs r4, #1
	adds r7, r1, #0
_021DD03A:
	movs r0, #0x5a
	lsls r0, r0, #8
	adds r6, r6, r0
	lsls r0, r6, #4
	lsrs r0, r0, #0x10
	bl FUN_0201D15C
	lsls r0, r0, #4
	asrs r1, r0, #0xc
	adds r0, r5, r4
	adds r0, #0xd4
	strb r1, [r0]
	adds r0, r5, r4
	adds r0, #0xd4
	ldrb r0, [r0]
	subs r1, r7, r0
	adds r0, r5, r4
	adds r0, #0xe4
	adds r4, r4, #1
	strb r1, [r0]
	cmp r4, #0xf
	blt _021DD03A
	adds r0, r5, r4
	movs r1, #0x10
	adds r0, #0xd4
	strb r1, [r0]
	adds r0, r5, r4
	movs r1, #0
	adds r0, #0xe4
	strb r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DD024

	thumb_func_start ov19_021DD078
ov19_021DD078: @ 0x021DD078
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	beq _021DD110
	adds r0, #0x88
	bl FUN_0201A8FC
	adds r0, r6, #0
	adds r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _021DD092
	bl FUN_020181C4
_021DD092:
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r0, [r0]
	cmp r0, #0
	beq _021DD0A0
	bl FUN_020181C4
_021DD0A0:
	adds r0, r6, #0
	adds r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	beq _021DD0AE
	bl FUN_020181C4
_021DD0AE:
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r0, [r0]
	cmp r0, #0
	beq _021DD0BC
	bl FUN_020181C4
_021DD0BC:
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	beq _021DD0C6
	bl FUN_02021BD4
_021DD0C6:
	ldr r0, [r6, #0x30]
	cmp r0, #0
	beq _021DD0D0
	bl FUN_02021BD4
_021DD0D0:
	adds r0, r6, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _021DD0DE
	bl FUN_020237BC
_021DD0DE:
	movs r4, #0
	adds r5, r6, #0
_021DD0E2:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _021DD0EC
	bl FUN_02021BD4
_021DD0EC:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #8
	blt _021DD0E2
	movs r5, #0
	adds r4, r6, #0
_021DD0F8:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _021DD102
	bl FUN_02021BD4
_021DD102:
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #0xa
	blt _021DD0F8
	adds r0, r6, #0
	bl FUN_020181C4
_021DD110:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov19_021DD078

	thumb_func_start ov19_021DD114
ov19_021DD114: @ 0x021DD114
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r5, #0
	beq _021DD21A
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r5, #8]
	adds r0, r4, #0
	movs r1, #0x7f
	movs r3, #7
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r5, #8]
	adds r0, r4, #0
	movs r1, #0x7c
	movs r3, #7
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r5, #8]
	adds r0, r4, #0
	movs r1, #0x7d
	movs r3, #6
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r5, #8]
	adds r0, r4, #0
	movs r1, #0x7e
	movs r3, #5
	bl FUN_0200710C
	movs r2, #0
	str r2, [sp]
	ldr r0, [r5, #8]
	movs r1, #4
	movs r3, #1
	bl FUN_020196C0
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r5, #8]
	movs r1, #4
	adds r3, r2, #0
	bl FUN_02019CB8
	ldr r0, [r5, #8]
	movs r1, #4
	bl FUN_02019448
	ldr r3, [r5, #0x10]
	ldr r0, [r5, #8]
	lsls r6, r3, #2
	ldr r3, _021DD220 @ =0x021E0258
	movs r1, #5
	ldr r3, [r3, r6]
	movs r2, #0
	bl FUN_02019184
	movs r3, #0
	str r3, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	adds r1, r5, #0
	ldr r0, [r5, #8]
	adds r1, #0x88
	movs r2, #4
	bl FUN_0201A7E8
	adds r0, r5, #0
	adds r0, #0x88
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r0, #0x88
	bl FUN_0201A954
	adds r0, r5, #0
	bl ov19_021DE324
	movs r0, #0x60
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #4
	movs r3, #0
	bl FUN_02007130
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov19_021DD224
_021DD21A:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021DD220: .4byte 0x021E0258
	thumb_func_end ov19_021DD114

	thumb_func_start ov19_021DD224
ov19_021DD224: @ 0x021DD224
	push {r4, r5, lr}
	sub sp, #0x5c
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov19_021DD2BC
	add r0, sp, #0x14
	blx FUN_020A818C
	movs r3, #0
	str r3, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r3, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	add r0, sp, #0x14
	str r0, [sp, #0x10]
	adds r0, r4, #0
	movs r1, #0x8a
	movs r2, #1
	bl FUN_0200718C
	adds r0, r5, #0
	adds r0, #0xa4
	ldr r0, [r0]
	adds r3, r5, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	adds r3, #0x9c
	adds r2, r5, #0
	ldr r3, [r3]
	add r0, sp, #0x38
	add r1, sp, #0x14
	adds r2, #0x18
	bl ov19_021D783C
	movs r0, #0x31
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r3, #0x8e
	ldr r0, [r5, #0xc]
	add r1, sp, #0x38
	movs r2, #0
	lsls r3, r3, #2
	bl ov19_021D785C
	str r0, [r5, #0x2c]
	movs r0, #0x31
	movs r3, #0x8e
	str r0, [sp]
	movs r2, #2
	str r2, [sp, #4]
	ldr r0, [r5, #0xc]
	add r1, sp, #0x38
	adds r2, #0xfe
	lsls r3, r3, #2
	bl ov19_021D785C
	str r0, [r5, #0x30]
	movs r1, #1
	bl FUN_02021D0C
	ldr r0, [r5, #4]
	bl ov19_021D5E08
	cmp r0, #3
	bne _021DD2B8
	ldr r0, [r5, #0x30]
	movs r1, #1
	bl FUN_02021D6C
_021DD2B8:
	add sp, #0x5c
	pop {r4, r5, pc}
	thumb_func_end ov19_021DD224

	thumb_func_start ov19_021DD2BC
ov19_021DD2BC: @ 0x021DD2BC
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0xa
	adds r3, r5, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x8b
	movs r2, #1
	adds r3, #0x9c
	bl FUN_02007204
	adds r1, r5, #0
	adds r1, #0x98
	str r0, [r1]
	movs r0, #0xa
	adds r3, r5, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x8c
	movs r2, #1
	adds r3, #0xa4
	bl FUN_02007220
	adds r1, r5, #0
	adds r1, #0xa0
	str r0, [r1]
	movs r0, #0xa
	adds r3, r5, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x8e
	movs r2, #1
	adds r3, #0xac
	bl FUN_02007204
	adds r1, r5, #0
	adds r1, #0xa8
	str r0, [r1]
	movs r0, #0xa
	adds r3, r5, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x8f
	movs r2, #1
	adds r3, #0xb4
	bl FUN_02007220
	adds r1, r5, #0
	adds r1, #0xb0
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x18
	blx FUN_020A81D0
	movs r0, #0xa
	str r0, [sp]
	adds r5, #0x18
	adds r0, r4, #0
	movs r1, #0x90
	movs r2, #2
	movs r3, #0
	str r5, [sp, #4]
	bl FUN_0200716C
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021DD2BC

	thumb_func_start ov19_021DD344
ov19_021DD344: @ 0x021DD344
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	movs r2, #0
	bl ov19_021D77C8
	str r0, [r4, #0x14]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021DD344

	thumb_func_start ov19_021DD358
ov19_021DD358: @ 0x021DD358
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	bl FUN_0200DA58
	movs r0, #0
	str r0, [r4, #0x14]
	pop {r4, pc}
	thumb_func_end ov19_021DD358

	thumb_func_start ov19_021DD368
ov19_021DD368: @ 0x021DD368
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _021DD372
	movs r0, #1
	bx lr
_021DD372:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov19_021DD368

	thumb_func_start ov19_021DD378
ov19_021DD378: @ 0x021DD378
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	beq _021DD44A
	ldr r1, [r5, #4]
	adds r1, #0x9c
	ldrb r6, [r1]
	ldr r1, [r5, #0x10]
	cmp r1, r6
	beq _021DD44A
	adds r1, r5, #0
	adds r4, r5, #0
	adds r1, #0xb8
	str r5, [r1]
	adds r4, #0xb8
	movs r1, #0
	str r1, [r4, #8]
	str r1, [r4, #4]
	cmp r6, #0
	beq _021DD3A8
	cmp r6, #1
	beq _021DD3C0
	cmp r6, #2
	beq _021DD3E2
	b _021DD40A
_021DD3A8:
	movs r1, #8
	strh r1, [r4, #0xc]
	ldr r7, _021DD44C @ =ov19_021DD670
	bl ov19_021DD998
	adds r0, r5, #0
	bl ov19_021DDA7C
	adds r0, r5, #0
	bl ov19_021DE324
	b _021DD412
_021DD3C0:
	movs r0, #8
	strh r0, [r4, #0xc]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _021DD3CE
	ldr r7, _021DD450 @ =ov19_021DD46C
	b _021DD3D6
_021DD3CE:
	ldrh r0, [r4, #0xc]
	ldr r7, _021DD454 @ =ov19_021DD544
	adds r0, #8
	strh r0, [r4, #0xc]
_021DD3D6:
	adds r0, r5, #0
	bl ov19_021DDA7C
	ldr r0, [r5, #0x2c]
	str r0, [r4, #8]
	b _021DD412
_021DD3E2:
	movs r0, #8
	strh r0, [r4, #0xc]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _021DD3F0
	ldr r7, _021DD450 @ =ov19_021DD46C
	b _021DD3F8
_021DD3F0:
	ldrh r0, [r4, #0xc]
	ldr r7, _021DD454 @ =ov19_021DD544
	adds r0, #8
	strh r0, [r4, #0xc]
_021DD3F8:
	ldr r0, [r5, #0x30]
	str r0, [r4, #8]
	adds r0, r5, #0
	bl ov19_021DD998
	adds r0, r5, #0
	bl ov19_021DE324
	b _021DD412
_021DD40A:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_021DD412:
	str r6, [r5, #0x10]
	ldr r0, [r5, #8]
	movs r1, #5
	bl FUN_020192EC
	lsls r0, r0, #0xc
	ldr r1, _021DD458 @ =0x021E0258
	lsls r2, r6, #2
	str r0, [r4, #0x10]
	ldr r6, [r1, r2]
	ldrh r1, [r4, #0xc]
	subs r0, r6, r0
	blx FUN_020E1F6C
	str r0, [r4, #0x14]
	asrs r0, r6, #0xc
	str r0, [r4, #0x18]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021DD440
	movs r1, #1
	bl FUN_02021D6C
_021DD440:
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl ov19_021DD344
_021DD44A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DD44C: .4byte ov19_021DD670
_021DD450: .4byte ov19_021DD46C
_021DD454: .4byte ov19_021DD544
_021DD458: .4byte 0x021E0258
	thumb_func_end ov19_021DD378

	thumb_func_start ov19_021DD45C
ov19_021DD45C: @ 0x021DD45C
	push {r3, lr}
	cmp r0, #0
	beq _021DD468
	bl ov19_021DD368
	pop {r3, pc}
_021DD468:
	movs r0, #1
	pop {r3, pc}
	thumb_func_end ov19_021DD45C

	thumb_func_start ov19_021DD46C
ov19_021DD46C: @ 0x021DD46C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r0, [r4, #4]
	ldr r5, [r4]
	cmp r0, #3
	bhi _021DD534
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DD484: @ jump table
	.2byte _021DD48C - _021DD484 - 2 @ case 0
	.2byte _021DD49E - _021DD484 - 2 @ case 1
	.2byte _021DD4E4 - _021DD484 - 2 @ case 2
	.2byte _021DD502 - _021DD484 - 2 @ case 3
_021DD48C:
	ldr r0, [r4, #8]
	bl FUN_02021FD0
	cmp r0, #0
	bne _021DD534
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021DD49E:
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	beq _021DD4C0
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x14]
	movs r2, #0
	adds r3, r1, r0
	str r3, [r4, #0x10]
	ldr r0, [r5, #8]
	movs r1, #5
	asrs r3, r3, #0xc
	bl FUN_02019184
	ldrh r0, [r4, #0xc]
	subs r0, r0, #1
	strh r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_021DD4C0:
	ldr r0, [r5, #8]
	ldr r3, [r4, #0x18]
	movs r1, #5
	movs r2, #0
	bl FUN_02019184
	movs r0, #0x10
	str r0, [sp]
	ldr r0, _021DD538 @ =0x04001050
	movs r1, #4
	movs r2, #8
	movs r3, #0
	blx FUN_020BF55C
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021DD4E4:
	ldr r3, [r5, #0x10]
	ldr r0, [r5, #8]
	lsls r5, r3, #2
	ldr r3, _021DD53C @ =0x021E024C
	movs r1, #6
	ldr r3, [r3, r5]
	movs r2, #0
	bl FUN_02019184
	movs r0, #0
	strh r0, [r4, #0xe]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021DD502:
	movs r1, #0xe
	ldrsh r3, [r4, r1]
	adds r0, r5, r3
	adds r0, #0xd4
	ldrb r2, [r0]
	adds r0, r5, r3
	adds r0, #0xe4
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r2, r0
	ldr r0, _021DD540 @ =0x04001052
	strh r2, [r0]
	ldrsh r0, [r4, r1]
	adds r0, r0, #1
	strh r0, [r4, #0xe]
	ldrsh r0, [r4, r1]
	cmp r0, #0x10
	blt _021DD534
	ldr r0, [r4, #8]
	movs r1, #0
	bl FUN_02021D6C
	adds r0, r5, #0
	bl ov19_021DD358
_021DD534:
	pop {r3, r4, r5, pc}
	nop
_021DD538: .4byte 0x04001050
_021DD53C: .4byte 0x021E024C
_021DD540: .4byte 0x04001052
	thumb_func_end ov19_021DD46C

	thumb_func_start ov19_021DD544
ov19_021DD544: @ 0x021DD544
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r0, [r4, #4]
	ldr r5, [r4]
	cmp r0, #4
	bls _021DD552
	b _021DD662
_021DD552:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DD55E: @ jump table
	.2byte _021DD568 - _021DD55E - 2 @ case 0
	.2byte _021DD58E - _021DD55E - 2 @ case 1
	.2byte _021DD5CC - _021DD55E - 2 @ case 2
	.2byte _021DD612 - _021DD55E - 2 @ case 3
	.2byte _021DD630 - _021DD55E - 2 @ case 4
_021DD568:
	ldr r0, [r4, #8]
	bl FUN_02021FD0
	cmp r0, #0
	bne _021DD662
	movs r0, #0
	str r0, [sp]
	ldr r0, _021DD664 @ =0x04001050
	movs r1, #4
	movs r2, #8
	movs r3, #0x10
	blx FUN_020BF55C
	movs r0, #0xf
	strh r0, [r4, #0xe]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021DD58E:
	movs r1, #0xe
	ldrsh r0, [r4, r1]
	subs r0, r0, #1
	strh r0, [r4, #0xe]
	ldrsh r3, [r4, r1]
	adds r0, r5, r3
	adds r0, #0xd4
	ldrb r2, [r0]
	adds r0, r5, r3
	adds r0, #0xe4
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r2, r0
	ldr r0, _021DD668 @ =0x04001052
	strh r2, [r0]
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _021DD662
	ldr r3, [r5, #0x10]
	ldr r0, [r5, #8]
	lsls r5, r3, #2
	ldr r3, _021DD66C @ =0x021E024C
	movs r1, #6
	ldr r3, [r3, r5]
	movs r2, #0
	bl FUN_02019184
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021DD5CC:
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	beq _021DD5EE
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x14]
	movs r2, #0
	adds r3, r1, r0
	str r3, [r4, #0x10]
	ldr r0, [r5, #8]
	movs r1, #5
	asrs r3, r3, #0xc
	bl FUN_02019184
	ldrh r0, [r4, #0xc]
	subs r0, r0, #1
	strh r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_021DD5EE:
	ldr r0, [r5, #8]
	ldr r3, [r4, #0x18]
	movs r1, #5
	movs r2, #0
	bl FUN_02019184
	movs r0, #0x10
	str r0, [sp]
	ldr r0, _021DD664 @ =0x04001050
	movs r1, #4
	movs r2, #8
	movs r3, #0
	blx FUN_020BF55C
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021DD612:
	ldr r3, [r5, #0x10]
	ldr r0, [r5, #8]
	lsls r5, r3, #2
	ldr r3, _021DD66C @ =0x021E024C
	movs r1, #6
	ldr r3, [r3, r5]
	movs r2, #0
	bl FUN_02019184
	movs r0, #0
	strh r0, [r4, #0xe]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021DD630:
	movs r1, #0xe
	ldrsh r3, [r4, r1]
	adds r0, r5, r3
	adds r0, #0xd4
	ldrb r2, [r0]
	adds r0, r5, r3
	adds r0, #0xe4
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r2, r0
	ldr r0, _021DD668 @ =0x04001052
	strh r2, [r0]
	ldrsh r0, [r4, r1]
	adds r0, r0, #1
	strh r0, [r4, #0xe]
	ldrsh r0, [r4, r1]
	cmp r0, #0x10
	blt _021DD662
	ldr r0, [r4, #8]
	movs r1, #0
	bl FUN_02021D6C
	adds r0, r5, #0
	bl ov19_021DD358
_021DD662:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021DD664: .4byte 0x04001050
_021DD668: .4byte 0x04001052
_021DD66C: .4byte 0x021E024C
	thumb_func_end ov19_021DD544

	thumb_func_start ov19_021DD670
ov19_021DD670: @ 0x021DD670
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r1, [r4, #4]
	ldr r0, [r4]
	cmp r1, #3
	bhi _021DD70C
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021DD688: @ jump table
	.2byte _021DD690 - _021DD688 - 2 @ case 0
	.2byte _021DD69A - _021DD688 - 2 @ case 1
	.2byte _021DD6D2 - _021DD688 - 2 @ case 2
	.2byte _021DD708 - _021DD688 - 2 @ case 3
_021DD690:
	movs r1, #0xf
	strh r1, [r4, #0xe]
	ldr r1, [r4, #4]
	adds r1, r1, #1
	str r1, [r4, #4]
_021DD69A:
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	subs r1, r1, #1
	strh r1, [r4, #0xe]
	ldrsh r5, [r4, r2]
	adds r1, r0, r5
	adds r1, #0xd4
	ldrb r3, [r1]
	adds r1, r0, r5
	adds r1, #0xe4
	ldrb r1, [r1]
	lsls r1, r1, #8
	orrs r3, r1
	ldr r1, _021DD710 @ =0x04001052
	strh r3, [r1]
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bne _021DD70C
	movs r2, #0
	ldr r0, [r0, #8]
	movs r1, #6
	adds r3, r2, #0
	bl FUN_02019184
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021DD6D2:
	ldrh r1, [r4, #0xc]
	cmp r1, #0
	beq _021DD6F4
	ldr r2, [r4, #0x10]
	ldr r1, [r4, #0x14]
	adds r3, r2, r1
	str r3, [r4, #0x10]
	ldr r0, [r0, #8]
	movs r1, #5
	movs r2, #0
	asrs r3, r3, #0xc
	bl FUN_02019184
	ldrh r0, [r4, #0xc]
	subs r0, r0, #1
	strh r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_021DD6F4:
	ldr r0, [r0, #8]
	ldr r3, [r4, #0x18]
	movs r1, #5
	movs r2, #0
	bl FUN_02019184
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021DD708:
	bl ov19_021DD358
_021DD70C:
	pop {r3, r4, r5, pc}
	nop
_021DD710: .4byte 0x04001052
	thumb_func_end ov19_021DD670

	thumb_func_start ov19_021DD714
ov19_021DD714: @ 0x021DD714
	push {r4, lr}
	adds r4, r0, #0
	beq _021DD73C
	ldr r1, [r4, #0x10]
	cmp r1, #1
	beq _021DD726
	cmp r1, #2
	beq _021DD732
	pop {r4, pc}
_021DD726:
	bl ov19_021DD854
	adds r0, r4, #0
	bl ov19_021DDD80
	pop {r4, pc}
_021DD732:
	bl ov19_021DD9DC
	adds r0, r4, #0
	bl ov19_021DE0A0
_021DD73C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021DD714

	thumb_func_start ov19_021DD740
ov19_021DD740: @ 0x021DD740
	push {r4, lr}
	adds r4, r0, #0
	beq _021DD762
	bl ov19_021DD368
	cmp r0, #0
	beq _021DD75E
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _021DD75A
	adds r0, r4, #0
	bl ov19_021DE350
_021DD75A:
	movs r0, #1
	pop {r4, pc}
_021DD75E:
	movs r0, #0
	pop {r4, pc}
_021DD762:
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021DD740

	thumb_func_start ov19_021DD768
ov19_021DD768: @ 0x021DD768
	push {r4, lr}
	adds r4, r0, #0
	beq _021DD790
	ldr r1, [r4, #0x10]
	cmp r1, #1
	beq _021DD77A
	cmp r1, #2
	beq _021DD78C
	pop {r4, pc}
_021DD77A:
	bl ov19_021DE324
	adds r0, r4, #0
	bl ov19_021DD8F8
	adds r0, r4, #0
	bl ov19_021DDFA8
	pop {r4, pc}
_021DD78C:
	bl ov19_021DE2A4
_021DD790:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021DD768

	thumb_func_start ov19_021DD794
ov19_021DD794: @ 0x021DD794
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl ov19_021D5EB0
	cmp r0, #0
	ble _021DD7C4
	adds r2, r4, #0
	adds r2, #0x80
	ldr r2, [r2]
	adds r1, r4, #0
	subs r2, r2, r0
	adds r0, r4, #0
	adds r0, #0x80
	adds r4, #0x80
	str r2, [r0]
	ldr r0, [r4]
	adds r1, #0x80
	cmp r0, #0
	bge _021DD7E4
	ldr r0, [r1]
	adds r0, #0xa
	str r0, [r1]
	pop {r4, pc}
_021DD7C4:
	adds r2, r4, #0
	adds r2, #0x80
	ldr r2, [r2]
	adds r1, r4, #0
	subs r2, r2, r0
	adds r0, r4, #0
	adds r0, #0x80
	adds r4, #0x80
	str r2, [r0]
	ldr r0, [r4]
	adds r1, #0x80
	cmp r0, #0xa
	blt _021DD7E4
	ldr r0, [r1]
	subs r0, #0xa
	str r0, [r1]
_021DD7E4:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021DD794

	thumb_func_start ov19_021DD7E8
ov19_021DD7E8: @ 0x021DD7E8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl ov19_021D5EB0
	adds r2, r4, #0
	adds r2, #0x80
	ldr r2, [r2]
	adds r1, r4, #0
	adds r2, r2, r0
	adds r0, r4, #0
	adds r0, #0x80
	adds r4, #0x80
	str r2, [r0]
	ldr r0, [r4]
	adds r1, #0x80
	cmp r0, #0
	bge _021DD814
	ldr r0, [r1]
	adds r0, #8
	str r0, [r1]
	pop {r4, pc}
_021DD814:
	cmp r0, #8
	blt _021DD81E
	ldr r0, [r1]
	subs r0, #8
	str r0, [r1]
_021DD81E:
	pop {r4, pc}
	thumb_func_end ov19_021DD7E8

	thumb_func_start ov19_021DD820
ov19_021DD820: @ 0x021DD820
	push {r4, lr}
	adds r4, r0, #0
	beq _021DD850
	bl ov19_021DD368
	cmp r0, #0
	beq _021DD84C
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _021DD842
	adds r0, r4, #0
	bl ov19_021DE350
	adds r0, r4, #0
	bl ov19_021DD794
	b _021DD848
_021DD842:
	adds r0, r4, #0
	bl ov19_021DD7E8
_021DD848:
	movs r0, #1
	pop {r4, pc}
_021DD84C:
	movs r0, #0
	pop {r4, pc}
_021DD850:
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov19_021DD820

	thumb_func_start ov19_021DD854
ov19_021DD854: @ 0x021DD854
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	str r0, [sp, #8]
	ldr r0, [r0]
	bl ov19_021D780C
	adds r7, r0, #0
	ldr r0, [sp, #8]
	ldr r0, [r0, #4]
	bl ov19_021D5EB8
	adds r4, r0, #3
	cmp r4, #0x12
	blt _021DD872
	subs r4, #0x12
_021DD872:
	ldr r5, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r5, #0
	str r0, [sp, #0x10]
	adds r0, #0x18
	movs r6, #0xc0
	str r0, [sp, #0x10]
_021DD882:
	add r0, sp, #0x14
	blx FUN_020A818C
	add r0, sp, #0x14
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #2
	bl ov19_021DBBA8
	adds r0, r7, #0
	bl ov19_021DBD3C
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x10]
	add r0, sp, #0x38
	add r1, sp, #0x14
	bl ov19_021D783C
	movs r0, #0x30
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	movs r3, #0x17
	ldr r0, [r0, #0xc]
	add r1, sp, #0x38
	movs r2, #0x10
	lsls r3, r3, #4
	bl ov19_021D785C
	str r0, [r5, #0x54]
	cmp r0, #0
	bne _021DD8D4
	bl FUN_02022974
_021DD8D4:
	subs r4, r4, #1
	bpl _021DD8DA
	movs r4, #0x11
_021DD8DA:
	ldr r0, [sp, #0xc]
	adds r6, #0x20
	adds r0, r0, #1
	adds r5, r5, #4
	str r0, [sp, #0xc]
	cmp r0, #0xa
	blt _021DD882
	ldr r0, [sp, #8]
	movs r1, #0
	adds r0, #0x80
	str r0, [sp, #8]
	str r1, [r0]
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov19_021DD854

	thumb_func_start ov19_021DD8F8
ov19_021DD8F8: @ 0x021DD8F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #4]
	ldr r0, [r0]
	bl ov19_021D780C
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	bl ov19_021D5EB8
	ldr r1, [sp, #4]
	ldr r2, [r1, #4]
	movs r1, #0xa0
	ldrsh r7, [r2, r1]
	cmp r7, #0
	ble _021DD934
	subs r0, r0, r7
	adds r5, r0, #4
	cmp r5, #0x12
	blt _021DD924
	subs r5, #0x12
_021DD924:
	ldr r0, [sp, #4]
	movs r6, #1
	adds r0, #0x80
	ldr r0, [r0]
	subs r4, r0, #1
	bpl _021DD950
	adds r4, #0xa
	b _021DD950
_021DD934:
	subs r0, r0, r7
	subs r5, r0, #3
	bpl _021DD93C
	adds r5, #0x12
_021DD93C:
	ldr r0, [sp, #4]
	movs r6, #0
	adds r0, #0x80
	ldr r0, [r0]
	mvns r6, r6
	adds r4, r0, #6
	cmp r4, #0xa
	blt _021DD94E
	subs r4, #0xa
_021DD94E:
	rsbs r7, r7, #0
_021DD950:
	ldr r0, [sp, #4]
	str r7, [r0, #0x7c]
	movs r0, #0
	str r0, [sp, #8]
	cmp r7, #0
	ble _021DD994
_021DD95C:
	movs r0, #0
	str r0, [sp]
	lsls r2, r4, #5
	ldr r0, [sp, #0xc]
	adds r1, r5, #0
	adds r2, #0xc0
	movs r3, #2
	bl ov19_021DBBA8
	adds r5, r5, r6
	bpl _021DD976
	movs r5, #0x11
	b _021DD97C
_021DD976:
	cmp r5, #0x12
	blt _021DD97C
	movs r5, #0
_021DD97C:
	subs r4, r4, r6
	bpl _021DD984
	movs r4, #9
	b _021DD98A
_021DD984:
	cmp r4, #0xa
	blt _021DD98A
	movs r4, #0
_021DD98A:
	ldr r0, [sp, #8]
	adds r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r7
	blt _021DD95C
_021DD994:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DD8F8

	thumb_func_start ov19_021DD998
ov19_021DD998: @ 0x021DD998
	push {r4, r5, r6, lr}
	movs r4, #0
	adds r5, r0, #0
	adds r6, r4, #0
_021DD9A0:
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _021DD9AC
	bl FUN_02021BD4
	str r6, [r5, #0x54]
_021DD9AC:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0xa
	blt _021DD9A0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov19_021DD998

	thumb_func_start ov19_021DD9B8
ov19_021DD9B8: @ 0x021DD9B8
	cmp r0, #0
	bne _021DD9C8
	cmp r1, #0
	bne _021DD9C4
	movs r0, #1
	bx lr
_021DD9C4:
	movs r0, #0
	bx lr
_021DD9C8:
	movs r3, #1
	subs r2, r0, #1
	lsls r3, r2
	tst r1, r3
	beq _021DD9D8
	lsls r0, r0, #1
	adds r0, r0, #1
	bx lr
_021DD9D8:
	lsls r0, r0, #1
	bx lr
	thumb_func_end ov19_021DD9B8

	thumb_func_start ov19_021DD9DC
ov19_021DD9DC: @ 0x021DD9DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	adds r5, r0, #0
	ldr r0, [r5, #4]
	bl ov19_021D5EC8
	str r0, [sp, #0x14]
	add r0, sp, #0x18
	blx FUN_020A818C
	movs r3, #0
	str r3, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #6
	lsls r0, r0, #0xa
	str r0, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	add r0, sp, #0x18
	str r0, [sp, #0x10]
	movs r0, #0x12
	movs r1, #0x8d
	movs r2, #1
	bl FUN_02006F00
	adds r7, r5, #0
	movs r6, #0
	adds r4, r5, #0
	adds r7, #0x18
_021DDA18:
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r3, r5, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r3, #0xac
	ldr r3, [r3]
	add r0, sp, #0x3c
	add r1, sp, #0x18
	adds r2, r7, #0
	bl ov19_021D783C
	movs r0, #0x30
	str r0, [sp]
	movs r0, #2
	movs r2, #0xf0
	str r0, [sp, #4]
	adds r3, r2, #0
	ldr r0, [r5, #0xc]
	add r1, sp, #0x3c
	adds r3, #0x80
	bl ov19_021D785C
	str r0, [r4, #0x34]
	cmp r0, #0
	bne _021DDA54
	bl FUN_02022974
_021DDA54:
	ldr r1, [sp, #0x14]
	adds r0, r6, #0
	bl ov19_021DD9B8
	adds r1, r0, #0
	ldr r0, [r4, #0x34]
	bl FUN_02021D6C
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #8
	blt _021DDA18
	ldr r0, [r5, #4]
	bl ov19_021D5EC0
	adds r5, #0x80
	str r0, [r5]
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov19_021DD9DC

	thumb_func_start ov19_021DDA7C
ov19_021DDA7C: @ 0x021DDA7C
	push {r4, r5, r6, lr}
	movs r4, #0
	adds r5, r0, #0
	adds r6, r4, #0
_021DDA84:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _021DDA90
	bl FUN_02021BD4
	str r6, [r5, #0x34]
_021DDA90:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #8
	blt _021DDA84
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov19_021DDA7C

	thumb_func_start ov19_021DDA9C
ov19_021DDA9C: @ 0x021DDA9C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	beq _021DDAB2
	subs r0, r0, #1
	add sp, #0xc
	strh r0, [r4, #0x16]
	pop {r4, r5, pc}
_021DDAB2:
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _021DDAE8
	subs r0, r0, #1
	strh r0, [r4, #0x14]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x10]
	adds r0, r1, r0
	str r0, [r4, #8]
	asrs r0, r0, #0xc
	lsls r1, r0, #2
	ldr r0, _021DDB18 @ =0x021E028C
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0xc
	str r0, [sp]
	ldr r0, _021DDB1C @ =0x021E028E
	ldrsh r0, [r0, r1]
	add r1, sp, #0
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl FUN_02021C50
	add sp, #0xc
	pop {r4, r5, pc}
_021DDAE8:
	ldr r0, [r4, #0xc]
	asrs r0, r0, #0xc
	lsls r1, r0, #2
	ldr r0, _021DDB18 @ =0x021E028C
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0xc
	str r0, [sp]
	ldr r0, _021DDB1C @ =0x021E028E
	ldrsh r0, [r0, r1]
	add r1, sp, #0
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl FUN_02021C50
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov19_021DDBD0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021DDB18: .4byte 0x021E028C
_021DDB1C: .4byte 0x021E028E
	thumb_func_end ov19_021DDA9C

	thumb_func_start ov19_021DDB20
ov19_021DDB20: @ 0x021DDB20
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	beq _021DDB36
	subs r0, r0, #1
	add sp, #0xc
	strh r0, [r4, #0x16]
	pop {r4, r5, pc}
_021DDB36:
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _021DDB72
	subs r0, r0, #1
	strh r0, [r4, #0x14]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x10]
	adds r0, r1, r0
	str r0, [r4, #8]
	asrs r0, r0, #0xc
	ldr r1, _021DDBC8 @ =0x021E028C
	lsls r0, r0, #2
	ldrsh r2, [r1, r0]
	movs r1, #1
	lsls r1, r1, #8
	subs r1, r1, r2
	lsls r1, r1, #0xc
	str r1, [sp]
	ldr r1, _021DDBCC @ =0x021E028E
	ldrsh r0, [r1, r0]
	add r1, sp, #0
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl FUN_02021C50
	add sp, #0xc
	pop {r4, r5, pc}
_021DDB72:
	ldr r0, [r4, #0xc]
	ldr r1, _021DDBC8 @ =0x021E028C
	asrs r0, r0, #0xc
	lsls r0, r0, #2
	ldrsh r2, [r1, r0]
	movs r1, #1
	lsls r1, r1, #8
	subs r1, r1, r2
	lsls r1, r1, #0xc
	str r1, [sp]
	ldr r1, _021DDBCC @ =0x021E028E
	ldrsh r0, [r1, r0]
	add r1, sp, #0
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl FUN_02021C50
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021DDBBC
	ldrh r0, [r4, #0x28]
	add sp, #0xc
	strh r0, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	str r0, [r4, #8]
	ldr r0, [r4, #0x24]
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x20]
	str r0, [r4, #0xc]
	ldrh r0, [r4, #0x2a]
	strh r0, [r4, #0x16]
	movs r0, #0
	str r0, [r4, #0x18]
	pop {r4, r5, pc}
_021DDBBC:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov19_021DDBD0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_021DDBC8: .4byte 0x021E028C
_021DDBCC: .4byte 0x021E028E
	thumb_func_end ov19_021DDB20

	thumb_func_start ov19_021DDBD0
ov19_021DDBD0: @ 0x021DDBD0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r1]
	ldr r0, _021DDBF4 @ =0x000001CB
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021DDBE2
	bl FUN_02022974
_021DDBE2:
	ldr r0, _021DDBF4 @ =0x000001CB
	ldrb r1, [r4, r0]
	subs r1, r1, #1
	strb r1, [r4, r0]
	adds r0, r5, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, pc}
	nop
_021DDBF4: .4byte 0x000001CB
	thumb_func_end ov19_021DDBD0

	thumb_func_start ov19_021DDBF8
ov19_021DDBF8: @ 0x021DDBF8
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r6, r0, #0
	adds r5, r2, #0
	str r3, [sp]
	ldr r4, [sp, #0x20]
	cmp r7, #0
	bne _021DDC0C
	bl FUN_02022974
_021DDC0C:
	cmp r4, #0
	beq _021DDC12
	subs r4, r4, #1
_021DDC12:
	str r6, [r5]
	ldr r0, [sp, #0x1c]
	str r7, [r5, #4]
	strh r0, [r5, #0x14]
	ldr r0, [sp, #0x24]
	strh r4, [r5, #0x16]
	cmp r0, #0
	beq _021DDC26
	ldr r4, _021DDC64 @ =ov19_021DDB20
	b _021DDC28
_021DDC26:
	ldr r4, _021DDC68 @ =ov19_021DDA9C
_021DDC28:
	ldr r0, [sp]
	ldr r1, _021DDC6C @ =0x021E0264
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
	lsls r0, r0, #0xc
	str r0, [r5, #8]
	ldr r0, [sp, #0x18]
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
	lsls r1, r0, #0xc
	str r1, [r5, #0xc]
	ldr r0, [r5, #8]
	subs r0, r1, r0
	ldr r1, [sp, #0x1c]
	blx FUN_020E1F6C
	str r0, [r5, #0x10]
	movs r2, #0
	adds r0, r4, #0
	adds r1, r5, #0
	str r2, [r5, #0x18]
	bl ov19_021D77C8
	cmp r0, #0
	beq _021DDC62
	ldr r0, _021DDC70 @ =0x000001CB
	ldrb r1, [r6, r0]
	adds r1, r1, #1
	strb r1, [r6, r0]
_021DDC62:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DDC64: .4byte ov19_021DDB20
_021DDC68: .4byte ov19_021DDA9C
_021DDC6C: .4byte 0x021E0264
_021DDC70: .4byte 0x000001CB
	thumb_func_end ov19_021DDBF8

	thumb_func_start ov19_021DDC74
ov19_021DDC74: @ 0x021DDC74
	push {r4, lr}
	adds r4, r1, #0
	movs r0, #1
	str r0, [r4, #0x18]
	strh r2, [r4, #0x2a]
	cmp r2, #0
	beq _021DDC88
	ldrh r0, [r4, #0x2a]
	subs r0, r0, #1
	strh r0, [r4, #0x2a]
_021DDC88:
	ldr r0, [sp, #8]
	subs r2, r0, r3
	bpl _021DDC94
	movs r0, #0
	mvns r0, r0
	muls r2, r0, r2
_021DDC94:
	adds r1, r2, #0
	movs r0, #6
	muls r1, r0, r1
	ldr r2, _021DDCBC @ =0x021E0264
	lsls r0, r3, #1
	ldrh r0, [r2, r0]
	strh r1, [r4, #0x28]
	lsls r0, r0, #0xc
	str r0, [r4, #0x1c]
	ldr r0, [sp, #8]
	lsls r0, r0, #1
	ldrh r0, [r2, r0]
	lsls r2, r0, #0xc
	str r2, [r4, #0x20]
	ldr r0, [r4, #0x1c]
	subs r0, r2, r0
	blx FUN_020E1F6C
	str r0, [r4, #0x24]
	pop {r4, pc}
	.align 2, 0
_021DDCBC: .4byte 0x021E0264
	thumb_func_end ov19_021DDC74

	thumb_func_start ov19_021DDCC0
ov19_021DDCC0: @ 0x021DDCC0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	movs r0, #0x73
	adds r4, r1, #0
	lsls r0, r0, #2
	ldrb r3, [r4, r0]
	ldr r2, [r4]
	cmp r3, #0
	beq _021DDCDE
	cmp r3, #1
	beq _021DDD40
	cmp r3, #2
	beq _021DDD58
	add sp, #0x10
	pop {r4, r5, r6, pc}
_021DDCDE:
	subs r1, r0, #2
	ldrb r1, [r4, r1]
	movs r6, #0x2c
	adds r3, r1, #1
	subs r1, r0, #2
	strb r3, [r4, r1]
	subs r0, r0, #2
	ldrb r3, [r4, r0]
	movs r1, #6
	movs r0, #7
	subs r5, r1, r3
	subs r0, r0, r3
	str r0, [sp]
	adds r0, r5, #1
	muls r1, r0, r1
	str r1, [sp, #4]
	movs r3, #0
	str r3, [sp, #8]
	lsls r1, r5, #2
	adds r1, r2, r1
	str r3, [sp, #0xc]
	adds r2, r4, #0
	ldr r1, [r1, #0x54]
	adds r2, #8
	muls r6, r5, r6
	adds r0, r4, #0
	adds r2, r2, r6
	bl ov19_021DDBF8
	ldr r0, _021DDD70 @ =0x000001CD
	movs r1, #4
	strb r1, [r4, r0]
	subs r1, r0, #3
	ldrb r1, [r4, r1]
	cmp r1, #6
	blo _021DDD30
	movs r1, #2
	subs r0, r0, #1
	add sp, #0x10
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021DDD30:
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _021DDD6C
	movs r1, #1
	subs r0, r0, #1
	add sp, #0x10
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021DDD40:
	adds r1, r0, #1
	ldrb r1, [r4, r1]
	subs r2, r1, #2
	adds r1, r0, #1
	strb r2, [r4, r1]
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _021DDD6C
	movs r1, #0
	add sp, #0x10
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021DDD58:
	subs r1, r0, #1
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _021DDD6C
	adds r1, r3, #1
	strb r1, [r4, r0]
	ldr r1, _021DDD74 @ =ov19_021DDD78
	adds r0, r4, #0
	bl ov19_021D79B8
_021DDD6C:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_021DDD70: .4byte 0x000001CD
_021DDD74: .4byte ov19_021DDD78
	thumb_func_end ov19_021DDCC0

	thumb_func_start ov19_021DDD78
ov19_021DDD78: @ 0x021DDD78
	ldr r3, _021DDD7C @ =ov19_021DD358
	bx r3
	.align 2, 0
_021DDD7C: .4byte ov19_021DD358
	thumb_func_end ov19_021DDD78

	thumb_func_start ov19_021DDD80
ov19_021DDD80: @ 0x021DDD80
	push {r3, r4, r5, lr}
	movs r1, #0x1d
	adds r4, r0, #0
	movs r0, #0xa
	lsls r1, r1, #4
	bl FUN_02018144
	adds r5, r0, #0
	beq _021DDDC8
	movs r1, #0x73
	movs r0, #0
	lsls r1, r1, #2
	str r4, [r5]
	strb r0, [r5, r1]
	subs r2, r1, #2
	strb r0, [r5, r2]
	subs r1, r1, #1
	strb r0, [r5, r1]
	movs r1, #7
	adds r3, r0, #0
	lsls r1, r1, #6
_021DDDAA:
	adds r2, r5, r0
	adds r0, r0, #1
	strb r3, [r2, r1]
	cmp r0, #8
	blt _021DDDAA
	ldr r1, _021DDDCC @ =ov19_021DDCC0
	adds r0, r4, #0
	adds r2, r5, #0
	bl ov19_021DD344
	cmp r0, #0
	bne _021DDDC8
	adds r0, r5, #0
	bl FUN_020181C4
_021DDDC8:
	pop {r3, r4, r5, pc}
	nop
_021DDDCC: .4byte ov19_021DDCC0
	thumb_func_end ov19_021DDD80

	thumb_func_start ov19_021DDDD0
ov19_021DDDD0: @ 0x021DDDD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	movs r2, #0x73
	lsls r2, r2, #2
	adds r0, r1, #0
	ldrb r3, [r0, r2]
	str r1, [sp, #0x10]
	ldr r7, [r1]
	cmp r3, #0
	beq _021DDDEE
	cmp r3, #1
	bne _021DDDEA
	b _021DDF86
_021DDDEA:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_021DDDEE:
	ldr r1, [r7, #4]
	movs r0, #0xa0
	ldrsh r0, [r1, r0]
	cmp r0, #0
	ble _021DDE12
	adds r0, r7, #0
	adds r0, #0x80
	ldr r0, [r0]
	adds r4, r0, #5
	cmp r4, #0xa
	blt _021DDE06
	subs r4, #0xa
_021DDE06:
	movs r5, #0
	movs r0, #7
	mvns r5, r5
	movs r6, #6
	str r0, [sp, #0x24]
	b _021DDE20
_021DDE12:
	adds r0, r7, #0
	adds r0, #0x80
	ldr r4, [r0]
	movs r5, #1
	movs r0, #0
	adds r6, r5, #0
	str r0, [sp, #0x24]
_021DDE20:
	ldr r1, [r7, #0x7c]
	movs r0, #0
	str r0, [sp, #0x34]
	cmp r1, #0
	ble _021DDE82
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x38]
	adds r0, #8
	str r0, [sp, #0x38]
_021DDE34:
	ldr r0, [sp, #0x24]
	adds r3, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	adds r0, r0, #6
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	adds r1, r0, #0
	ldr r2, [r1, #4]
	lsls r1, r4, #2
	ldr r1, [r2, r1]
	movs r2, #0x2c
	muls r3, r2, r3
	ldr r2, [sp, #0x38]
	adds r2, r2, r3
	adds r3, r6, #0
	bl ov19_021DDBF8
	adds r4, r4, r5
	adds r6, r6, r5
	cmp r4, #0xa
	blt _021DDE6A
	movs r4, #0
	b _021DDE70
_021DDE6A:
	cmp r4, #0
	bge _021DDE70
	movs r4, #9
_021DDE70:
	ldr r0, [sp, #0x28]
	ldr r1, [r7, #0x7c]
	adds r0, r0, #6
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x34]
	adds r0, r0, #1
	str r0, [sp, #0x34]
	cmp r0, r1
	blt _021DDE34
_021DDE82:
	movs r0, #6
	subs r0, r0, r1
	str r0, [sp, #0x30]
	movs r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x30]
	cmp r0, #0
	ble _021DDEE8
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x3c]
	adds r0, #8
	str r0, [sp, #0x3c]
_021DDE9A:
	ldr r0, [r7, #0x7c]
	adds r1, r5, #0
	muls r1, r0, r1
	subs r1, r6, r1
	str r1, [sp]
	movs r1, #6
	muls r1, r0, r1
	str r1, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	adds r3, r4, #0
	adds r1, r0, #0
	ldr r2, [r1, #4]
	lsls r1, r4, #2
	ldr r1, [r2, r1]
	movs r2, #0x2c
	muls r3, r2, r3
	ldr r2, [sp, #0x3c]
	adds r2, r2, r3
	adds r3, r6, #0
	bl ov19_021DDBF8
	adds r4, r4, r5
	adds r6, r6, r5
	cmp r4, #0xa
	blt _021DDED6
	movs r4, #0
	b _021DDEDC
_021DDED6:
	cmp r4, #0
	bge _021DDEDC
	movs r4, #9
_021DDEDC:
	ldr r0, [sp, #0x14]
	adds r1, r0, #1
	ldr r0, [sp, #0x30]
	str r1, [sp, #0x14]
	cmp r1, r0
	blt _021DDE9A
_021DDEE8:
	ldr r1, [r7, #4]
	movs r0, #0xa0
	ldrsh r0, [r1, r0]
	cmp r0, #0
	ble _021DDEFE
	movs r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [r7, #0x7c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x18]
	b _021DDF0C
_021DDEFE:
	movs r0, #7
	str r0, [sp, #0x1c]
	ldr r0, [r7, #0x7c]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	subs r0, r1, r0
	str r0, [sp, #0x18]
_021DDF0C:
	ldr r0, [sp, #0x20]
	movs r6, #0
	cmp r0, #0
	ble _021DDF74
	ldr r0, [sp, #0x10]
	str r6, [sp, #0x2c]
	str r0, [sp, #0x40]
	adds r0, #8
	str r0, [sp, #0x40]
_021DDF1E:
	ldr r0, [sp, #0x18]
	adds r3, r4, #0
	str r0, [sp]
	ldr r0, [r7, #0x7c]
	subs r1, r0, r6
	movs r0, #6
	muls r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	adds r0, r0, #6
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	adds r1, r0, #0
	ldr r2, [r1, #4]
	lsls r1, r4, #2
	ldr r1, [r2, r1]
	movs r2, #0x2c
	muls r3, r2, r3
	ldr r2, [sp, #0x40]
	adds r2, r2, r3
	ldr r3, [sp, #0x1c]
	bl ov19_021DDBF8
	ldr r0, [sp, #0x18]
	adds r4, r4, r5
	adds r0, r0, r5
	str r0, [sp, #0x18]
	cmp r4, #0xa
	blt _021DDF60
	subs r4, #0xa
	b _021DDF66
_021DDF60:
	cmp r4, #0
	bge _021DDF66
	adds r4, #0xa
_021DDF66:
	ldr r0, [sp, #0x2c]
	adds r6, r6, #1
	adds r0, r0, #6
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x20]
	cmp r6, r0
	blt _021DDF1E
_021DDF74:
	movs r1, #0x73
	ldr r0, [sp, #0x10]
	lsls r1, r1, #2
	ldrb r0, [r0, r1]
	adds r2, r0, #1
	ldr r0, [sp, #0x10]
	add sp, #0x44
	strb r2, [r0, r1]
	pop {r4, r5, r6, r7, pc}
_021DDF86:
	ldr r0, [sp, #0x10]
	subs r1, r2, #1
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021DDF9E
	ldr r0, [sp, #0x10]
	adds r1, r3, #1
	strb r1, [r0, r2]
	ldr r1, _021DDFA4 @ =ov19_021DDD78
	adds r2, r7, #0
	bl ov19_021D79B8
_021DDF9E:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021DDFA4: .4byte ov19_021DDD78
	thumb_func_end ov19_021DDDD0

	thumb_func_start ov19_021DDFA8
ov19_021DDFA8: @ 0x021DDFA8
	push {r3, r4, r5, lr}
	movs r1, #0x1d
	adds r4, r0, #0
	movs r0, #0xa
	lsls r1, r1, #4
	bl FUN_02018144
	adds r5, r0, #0
	beq _021DDFF6
	adds r0, r4, #0
	movs r1, #0x73
	lsls r1, r1, #2
	str r4, [r5]
	adds r0, #0x54
	str r0, [r5, #4]
	movs r0, #0
	strb r0, [r5, r1]
	subs r2, r1, #2
	strb r0, [r5, r2]
	subs r1, r1, #1
	strb r0, [r5, r1]
	movs r1, #7
	adds r3, r0, #0
	lsls r1, r1, #6
_021DDFD8:
	adds r2, r5, r0
	adds r0, r0, #1
	strb r3, [r2, r1]
	cmp r0, #0xa
	blt _021DDFD8
	ldr r1, _021DDFF8 @ =ov19_021DDDD0
	adds r0, r4, #0
	adds r2, r5, #0
	bl ov19_021DD344
	cmp r0, #0
	bne _021DDFF6
	adds r0, r5, #0
	bl FUN_020181C4
_021DDFF6:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021DDFF8: .4byte ov19_021DDDD0
	thumb_func_end ov19_021DDFA8

	thumb_func_start ov19_021DDFFC
ov19_021DDFFC: @ 0x021DDFFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r0, [r1]
	movs r2, #0x73
	str r0, [sp, #0x18]
	lsls r2, r2, #2
	adds r0, r1, #0
	ldrb r3, [r0, r2]
	str r1, [sp, #0x10]
	cmp r3, #0
	beq _021DE01A
	cmp r3, #1
	beq _021DE07E
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021DE01A:
	ldr r0, [sp, #0x18]
	movs r5, #0
	adds r0, #0x80
	ldr r4, [r0]
	adds r0, r1, #0
	str r0, [sp, #0x1c]
	adds r0, #8
	movs r7, #6
	str r5, [sp, #0x14]
	movs r6, #0x24
	str r0, [sp, #0x1c]
_021DE030:
	str r7, [sp]
	str r6, [sp, #4]
	ldr r1, [sp, #0x18]
	lsls r2, r4, #2
	adds r1, r1, r2
	str r5, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	movs r2, #0x2c
	adds r3, r4, #0
	muls r3, r2, r3
	ldr r2, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	adds r2, r2, r3
	ldr r1, [r1, #0x34]
	movs r3, #0
	bl ov19_021DDBF8
	adds r4, r4, #1
	subs r6, r6, #6
	subs r7, r7, #1
	cmp r4, #8
	blt _021DE060
	movs r4, #0
_021DE060:
	ldr r0, [sp, #0x14]
	adds r5, r5, #6
	adds r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #6
	blt _021DE030
	movs r1, #0x73
	ldr r0, [sp, #0x10]
	lsls r1, r1, #2
	ldrb r0, [r0, r1]
	adds r2, r0, #1
	ldr r0, [sp, #0x10]
	add sp, #0x20
	strb r2, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
_021DE07E:
	ldr r0, [sp, #0x10]
	subs r1, r2, #1
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021DE096
	ldr r0, [sp, #0x10]
	adds r1, r3, #1
	strb r1, [r0, r2]
	ldr r1, _021DE09C @ =ov19_021DDD78
	ldr r2, [sp, #0x18]
	bl ov19_021D79B8
_021DE096:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DE09C: .4byte ov19_021DDD78
	thumb_func_end ov19_021DDFFC

	thumb_func_start ov19_021DE0A0
ov19_021DE0A0: @ 0x021DE0A0
	push {r3, r4, r5, lr}
	movs r1, #0x1d
	adds r4, r0, #0
	movs r0, #0xa
	lsls r1, r1, #4
	bl FUN_02018144
	adds r5, r0, #0
	beq _021DE0E8
	movs r1, #0x73
	movs r0, #0
	lsls r1, r1, #2
	str r4, [r5]
	strb r0, [r5, r1]
	subs r2, r1, #2
	strb r0, [r5, r2]
	subs r1, r1, #1
	strb r0, [r5, r1]
	movs r1, #7
	adds r3, r0, #0
	lsls r1, r1, #6
_021DE0CA:
	adds r2, r5, r0
	adds r0, r0, #1
	strb r3, [r2, r1]
	cmp r0, #8
	blt _021DE0CA
	ldr r1, _021DE0EC @ =ov19_021DDFFC
	adds r0, r4, #0
	adds r2, r5, #0
	bl ov19_021DD344
	cmp r0, #0
	bne _021DE0E8
	adds r0, r5, #0
	bl FUN_020181C4
_021DE0E8:
	pop {r3, r4, r5, pc}
	nop
_021DE0EC: .4byte ov19_021DDFFC
	thumb_func_end ov19_021DE0A0

	thumb_func_start ov19_021DE0F0
ov19_021DE0F0: @ 0x021DE0F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	ldr r0, [r1]
	movs r2, #0x73
	str r0, [sp, #0x34]
	lsls r2, r2, #2
	adds r0, r1, #0
	ldrb r3, [r0, r2]
	str r1, [sp, #0x10]
	cmp r3, #0
	beq _021DE110
	cmp r3, #1
	bne _021DE10C
	b _021DE282
_021DE10C:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_021DE110:
	ldr r0, [sp, #0x34]
	ldr r0, [r0, #4]
	bl ov19_021D5EB0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	adds r0, #0x80
	ldr r4, [r0]
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bge _021DE140
	adds r4, r4, #5
	cmp r4, #8
	blt _021DE12E
	subs r4, #8
_021DE12E:
	ldr r0, [sp, #0x30]
	movs r5, #0
	rsbs r0, r0, #0
	str r0, [sp, #0x28]
	movs r0, #0
	mvns r5, r5
	movs r6, #1
	str r0, [sp, #0x18]
	b _021DE14A
_021DE140:
	str r0, [sp, #0x28]
	movs r0, #7
	movs r5, #1
	movs r6, #6
	str r0, [sp, #0x18]
_021DE14A:
	ldr r0, [sp, #0x28]
	movs r7, #0
	adds r0, r0, #6
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	cmp r0, #0
	ble _021DE1AC
	ldr r0, [sp, #0x10]
	str r7, [sp, #0x1c]
	str r0, [sp, #0x38]
	adds r0, #8
	str r0, [sp, #0x38]
_021DE162:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x34]
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	lsls r2, r4, #2
	adds r0, r0, #6
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	adds r1, r1, r2
	str r0, [sp, #0xc]
	movs r2, #0x2c
	adds r3, r4, #0
	muls r3, r2, r3
	ldr r2, [sp, #0x38]
	ldr r0, [sp, #0x10]
	adds r2, r2, r3
	ldr r1, [r1, #0x34]
	adds r3, r6, #0
	bl ov19_021DDBF8
	subs r6, r6, r5
	adds r4, r4, r5
	bpl _021DE198
	adds r4, #8
	b _021DE19E
_021DE198:
	cmp r4, #8
	blt _021DE19E
	subs r4, #8
_021DE19E:
	ldr r0, [sp, #0x1c]
	adds r7, r7, #1
	adds r0, r0, #6
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	cmp r7, r0
	blt _021DE162
_021DE1AC:
	movs r0, #0
	str r0, [sp, #0x24]
	cmp r7, #8
	bge _021DE218
	ldr r0, [sp, #0x28]
	movs r1, #6
	muls r1, r0, r1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x20]
	str r0, [sp, #0x3c]
	adds r0, #8
	str r0, [sp, #0x3c]
_021DE1C4:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x34]
	subs r0, r0, r5
	str r0, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	lsls r2, r4, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	adds r1, r1, r2
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	movs r2, #0x2c
	adds r3, r4, #0
	muls r3, r2, r3
	ldr r2, [sp, #0x3c]
	ldr r0, [sp, #0x10]
	adds r2, r2, r3
	ldr r1, [r1, #0x34]
	adds r3, r6, #0
	bl ov19_021DDBF8
	cmp r6, #0
	beq _021DE1FE
	cmp r6, #7
	beq _021DE1FE
	subs r6, r6, r5
	b _021DE204
_021DE1FE:
	ldr r0, [sp, #0x24]
	adds r0, r0, #6
	str r0, [sp, #0x24]
_021DE204:
	adds r4, r4, r5
	bpl _021DE20C
	adds r4, #8
	b _021DE212
_021DE20C:
	cmp r4, #8
	blt _021DE212
	subs r4, #8
_021DE212:
	adds r7, r7, #1
	cmp r7, #8
	blt _021DE1C4
_021DE218:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bge _021DE22C
	movs r0, #7
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x28]
	subs r1, r0, #2
	ldr r0, [sp, #0x14]
	subs r6, r0, r1
	b _021DE234
_021DE22C:
	movs r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x28]
	subs r6, r0, #2
_021DE234:
	ldr r0, [sp, #0x2c]
	cmp r7, r0
	bge _021DE270
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x40]
	adds r0, #8
	str r0, [sp, #0x40]
_021DE242:
	movs r1, #0x2c
	adds r2, r4, #0
	muls r2, r1, r2
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x10]
	adds r1, r1, r2
	ldr r3, [sp, #0x14]
	movs r2, #6
	str r6, [sp]
	bl ov19_021DDC74
	subs r6, r6, r5
	adds r4, r4, r5
	bpl _021DE262
	adds r4, #8
	b _021DE268
_021DE262:
	cmp r4, #8
	blt _021DE268
	subs r4, #8
_021DE268:
	ldr r0, [sp, #0x2c]
	adds r7, r7, #1
	cmp r7, r0
	blt _021DE242
_021DE270:
	movs r1, #0x73
	ldr r0, [sp, #0x10]
	lsls r1, r1, #2
	ldrb r0, [r0, r1]
	adds r2, r0, #1
	ldr r0, [sp, #0x10]
	add sp, #0x44
	strb r2, [r0, r1]
	pop {r4, r5, r6, r7, pc}
_021DE282:
	ldr r0, [sp, #0x10]
	subs r1, r2, #1
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _021DE29A
	ldr r0, [sp, #0x10]
	adds r1, r3, #1
	strb r1, [r0, r2]
	ldr r1, _021DE2A0 @ =ov19_021DDD78
	ldr r2, [sp, #0x34]
	bl ov19_021D79B8
_021DE29A:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021DE2A0: .4byte ov19_021DDD78
	thumb_func_end ov19_021DE0F0

	thumb_func_start ov19_021DE2A4
ov19_021DE2A4: @ 0x021DE2A4
	push {r3, r4, r5, lr}
	movs r1, #0x1d
	adds r4, r0, #0
	movs r0, #0xa
	lsls r1, r1, #4
	bl FUN_02018144
	adds r5, r0, #0
	beq _021DE2EC
	movs r1, #0x73
	movs r0, #0
	lsls r1, r1, #2
	str r4, [r5]
	strb r0, [r5, r1]
	subs r2, r1, #2
	strb r0, [r5, r2]
	subs r1, r1, #1
	strb r0, [r5, r1]
	movs r1, #7
	adds r3, r0, #0
	lsls r1, r1, #6
_021DE2CE:
	adds r2, r5, r0
	adds r0, r0, #1
	strb r3, [r2, r1]
	cmp r0, #8
	blt _021DE2CE
	ldr r1, _021DE2F0 @ =ov19_021DE0F0
	adds r0, r4, #0
	adds r2, r5, #0
	bl ov19_021DD344
	cmp r0, #0
	bne _021DE2EC
	adds r0, r5, #0
	bl FUN_020181C4
_021DE2EC:
	pop {r3, r4, r5, pc}
	nop
_021DE2F0: .4byte ov19_021DE0F0
	thumb_func_end ov19_021DE2A4

	thumb_func_start ov19_021DE2F4
ov19_021DE2F4: @ 0x021DE2F4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	beq _021DE322
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _021DE322
	ldr r0, [r5, #4]
	bl ov19_021D5EC8
	adds r6, r0, #0
	movs r4, #0
_021DE30A:
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov19_021DD9B8
	adds r1, r0, #0
	ldr r0, [r5, #0x34]
	bl FUN_02021D6C
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #8
	blt _021DE30A
_021DE322:
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021DE2F4

	thumb_func_start ov19_021DE324
ov19_021DE324: @ 0x021DE324
	ldr r3, _021DE32C @ =FUN_02019120
	movs r0, #4
	movs r1, #0
	bx r3
	.align 2, 0
_021DE32C: .4byte FUN_02019120
	thumb_func_end ov19_021DE324

	thumb_func_start ov19_021DE330
ov19_021DE330: @ 0x021DE330
	push {r3, lr}
	movs r0, #2
	str r0, [sp]
	ldr r0, _021DE34C @ =0x04001050
	movs r1, #1
	movs r2, #0x3f
	movs r3, #0xe
	blx FUN_020BF55C
	movs r0, #4
	movs r1, #1
	bl FUN_02019120
	pop {r3, pc}
	.align 2, 0
_021DE34C: .4byte 0x04001050
	thumb_func_end ov19_021DE330

	thumb_func_start ov19_021DE350
ov19_021DE350: @ 0x021DE350
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	ldr r0, [r6, #4]
	bl ov19_021D5EB8
	adds r4, r0, #3
	cmp r4, #0x12
	blt _021DE364
	subs r4, #0x12
_021DE364:
	movs r0, #0
	adds r7, r6, #0
	ldr r5, _021DE3E0 @ =0x021E0274
	str r0, [sp, #0x10]
	adds r7, #0x88
_021DE36E:
	ldr r0, [r6, #4]
	adds r2, r6, #0
	adds r2, #0x84
	ldr r0, [r0]
	ldr r2, [r2]
	adds r1, r4, #0
	bl FUN_02079AF4
	movs r0, #0x68
	str r0, [sp]
	movs r0, #0x11
	str r0, [sp, #4]
	ldrh r2, [r5]
	ldrh r3, [r5, #2]
	adds r0, r7, #0
	movs r1, #0
	bl FUN_0201AE78
	movs r0, #2
	ldrsh r0, [r5, r0]
	movs r1, #0
	adds r2, r6, #0
	adds r0, r0, #2
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DE3E4 @ =0x00010200
	adds r3, r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldrsh r3, [r5, r3]
	adds r2, #0x84
	ldr r2, [r2]
	adds r0, r7, #0
	adds r3, r3, #4
	bl FUN_0201D78C
	subs r4, r4, #1
	bpl _021DE3C0
	movs r4, #0x11
_021DE3C0:
	ldr r0, [sp, #0x10]
	adds r5, r5, #4
	adds r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #6
	blo _021DE36E
	adds r0, r6, #0
	adds r0, #0x88
	bl FUN_0201ACCC
	adds r0, r6, #0
	bl ov19_021DE330
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021DE3E0: .4byte 0x021E0274
_021DE3E4: .4byte 0x00010200
	thumb_func_end ov19_021DE350

	thumb_func_start ov19_021DE3E8
ov19_021DE3E8: @ 0x021DE3E8
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	movs r0, #0xa
	movs r1, #0x3c
	adds r6, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	beq _021DE43C
	str r5, [r4, #4]
	ldr r0, [sp]
	str r6, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x10]
	adds r0, r5, #0
	bl ov19_021D77D8
	str r0, [r4, #0x14]
	adds r0, r5, #0
	bl ov19_021D77F4
	str r0, [r4, #0x18]
	movs r0, #0
	str r0, [r4, #0x34]
	adds r0, r6, #0
	bl ov19_021D5E08
	cmp r0, #3
	bne _021DE42C
	movs r0, #1
	b _021DE42E
_021DE42C:
	movs r0, #0
_021DE42E:
	str r0, [r4]
	adds r0, r4, #0
	bl ov19_021DE450
	str r4, [r7]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DE43C:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DE3E8

	thumb_func_start ov19_021DE440
ov19_021DE440: @ 0x021DE440
	push {r4, lr}
	adds r4, r0, #0
	bl ov19_021DE51C
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov19_021DE440

	thumb_func_start ov19_021DE450
ov19_021DE450: @ 0x021DE450
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	adds r6, r0, #0
	ldr r0, [r6]
	cmp r0, #0
	beq _021DE500
	ldr r4, [r6, #0x14]
	ldr r0, [r6, #4]
	bl ov19_021D77D0
	adds r2, r0, #0
	ldr r0, [r4, #0x20]
	add r1, sp, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r3, [r4, #0x1c]
	add r0, sp, #0x34
	bl ov19_021D783C
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0207CE78
	adds r1, r0, #0
	movs r0, #0xa
	str r0, [sp]
	movs r0, #0x10
	movs r2, #0
	add r3, sp, #0xc
	bl FUN_02006F50
	str r0, [sp, #8]
	cmp r0, #0
	beq _021DE510
	movs r0, #1
	lsls r0, r0, #0x1a
	ldr r1, [r0]
	ldr r0, _021DE514 @ =0x00300010
	ldr r4, _021DE518 @ =0x021E04CC
	ands r1, r0
	ldr r0, [sp, #0xc]
	movs r7, #0
	str r1, [r0, #8]
	adds r5, r6, #0
_021DE4AA:
	add r0, sp, #0x10
	blx FUN_020A818C
	ldr r0, [sp, #0xc]
	ldr r1, [r4]
	movs r2, #1
	add r3, sp, #0x10
	blx FUN_020A8224
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r2, #0
	ldr r0, [r6, #0x10]
	add r1, sp, #0x34
	adds r3, r2, #0
	bl ov19_021D785C
	str r0, [r5, #0x1c]
	ldr r1, [r4, #4]
	bl FUN_02021E90
	ldr r0, [r5, #0x1c]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [r5, #0x1c]
	movs r1, #1
	bl FUN_02021CF8
	movs r0, #0
	str r0, [r5, #0x28]
	adds r7, r7, #1
	adds r4, #8
	adds r5, r5, #4
	cmp r7, #3
	blt _021DE4AA
	ldr r0, [sp, #8]
	bl FUN_020181C4
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_021DE500:
	movs r1, #0
	adds r0, r1, #0
_021DE504:
	str r0, [r6, #0x1c]
	str r0, [r6, #0x28]
	adds r1, r1, #1
	adds r6, r6, #4
	cmp r1, #3
	blt _021DE504
_021DE510:
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DE514: .4byte 0x00300010
_021DE518: .4byte 0x021E04CC
	thumb_func_end ov19_021DE450

	thumb_func_start ov19_021DE51C
ov19_021DE51C: @ 0x021DE51C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_021DE522:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021DE52C
	bl FUN_02021BD4
_021DE52C:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _021DE522
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021DE51C

	thumb_func_start ov19_021DE538
ov19_021DE538: @ 0x021DE538
	push {r3, r4}
	movs r3, #0
	adds r4, r0, #0
_021DE53E:
	ldr r2, [r4, #0x28]
	cmp r2, #0
	bne _021DE550
	lsls r2, r3, #2
	adds r0, r0, r2
	str r1, [r0, #0x28]
	adds r0, r3, #0
	pop {r3, r4}
	bx lr
_021DE550:
	adds r3, r3, #1
	adds r4, r4, #4
	cmp r3, #3
	blt _021DE53E
	movs r0, #0
	mvns r0, r0
	pop {r3, r4}
	bx lr
	thumb_func_end ov19_021DE538

	thumb_func_start ov19_021DE560
ov19_021DE560: @ 0x021DE560
	movs r3, #0
_021DE562:
	ldr r2, [r0, #0x28]
	cmp r1, r2
	bne _021DE56C
	adds r0, r3, #0
	bx lr
_021DE56C:
	adds r3, r3, #1
	adds r0, r0, #4
	cmp r3, #3
	blt _021DE562
	movs r0, #0
	mvns r0, r0
	bx lr
	.align 2, 0
	thumb_func_end ov19_021DE560

	thumb_func_start ov19_021DE57C
ov19_021DE57C: @ 0x021DE57C
	lsls r1, r1, #2
	adds r0, r0, r1
	str r2, [r0, #0x28]
	bx lr
	thumb_func_end ov19_021DE57C

	thumb_func_start ov19_021DE584
ov19_021DE584: @ 0x021DE584
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021DE598
	bl ov19_021DE59C
	adds r0, r4, #0
	bl ov19_021DE5D4
_021DE598:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021DE584

	thumb_func_start ov19_021DE59C
ov19_021DE59C: @ 0x021DE59C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	bl ov19_021D5E74
	adds r4, r0, #0
	beq _021DE5D2
	adds r0, r5, #0
	movs r1, #1
	bl ov19_021DE538
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov19_021DE718
	adds r5, #0x1c
	lsls r4, r6, #2
	ldr r0, [r5, r4]
	movs r1, #6
	bl FUN_02021D6C
	ldr r0, [r5, r4]
	movs r1, #1
	bl FUN_02021CAC
_021DE5D2:
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021DE59C

	thumb_func_start ov19_021DE5D4
ov19_021DE5D4: @ 0x021DE5D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r0, [r5, #8]
	bl ov19_021D5F7C
	adds r7, r0, #0
	beq _021DE688
	adds r0, r5, #0
	movs r1, #3
	bl ov19_021DE538
	adds r6, r0, #0
	ldr r0, [r5, #0x18]
	add r1, sp, #0x10
	bl ov19_021D9B1C
	movs r0, #2
	ldr r1, [sp, #0x14]
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [r5, #8]
	bl ov19_021D5E10
	cmp r0, #1
	bne _021DE610
	movs r0, #1
	str r0, [sp, #0xc]
	b _021DE614
_021DE610:
	movs r0, #2
	str r0, [sp, #0xc]
_021DE614:
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	lsls r4, r6, #3
	bl FUN_0207CE78
	movs r2, #0
	ldr r3, _021DE68C @ =0x021E04CC
	str r2, [sp]
	adds r1, r0, #0
	str r2, [sp, #4]
	movs r0, #0xa
	str r0, [sp, #8]
	ldr r3, [r3, r4]
	movs r0, #0x10
	bl FUN_02006EC0
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	movs r1, #2
	bl FUN_0207CE78
	ldr r3, _021DE690 @ =0x021E04D0
	adds r1, r0, #0
	movs r0, #0x20
	ldr r3, [r3, r4]
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #0x10
	movs r2, #1
	lsls r3, r3, #5
	bl FUN_02006E84
	ldr r1, [sp, #0xc]
	adds r5, #0x1c
	lsls r4, r6, #2
	lsls r1, r1, #0x18
	ldr r0, [r5, r4]
	lsrs r1, r1, #0x18
	bl FUN_02021E80
	ldr r0, [r5, r4]
	movs r1, #2
	bl ov19_021D78AC
	ldr r0, [r5, r4]
	add r1, sp, #0x10
	bl FUN_02021C50
	ldr r0, [r5, r4]
	movs r1, #0
	bl FUN_02021D6C
	ldr r0, [r5, r4]
	movs r1, #1
	bl FUN_02021CAC
_021DE688:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DE68C: .4byte 0x021E04CC
_021DE690: .4byte 0x021E04D0
	thumb_func_end ov19_021DE5D4

	thumb_func_start ov19_021DE694
ov19_021DE694: @ 0x021DE694
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r5, #8]
	adds r6, r2, #0
	bl ov19_021D5E10
	cmp r0, #1
	ldr r0, [r5, #4]
	bne _021DE6DE
	bl ov19_021D77E8
	adds r7, r0, #0
	ldr r0, [r5, #8]
	bl ov19_021D5E2C
	adds r1, r0, #0
	adds r0, r7, #0
	add r2, sp, #4
	add r3, sp, #0
	bl ov19_021DCD30
	ldr r0, [sp, #4]
	adds r0, #0xa
	lsls r0, r0, #0xc
	str r0, [r4]
	ldr r0, [sp]
	add sp, #8
	adds r0, #8
	lsls r0, r0, #0xc
	str r0, [r4, #4]
	movs r0, #1
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_021DE6DE:
	bl ov19_021D7820
	adds r7, r0, #0
	ldr r0, [r5, #8]
	bl ov19_021D5E14
	movs r1, #0x18
	adds r7, #0x70
	muls r1, r0, r1
	adds r0, r7, r1
	adds r0, #0xa
	str r0, [r4]
	ldr r0, [r5, #8]
	bl ov19_021D5E1C
	movs r1, #0x18
	muls r1, r0, r1
	adds r1, #0x30
	str r1, [r4, #4]
	ldr r0, [r4]
	lsls r0, r0, #0xc
	str r0, [r4]
	ldr r0, [r4, #4]
	lsls r0, r0, #0xc
	str r0, [r4, #4]
	movs r0, #2
	str r0, [r6]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DE694

	thumb_func_start ov19_021DE718
ov19_021DE718: @ 0x021DE718
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r1, #0
	adds r5, r0, #0
	adds r7, r2, #0
	cmp r4, #0
	blt _021DE792
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov19_021DE694
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	lsls r6, r4, #3
	bl FUN_0207CE78
	movs r2, #0
	ldr r3, _021DE798 @ =0x021E04CC
	str r2, [sp]
	adds r1, r0, #0
	str r2, [sp, #4]
	movs r0, #0xa
	str r0, [sp, #8]
	ldr r3, [r3, r6]
	movs r0, #0x10
	bl FUN_02006EC0
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	movs r1, #2
	bl FUN_0207CE78
	ldr r3, _021DE79C @ =0x021E04D0
	adds r1, r0, #0
	movs r0, #0x20
	ldr r3, [r3, r6]
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #0x10
	movs r2, #1
	lsls r3, r3, #5
	bl FUN_02006E84
	ldr r1, [sp, #0xc]
	adds r5, #0x1c
	lsls r4, r4, #2
	lsls r1, r1, #0x18
	ldr r0, [r5, r4]
	lsrs r1, r1, #0x18
	bl FUN_02021E80
	ldr r0, [r5, r4]
	movs r1, #3
	bl ov19_021D78AC
	ldr r0, [r5, r4]
	add r1, sp, #0x10
	bl FUN_02021C50
_021DE792:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021DE798: .4byte 0x021E04CC
_021DE79C: .4byte 0x021E04D0
	thumb_func_end ov19_021DE718

	thumb_func_start ov19_021DE7A0
ov19_021DE7A0: @ 0x021DE7A0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, [r5]
	cmp r1, #0
	beq _021DE7FE
	movs r1, #1
	bl ov19_021DE560
	adds r4, r0, #0
	bmi _021DE7CA
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl ov19_021DE57C
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x1c]
	movs r1, #2
	bl FUN_02021D6C
_021DE7CA:
	ldr r0, [r5, #8]
	bl ov19_021D5E74
	adds r6, r0, #0
	beq _021DE7FE
	adds r0, r5, #0
	movs r1, #1
	bl ov19_021DE538
	adds r4, r0, #0
	bmi _021DE7FE
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov19_021DE718
	adds r5, #0x1c
	lsls r4, r4, #2
	ldr r0, [r5, r4]
	movs r1, #1
	bl FUN_02021D6C
	ldr r0, [r5, r4]
	movs r1, #1
	bl FUN_02021CAC
_021DE7FE:
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021DE7A0

	thumb_func_start ov19_021DE800
ov19_021DE800: @ 0x021DE800
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5]
	cmp r1, #0
	bne _021DE80E
	movs r0, #1
	pop {r3, r4, r5, pc}
_021DE80E:
	movs r1, #1
	bl ov19_021DE560
	cmp r0, #0
	blt _021DE82A
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x1c]
	bl FUN_02021FD0
	cmp r0, #0
	beq _021DE82A
	movs r0, #0
	pop {r3, r4, r5, pc}
_021DE82A:
	adds r0, r5, #0
	movs r1, #2
	bl ov19_021DE560
	adds r4, r0, #0
	bmi _021DE852
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x1c]
	bl FUN_02021FD0
	cmp r0, #0
	beq _021DE848
	movs r0, #0
	pop {r3, r4, r5, pc}
_021DE848:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl ov19_021DE57C
_021DE852:
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021DE800

	thumb_func_start ov19_021DE858
ov19_021DE858: @ 0x021DE858
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	movs r0, #0xa
	movs r1, #0x34
	adds r6, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	beq _021DE8DA
	lsls r0, r7, #2
	str r5, [r4]
	adds r0, r5, r0
	ldr r0, [r0, #0x1c]
	str r0, [r4, #4]
	bl FUN_02021D28
	adds r3, r0, #0
	adds r2, r4, #0
	ldm r3!, {r0, r1}
	adds r2, #8
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	adds r2, r4, #0
	ldm r6!, {r0, r1}
	adds r2, #0x14
	stm r2!, {r0, r1}
	ldr r0, [r6]
	ldr r6, [sp, #0x18]
	str r0, [r2]
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #8]
	subs r0, r1, r0
	adds r1, r6, #0
	blx FUN_020E1F6C
	str r0, [r4, #0x20]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0xc]
	subs r0, r1, r0
	adds r1, r6, #0
	blx FUN_020E1F6C
	str r0, [r4, #0x24]
	ldr r0, [sp, #0x18]
	movs r2, #0
	str r0, [r4, #0x2c]
	ldr r0, [sp]
	adds r1, r4, #0
	str r0, [r4, #0x28]
	ldr r0, _021DE8DC @ =ov19_021DE8E0
	str r2, [r4, #0x30]
	bl ov19_021D77C8
	cmp r0, #0
	beq _021DE8D4
	ldr r0, [r5, #0x34]
	adds r0, r0, #1
	str r0, [r5, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
_021DE8D4:
	adds r0, r4, #0
	bl FUN_020181C4
_021DE8DA:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DE8DC: .4byte ov19_021DE8E0
	thumb_func_end ov19_021DE858

	thumb_func_start ov19_021DE8E0
ov19_021DE8E0: @ 0x021DE8E0
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021DE8F2
	cmp r0, #1
	beq _021DE928
	pop {r3, r4, r5, pc}
_021DE8F2:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _021DE918
	ldr r2, [r4, #8]
	ldr r0, [r4, #0x20]
	adds r1, #8
	adds r0, r2, r0
	str r0, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #0x24]
	adds r0, r2, r0
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	bl FUN_02021C50
	ldr r0, [r4, #0x2c]
	subs r0, r0, #1
	str r0, [r4, #0x2c]
	pop {r3, r4, r5, pc}
_021DE918:
	ldr r0, [r4, #4]
	adds r1, #0x14
	bl FUN_02021C50
	ldr r0, [r4, #0x30]
	adds r0, r0, #1
	str r0, [r4, #0x30]
	pop {r3, r4, r5, pc}
_021DE928:
	ldr r0, [r4, #4]
	bl FUN_02021FD0
	cmp r0, #0
	bne _021DE952
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x28]
	bl ov19_021D78AC
	ldr r1, [r4]
	ldr r0, [r1, #0x34]
	subs r0, r0, #1
	str r0, [r1, #0x34]
	adds r0, r5, #0
	bl FUN_0200DA58
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov19_021D79B8
_021DE952:
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021DE8E0

	thumb_func_start ov19_021DE954
ov19_021DE954: @ 0x021DE954
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r1, [r5]
	cmp r1, #0
	beq _021DE9A2
	movs r1, #1
	bl ov19_021DE560
	adds r4, r0, #0
	bmi _021DE9A2
	ldr r0, [r5, #0x18]
	add r1, sp, #4
	bl ov19_021D9B1C
	movs r0, #2
	ldr r1, [sp, #8]
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #3
	bl ov19_021DE57C
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x1c]
	movs r1, #3
	bl FUN_02021D6C
	movs r0, #0xc
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	add r2, sp, #4
	movs r3, #2
	bl ov19_021DE858
_021DE9A2:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021DE954

	thumb_func_start ov19_021DE9A8
ov19_021DE9A8: @ 0x021DE9A8
	ldr r0, [r0, #0x34]
	cmp r0, #0
	bne _021DE9B2
	movs r0, #1
	bx lr
_021DE9B2:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov19_021DE9A8

	thumb_func_start ov19_021DE9B8
ov19_021DE9B8: @ 0x021DE9B8
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021DE9E2
	movs r1, #1
	bl ov19_021DE560
	adds r5, r0, #0
	bmi _021DE9E2
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	bl ov19_021DE57C
	lsls r0, r5, #2
	adds r0, r4, r0
	ldr r0, [r0, #0x1c]
	movs r1, #2
	bl FUN_02021D6C
_021DE9E2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021DE9B8

	thumb_func_start ov19_021DE9E4
ov19_021DE9E4: @ 0x021DE9E4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5]
	cmp r1, #0
	beq _021DEA14
	movs r1, #2
	bl ov19_021DE560
	adds r4, r0, #0
	bmi _021DEA14
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x1c]
	bl FUN_02021FD0
	cmp r0, #0
	beq _021DEA0A
	movs r0, #0
	pop {r3, r4, r5, pc}
_021DEA0A:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl ov19_021DE57C
_021DEA14:
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021DE9E4

	thumb_func_start ov19_021DEA18
ov19_021DEA18: @ 0x021DEA18
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r1, [r5]
	cmp r1, #0
	beq _021DEA5E
	movs r1, #3
	bl ov19_021DE560
	adds r4, r0, #0
	bmi _021DEA5E
	adds r0, r5, #0
	add r1, sp, #8
	add r2, sp, #4
	bl ov19_021DE694
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl ov19_021DE57C
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x1c]
	movs r1, #4
	bl FUN_02021D6C
	movs r0, #0xc
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	add r2, sp, #8
	movs r3, #3
	bl ov19_021DE858
_021DEA5E:
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021DEA18

	thumb_func_start ov19_021DEA64
ov19_021DEA64: @ 0x021DEA64
	ldr r0, [r0, #0x34]
	cmp r0, #0
	bne _021DEA6E
	movs r0, #1
	bx lr
_021DEA6E:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov19_021DEA64

	thumb_func_start ov19_021DEA74
ov19_021DEA74: @ 0x021DEA74
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r1, [r5]
	cmp r1, #0
	beq _021DEB02
	movs r1, #3
	bl ov19_021DE560
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #1
	bl ov19_021DE560
	adds r6, r0, #0
	cmp r4, #0
	blt _021DEB02
	cmp r6, #0
	blt _021DEB02
	adds r0, r5, #0
	add r1, sp, #8
	add r2, sp, #4
	bl ov19_021DE694
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl ov19_021DE57C
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x1c]
	movs r1, #4
	bl FUN_02021D6C
	movs r0, #0xc
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	add r2, sp, #8
	movs r3, #3
	bl ov19_021DE858
	ldr r0, [r5, #0x18]
	add r1, sp, #8
	bl ov19_021D9B1C
	movs r0, #2
	ldr r1, [sp, #0xc]
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #3
	bl ov19_021DE57C
	lsls r0, r6, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x1c]
	movs r1, #3
	bl FUN_02021D6C
	movs r0, #0xc
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #8
	movs r3, #2
	bl ov19_021DE858
_021DEB02:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov19_021DEA74

	thumb_func_start ov19_021DEB08
ov19_021DEB08: @ 0x021DEB08
	ldr r0, [r0, #0x34]
	cmp r0, #0
	bne _021DEB12
	movs r0, #1
	bx lr
_021DEB12:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov19_021DEB08

	thumb_func_start ov19_021DEB18
ov19_021DEB18: @ 0x021DEB18
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021DEB5E
	movs r1, #3
	bl ov19_021DE560
	adds r5, r0, #0
	bmi _021DEB3C
	lsls r0, r5, #2
	adds r0, r4, r0
	ldr r0, [r0, #0x1c]
	movs r1, #5
	bl FUN_02021D6C
	str r5, [r4, #0x38]
	pop {r3, r4, r5, pc}
_021DEB3C:
	adds r0, r4, #0
	movs r1, #1
	bl ov19_021DE560
	adds r5, r0, #0
	bmi _021DEB58
	lsls r0, r5, #2
	adds r0, r4, r0
	ldr r0, [r0, #0x1c]
	movs r1, #2
	bl FUN_02021D6C
	str r5, [r4, #0x38]
	pop {r3, r4, r5, pc}
_021DEB58:
	movs r0, #0
	mvns r0, r0
	str r0, [r4, #0x38]
_021DEB5E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021DEB18

	thumb_func_start ov19_021DEB60
ov19_021DEB60: @ 0x021DEB60
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021DEB96
	movs r0, #0
	ldr r1, [r4, #0x38]
	mvns r0, r0
	cmp r1, r0
	beq _021DEB96
	lsls r0, r1, #2
	adds r0, r4, r0
	ldr r0, [r0, #0x1c]
	bl FUN_02021FD0
	cmp r0, #0
	beq _021DEB86
	movs r0, #0
	pop {r4, pc}
_021DEB86:
	ldr r1, [r4, #0x38]
	adds r0, r4, #0
	movs r2, #0
	bl ov19_021DE57C
	movs r0, #0
	mvns r0, r0
	str r0, [r4, #0x38]
_021DEB96:
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021DEB60

	thumb_func_start ov19_021DEB9C
ov19_021DEB9C: @ 0x021DEB9C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5]
	cmp r1, #0
	beq _021DEBD6
	movs r1, #3
	bl ov19_021DE560
	adds r6, r0, #0
	bmi _021DEBD6
	ldm r4!, {r0, r1}
	add r3, sp, #0
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	movs r0, #2
	ldr r1, [sp, #4]
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp, #4]
	lsls r0, r6, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x1c]
	adds r1, r2, #0
	bl FUN_02021C50
_021DEBD6:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov19_021DEB9C

	thumb_func_start ov19_021DEBDC
ov19_021DEBDC: @ 0x021DEBDC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5]
	cmp r1, #0
	beq _021DEC00
	movs r1, #3
	bl ov19_021DE560
	cmp r0, #0
	blt _021DEC00
	lsls r0, r0, #2
	adds r0, r5, r0
	lsls r1, r4, #0x18
	ldr r0, [r0, #0x1c]
	lsrs r1, r1, #0x18
	bl FUN_02021E80
_021DEC00:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021DEBDC

	thumb_func_start ov19_021DEC04
ov19_021DEC04: @ 0x021DEC04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r2, #0
	adds r5, r0, #0
	adds r0, r7, #0
	adds r6, r1, #0
	str r3, [sp, #4]
	bl ov19_021D5E08
	cmp r0, #4
	beq _021DEC24
	movs r0, #0
	str r0, [r5]
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DEC24:
	movs r1, #0xe1
	movs r0, #0xa
	lsls r1, r1, #2
	bl FUN_02018144
	adds r4, r0, #0
	beq _021DECA4
	str r6, [r4, #4]
	ldr r0, [sp, #4]
	str r7, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x10]
	adds r0, r6, #0
	bl ov19_021D77D8
	str r0, [r4, #0x14]
	movs r0, #0xa
	movs r3, #0xda
	str r0, [sp]
	lsls r3, r3, #2
	ldr r0, [sp, #0x28]
	movs r1, #7
	movs r2, #1
	adds r3, r4, r3
	bl FUN_020071D0
	movs r3, #0x37
	lsls r3, r3, #4
	str r0, [r4, r3]
	movs r0, #0xa
	str r0, [sp]
	subs r3, r3, #4
	ldr r0, [sp, #0x28]
	movs r1, #8
	movs r2, #1
	adds r3, r4, r3
	bl FUN_020071D0
	movs r2, #0xdd
	lsls r2, r2, #2
	str r0, [r4, r2]
	ldr r0, [sp, #0x24]
	movs r1, #0x1a
	str r0, [r4, #0x6c]
	movs r0, #1
	subs r2, #0xed
	movs r3, #0xa
	bl FUN_0200B144
	str r0, [r4, #0x70]
	movs r0, #0x20
	movs r1, #0xa
	bl FUN_02023790
	str r0, [r4, #0x74]
	movs r0, #0xe
	movs r1, #0
	lsls r0, r0, #6
	str r1, [r4, r0]
	add sp, #8
	str r4, [r5]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DECA4:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov19_021DEC04

	thumb_func_start ov19_021DECAC
ov19_021DECAC: @ 0x021DECAC
	push {r4, lr}
	adds r4, r0, #0
	beq _021DECE4
	movs r0, #0x37
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_020181C4
	movs r0, #0xdd
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020181C4
	ldr r0, [r4, #0x70]
	bl FUN_0200B190
	adds r0, r4, #0
	bl ov19_021DF7D0
	adds r0, r4, #0
	bl ov19_021DF03C
	ldr r0, [r4, #0x74]
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_020181C4
_021DECE4:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021DECAC

	thumb_func_start ov19_021DECE8
ov19_021DECE8: @ 0x021DECE8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r5, #0
	beq _021DEDD6
	bl ov19_021DEEFC
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	adds r0, r4, #0
	movs r1, #0x84
	movs r3, #5
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	adds r0, r4, #0
	movs r1, #0x81
	movs r3, #5
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	adds r0, r4, #0
	movs r1, #0x82
	movs r3, #6
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	adds r0, r4, #0
	movs r1, #0x83
	movs r3, #7
	bl FUN_0200710C
	movs r0, #0x80
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0x85
	movs r2, #4
	movs r3, #0
	bl FUN_02007130
	bl FUN_02079FD0
	movs r3, #0x80
	adds r1, r0, #0
	str r3, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #0x13
	movs r2, #5
	bl FUN_02006E84
	movs r0, #4
	movs r1, #0x20
	movs r2, #0
	movs r3, #0xa
	bl FUN_02019690
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	movs r1, #4
	adds r3, r2, #0
	bl FUN_02019CB8
	adds r0, r5, #0
	bl ov19_021DEF64
	adds r0, r5, #0
	bl ov19_021DEFC8
	ldr r0, [r5, #8]
	bl ov19_021D5FA4
	movs r1, #0xde
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, #0xc]
	movs r1, #4
	bl FUN_02019448
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov19_021DF5D0
_021DEDD6:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021DECE8

	thumb_func_start ov19_021DEDDC
ov19_021DEDDC: @ 0x021DEDDC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	cmp r5, #0
	beq _021DEE30
	ldr r0, [r5, #8]
	bl ov19_021D5F9C
	adds r4, r0, #0
	cmp r6, #0
	beq _021DEE10
	movs r0, #1
	eors r0, r4
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x28]
	movs r1, #2
	bl FUN_02021D6C
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x28]
	movs r1, #0
	bl FUN_02021D6C
	b _021DEE2A
_021DEE10:
	movs r1, #1
	eors r0, r1
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x28]
	bl FUN_02021D6C
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x28]
	movs r1, #0
	bl FUN_02021D6C
_021DEE2A:
	adds r0, r5, #0
	bl ov19_021DEEFC
_021DEE30:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov19_021DEDDC

	thumb_func_start ov19_021DEE34
ov19_021DEE34: @ 0x021DEE34
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov19_021DF834
	cmp r5, #0
	beq _021DEE80
	ldr r0, [r5, #8]
	bl ov19_021D5F9C
	adds r4, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov19_021DF8C8
	ldr r0, [r5, #8]
	bl ov19_021D5FA4
	cmp r0, #0
	beq _021DEE64
	cmp r0, #1
	beq _021DEE6E
	cmp r0, #2
	beq _021DEE78
	pop {r3, r4, r5, pc}
_021DEE64:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov19_021DF3AC
	pop {r3, r4, r5, pc}
_021DEE6E:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov19_021DF178
	pop {r3, r4, r5, pc}
_021DEE78:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov19_021DF4D0
_021DEE80:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021DEE34

	thumb_func_start ov19_021DEE84
ov19_021DEE84: @ 0x021DEE84
	movs r0, #1
	bx lr
	thumb_func_end ov19_021DEE84

	thumb_func_start ov19_021DEE88
ov19_021DEE88: @ 0x021DEE88
	push {r4, lr}
	adds r4, r0, #0
	beq _021DEEA6
	movs r1, #0xdf
	movs r2, #0
	lsls r1, r1, #2
	str r2, [r4, r1]
	subs r1, r1, #4
	ldr r1, [r4, r1]
	bl ov19_021DF0CC
	ldr r0, [r4, #0xc]
	movs r1, #4
	bl FUN_02019448
_021DEEA6:
	pop {r4, pc}
	thumb_func_end ov19_021DEE88

	thumb_func_start ov19_021DEEA8
ov19_021DEEA8: @ 0x021DEEA8
	push {r4, lr}
	adds r4, r0, #0
	beq _021DEEF8
	movs r1, #0xdf
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _021DEEC2
	cmp r1, #1
	beq _021DEED2
	cmp r1, #2
	beq _021DEEF0
	b _021DEEF4
_021DEEC2:
	bl ov19_021DEF64
	movs r0, #0xdf
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _021DEEF4
_021DEED2:
	bl ov19_021DF2E0
	adds r0, r4, #0
	bl ov19_021DF064
	ldr r0, [r4, #0xc]
	movs r1, #4
	bl FUN_02019448
	movs r0, #0xdf
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _021DEEF4
_021DEEF0:
	movs r0, #1
	pop {r4, pc}
_021DEEF4:
	movs r0, #0
	pop {r4, pc}
_021DEEF8:
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov19_021DEEA8

	thumb_func_start ov19_021DEEFC
ov19_021DEEFC: @ 0x021DEEFC
	push {r4, r5, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r0, [r5, #8]
	bl ov19_021D5F9C
	cmp r0, #0
	bne _021DEF10
	movs r0, #0xda
	b _021DEF12
_021DEF10:
	movs r0, #0xdb
_021DEF12:
	lsls r0, r0, #2
	ldr r4, [r5, r0]
	movs r0, #6
	str r0, [sp]
	movs r1, #0x20
	adds r0, r4, #0
	movs r2, #0
	str r1, [sp, #4]
	adds r0, #0xc
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r5, #0xc]
	movs r1, #2
	adds r3, r2, #0
	bl FUN_020198E8
	movs r0, #6
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	adds r4, #0xc
	str r4, [sp, #8]
	movs r2, #0x1a
	str r2, [sp, #0xc]
	movs r3, #0
	str r3, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r5, #0xc]
	movs r1, #2
	bl FUN_020198E8
	ldr r0, [r5, #0xc]
	movs r1, #2
	bl FUN_02019448
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end ov19_021DEEFC

	thumb_func_start ov19_021DEF64
ov19_021DEF64: @ 0x021DEF64
	push {r3, lr}
	ldr r0, [r0, #8]
	bl ov19_021D5FA4
	cmp r0, #0
	beq _021DEF7A
	cmp r0, #1
	beq _021DEF94
	cmp r0, #2
	beq _021DEFAE
	pop {r3, pc}
_021DEF7A:
	movs r0, #5
	movs r1, #1
	bl FUN_02019120
	movs r0, #6
	movs r1, #0
	bl FUN_02019120
	movs r0, #7
	movs r1, #0
	bl FUN_02019120
	pop {r3, pc}
_021DEF94:
	movs r0, #6
	movs r1, #1
	bl FUN_02019120
	movs r0, #5
	movs r1, #0
	bl FUN_02019120
	movs r0, #7
	movs r1, #0
	bl FUN_02019120
	pop {r3, pc}
_021DEFAE:
	movs r0, #7
	movs r1, #1
	bl FUN_02019120
	movs r0, #5
	movs r1, #0
	bl FUN_02019120
	movs r0, #6
	movs r1, #0
	bl FUN_02019120
	pop {r3, pc}
	thumb_func_end ov19_021DEF64

	thumb_func_start ov19_021DEFC8
ov19_021DEFC8: @ 0x021DEFC8
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r1, #0
	adds r2, r7, #0
	adds r5, r1, #0
_021DEFD2:
	adds r0, r2, #0
	adds r0, #0x84
	adds r1, r1, #1
	adds r2, #0x10
	str r5, [r0]
	cmp r1, #7
	blt _021DEFD2
	adds r4, r7, #0
	ldr r6, _021DF038 @ =0x021E0524
	adds r4, #0x78
_021DEFE6:
	ldr r0, [r7, #0xc]
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_0201A8D4
	adds r0, r4, #0
	bl FUN_0201A9F4
	adds r5, r5, #1
	adds r6, #8
	adds r4, #0x10
	cmp r5, #3
	blo _021DEFE6
	adds r0, r7, #0
	bl ov19_021DF2E0
	adds r0, r7, #0
	adds r0, #0x78
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r7, #0
	adds r0, #0x88
	movs r1, #0
	bl FUN_0201ADA4
	adds r4, r7, #0
	movs r5, #0
	adds r4, #0x78
_021DF020:
	adds r0, r4, #0
	bl FUN_0201ACCC
	adds r5, r5, #1
	adds r4, #0x10
	cmp r5, #3
	blo _021DF020
	adds r0, r7, #0
	bl ov19_021DF064
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DF038: .4byte 0x021E0524
	thumb_func_end ov19_021DEFC8

	thumb_func_start ov19_021DF03C
ov19_021DF03C: @ 0x021DF03C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	movs r6, #0
	adds r4, #0x78
_021DF046:
	adds r0, r5, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _021DF056
	adds r0, r4, #0
	bl FUN_0201A8FC
_021DF056:
	adds r6, r6, #1
	adds r5, #0x10
	adds r4, #0x10
	cmp r6, #7
	blt _021DF046
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov19_021DF03C

	thumb_func_start ov19_021DF064
ov19_021DF064: @ 0x021DF064
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	bl ov19_021D5FA4
	adds r4, r0, #0
	ldr r0, [r5, #8]
	bl ov19_021D5FA4
	cmp r0, #0
	beq _021DF084
	cmp r0, #1
	beq _021DF09C
	cmp r0, #2
	beq _021DF0AE
	b _021DF0C4
_021DF084:
	adds r0, r5, #0
	bl ov19_021DF108
	adds r0, r5, #0
	movs r1, #0
	bl ov19_021DF3AC
	adds r0, r5, #0
	movs r1, #1
	bl ov19_021DF3AC
	b _021DF0C4
_021DF09C:
	adds r0, r5, #0
	movs r1, #0
	bl ov19_021DF178
	adds r0, r5, #0
	movs r1, #1
	bl ov19_021DF178
	b _021DF0C4
_021DF0AE:
	adds r0, r5, #0
	bl ov19_021DF270
	adds r0, r5, #0
	movs r1, #0
	bl ov19_021DF4D0
	adds r0, r5, #0
	movs r1, #1
	bl ov19_021DF4D0
_021DF0C4:
	movs r0, #0xde
	lsls r0, r0, #2
	str r4, [r5, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021DF064

	thumb_func_start ov19_021DF0CC
ov19_021DF0CC: @ 0x021DF0CC
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _021DF0DE
	cmp r1, #1
	beq _021DF0EA
	cmp r1, #2
	beq _021DF0FA
	pop {r4, pc}
_021DF0DE:
	bl ov19_021DF140
	adds r0, r4, #0
	bl ov19_021DF394
	pop {r4, pc}
_021DF0EA:
	movs r1, #0
	bl ov19_021DF250
	adds r0, r4, #0
	movs r1, #1
	bl ov19_021DF250
	pop {r4, pc}
_021DF0FA:
	bl ov19_021DF2A8
	adds r0, r4, #0
	bl ov19_021DF394
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021DF0CC

	thumb_func_start ov19_021DF108
ov19_021DF108: @ 0x021DF108
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, _021DF13C @ =0x021E0514
	str r0, [sp]
	movs r6, #0
	adds r5, #0x78
_021DF114:
	adds r0, r6, #3
	lsls r4, r0, #4
	ldr r0, [sp]
	adds r1, r5, r4
	ldr r0, [r0, #0xc]
	adds r2, r7, #0
	bl FUN_0201A8D4
	adds r0, r5, r4
	bl FUN_0201A9F4
	adds r0, r5, r4
	movs r1, #0
	bl FUN_0201ADA4
	adds r6, r6, #1
	adds r7, #8
	cmp r6, #2
	blo _021DF114
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DF13C: .4byte 0x021E0514
	thumb_func_end ov19_021DF108

	thumb_func_start ov19_021DF140
ov19_021DF140: @ 0x021DF140
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x78
	adds r5, r0, #0
	movs r6, #3
	adds r4, #0x30
	adds r5, #0x30
	movs r7, #0
_021DF150:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _021DF16C
	adds r0, r5, #0
	bl FUN_0201AA3C
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r0, r4, #0
	adds r0, #0x84
	str r7, [r0]
_021DF16C:
	adds r6, r6, #1
	adds r4, #0x10
	adds r5, #0x10
	cmp r6, #4
	ble _021DF150
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DF140

	thumb_func_start ov19_021DF178
ov19_021DF178: @ 0x021DF178
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	ldr r0, [r7, #8]
	str r1, [sp]
	bl ov19_021D5FAC
	adds r4, r0, #0
	ldr r0, [r7, #8]
	bl ov19_021D5E34
	adds r6, r0, #0
	ldr r0, [r7, #8]
	bl ov19_021D5F9C
	ldr r1, [sp]
	cmp r1, r0
	bne _021DF1A0
	movs r5, #1
	b _021DF1A2
_021DF1A0:
	movs r5, #0
_021DF1A2:
	ldr r0, [r7, #8]
	ldr r1, [sp]
	bl ov19_021D5FB8
	cmp r6, #1
	bne _021DF1B2
	cmp r5, #1
	beq _021DF1BA
_021DF1B2:
	cmp r5, #0
	bne _021DF23E
	cmp r0, #1
	bne _021DF23E
_021DF1BA:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _021DF23E
	ldr r1, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #0x10]
	movs r0, #0x14
	adds r2, r1, #0
	muls r2, r0, r2
	adds r5, r7, r2
	movs r2, #1
	eors r1, r2
	muls r0, r1, r0
	ldr r6, _021DF24C @ =0x021E053C
	adds r4, #0x16
	adds r7, r7, r0
_021DF1DC:
	ldr r3, [r6]
	ldr r0, [r6, #8]
	ldrh r2, [r4]
	subs r1, r0, r3
	asrs r0, r1, #7
	lsrs r0, r0, #0x18
	adds r0, r1, r0
	asrs r0, r0, #8
	muls r0, r2, r0
	adds r0, r3, r0
	str r0, [sp, #8]
	ldr r3, [r6, #4]
	ldr r0, [r6, #0xc]
	ldrh r2, [r4]
	subs r1, r0, r3
	asrs r0, r1, #7
	lsrs r0, r0, #0x18
	adds r0, r1, r0
	asrs r0, r0, #8
	muls r0, r2, r0
	adds r0, r3, r0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x34]
	add r1, sp, #8
	bl FUN_02021C50
	ldr r0, [r5, #0x34]
	movs r1, #0
	bl ov19_021D78AC
	ldr r0, [r7, #0x34]
	movs r1, #1
	bl ov19_021D78AC
	ldr r0, [r5, #0x34]
	movs r1, #1
	bl FUN_02021CAC
	ldr r0, [sp, #4]
	adds r4, r4, #2
	adds r0, r0, #1
	adds r6, #0x10
	adds r5, r5, #4
	adds r7, r7, #4
	str r0, [sp, #4]
	cmp r0, #5
	blt _021DF1DC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021DF23E:
	ldr r1, [sp]
	adds r0, r7, #0
	bl ov19_021DF250
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021DF24C: .4byte 0x021E053C
	thumb_func_end ov19_021DF178

	thumb_func_start ov19_021DF250
ov19_021DF250: @ 0x021DF250
	push {r4, r5, r6, lr}
	movs r2, #0x14
	movs r4, #0
	muls r2, r1, r2
	adds r5, r0, r2
	adds r6, r4, #0
_021DF25C:
	ldr r0, [r5, #0x34]
	adds r1, r6, #0
	bl FUN_02021CAC
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #5
	blt _021DF25C
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov19_021DF250

	thumb_func_start ov19_021DF270
ov19_021DF270: @ 0x021DF270
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, _021DF2A4 @ =0x021E0504
	str r0, [sp]
	movs r6, #0
	adds r5, #0x78
_021DF27C:
	adds r0, r6, #5
	lsls r4, r0, #4
	ldr r0, [sp]
	adds r1, r5, r4
	ldr r0, [r0, #0xc]
	adds r2, r7, #0
	bl FUN_0201A8D4
	adds r0, r5, r4
	bl FUN_0201A9F4
	adds r0, r5, r4
	movs r1, #0
	bl FUN_0201ADA4
	adds r6, r6, #1
	adds r7, #8
	cmp r6, #2
	blo _021DF27C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DF2A4: .4byte 0x021E0504
	thumb_func_end ov19_021DF270

	thumb_func_start ov19_021DF2A8
ov19_021DF2A8: @ 0x021DF2A8
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x78
	adds r5, r0, #0
	movs r6, #5
	adds r4, #0x50
	adds r5, #0x50
	movs r7, #0
_021DF2B8:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _021DF2D4
	adds r0, r5, #0
	bl FUN_0201AA3C
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r0, r4, #0
	adds r0, #0x84
	str r7, [r0]
_021DF2D4:
	adds r6, r6, #1
	adds r4, #0x10
	adds r5, #0x10
	cmp r6, #6
	ble _021DF2B8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DF2A8

	thumb_func_start ov19_021DF2E0
ov19_021DF2E0: @ 0x021DF2E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r7, r5, #0
	adds r7, #0x98
	adds r0, r7, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #8]
	bl ov19_021D5FA4
	cmp r0, #0
	beq _021DF302
	cmp r0, #2
	beq _021DF34E
	b _021DF380
_021DF302:
	movs r0, #0
	ldr r6, _021DF38C @ =0x021E04F4
	str r0, [sp, #0x10]
	adds r4, r0, #0
_021DF30A:
	ldrh r1, [r6]
	ldr r0, [r5, #0x6c]
	ldr r2, [r5, #0x74]
	bl FUN_0200B1B8
	movs r0, #0
	ldr r1, [r5, #0x74]
	adds r2, r0, #0
	bl FUN_02002D7C
	ldrb r1, [r7, #7]
	lsls r1, r1, #3
	subs r0, r1, r0
	lsrs r3, r0, #1
	str r4, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DF390 @ =0x000F0E00
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x74]
	adds r0, r7, #0
	bl FUN_0201D78C
	ldr r0, [sp, #0x10]
	adds r6, r6, #2
	adds r0, r0, #1
	adds r4, #0x10
	str r0, [sp, #0x10]
	cmp r0, #8
	blo _021DF30A
	b _021DF380
_021DF34E:
	ldr r0, [r5, #0x6c]
	ldr r2, [r5, #0x74]
	movs r1, #0x2b
	bl FUN_0200B1B8
	movs r0, #0
	ldr r1, [r5, #0x74]
	adds r2, r0, #0
	bl FUN_02002D7C
	ldrb r1, [r7, #7]
	lsls r1, r1, #3
	subs r0, r1, r0
	movs r1, #0
	lsrs r3, r0, #1
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DF390 @ =0x000F0E00
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x74]
	adds r0, r7, #0
	bl FUN_0201D78C
_021DF380:
	adds r0, r7, #0
	bl FUN_0201ACCC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021DF38C: .4byte 0x021E04F4
_021DF390: .4byte 0x000F0E00
	thumb_func_end ov19_021DF2E0

	thumb_func_start ov19_021DF394
ov19_021DF394: @ 0x021DF394
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x98
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r4, #0
	bl FUN_0201ACCC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov19_021DF394

	thumb_func_start ov19_021DF3AC
ov19_021DF3AC: @ 0x021DF3AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	adds r0, r1, #0
	adds r2, r5, #0
	adds r0, r0, #3
	adds r2, #0x78
	lsls r0, r0, #4
	adds r4, r2, r0
	ldr r0, [r5, #8]
	str r1, [sp, #0x10]
	bl ov19_021D5FAC
	adds r6, r0, #0
	ldr r0, [r5, #8]
	bl ov19_021D5E34
	str r0, [sp, #0x18]
	ldr r0, [r5, #8]
	bl ov19_021D5F9C
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021DF3E0
	movs r7, #1
	b _021DF3E2
_021DF3E0:
	movs r7, #0
_021DF3E2:
	ldr r0, [r5, #8]
	ldr r1, [sp, #0x10]
	bl ov19_021D5FB8
	str r0, [sp, #0x14]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _021DF3FE
	cmp r7, #1
	beq _021DF408
_021DF3FE:
	cmp r7, #0
	bne _021DF4C2
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _021DF4C2
_021DF408:
	ldrb r0, [r6, #6]
	cmp r0, #0
	bne _021DF482
	movs r0, #0
	ldr r1, [r6, #0x2c]
	adds r2, r0, #0
	bl FUN_02002D7C
	ldrb r1, [r4, #7]
	lsls r1, r1, #3
	subs r0, r1, r0
	movs r1, #0
	lsrs r3, r0, #1
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DF4CC @ =0x000F0E00
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r6, #0x2c]
	adds r0, r4, #0
	bl FUN_0201D78C
	movs r7, #0
	adds r6, #8
_021DF43A:
	movs r0, #1
	str r0, [sp]
	ldrh r1, [r6]
	ldr r0, [r5, #0x74]
	movs r2, #3
	movs r3, #0
	bl FUN_020238A0
	movs r0, #0
	ldr r1, [r5, #0x74]
	adds r2, r0, #0
	bl FUN_02002D7C
	ldrb r1, [r4, #7]
	lsls r1, r1, #3
	subs r0, r1, r0
	lsrs r3, r0, #1
	adds r0, r7, #1
	lsls r0, r0, #4
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DF4CC @ =0x000F0E00
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x74]
	adds r0, r4, #0
	bl FUN_0201D78C
	adds r7, r7, #1
	adds r6, r6, #2
	cmp r7, #7
	blt _021DF43A
	b _021DF4C2
_021DF482:
	ldr r0, [r5, #0x6c]
	ldr r2, [r5, #0x74]
	movs r1, #0x2c
	bl FUN_0200B1B8
	movs r7, #0
	adds r6, r7, #0
_021DF490:
	movs r0, #0
	ldr r1, [r5, #0x74]
	adds r2, r0, #0
	bl FUN_02002D7C
	ldrb r1, [r4, #7]
	lsls r1, r1, #3
	subs r0, r1, r0
	lsrs r3, r0, #1
	str r6, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DF4CC @ =0x000F0E00
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x74]
	adds r0, r4, #0
	bl FUN_0201D78C
	adds r7, r7, #1
	adds r6, #0x10
	cmp r7, #8
	blt _021DF490
_021DF4C2:
	adds r0, r4, #0
	bl FUN_0201ACCC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DF4CC: .4byte 0x000F0E00
	thumb_func_end ov19_021DF3AC

	thumb_func_start ov19_021DF4D0
ov19_021DF4D0: @ 0x021DF4D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	adds r0, r1, #0
	adds r2, r5, #0
	adds r0, r0, #5
	adds r2, #0x78
	lsls r0, r0, #4
	adds r4, r2, r0
	ldr r0, [r5, #8]
	str r1, [sp, #0x10]
	bl ov19_021D5FAC
	adds r6, r0, #0
	ldr r0, [r5, #8]
	bl ov19_021D5E34
	str r0, [sp, #0x1c]
	ldr r0, [r5, #8]
	bl ov19_021D5F9C
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _021DF504
	movs r7, #1
	b _021DF506
_021DF504:
	movs r7, #0
_021DF506:
	ldr r0, [r5, #8]
	ldr r1, [sp, #0x10]
	bl ov19_021D5FB8
	str r0, [sp, #0x18]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne _021DF522
	cmp r7, #1
	beq _021DF52C
_021DF522:
	cmp r7, #0
	bne _021DF5C0
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _021DF5C0
_021DF52C:
	ldrb r0, [r6, #6]
	cmp r0, #0
	bne _021DF580
	movs r0, #0
	str r0, [sp, #0x14]
	movs r7, #4
_021DF538:
	ldrh r1, [r6, #0x20]
	cmp r1, #0
	beq _021DF570
	ldr r0, [r5, #0x70]
	ldr r2, [r5, #0x74]
	bl FUN_0200B1B8
	movs r0, #0
	ldr r1, [r5, #0x74]
	adds r2, r0, #0
	bl FUN_02002D7C
	ldrb r1, [r4, #7]
	lsls r1, r1, #3
	subs r0, r1, r0
	lsrs r3, r0, #1
	str r7, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DF5CC @ =0x000F0E00
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x74]
	adds r0, r4, #0
	bl FUN_0201D78C
_021DF570:
	ldr r0, [sp, #0x14]
	adds r6, r6, #2
	adds r0, r0, #1
	adds r7, #0x18
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _021DF538
	b _021DF5C0
_021DF580:
	ldr r0, [r5, #0x6c]
	ldr r2, [r5, #0x74]
	movs r1, #0x2c
	bl FUN_0200B1B8
	movs r7, #0
	movs r6, #4
_021DF58E:
	movs r0, #0
	ldr r1, [r5, #0x74]
	adds r2, r0, #0
	bl FUN_02002D7C
	ldrb r1, [r4, #7]
	lsls r1, r1, #3
	subs r0, r1, r0
	lsrs r3, r0, #1
	str r6, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DF5CC @ =0x000F0E00
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x74]
	adds r0, r4, #0
	bl FUN_0201D78C
	adds r7, r7, #1
	adds r6, #0x18
	cmp r7, #4
	blt _021DF58E
_021DF5C0:
	adds r0, r4, #0
	bl FUN_0201ACCC
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DF5CC: .4byte 0x000F0E00
	thumb_func_end ov19_021DF4D0

	thumb_func_start ov19_021DF5D0
ov19_021DF5D0: @ 0x021DF5D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	adds r7, r0, #0
	adds r4, r1, #0
	movs r0, #0xa
	adds r3, r7, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x87
	movs r2, #1
	adds r3, #0x60
	bl FUN_02007204
	str r0, [r7, #0x5c]
	movs r0, #0xa
	adds r3, r7, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x88
	movs r2, #1
	adds r3, #0x68
	bl FUN_02007220
	str r0, [r7, #0x64]
	movs r0, #0x60
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0x89
	movs r2, #5
	movs r3, #0
	bl FUN_02007130
	add r0, sp, #0x48
	blx FUN_020A818C
	movs r3, #0
	str r3, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r3, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	add r0, sp, #0x48
	str r0, [sp, #0x10]
	adds r0, r4, #0
	movs r1, #0x86
	movs r2, #1
	bl FUN_0200718C
	str r0, [sp, #0x20]
	ldr r0, [r7, #4]
	bl ov19_021D77D0
	adds r2, r0, #0
	ldr r0, [r7, #0x68]
	add r1, sp, #0x48
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r3, [r7, #0x60]
	add r0, sp, #0x24
	bl ov19_021D783C
	ldr r0, _021DF728 @ =0x021E04E4
	movs r4, #0
	str r0, [sp, #0x1c]
	str r7, [sp, #0x18]
	str r7, [sp, #0x14]
_021DF65C:
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	movs r3, #0
	ldrsh r2, [r2, r3]
	ldr r3, [sp, #0x1c]
	movs r5, #2
	ldrsh r3, [r3, r5]
	ldr r0, [r7, #0x10]
	add r1, sp, #0x24
	bl ov19_021D785C
	ldr r1, [sp, #0x18]
	str r0, [r1, #0x28]
	adds r1, r4, #0
	bl FUN_02021E90
	ldr r0, [sp, #0x18]
	movs r1, #0
	ldr r0, [r0, #0x28]
	bl FUN_02021D6C
	ldr r5, [sp, #0x14]
	movs r6, #0
_021DF690:
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r2, #0
	ldr r0, [r7, #0x10]
	add r1, sp, #0x24
	adds r3, r2, #0
	bl ov19_021D785C
	str r0, [r5, #0x34]
	adds r1, r4, #5
	bl FUN_02021D6C
	ldr r0, [r5, #0x34]
	adds r1, r4, #0
	bl FUN_02021E90
	ldr r0, [r5, #0x34]
	movs r1, #0
	bl FUN_02021CAC
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, #5
	blo _021DF690
	ldr r0, [sp, #0x1c]
	adds r4, r4, #1
	adds r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	adds r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	adds r0, #0x14
	str r0, [sp, #0x14]
	cmp r4, #2
	blo _021DF65C
	ldr r0, [r7, #0x2c]
	movs r1, #1
	bl FUN_02021D0C
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r3, #0x23
	ldr r0, [r7, #0x10]
	add r1, sp, #0x24
	movs r2, #0x80
	lsls r3, r3, #4
	bl ov19_021D785C
	str r0, [r7, #0x30]
	movs r1, #3
	bl FUN_02021D6C
	ldr r0, [r7, #0x30]
	movs r1, #2
	bl FUN_02021E90
	ldr r0, _021DF72C @ =ov19_021DF930
	adds r1, r7, #0
	movs r2, #1
	bl FUN_0200D9E8
	movs r1, #0xe
	lsls r1, r1, #6
	str r0, [r7, r1]
	ldr r1, [sp, #0x20]
	adds r0, r7, #0
	bl ov19_021DF730
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	nop
_021DF728: .4byte 0x021E04E4
_021DF72C: .4byte ov19_021DF930
	thumb_func_end ov19_021DF5D0

	thumb_func_start ov19_021DF730
ov19_021DF730: @ 0x021DF730
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	str r0, [sp, #8]
	ldr r0, [r0, #4]
	str r1, [sp, #0xc]
	bl ov19_021D77D0
	adds r5, r0, #0
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x14]
	bl ov19_021DA80C
	adds r4, r0, #0
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x14]
	bl ov19_021DA810
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	add r0, sp, #0x10
	add r1, sp, #0x34
	adds r2, r5, #0
	adds r3, r4, #0
	bl ov19_021D783C
	movs r7, #0
	ldr r4, [sp, #8]
	ldr r5, _021DF7C4 @ =0x021E04EC
	adds r6, r7, #0
_021DF76C:
	ldr r0, [sp, #0xc]
	adds r0, r0, r6
	str r0, [r4, #0x18]
	add r0, sp, #0x34
	blx FUN_020A818C
	ldr r2, [r4, #0x18]
	add r0, sp, #0x34
	movs r1, #2
	blx FUN_020A81A8
	ldr r0, _021DF7C8 @ =0x04001000
	movs r2, #0
	ldr r1, [r0]
	ldr r0, _021DF7CC @ =0x00300010
	movs r3, #2
	ands r0, r1
	str r0, [sp, #0x54]
	movs r0, #1
	subs r0, r0, r7
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	ldr r0, [r0, #0x10]
	add r1, sp, #0x10
	bl ov19_021D785C
	movs r1, #0
	str r0, [r4, #0x20]
	bl FUN_02021CAC
	movs r0, #2
	lsls r0, r0, #8
	adds r7, r7, #1
	adds r6, r6, r0
	adds r4, r4, #4
	adds r5, r5, #4
	cmp r7, #2
	blt _021DF76C
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DF7C4: .4byte 0x021E04EC
_021DF7C8: .4byte 0x04001000
_021DF7CC: .4byte 0x00300010
	thumb_func_end ov19_021DF730

	thumb_func_start ov19_021DF7D0
ov19_021DF7D0: @ 0x021DF7D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	movs r1, #0xe
	lsls r1, r1, #6
	str r0, [sp]
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021DF7E4
	bl FUN_0200DA58
_021DF7E4:
	ldr r6, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r7, r6, #0
_021DF7EC:
	ldr r0, [r6, #0x20]
	bl FUN_02021BD4
	ldr r0, [r6, #0x28]
	bl FUN_02021BD4
	movs r4, #0
	adds r5, r7, #0
_021DF7FC:
	ldr r0, [r5, #0x34]
	bl FUN_02021BD4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #5
	blt _021DF7FC
	ldr r0, [sp, #4]
	adds r6, r6, #4
	adds r0, r0, #1
	adds r7, #0x14
	str r0, [sp, #4]
	cmp r0, #2
	blt _021DF7EC
	ldr r0, [sp]
	ldr r0, [r0, #0x30]
	bl FUN_02021BD4
	ldr r0, [sp]
	ldr r0, [r0, #0x5c]
	bl FUN_020181C4
	ldr r0, [sp]
	ldr r0, [r0, #0x64]
	bl FUN_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DF7D0

	thumb_func_start ov19_021DF834
ov19_021DF834: @ 0x021DF834
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5, #8]
	bl ov19_021D5F9C
	adds r4, r0, #0
	ldr r0, [r5, #8]
	adds r1, r4, #0
	bl ov19_021D5FAC
	lsls r7, r4, #2
	adds r6, r0, #0
	adds r0, r5, r7
	ldr r4, [r0, #0x20]
	ldr r0, [r6]
	str r0, [sp]
	ldr r0, [r5, #8]
	bl ov19_021D5E34
	cmp r0, #0
	beq _021DF8BC
	ldrh r0, [r6, #4]
	ldrb r1, [r6, #7]
	ldrb r2, [r6, #6]
	bl FUN_02079EDC
	adds r6, r0, #0
	ldr r0, [sp]
	bl FUN_02079D40
	adds r2, r0, #0
	adds r1, r5, #0
	movs r3, #0xa
	ldr r0, [r5, #0x14]
	adds r1, #0xe8
	lsls r3, r3, #6
	bl ov19_021DA744
	adds r0, r5, #0
	adds r0, #0xe8
	add r1, sp, #4
	blx FUN_020A7118
	ldr r0, [sp, #4]
	movs r1, #2
	ldr r0, [r0, #0x14]
	lsls r1, r1, #8
	blx FUN_020C2C54
	ldr r0, [sp, #4]
	adds r1, r5, r7
	movs r2, #2
	ldr r0, [r0, #0x14]
	ldr r1, [r1, #0x18]
	lsls r2, r2, #8
	blx FUN_020C0314
	adds r0, r4, #0
	adds r1, r6, #4
	bl FUN_02021E90
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02021CAC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021DF8BC:
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02021CAC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov19_021DF834

	thumb_func_start ov19_021DF8C8
ov19_021DF8C8: @ 0x021DF8C8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [r5, #8]
	bl ov19_021D5F9C
	adds r6, r0, #0
	adds r1, r5, #0
	adds r1, #0x78
	lsls r0, r6, #4
	adds r4, r1, r0
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #8]
	bl ov19_021D5E34
	cmp r0, #0
	beq _021DF922
	ldr r0, [r5, #8]
	adds r1, r6, #0
	bl ov19_021D5FAC
	adds r5, r0, #0
	movs r0, #0
	ldr r1, [r5, #0x28]
	adds r2, r0, #0
	bl FUN_02002D7C
	ldrb r1, [r4, #7]
	lsls r1, r1, #3
	subs r0, r1, r0
	movs r1, #0
	lsrs r3, r0, #1
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DF92C @ =0x000F0E00
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x28]
	adds r0, r4, #0
	bl FUN_0201D78C
_021DF922:
	adds r0, r4, #0
	bl FUN_0201ACCC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_021DF92C: .4byte 0x000F0E00
	thumb_func_end ov19_021DF8C8

	thumb_func_start ov19_021DF930
ov19_021DF930: @ 0x021DF930
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r0, [r5, #8]
	bl ov19_021D5FC0
	adds r4, r0, #0
	ldr r0, [r5, #0x30]
	bl FUN_02021E24
	cmp r0, #3
	bne _021DF954
	cmp r4, #0
	beq _021DF960
	ldr r0, [r5, #0x30]
	movs r1, #4
	bl FUN_02021D6C
	pop {r3, r4, r5, pc}
_021DF954:
	cmp r4, #0
	bne _021DF960
	ldr r0, [r5, #0x30]
	movs r1, #3
	bl FUN_02021D6C
_021DF960:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021DF930

	thumb_func_start ov19_021DF964
ov19_021DF964: @ 0x021DF964
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r4, #0x74
	adds r0, r4, #0
	adds r5, r1, #0
	bl ov19_021DFCF8
	adds r0, r4, #0
	movs r1, #0x36
	bl ov19_021DFD08
	adds r0, r4, #0
	movs r1, #0x37
	bl ov19_021DFD08
	adds r0, r4, #0
	adds r0, #0x20
	strb r5, [r0]
	movs r0, #0
	adds r4, #0x23
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021DF964

	thumb_func_start ov19_021DF990
ov19_021DF990: @ 0x021DF990
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x74
	adds r0, r4, #0
	bl ov19_021DFCF8
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x23
	strb r1, [r0]
	adds r0, r5, #0
	bl ov19_021D5E08
	cmp r0, #4
	bhi _021DF9C6
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DF9BC: @ jump table
	.2byte _021DFA3C - _021DF9BC - 2 @ case 0
	.2byte _021DFA66 - _021DF9BC - 2 @ case 1
	.2byte _021DF9C6 - _021DF9BC - 2 @ case 2
	.2byte _021DF9C6 - _021DF9BC - 2 @ case 3
	.2byte _021DFA90 - _021DF9BC - 2 @ case 4
_021DF9C6:
	adds r0, r5, #0
	bl ov19_021D5E38
	cmp r0, #2
	bne _021DF9E8
	adds r0, r5, #0
	bl ov19_021D5E34
	cmp r0, #0
	beq _021DF9DE
	movs r1, #0x24
	b _021DF9E0
_021DF9DE:
	movs r1, #0x23
_021DF9E0:
	adds r0, r4, #0
	bl ov19_021DFD08
	b _021DF9F0
_021DF9E8:
	adds r0, r4, #0
	movs r1, #0x22
	bl ov19_021DFD08
_021DF9F0:
	adds r0, r4, #0
	movs r1, #0x25
	bl ov19_021DFD08
	adds r0, r5, #0
	bl ov19_021D5E70
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	bne _021DFA0C
	adds r0, r4, #0
	movs r1, #0x28
	bl ov19_021DFD08
_021DFA0C:
	adds r0, r5, #0
	bl ov19_021D5E10
	cmp r0, #0
	bne _021DFA1A
	movs r1, #0x26
	b _021DFA1C
_021DFA1A:
	movs r1, #0x27
_021DFA1C:
	adds r0, r4, #0
	bl ov19_021DFD08
	adds r0, r4, #0
	movs r1, #0x29
	bl ov19_021DFD08
	adds r0, r4, #0
	movs r1, #0x2a
	bl ov19_021DFD08
	adds r0, r4, #0
	movs r1, #0x2b
	bl ov19_021DFD08
	pop {r3, r4, r5, pc}
_021DFA3C:
	adds r0, r4, #0
	movs r1, #0x27
	bl ov19_021DFD08
	adds r0, r4, #0
	movs r1, #0x25
	bl ov19_021DFD08
	adds r0, r4, #0
	movs r1, #0x29
	bl ov19_021DFD08
	adds r0, r4, #0
	movs r1, #0x2a
	bl ov19_021DFD08
	adds r0, r4, #0
	movs r1, #0x2b
	bl ov19_021DFD08
	pop {r3, r4, r5, pc}
_021DFA66:
	adds r0, r4, #0
	movs r1, #0x26
	bl ov19_021DFD08
	adds r0, r4, #0
	movs r1, #0x25
	bl ov19_021DFD08
	adds r0, r4, #0
	movs r1, #0x29
	bl ov19_021DFD08
	adds r0, r4, #0
	movs r1, #0x2a
	bl ov19_021DFD08
	adds r0, r4, #0
	movs r1, #0x2b
	bl ov19_021DFD08
	pop {r3, r4, r5, pc}
_021DFA90:
	adds r0, r5, #0
	bl ov19_021D5F9C
	cmp r0, #0
	bne _021DFA9E
	movs r1, #0x34
	b _021DFAA0
_021DFA9E:
	movs r1, #0x35
_021DFAA0:
	adds r0, r4, #0
	bl ov19_021DFD08
	adds r0, r5, #0
	bl ov19_021D5E10
	cmp r0, #0
	bne _021DFAB4
	movs r1, #0x26
	b _021DFAB6
_021DFAB4:
	movs r1, #0x27
_021DFAB6:
	adds r0, r4, #0
	bl ov19_021DFD08
	adds r0, r4, #0
	movs r1, #0x29
	bl ov19_021DFD08
	adds r0, r4, #0
	movs r1, #0x2b
	bl ov19_021DFD08
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021DF990

	thumb_func_start ov19_021DFAD0
ov19_021DFAD0: @ 0x021DFAD0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x74
	bl ov19_021D5F7C
	adds r6, r0, #0
	adds r0, r4, #0
	bl ov19_021D5E74
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov19_021DFCF8
	adds r0, r5, #0
	movs r1, #1
	adds r0, #0x23
	strb r1, [r0]
	cmp r6, #0
	beq _021DFB20
	cmp r4, #0
	beq _021DFB06
	adds r0, r5, #0
	movs r1, #0x31
	bl ov19_021DFD08
	b _021DFB0E
_021DFB06:
	adds r0, r5, #0
	movs r1, #0x2e
	bl ov19_021DFD08
_021DFB0E:
	adds r0, r5, #0
	movs r1, #0x32
	bl ov19_021DFD08
	adds r0, r5, #0
	movs r1, #0x30
	bl ov19_021DFD08
	b _021DFB46
_021DFB20:
	cmp r4, #0
	beq _021DFB3E
	adds r0, r5, #0
	movs r1, #0x2f
	bl ov19_021DFD08
	adds r0, r5, #0
	movs r1, #0x32
	bl ov19_021DFD08
	adds r0, r5, #0
	movs r1, #0x30
	bl ov19_021DFD08
	b _021DFB46
_021DFB3E:
	adds r0, r5, #0
	movs r1, #0x2e
	bl ov19_021DFD08
_021DFB46:
	adds r0, r5, #0
	movs r1, #0x33
	bl ov19_021DFD08
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021DFAD0

	thumb_func_start ov19_021DFB50
ov19_021DFB50: @ 0x021DFB50
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x74
	bl ov19_021D5E90
	adds r0, r4, #0
	bl ov19_021DFCF8
	adds r0, r4, #0
	movs r1, #0
	bl ov19_021DFD08
	adds r0, r5, #0
	bl ov19_021D5E08
	cmp r0, #4
	beq _021DFB84
	adds r0, r4, #0
	movs r1, #1
	bl ov19_021DFD08
	adds r0, r4, #0
	movs r1, #2
	bl ov19_021DFD08
_021DFB84:
	adds r0, r4, #0
	movs r1, #3
	bl ov19_021DFD08
	movs r0, #2
	adds r4, #0x23
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021DFB50

	thumb_func_start ov19_021DFB94
ov19_021DFB94: @ 0x021DFB94
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r4, #0x74
	adds r5, r1, #0
	bl ov19_021D5E90
	adds r6, r0, #0
	adds r0, r4, #0
	bl ov19_021DFCF8
	adds r0, r4, #0
	movs r1, #4
	bl ov19_021DFD08
	adds r0, r4, #0
	movs r1, #5
	bl ov19_021DFD08
	adds r0, r4, #0
	movs r1, #6
	bl ov19_021DFD08
	adds r0, r4, #0
	movs r1, #7
	bl ov19_021DFD08
	adds r0, r6, #0
	bl FUN_02079D20
	adds r6, r0, #0
	beq _021DFBDA
	adds r0, r4, #0
	movs r1, #8
	bl ov19_021DFD08
_021DFBDA:
	cmp r6, #4
	bls _021DFBE6
	adds r0, r4, #0
	movs r1, #9
	bl ov19_021DFD08
_021DFBE6:
	adds r0, r4, #0
	movs r1, #3
	adds r0, #0x23
	strb r1, [r0]
	cmp r5, #4
	blt _021DFBFE
	cmp r5, #9
	bgt _021DFBFE
	subs r0, r5, #4
	adds r4, #0x20
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_021DFBFE:
	bl FUN_02022974
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021DFB94

	thumb_func_start ov19_021DFC04
ov19_021DFC04: @ 0x021DFC04
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r6, #0x74
	adds r5, r1, #0
	bl ov19_021D5E90
	str r0, [sp]
	adds r0, r6, #0
	bl ov19_021DFCF8
	cmp r5, #4
	blt _021DFC3C
	cmp r5, #7
	bgt _021DFC3C
	subs r0, r5, #4
	ldr r1, _021DFC7C @ =0x021E058C
	lsls r0, r0, #3
	movs r5, #0
	adds r4, r1, r0
_021DFC2A:
	ldrh r1, [r4]
	adds r0, r6, #0
	bl ov19_021DFD08
	adds r5, r5, #1
	adds r4, r4, #2
	cmp r5, #4
	blt _021DFC2A
	b _021DFC72
_021DFC3C:
	movs r4, #0
	adds r7, r4, #0
	cmp r5, #9
	bne _021DFC46
	movs r4, #4
_021DFC46:
	movs r5, #0
_021DFC48:
	ldr r0, [sp]
	adds r1, r5, #0
	bl FUN_02079CFC
	cmp r0, #0
	beq _021DFC6C
	cmp r4, #0
	beq _021DFC5C
	subs r4, r4, #1
	b _021DFC6C
_021DFC5C:
	adds r1, r5, #0
	adds r0, r6, #0
	adds r1, #0x1a
	bl ov19_021DFD08
	adds r7, r7, #1
	cmp r7, #4
	bge _021DFC72
_021DFC6C:
	adds r5, r5, #1
	cmp r5, #8
	blt _021DFC48
_021DFC72:
	movs r0, #3
	adds r6, #0x23
	strb r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DFC7C: .4byte 0x021E058C
	thumb_func_end ov19_021DFC04

	thumb_func_start ov19_021DFC80
ov19_021DFC80: @ 0x021DFC80
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x74
	adds r0, r4, #0
	bl ov19_021DFCF8
	adds r0, r4, #0
	movs r1, #4
	adds r0, #0x23
	strb r1, [r0]
	adds r5, #0x57
	adds r0, r4, #0
	ldrb r1, [r5]
	adds r0, #0x22
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #0x38
	bl ov19_021DFD08
	adds r0, r4, #0
	movs r1, #0x39
	bl ov19_021DFD08
	adds r0, r4, #0
	movs r1, #0x3a
	bl ov19_021DFD08
	adds r0, r4, #0
	movs r1, #0x3b
	bl ov19_021DFD08
	adds r0, r4, #0
	movs r1, #0x3c
	bl ov19_021DFD08
	adds r0, r4, #0
	movs r1, #0x3d
	bl ov19_021DFD08
	adds r0, r4, #0
	movs r1, #0x2c
	bl ov19_021DFD08
	adds r0, r4, #0
	movs r1, #0x2d
	bl ov19_021DFD08
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov19_021DFC80

	thumb_func_start ov19_021DFCE4
ov19_021DFCE4: @ 0x021DFCE4
	adds r2, r0, #0
	adds r2, #0x96
	ldrb r3, [r2]
	movs r2, #1
	lsls r2, r1
	adds r1, r3, #0
	eors r1, r2
	adds r0, #0x96
	strb r1, [r0]
	bx lr
	thumb_func_end ov19_021DFCE4

	thumb_func_start ov19_021DFCF8
ov19_021DFCF8: @ 0x021DFCF8
	adds r1, r0, #0
	movs r2, #0
	adds r1, #0x21
	strb r2, [r1]
	adds r0, #0x20
	strb r2, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021DFCF8

	thumb_func_start ov19_021DFD08
ov19_021DFD08: @ 0x021DFD08
	push {r3, r4}
	adds r2, r0, #0
	adds r2, #0x21
	ldrb r4, [r2]
	cmp r4, #8
	bhs _021DFD26
	adds r2, r0, #0
	adds r2, #0x21
	ldrb r2, [r2]
	adds r3, r2, #1
	adds r2, r0, #0
	adds r2, #0x21
	strb r3, [r2]
	lsls r2, r4, #2
	str r1, [r0, r2]
_021DFD26:
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov19_021DFD08

	thumb_func_start ov19_021DFD2C
ov19_021DFD2C: @ 0x021DFD2C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _021DFDD4 @ =0x021BF67C
	adds r4, #0x74
	ldr r1, [r0, #0x48]
	movs r0, #0x40
	adds r2, r1, #0
	tst r2, r0
	beq _021DFD6C
	adds r2, r4, #0
	adds r2, #0x20
	ldrb r2, [r2]
	cmp r2, #0
	beq _021DFD58
	adds r1, r4, #0
	adds r1, #0x20
	ldrb r1, [r1]
	adds r4, #0x20
	subs r0, #0x42
	subs r1, r1, #1
	strb r1, [r4]
	pop {r3, r4, r5, pc}
_021DFD58:
	adds r2, r4, #0
	adds r2, #0x21
	ldrb r2, [r2]
	cmp r2, #3
	blo _021DFD6C
	subs r1, r2, #1
	adds r4, #0x20
	strb r1, [r4]
	subs r0, #0x42
	pop {r3, r4, r5, pc}
_021DFD6C:
	movs r0, #0x80
	adds r2, r1, #0
	tst r2, r0
	beq _021DFDA4
	adds r2, r4, #0
	adds r2, #0x21
	ldrb r5, [r2]
	adds r2, r4, #0
	adds r2, #0x20
	ldrb r3, [r2]
	subs r2, r5, #1
	cmp r3, r2
	bge _021DFD96
	adds r1, r4, #0
	adds r1, #0x20
	ldrb r1, [r1]
	adds r4, #0x20
	subs r0, #0x82
	adds r1, r1, #1
	strb r1, [r4]
	pop {r3, r4, r5, pc}
_021DFD96:
	cmp r5, #3
	blo _021DFDA4
	movs r0, #0
	adds r4, #0x20
	strb r0, [r4]
	subs r0, r0, #2
	pop {r3, r4, r5, pc}
_021DFDA4:
	movs r0, #2
	tst r0, r1
	beq _021DFDB6
	ldr r0, _021DFDD8 @ =0x000005DD
	bl FUN_02005748
	movs r0, #0
	mvns r0, r0
	pop {r3, r4, r5, pc}
_021DFDB6:
	movs r0, #1
	tst r1, r0
	beq _021DFDCE
	ldr r0, _021DFDD8 @ =0x000005DD
	bl FUN_02005748
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	pop {r3, r4, r5, pc}
_021DFDCE:
	subs r0, r0, #4
	pop {r3, r4, r5, pc}
	nop
_021DFDD4: .4byte 0x021BF67C
_021DFDD8: .4byte 0x000005DD
	thumb_func_end ov19_021DFD2C

	thumb_func_start ov19_021DFDDC
ov19_021DFDDC: @ 0x021DFDDC
	adds r0, #0x74
	adds r1, r0, #0
	adds r1, #0x20
	ldrb r1, [r1]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end ov19_021DFDDC

	thumb_func_start ov19_021DFDEC
ov19_021DFDEC: @ 0x021DFDEC
	ldr r0, [r0, #0x74]
	bx lr
	thumb_func_end ov19_021DFDEC
	@ 0x021DFDF0
