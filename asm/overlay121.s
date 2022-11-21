	.include "macros/function.inc"


	.text

	thumb_func_start ov121_021D0D80
ov121_021D0D80: @ 0x021D0D80
	push {r3, r4, lr}
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
	ldr r2, _021D0E60 @ =0xFFFFE0FF
	ands r0, r2
	str r0, [r1]
	ldr r0, _021D0E64 @ =0x04001000
	ldr r3, [r0]
	ands r2, r3
	str r2, [r0]
	ldr r3, [r1]
	ldr r2, _021D0E68 @ =0xFFFF1FFF
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
	movs r1, #0x1e
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	adds r0, r4, #0
	movs r1, #0xe8
	movs r2, #0x1e
	bl FUN_0200681C
	movs r1, #0
	movs r2, #0xe8
	adds r4, r0, #0
	blx FUN_020C4CF4
	movs r0, #0x1e
	bl ov121_021D1270
	str r0, [r4]
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	bl ov121_021D0F94
	bl FUN_0201E3D8
	movs r0, #4
	bl FUN_0201E450
	adds r0, r4, #0
	bl ov121_021D1074
	adds r0, r4, #0
	bl ov121_021D0FF4
	movs r0, #0x10
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x1e
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, _021D0E6C @ =0x021BF6DC
	movs r1, #0
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	bl FUN_0201FFD0
	movs r0, #1
	bl FUN_02002AC8
	movs r0, #0
	bl FUN_02002AE4
	movs r0, #0
	bl FUN_02002B20
	ldr r0, _021D0E70 @ =ov121_021D0F68
	ldr r2, _021D0E74 @ =0x0000EA60
	adds r1, r4, #0
	bl FUN_0200D9E8
	str r0, [r4, #8]
	ldr r0, _021D0E78 @ =ov121_021D0F7C
	adds r1, r4, #0
	bl FUN_02017798
	movs r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_021D0E60: .4byte 0xFFFFE0FF
_021D0E64: .4byte 0x04001000
_021D0E68: .4byte 0xFFFF1FFF
_021D0E6C: .4byte 0x021BF6DC
_021D0E70: .4byte ov121_021D0F68
_021D0E74: .4byte 0x0000EA60
_021D0E78: .4byte ov121_021D0F7C
	thumb_func_end ov121_021D0D80

	thumb_func_start ov121_021D0E7C
ov121_021D0E7C: @ 0x021D0E7C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	bl FUN_0200682C
	adds r5, r0, #0
	ldr r0, [r4]
	cmp r0, #3
	bhi _021D0F04
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D0E9A: @ jump table
	.2byte _021D0EA2 - _021D0E9A - 2 @ case 0
	.2byte _021D0EB2 - _021D0E9A - 2 @ case 1
	.2byte _021D0ED6 - _021D0E9A - 2 @ case 2
	.2byte _021D0EF6 - _021D0E9A - 2 @ case 3
_021D0EA2:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D0F04
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D0F04
_021D0EB2:
	ldr r0, [r5, #0x10]
	cmp r0, #0xf
	bne _021D0EBE
	ldr r0, _021D0F10 @ =0x000005D3
	bl FUN_02005748
_021D0EBE:
	ldr r0, [r5, #0x10]
	adds r0, r0, #1
	str r0, [r5, #0x10]
	ldr r0, [r5, #0xc]
	adds r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #0x55
	ble _021D0F04
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D0F04
_021D0ED6:
	movs r0, #0x14
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x1e
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D0F04
_021D0EF6:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D0F04
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_021D0F04:
	adds r0, r5, #0
	bl ov121_021D1318
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_021D0F10: .4byte 0x000005D3
	thumb_func_end ov121_021D0E7C

	thumb_func_start ov121_021D0F14
ov121_021D0F14: @ 0x021D0F14
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, [r4, #8]
	bl FUN_0200DA58
	adds r0, r4, #0
	bl ov121_021D1184
	adds r0, r4, #0
	bl ov121_021D1068
	ldr r0, [r4]
	bl ov121_021D1310
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201E530
	movs r0, #0
	bl FUN_02002AC8
	movs r0, #0
	bl FUN_02002AE4
	movs r0, #0
	bl FUN_02002B20
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0x1e
	bl FUN_0201807C
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov121_021D0F14

	thumb_func_start ov121_021D0F68
ov121_021D0F68: @ 0x021D0F68
	push {r3, lr}
	adds r0, r1, #0
	bl ov121_021D11A8
	movs r0, #1
	adds r1, r0, #0
	bl FUN_020241BC
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov121_021D0F68

	thumb_func_start ov121_021D0F7C
ov121_021D0F7C: @ 0x021D0F7C
	ldr r3, _021D0F8C @ =0x027E0000
	ldr r1, _021D0F90 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	bx lr
	nop
_021D0F8C: .4byte 0x027E0000
_021D0F90: .4byte 0x00003FF8
	thumb_func_end ov121_021D0F7C

	thumb_func_start ov121_021D0F94
ov121_021D0F94: @ 0x021D0F94
	push {r4, lr}
	sub sp, #0x28
	bl FUN_0201FF00
	bl FUN_0201FF68
	ldr r4, _021D0FF0 @ =0x021D1380
	add r3, sp, #0
	movs r2, #5
_021D0FA6:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D0FA6
	add r0, sp, #0
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
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_021D0FF0: .4byte 0x021D1380
	thumb_func_end ov121_021D0F94

	thumb_func_start ov121_021D0FF4
ov121_021D0FF4: @ 0x021D0FF4
	push {r4, lr}
	sub sp, #0x20
	adds r4, r0, #0
	add r1, sp, #0x14
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	movs r0, #0x1e
	bl FUN_020203AC
	str r0, [r4, #4]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	movs r1, #0xa
	str r0, [sp, #8]
	ldr r2, _021D105C @ =0x021D1378
	ldr r3, _021D1060 @ =0x00000FA4
	add r0, sp, #0x14
	lsls r1, r1, #0x10
	bl FUN_020206D0
	movs r1, #0x4b
	ldr r2, [r4, #4]
	movs r0, #0
	lsls r1, r1, #0xe
	bl FUN_020206BC
	add r0, sp, #0xc
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	ldr r1, [r4, #4]
	bl FUN_02020A94
	ldr r1, _021D1064 @ =0x0000C011
	add r0, sp, #0xc
	strh r1, [r0]
	ldr r1, [r4, #4]
	add r0, sp, #0xc
	bl FUN_020209D4
	ldr r0, [r4, #4]
	bl FUN_020203D4
	add sp, #0x20
	pop {r4, pc}
	nop
_021D105C: .4byte 0x021D1378
_021D1060: .4byte 0x00000FA4
_021D1064: .4byte 0x0000C011
	thumb_func_end ov121_021D0FF4

	thumb_func_start ov121_021D1068
ov121_021D1068: @ 0x021D1068
	ldr r3, _021D1070 @ =FUN_020203B8
	ldr r0, [r0, #4]
	bx r3
	nop
_021D1070: .4byte FUN_020203B8
	thumb_func_end ov121_021D1068

	thumb_func_start ov121_021D1074
ov121_021D1074: @ 0x021D1074
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r0, #0xd8
	movs r1, #0x1e
	movs r2, #4
	bl FUN_020182CC
	movs r0, #0x30
	movs r1, #0x1e
	bl FUN_02006C24
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0xb4
	adds r1, r4, #0
	movs r2, #0x10
	movs r3, #0x1e
	bl FUN_020170D8
	adds r0, r5, #0
	adds r0, #0xbc
	movs r2, #0x1f
	ldr r0, [r0]
	movs r1, #1
	lsls r2, r2, #0x10
	blx FUN_020B2D8C
	adds r0, r5, #0
	adds r0, #0xbc
	movs r2, #0x3f
	ldr r0, [r0]
	movs r1, #1
	lsls r2, r2, #0x18
	blx FUN_020B2D8C
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0xd8
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0x8c
	adds r1, #0xb4
	adds r2, r4, #0
	movs r3, #0x12
	bl FUN_02017164
	adds r0, r5, #0
	adds r0, #0x8c
	movs r1, #0
	bl FUN_02017240
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0xd8
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0xa0
	adds r1, #0xb4
	adds r2, r4, #0
	movs r3, #0x11
	bl FUN_02017164
	adds r0, r5, #0
	adds r0, #0xa0
	movs r1, #0
	bl FUN_02017240
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0x14
	adds r1, #0xb4
	bl FUN_02017258
	movs r1, #0
	adds r0, r5, #0
	adds r0, #0x14
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02017350
	movs r1, #1
	lsls r1, r1, #0xc
	adds r0, r5, #0
	adds r0, #0x14
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201736C
	adds r0, r5, #0
	adds r0, #0x14
	movs r1, #1
	bl FUN_02017348
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0x14
	adds r1, #0x8c
	bl FUN_0201727C
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0x14
	adds r1, #0xa0
	bl FUN_0201727C
	adds r0, r4, #0
	bl FUN_02006CA8
	adds r0, r5, #0
	ldr r1, _021D117C @ =0xFFFFFED2
	adds r0, #0xc8
	str r1, [r0]
	adds r0, r5, #0
	ldr r1, _021D1180 @ =0x0000E383
	adds r0, #0xcc
	str r1, [r0]
	adds r0, r5, #0
	movs r1, #1
	lsls r1, r1, #0xc
	adds r0, #0xd0
	str r1, [r0]
	movs r0, #0xf
	lsls r0, r0, #0xa
	adds r5, #0xd4
	str r0, [r5]
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D117C: .4byte 0xFFFFFED2
_021D1180: .4byte 0x0000E383
	thumb_func_end ov121_021D1074

	thumb_func_start ov121_021D1184
ov121_021D1184: @ 0x021D1184
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xb4
	bl FUN_02017110
	adds r0, r4, #0
	adds r1, r4, #0
	adds r0, #0x8c
	adds r1, #0xd8
	bl FUN_020171A0
	adds r0, r4, #0
	adds r4, #0xd8
	adds r0, #0xa0
	adds r1, r4, #0
	bl FUN_020171A0
	pop {r4, pc}
	thumb_func_end ov121_021D1184

	thumb_func_start ov121_021D11A8
ov121_021D11A8: @ 0x021D11A8
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
	ldr r0, [r4, #4]
	bl FUN_020203D4
	ldr r1, [r4, #4]
	movs r0, #0
	bl FUN_02020854
	bl FUN_020203EC
	movs r0, #0
	ldr r2, _021D125C @ =0xFFFFF000
	adds r1, r0, #0
	adds r3, r0, #0
	blx FUN_020AF51C
	ldr r1, _021D1260 @ =0x0000739C
	movs r0, #0
	blx FUN_020AF558
	ldr r0, _021D1264 @ =0x00007FFF
	movs r2, #0
	adds r1, r0, #0
	blx FUN_020AF56C
	ldr r0, _021D1264 @ =0x00007FFF
	movs r2, #0
	adds r1, r0, #0
	blx FUN_020AF590
	add r0, sp, #0x28
	blx FUN_020AF4BC
	ldr r1, _021D1268 @ =0x021C5B48
	add r0, sp, #4
	blx FUN_020C4C88
	ldr r1, _021D126C @ =0x021C5B0C
	movs r0, #0xa4
	ldr r2, [r1, #0x7c]
	bics r2, r0
	add r0, sp, #0x34
	str r2, [r1, #0x7c]
	blx FUN_020AF4EC
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x8c
	lsls r1, r1, #0xc
	bl FUN_020171CC
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0xa0
	lsls r1, r1, #0xc
	bl FUN_020171CC
	movs r1, #0
	movs r0, #0x11
	adds r2, r1, #0
	blx FUN_020B275C
	adds r4, #0x14
	adds r0, r4, #0
	bl FUN_02017294
	movs r2, #1
	movs r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	blx FUN_020B275C
	add sp, #0x40
	pop {r4, pc}
	.align 2, 0
_021D125C: .4byte 0xFFFFF000
_021D1260: .4byte 0x0000739C
_021D1264: .4byte 0x00007FFF
_021D1268: .4byte 0x021C5B48
_021D126C: .4byte 0x021C5B0C
	thumb_func_end ov121_021D11A8

	thumb_func_start ov121_021D1270
ov121_021D1270: @ 0x021D1270
	push {r3, lr}
	sub sp, #8
	movs r2, #2
	ldr r1, _021D1288 @ =ov121_021D128C
	str r2, [sp]
	str r1, [sp, #4]
	movs r1, #0
	adds r3, r1, #0
	bl FUN_02024220
	add sp, #8
	pop {r3, pc}
	.align 2, 0
_021D1288: .4byte ov121_021D128C
	thumb_func_end ov121_021D1270

	thumb_func_start ov121_021D128C
ov121_021D128C: @ 0x021D128C
	push {r3, lr}
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	ldr r0, _021D12F8 @ =0x04000008
	movs r1, #3
	ldrh r2, [r0]
	bics r2, r1
	movs r1, #1
	orrs r1, r2
	strh r1, [r0]
	adds r0, #0x58
	ldrh r2, [r0]
	ldr r1, _021D12FC @ =0xFFFFCFFD
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
	ldr r2, _021D1300 @ =0x0000CFFB
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
	ldr r2, _021D1304 @ =0x00007FFF
	adds r1, r0, #0
	movs r3, #0x3f
	str r0, [sp]
	blx FUN_020BFD58
	ldr r1, _021D1308 @ =0xBFFF0000
	ldr r0, _021D130C @ =0x04000580
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_021D12F8: .4byte 0x04000008
_021D12FC: .4byte 0xFFFFCFFD
_021D1300: .4byte 0x0000CFFB
_021D1304: .4byte 0x00007FFF
_021D1308: .4byte 0xBFFF0000
_021D130C: .4byte 0x04000580
	thumb_func_end ov121_021D128C

	thumb_func_start ov121_021D1310
ov121_021D1310: @ 0x021D1310
	ldr r3, _021D1314 @ =FUN_020242C4
	bx r3
	.align 2, 0
_021D1314: .4byte FUN_020242C4
	thumb_func_end ov121_021D1310

	thumb_func_start ov121_021D1318
ov121_021D1318: @ 0x021D1318
	push {r3, r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	add r0, sp, #8
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	add r0, sp, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xd4
	ldr r0, [r0]
	ldr r1, [r4, #4]
	asrs r0, r0, #8
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0202094C
	adds r0, r4, #0
	adds r0, #0xd4
	ldr r1, [r0]
	adds r0, r4, #0
	subs r1, #0x80
	adds r0, #0xd4
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xd4
	movs r1, #1
	ldr r0, [r0]
	lsls r1, r1, #0xc
	cmp r0, r1
	bge _021D1368
	adds r0, r4, #0
	adds r0, #0xd4
	str r1, [r0]
_021D1368:
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r4, #0xc4
	adds r0, r0, #1
	str r0, [r4]
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov121_021D1318
	@ 0x021D1378
