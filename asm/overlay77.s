	.include "macros/function.inc"


	.text

	thumb_func_start ov77_021D0D80
ov77_021D0D80: @ 0x021D0D80
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0200F344
	movs r0, #1
	movs r1, #0
	bl FUN_0200F344
	ldr r1, _021D0E20 @ =0x04001050
	movs r0, #0
	strh r0, [r1]
	ldr r1, _021D0E24 @ =0x04000050
	strh r0, [r1]
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
	ldr r0, _021D0E28 @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _021D0E2C @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	movs r2, #1
	movs r0, #3
	movs r1, #0x1e
	lsls r2, r2, #0x12
	bl FUN_02017FC8
	ldr r1, _021D0E30 @ =0x00000504
	adds r0, r4, #0
	movs r2, #0x1e
	bl FUN_0200681C
	ldr r2, _021D0E30 @ =0x00000504
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x1e
	str r0, [r4]
	ldr r0, _021D0E34 @ =0x000004EC
	movs r1, #0
	strh r1, [r4, r0]
	adds r0, #0x10
	str r1, [r4, r0]
	bl ov77_021D1184
	adds r0, r4, #0
	bl ov77_021D17B4
	adds r0, r4, #0
	bl ov77_021D11CC
	ldr r0, _021D0E38 @ =ov77_021D1178
	adds r1, r4, #0
	bl FUN_02017798
	bl FUN_0201FFD0
	movs r0, #1
	pop {r4, pc}
	nop
_021D0E20: .4byte 0x04001050
_021D0E24: .4byte 0x04000050
_021D0E28: .4byte 0xFFFFE0FF
_021D0E2C: .4byte 0x04001000
_021D0E30: .4byte 0x00000504
_021D0E34: .4byte 0x000004EC
_021D0E38: .4byte ov77_021D1178
	thumb_func_end ov77_021D0D80

	thumb_func_start ov77_021D0E3C
ov77_021D0E3C: @ 0x021D0E3C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r0, #6
	bhi _021D0E7A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D0E5A: @ jump table
	.2byte _021D0E68 - _021D0E5A - 2 @ case 0
	.2byte _021D0EB8 - _021D0E5A - 2 @ case 1
	.2byte _021D0ED8 - _021D0E5A - 2 @ case 2
	.2byte _021D0EEE - _021D0E5A - 2 @ case 3
	.2byte _021D0FBC - _021D0E5A - 2 @ case 4
	.2byte _021D1078 - _021D0E5A - 2 @ case 5
	.2byte _021D10BC - _021D0E5A - 2 @ case 6
_021D0E68:
	movs r0, #0x8e
	lsls r0, r0, #2
	ldr r1, [r4, #4]
	ldr r2, [r4]
	adds r0, r4, r0
	bl ov77_021D1A60
	cmp r0, #1
	beq _021D0E7C
_021D0E7A:
	b _021D10DC
_021D0E7C:
	movs r1, #0x8e
	ldr r2, _021D10E4 @ =0x021BF67C
	movs r0, #0
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r2, #0x6c]
	cmp r1, #0
	bne _021D0EA6
	movs r2, #0x4f
	movs r1, #0x1e
	lsls r2, r2, #4
	str r1, [r4, r2]
	adds r1, r2, #0
	movs r3, #1
	subs r1, #0x18
	str r3, [r4, r1]
	subs r2, #0x14
	str r0, [r4, r2]
	movs r0, #2
	str r0, [r5]
	b _021D10DC
_021D0EA6:
	movs r1, #0x4f
	lsls r1, r1, #4
	str r0, [r4, r1]
	str r0, [r2, #0x6c]
	movs r0, #1
	subs r1, #0x14
	str r0, [r4, r1]
	str r0, [r5]
	b _021D10DC
_021D0EB8:
	movs r0, #0x8e
	lsls r0, r0, #2
	ldr r1, [r4, #4]
	ldr r2, [r4]
	adds r0, r4, r0
	bl ov77_021D1DF0
	cmp r0, #1
	bne _021D0F9E
	movs r0, #0x8e
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	movs r0, #2
	str r0, [r5]
	b _021D10DC
_021D0ED8:
	movs r0, #0
	bl FUN_02004234
	movs r0, #1
	ldr r1, _021D10E8 @ =0x00000495
	adds r2, r0, #0
	bl FUN_02004550
	movs r0, #3
	str r0, [r5]
	b _021D10DC
_021D0EEE:
	movs r0, #0x4f
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021D0F12
	subs r1, r1, #1
	str r1, [r4, r0]
	movs r1, #0
	subs r0, #0x60
	str r1, [r4, r0]
	movs r0, #0x8e
	lsls r0, r0, #2
	ldr r1, [r4, #4]
	ldr r2, [r4]
	adds r0, r4, r0
	bl ov77_021D20E4
	b _021D10DC
_021D0F12:
	movs r1, #1
	subs r0, #0x60
	str r1, [r4, r0]
	movs r0, #0x8e
	lsls r0, r0, #2
	ldr r1, [r4, #4]
	ldr r2, [r4]
	adds r0, r4, r0
	bl ov77_021D20E4
	ldr r1, _021D10EC @ =0x000004FC
	ldr r2, _021D10E4 @ =0x021BF67C
	ldr r0, [r4, r1]
	adds r0, r0, #1
	str r0, [r4, r1]
	ldr r3, [r2, #0x48]
	movs r0, #1
	adds r6, r3, #0
	ands r6, r0
	cmp r6, #1
	beq _021D0F44
	movs r6, #8
	ands r3, r6
	cmp r3, #8
	bne _021D0F68
_021D0F44:
	ldr r0, _021D10F0 @ =0x000004EC
	movs r1, #1
	strh r1, [r4, r0]
	movs r0, #0
	movs r1, #0x3c
	bl FUN_0200564C
	ldr r0, _021D10F4 @ =0x000001E7
	movs r1, #1
	bl FUN_02005844
	ldr r0, [r4, #4]
	ldr r1, [r4]
	bl ov77_021D1D48
	movs r0, #4
	str r0, [r5]
	b _021D10DC
_021D0F68:
	ldr r6, [r2, #0x44]
	movs r3, #0x46
	ands r3, r6
	cmp r3, #0x46
	bne _021D0F94
	movs r2, #2
	subs r1, #0x10
	strh r2, [r4, r1]
	movs r1, #6
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r4]
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #6
	str r0, [r5]
	b _021D10DC
_021D0F94:
	movs r3, #0xe1
	ldr r6, [r4, r1]
	lsls r3, r3, #2
	cmp r6, r3
	bgt _021D0FA0
_021D0F9E:
	b _021D10DC
_021D0FA0:
	movs r3, #3
	subs r1, #0x10
	strh r3, [r4, r1]
	movs r1, #0
	str r0, [r2, #0x6c]
	bl FUN_0201FF74
	movs r0, #0
	movs r1, #0x3c
	bl FUN_0200564C
	movs r0, #5
	str r0, [r5]
	b _021D10DC
_021D0FBC:
	movs r0, #0x49
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
	movs r0, #0x8e
	lsls r0, r0, #2
	ldr r1, [r4, #4]
	ldr r2, [r4]
	adds r0, r4, r0
	bl ov77_021D20E4
	movs r0, #5
	lsls r0, r0, #8
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0xa
	bne _021D0FFA
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r3, _021D10F8 @ =0x00007FFF
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	bl FUN_0200F174
_021D0FFA:
	bl FUN_0200598C
	cmp r0, #0
	bne _021D10DC
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D10DC
	movs r0, #5
	lsls r0, r0, #8
	ldr r1, [r4, r0]
	cmp r1, #0xa
	blt _021D10DC
	subs r0, #0x6b
	movs r1, #0
	bl FUN_020055D0
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #6
	movs r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4]
	ldr r3, _021D10F8 @ =0x00007FFF
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	bl FUN_0200F174
	movs r0, #6
	str r0, [r5]
	b _021D10DC
_021D1078:
	movs r0, #0x49
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
	movs r0, #0x8e
	lsls r0, r0, #2
	ldr r1, [r4, #4]
	ldr r2, [r4]
	adds r0, r4, r0
	bl ov77_021D20E4
	bl FUN_02005684
	cmp r0, #0
	bne _021D10DC
	ldr r0, _021D10E8 @ =0x00000495
	movs r1, #0
	bl FUN_020055D0
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r3, _021D10F8 @ =0x00007FFF
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	bl FUN_0200F174
	movs r0, #6
	str r0, [r5]
	b _021D10DC
_021D10BC:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D10DC
	movs r0, #0x8e
	lsls r0, r0, #2
	ldr r1, [r4, #4]
	ldr r2, [r4]
	adds r0, r4, r0
	bl ov77_021D21C0
	cmp r0, #1
	bne _021D10DC
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_021D10DC:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021D10E4: .4byte 0x021BF67C
_021D10E8: .4byte 0x00000495
_021D10EC: .4byte 0x000004FC
_021D10F0: .4byte 0x000004EC
_021D10F4: .4byte 0x000001E7
_021D10F8: .4byte 0x00007FFF
	thumb_func_end ov77_021D0E3C

	thumb_func_start ov77_021D10FC
ov77_021D10FC: @ 0x021D10FC
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	bl FUN_0200682C
	adds r6, r0, #0
	ldr r0, _021D1164 @ =0x000004EC
	ldr r4, [r6]
	ldrh r5, [r6, r0]
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	adds r0, r6, #0
	bl ov77_021D11FC
	adds r0, r6, #0
	bl ov77_021D1908
	adds r0, r7, #0
	bl FUN_02006830
	adds r0, r4, #0
	bl FUN_0201807C
	cmp r5, #1
	beq _021D1138
	cmp r5, #2
	beq _021D1144
	cmp r5, #3
	beq _021D1150
_021D1138:
	movs r0, #0
	ldr r1, _021D1168 @ =0x020F8AB4
	mvns r0, r0
	bl FUN_02000EC4
	b _021D115E
_021D1144:
	movs r0, #0
	ldr r1, _021D116C @ =0x020F8A48
	mvns r0, r0
	bl FUN_02000EC4
	b _021D115E
_021D1150:
	movs r0, #0
	bl FUN_02004234
	ldr r0, _021D1170 @ =0x0000004D
	ldr r1, _021D1174 @ =0x021D788C
	bl FUN_02000EC4
_021D115E:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1164: .4byte 0x000004EC
_021D1168: .4byte 0x020F8AB4
_021D116C: .4byte 0x020F8A48
_021D1170: .4byte 0x0000004D
_021D1174: .4byte 0x021D788C
	thumb_func_end ov77_021D10FC

	thumb_func_start ov77_021D1178
ov77_021D1178: @ 0x021D1178
	ldr r3, _021D1180 @ =FUN_0201C2B8
	ldr r0, [r0, #4]
	bx r3
	nop
_021D1180: .4byte FUN_0201C2B8
	thumb_func_end ov77_021D1178

	thumb_func_start ov77_021D1184
ov77_021D1184: @ 0x021D1184
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D11A0 @ =0x021D7404
	add r3, sp, #0
	movs r2, #5
_021D118E:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D118E
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_021D11A0: .4byte 0x021D7404
	thumb_func_end ov77_021D1184

	thumb_func_start ov77_021D11A4
ov77_021D11A4: @ 0x021D11A4
	ldr r0, _021D11C8 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	ands r0, r1
	cmp r0, #1
	beq _021D11C0
	movs r0, #8
	ands r0, r1
	cmp r0, #8
	beq _021D11C0
	movs r0, #4
	ands r0, r1
	cmp r0, #4
	bne _021D11C4
_021D11C0:
	movs r0, #1
	bx lr
_021D11C4:
	movs r0, #0
	bx lr
	.align 2, 0
_021D11C8: .4byte 0x021BF67C
	thumb_func_end ov77_021D11A4

	thumb_func_start ov77_021D11CC
ov77_021D11CC: @ 0x021D11CC
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #4
	movs r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4]
	movs r2, #1
	adds r3, r1, #0
	bl FUN_02024220
	str r0, [r4, #8]
	ldr r1, _021D11F8 @ =0x04000008
	movs r0, #3
	ldrh r2, [r1]
	bics r2, r0
	movs r0, #1
	orrs r0, r2
	strh r0, [r1]
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_021D11F8: .4byte 0x04000008
	thumb_func_end ov77_021D11CC

	thumb_func_start ov77_021D11FC
ov77_021D11FC: @ 0x021D11FC
	ldr r3, _021D1204 @ =FUN_020242C4
	ldr r0, [r0, #8]
	bx r3
	nop
_021D1204: .4byte FUN_020242C4
	thumb_func_end ov77_021D11FC

	thumb_func_start ov77_021D1208
ov77_021D1208: @ 0x021D1208
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r3, #0
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	adds r0, #0x70
	adds r1, r4, #0
	movs r2, #4
	bl FUN_020182CC
	movs r0, #0x30
	adds r1, r6, #0
	adds r2, r4, #0
	bl FUN_02006AC0
	str r0, [r5, #0x5c]
	movs r0, #0x30
	adds r1, r7, #0
	adds r2, r4, #0
	bl FUN_02006AC0
	str r0, [r5, #0x60]
	movs r0, #0x30
	movs r1, #2
	adds r2, r4, #0
	bl FUN_02006AC0
	adds r1, r5, #0
	adds r2, r5, #0
	str r0, [r5, #0x64]
	adds r0, r5, #4
	adds r1, #0x58
	adds r2, #0x5c
	bl FUN_0201CA3C
	ldr r0, [r5, #0x60]
	movs r1, #0
	blx FUN_020B3C5C
	adds r6, r0, #0
	ldr r0, [r5, #0x64]
	movs r1, #0
	blx FUN_020B3C5C
	adds r7, r0, #0
	adds r0, r5, #0
	ldr r2, [r5, #0x58]
	adds r0, #0x70
	adds r1, r6, #0
	blx FUN_020B2CB4
	str r0, [r5, #0x68]
	adds r0, r5, #0
	ldr r2, [r5, #0x58]
	adds r0, #0x70
	adds r1, r7, #0
	blx FUN_020B2CB4
	str r0, [r5, #0x6c]
	ldr r0, [r5, #0x5c]
	blx FUN_020B3C1C
	str r0, [sp]
	ldr r0, [r5, #0x68]
	ldr r2, [r5, #0x58]
	ldr r3, [sp]
	adds r1, r6, #0
	blx FUN_020AE4F0
	ldr r0, [r5, #0x6c]
	ldr r2, [r5, #0x58]
	ldr r3, [sp]
	adds r1, r7, #0
	blx FUN_020AE4F0
	ldr r1, [r5, #0x68]
	adds r0, r5, #4
	blx FUN_020AE77C
	ldr r1, [r5, #0x6c]
	adds r0, r5, #4
	blx FUN_020AE77C
	adds r3, r5, #0
	add r6, sp, #0x10
	movs r7, #0
	str r7, [r6]
	add r2, sp, #4
	str r7, [r6, #4]
	str r7, [r2]
	str r7, [r6, #8]
	str r7, [r2, #4]
	ldm r6!, {r0, r1}
	str r7, [r2, #8]
	adds r3, #0x80
	stm r3!, {r0, r1}
	ldr r0, [r6]
	ldr r6, _021D12FC @ =0x021D72E4
	str r0, [r3]
	adds r3, r5, #0
	ldm r6!, {r0, r1}
	adds r3, #0x8c
	stm r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	adds r3, r5, #0
	ldm r2!, {r0, r1}
	adds r3, #0x98
	stm r3!, {r0, r1}
	ldr r0, [r2]
	adds r1, r4, #0
	str r0, [r3]
	adds r0, r5, #0
	adds r0, #0xac
	str r7, [r0]
	adds r0, r5, #0
	bl ov77_021D1300
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021D12FC: .4byte 0x021D72E4
	thumb_func_end ov77_021D1208

	thumb_func_start ov77_021D1300
ov77_021D1300: @ 0x021D1300
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0x30
	adds r4, r1, #0
	bl FUN_02006C24
	adds r6, r0, #0
	movs r0, #0x15
	lsls r0, r0, #4
	adds r0, r5, r0
	adds r1, r6, #0
	movs r2, #0x13
	adds r3, r4, #0
	bl FUN_020170D8
	movs r0, #0x56
	lsls r0, r0, #2
	movs r2, #0x1f
	ldr r0, [r5, r0]
	movs r1, #1
	lsls r2, r2, #0x10
	blx FUN_020B2D8C
	movs r0, #0x56
	lsls r0, r0, #2
	movs r2, #0x3f
	ldr r0, [r5, r0]
	movs r1, #1
	lsls r2, r2, #0x18
	blx FUN_020B2D8C
	adds r0, r5, #0
	movs r1, #0x4a
	str r4, [sp]
	adds r0, #0x70
	lsls r1, r1, #2
	str r0, [sp, #4]
	adds r0, r5, r1
	adds r1, #0x28
	adds r1, r5, r1
	adds r2, r6, #0
	movs r3, #0x15
	bl FUN_02017164
	movs r0, #0x4a
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_02017240
	adds r0, r5, #0
	movs r1, #0x4f
	str r4, [sp]
	adds r0, #0x70
	lsls r1, r1, #2
	str r0, [sp, #4]
	adds r0, r5, r1
	adds r1, #0x14
	adds r1, r5, r1
	adds r2, r6, #0
	movs r3, #0x14
	bl FUN_02017164
	movs r0, #0x4f
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_02017240
	movs r1, #0x15
	adds r0, r5, #0
	lsls r1, r1, #4
	adds r0, #0xb0
	adds r1, r5, r1
	bl FUN_02017258
	movs r1, #0
	adds r0, r5, #0
	adds r0, #0xb0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02017350
	movs r1, #1
	lsls r1, r1, #0xc
	adds r0, r5, #0
	adds r0, #0xb0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201736C
	adds r0, r5, #0
	adds r0, #0xb0
	movs r1, #1
	bl FUN_02017348
	movs r1, #0x4a
	adds r0, r5, #0
	lsls r1, r1, #2
	adds r0, #0xb0
	adds r1, r5, r1
	bl FUN_0201727C
	movs r1, #0x4f
	adds r0, r5, #0
	lsls r1, r1, #2
	adds r0, #0xb0
	adds r1, r5, r1
	bl FUN_0201727C
	movs r0, #2
	lsls r0, r0, #8
	adds r0, r5, r0
	adds r1, r6, #0
	movs r2, #0x10
	adds r3, r4, #0
	bl FUN_020170D8
	movs r0, #0x82
	lsls r0, r0, #2
	movs r2, #0x1f
	ldr r0, [r5, r0]
	movs r1, #1
	lsls r2, r2, #0x10
	blx FUN_020B2D8C
	movs r0, #0x82
	lsls r0, r0, #2
	movs r2, #0x3f
	ldr r0, [r5, r0]
	movs r1, #1
	lsls r2, r2, #0x18
	blx FUN_020B2D8C
	adds r0, r5, #0
	movs r1, #0x76
	str r4, [sp]
	adds r0, #0x70
	lsls r1, r1, #2
	str r0, [sp, #4]
	adds r0, r5, r1
	adds r1, #0x28
	adds r1, r5, r1
	adds r2, r6, #0
	movs r3, #0x12
	bl FUN_02017164
	movs r0, #0x76
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_02017240
	adds r0, r5, #0
	movs r1, #0x7b
	str r4, [sp]
	adds r0, #0x70
	lsls r1, r1, #2
	str r0, [sp, #4]
	adds r0, r5, r1
	adds r1, #0x14
	adds r1, r5, r1
	adds r2, r6, #0
	movs r3, #0x11
	bl FUN_02017164
	movs r0, #0x7b
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_02017240
	movs r1, #0x16
	lsls r1, r1, #4
	adds r0, r5, r1
	adds r1, #0xa0
	adds r1, r5, r1
	bl FUN_02017258
	movs r1, #0
	movs r0, #0x16
	lsls r0, r0, #4
	adds r0, r5, r0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02017350
	movs r0, #0x16
	movs r1, #1
	lsls r1, r1, #0xc
	lsls r0, r0, #4
	adds r0, r5, r0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201736C
	movs r0, #0x16
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r1, #1
	bl FUN_02017348
	movs r1, #0x16
	lsls r1, r1, #4
	adds r0, r5, r1
	adds r1, #0x78
	adds r1, r5, r1
	bl FUN_0201727C
	movs r1, #0x16
	lsls r1, r1, #4
	adds r0, r5, r1
	adds r1, #0x8c
	adds r1, r5, r1
	bl FUN_0201727C
	adds r0, r6, #0
	bl FUN_02006CA8
	movs r1, #0x85
	ldr r0, _021D14DC @ =0xFFFFFED2
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r2, _021D14E0 @ =0x0000E383
	adds r0, r1, #4
	str r2, [r5, r0]
	adds r0, r1, #0
	movs r2, #1
	lsls r2, r2, #0xc
	adds r0, #8
	str r2, [r5, r0]
	movs r0, #0x1e
	lsls r0, r0, #0xa
	adds r1, #0xc
	str r0, [r5, r1]
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D14DC: .4byte 0xFFFFFED2
_021D14E0: .4byte 0x0000E383
	thumb_func_end ov77_021D1300

	thumb_func_start ov77_021D14E4
ov77_021D14E4: @ 0x021D14E4
	push {r4, lr}
	adds r4, r0, #0
	bl ov77_021D1514
	adds r0, r4, #0
	ldr r1, [r4, #0x68]
	adds r0, #0x70
	blx FUN_020B2CD8
	adds r0, r4, #0
	ldr r1, [r4, #0x6c]
	adds r0, #0x70
	blx FUN_020B2CD8
	ldr r0, [r4, #0x60]
	bl FUN_020181C4
	ldr r0, [r4, #0x64]
	bl FUN_020181C4
	ldr r0, [r4, #0x5c]
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov77_021D14E4

	thumb_func_start ov77_021D1514
ov77_021D1514: @ 0x021D1514
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x15
	lsls r0, r0, #4
	adds r0, r4, r0
	bl FUN_02017110
	movs r0, #0x4a
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r0, r4, r0
	adds r1, #0x70
	bl FUN_020171A0
	movs r0, #0x4f
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r0, r4, r0
	adds r1, #0x70
	bl FUN_020171A0
	movs r0, #2
	lsls r0, r0, #8
	adds r0, r4, r0
	bl FUN_02017110
	movs r0, #0x76
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r0, r4, r0
	adds r1, #0x70
	bl FUN_020171A0
	movs r0, #0x7b
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r4, #0x70
	adds r1, r4, #0
	bl FUN_020171A0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov77_021D1514

	thumb_func_start ov77_021D1568
ov77_021D1568: @ 0x021D1568
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	ldr r6, _021D16F4 @ =0x021D73E0
	adds r5, r0, #0
	adds r4, r1, #0
	add r3, sp, #0
	movs r2, #4
_021D1576:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D1576
	ldr r0, [r6]
	str r0, [r3]
	movs r0, #0x2a
	lsls r0, r0, #4
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _021D15B6
	adds r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021D15B6
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	bl ov77_021D25AC
	adds r1, r4, #0
	adds r1, #0xa8
	ldr r1, [r1]
	movs r0, #0
	bl FUN_02020854
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	bl FUN_020203D4
	b _021D15CC
_021D15B6:
	adds r1, r4, #0
	adds r1, #0xa4
	ldr r1, [r1]
	movs r0, #0
	bl FUN_02020854
	adds r0, r4, #0
	adds r0, #0xa4
	ldr r0, [r0]
	bl FUN_020203D4
_021D15CC:
	movs r0, #0xab
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	adds r1, r1, #2
	str r1, [r5, r0]
	movs r1, #0x5a
	ldr r0, [r5, r0]
	lsls r1, r1, #2
	blx FUN_020E1F6C
	movs r0, #0xab
	lsls r0, r0, #2
	str r1, [r5, r0]
	ldr r1, [r5, r0]
	ldr r0, _021D16F8 @ =0x0000FFFF
	muls r0, r1, r0
	movs r1, #0x5a
	lsls r1, r1, #2
	blx FUN_020E1F6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D250
	blx FUN_020E01B8
	ldr r2, _021D16FC @ =0x33333333
	ldr r3, _021D1700 @ =0x3FD33333
	blx FUN_020E0234
	blx FUN_020E0088
	adds r1, r4, #0
	adds r1, #0x84
	ldr r1, [r1]
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x84
	str r1, [r0]
	ldr r0, [r4]
	cmp r0, #0
	beq _021D16F0
	cmp r0, #1
	beq _021D162C
	cmp r0, #2
	beq _021D1640
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
_021D162C:
	bl FUN_020241B4
	movs r0, #1
	adds r1, r0, #0
	bl FUN_020241BC
	movs r0, #0
	add sp, #0x24
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021D1640:
	bl FUN_020241B4
	bl FUN_020203EC
	adds r1, r4, #0
	add r0, sp, #0
	adds r1, #0x98
	bl FUN_0201E268
	movs r0, #0x2a
	lsls r0, r0, #4
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _021D166C
	adds r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021D1680
	adds r0, r4, #0
	bl ov77_021D1704
	b _021D1680
_021D166C:
	blx FUN_020C2BE8
	adds r1, r4, #0
	adds r3, r4, #0
	adds r0, r4, #4
	adds r1, #0x80
	add r2, sp, #0
	adds r3, #0x8c
	bl FUN_0201CA74
_021D1680:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _021D1694
	cmp r0, #1
	beq _021D16A0
	cmp r0, #2
	beq _021D16B0
	b _021D16E8
_021D1694:
	ldr r0, [r4, #0x68]
	movs r1, #0
	str r1, [r0]
	ldr r0, [r4, #0x6c]
	str r1, [r0]
	b _021D16E8
_021D16A0:
	ldr r0, [r4, #0x68]
	ldr r0, [r0]
	cmp r0, #0
	bne _021D16B0
	movs r0, #0
	adds r4, #0xac
	str r0, [r4]
	b _021D16E8
_021D16B0:
	ldr r2, [r4, #0x68]
	movs r0, #1
	ldr r1, [r2]
	lsls r0, r0, #0xc
	adds r1, r1, r0
	str r1, [r2]
	ldr r2, [r4, #0x6c]
	ldr r1, [r2]
	adds r0, r1, r0
	str r0, [r2]
	ldr r2, [r4, #0x68]
	ldr r0, [r2, #8]
	ldr r1, [r2]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0xc
	cmp r1, r0
	bne _021D16D6
	movs r0, #0
	str r0, [r2]
_021D16D6:
	ldr r2, [r4, #0x6c]
	ldr r0, [r2, #8]
	ldr r1, [r2]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0xc
	cmp r1, r0
	bne _021D16E8
	movs r0, #0
	str r0, [r2]
_021D16E8:
	movs r0, #1
	adds r1, r0, #0
	bl FUN_020241BC
_021D16F0:
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D16F4: .4byte 0x021D73E0
_021D16F8: .4byte 0x0000FFFF
_021D16FC: .4byte 0x33333333
_021D1700: .4byte 0x3FD33333
	thumb_func_end ov77_021D1568

	thumb_func_start ov77_021D1704
ov77_021D1704: @ 0x021D1704
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x89
	lsls r0, r0, #2
	ldrb r1, [r4, r0]
	cmp r1, #1
	bne _021D172C
	subs r0, #0xfc
	movs r1, #1
	adds r0, r4, r0
	lsls r1, r1, #0xc
	bl FUN_02017204
	cmp r0, #1
	bne _021D172C
	movs r0, #0x89
	movs r1, #2
	lsls r0, r0, #2
	strb r1, [r4, r0]
_021D172C:
	ldr r0, _021D17B0 @ =0x00000225
	ldrb r1, [r4, r0]
	cmp r1, #1
	bne _021D174A
	subs r0, #0xe9
	movs r1, #1
	adds r0, r4, r0
	lsls r1, r1, #0xc
	bl FUN_02017204
	cmp r0, #1
	bne _021D174A
	ldr r0, _021D17B0 @ =0x00000225
	movs r1, #2
	strb r1, [r4, r0]
_021D174A:
	movs r0, #0x76
	lsls r0, r0, #2
	movs r1, #1
	adds r0, r4, r0
	lsls r1, r1, #0xc
	bl FUN_020171CC
	movs r0, #0x7b
	lsls r0, r0, #2
	movs r1, #1
	adds r0, r4, r0
	lsls r1, r1, #0xc
	bl FUN_020171CC
	movs r1, #0
	movs r0, #0x11
	adds r2, r1, #0
	blx FUN_020B275C
	movs r0, #0x16
	lsls r0, r0, #4
	adds r0, r4, r0
	bl FUN_02017294
	movs r0, #0x89
	lsls r0, r0, #2
	ldrb r1, [r4, r0]
	cmp r1, #2
	bne _021D178C
	adds r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r0, #2
	beq _021D1796
_021D178C:
	adds r4, #0xb0
	adds r0, r4, #0
	bl FUN_02017294
	b _021D17A0
_021D1796:
	adds r4, #0xb0
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02017348
_021D17A0:
	movs r2, #1
	movs r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	blx FUN_020B275C
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021D17B0: .4byte 0x00000225
	thumb_func_end ov77_021D1704

	thumb_func_start ov77_021D17B4
ov77_021D17B4: @ 0x021D17B4
	push {r3, r4, r5, lr}
	sub sp, #0xb8
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02018340
	add r3, sp, #0xa8
	ldr r5, _021D18EC @ =0x021D72F0
	str r0, [r4, #4]
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _021D18F0 @ =0x021D7354
	add r3, sp, #0x8c
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
	ldr r0, [r4, #4]
	movs r3, #0
	bl FUN_020183C4
	ldr r5, _021D18F4 @ =0x021D7370
	add r3, sp, #0x70
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
	ldr r0, [r4, #4]
	movs r3, #0
	bl FUN_020183C4
	ldr r5, _021D18F8 @ =0x021D738C
	add r3, sp, #0x54
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
	ldr r0, [r4, #4]
	movs r3, #0
	bl FUN_020183C4
	ldr r5, _021D18FC @ =0x021D73A8
	add r3, sp, #0x38
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #1
	str r0, [r3]
	ldr r0, [r4, #4]
	movs r3, #0
	bl FUN_020183C4
	ldr r5, _021D1900 @ =0x021D7300
	add r3, sp, #0x1c
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	ldr r0, [r4, #4]
	movs r1, #3
	movs r3, #0
	bl FUN_020183C4
	ldr r5, _021D1904 @ =0x021D731C
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
	ldr r0, [r4, #4]
	movs r3, #0
	bl FUN_020183C4
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0201975C
	movs r0, #4
	movs r1, #0
	bl FUN_0201975C
	add sp, #0xb8
	pop {r3, r4, r5, pc}
	nop
_021D18EC: .4byte 0x021D72F0
_021D18F0: .4byte 0x021D7354
_021D18F4: .4byte 0x021D7370
_021D18F8: .4byte 0x021D738C
_021D18FC: .4byte 0x021D73A8
_021D1900: .4byte 0x021D7300
_021D1904: .4byte 0x021D731C
	thumb_func_end ov77_021D17B4

	thumb_func_start ov77_021D1908
ov77_021D1908: @ 0x021D1908
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r4, #4]
	movs r1, #4
	bl FUN_02019044
	ldr r0, [r4, #4]
	movs r1, #5
	bl FUN_02019044
	ldr r0, [r4, #4]
	movs r1, #6
	bl FUN_02019044
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r4, #4]
	movs r1, #3
	bl FUN_02019044
	ldr r0, [r4, #4]
	movs r1, #7
	bl FUN_02019044
	ldr r0, [r4, #4]
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov77_021D1908

	thumb_func_start ov77_021D1984
ov77_021D1984: @ 0x021D1984
	push {r3, r4, lr}
	sub sp, #0x14
	movs r3, #0
	add r2, sp, #0
	strh r3, [r2]
	adds r4, r1, #0
	add r1, sp, #8
	strh r3, [r2, #2]
	str r3, [r1]
	strh r3, [r2, #4]
	str r3, [r1, #4]
	strh r3, [r2, #6]
	movs r2, #0x2a
	str r3, [r1, #8]
	lsls r2, r2, #4
	ldr r0, [r0, r2]
	cmp r0, #1
	beq _021D1A54
	subs r2, #0x90
	ldr r0, [r4, r2]
	cmp r0, #0x3c
	bhs _021D19C0
	ldr r0, _021D1A58 @ =0xFFFFF600
	str r0, [sp, #0x10]
	adds r0, r1, #0
	adds r1, r4, #0
	adds r1, #0xa8
	ldr r1, [r1]
	bl FUN_02020990
_021D19C0:
	movs r1, #0x21
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	cmp r0, #0x4b
	bne _021D19D6
	adds r0, r1, #0
	movs r2, #1
	adds r0, #0x14
	strb r2, [r4, r0]
	adds r1, #0x15
	strb r2, [r4, r1]
_021D19D6:
	movs r0, #0x21
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0xfa
	blo _021D1A4A
	adds r1, r4, #0
	adds r1, #0xa8
	ldr r1, [r1]
	add r0, sp, #0
	bl FUN_02020A94
	movs r0, #0x86
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	add r0, sp, #0
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0xa8
	ldr r1, [r1]
	add r0, sp, #0
	bl FUN_020209D4
	movs r1, #0x86
	lsls r1, r1, #2
	subs r0, r1, #4
	ldr r2, [r4, r1]
	ldr r0, [r4, r0]
	adds r0, r2, r0
	str r0, [r4, r1]
	ldr r2, [r4, r1]
	ldr r0, _021D1A5C @ =0x0000C011
	cmp r2, r0
	bge _021D1A4A
	str r0, [r4, r1]
	adds r1, #8
	ldr r0, [r4, r1]
	adds r1, r4, #0
	asrs r0, r0, #8
	rsbs r0, r0, #0
	adds r1, #0xa8
	lsls r0, r0, #0x10
	ldr r1, [r1]
	lsrs r0, r0, #0x10
	bl FUN_0202094C
	movs r1, #0x22
	lsls r1, r1, #4
	adds r0, r1, #0
	ldr r2, [r4, r1]
	adds r0, #0x60
	subs r0, r2, r0
	str r0, [r4, r1]
	movs r0, #1
	ldr r2, [r4, r1]
	lsls r0, r0, #0xc
	cmp r2, r0
	bge _021D1A4A
	str r0, [r4, r1]
_021D1A4A:
	movs r0, #0x21
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
_021D1A54:
	add sp, #0x14
	pop {r3, r4, pc}
	.align 2, 0
_021D1A58: .4byte 0xFFFFF600
_021D1A5C: .4byte 0x0000C011
	thumb_func_end ov77_021D1984

	thumb_func_start ov77_021D1A60
ov77_021D1A60: @ 0x021D1A60
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	bl ov77_021D24C8
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl ov77_021D2214
	adds r0, r5, #4
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl ov77_021D1208
	ldr r0, _021D1BF0 @ =0x04000060
	ldr r2, _021D1BF4 @ =0xFFFFCFFF
	ldrh r1, [r0]
	adds r3, r1, #0
	ands r3, r2
	movs r1, #0x10
	orrs r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	ands r2, r1
	movs r1, #8
	orrs r1, r2
	strh r1, [r0]
	movs r0, #0x9d
	lsls r0, r0, #2
	adds r1, r0, #0
	ldr r2, [r5, r0]
	subs r1, #0x34
	str r2, [r5, r1]
	adds r1, r0, #4
	ldr r2, [r5, r1]
	adds r1, r0, #0
	subs r1, #0x30
	str r2, [r5, r1]
	adds r1, r0, #0
	adds r1, #8
	ldr r2, [r5, r1]
	adds r1, r0, #0
	subs r1, #0x2c
	str r2, [r5, r1]
	adds r1, r0, #0
	subs r1, #0x18
	ldr r2, [r5, r1]
	adds r1, r0, #0
	subs r1, #0x28
	str r2, [r5, r1]
	adds r1, r0, #0
	subs r1, #0x14
	ldr r2, [r5, r1]
	adds r1, r0, #0
	subs r1, #0x24
	str r2, [r5, r1]
	adds r1, r0, #0
	subs r1, #0x10
	ldr r1, [r5, r1]
	subs r0, #0x20
	str r1, [r5, r0]
	adds r0, r4, #0
	bl FUN_020203AC
	adds r1, r5, #0
	adds r1, #0xa8
	str r0, [r1]
	movs r3, #0
	adds r0, r5, #0
	movs r1, #9
	movs r2, #0xb6
	str r3, [sp]
	adds r0, #0xa8
	ldr r0, [r0]
	lsls r1, r1, #6
	str r0, [sp, #4]
	adds r0, r5, r1
	adds r1, #0xc
	adds r1, r5, r1
	lsls r2, r2, #4
	bl FUN_02020784
	adds r2, r5, #0
	adds r2, #0xa8
	movs r1, #0x4b
	ldr r2, [r2]
	movs r0, #0
	lsls r1, r1, #0xe
	bl FUN_020206BC
	adds r1, r5, #0
	adds r1, #0xa8
	ldr r1, [r1]
	movs r0, #0
	bl FUN_02020854
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	bl FUN_020203D4
	add r1, sp, #0x18
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r0, r4, #0
	bl FUN_020203AC
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #0xa
	str r0, [sp, #8]
	ldr r2, _021D1BF8 @ =0x021D72C8
	ldr r3, _021D1BFC @ =0x00000FA4
	add r0, sp, #0x18
	lsls r1, r1, #0x10
	bl FUN_020206D0
	adds r2, r5, #0
	adds r2, #0xac
	movs r1, #0x4b
	ldr r2, [r2]
	movs r0, #0
	lsls r1, r1, #0xe
	bl FUN_020206BC
	ldr r4, _021D1C00 @ =0x021D72D8
	add r3, sp, #0xc
	ldm r4!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r4]
	adds r1, r5, #0
	str r0, [r3]
	adds r1, #0xac
	ldr r1, [r1]
	adds r0, r2, #0
	bl FUN_02020990
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	bl FUN_020203D4
	movs r3, #0xa3
	lsls r3, r3, #2
	adds r2, r3, #2
	ldrsh r1, [r5, r3]
	adds r3, r3, #4
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	movs r0, #0
	blx FUN_020AF51C
	ldr r1, _021D1C04 @ =0x00007FFF
	movs r0, #0
	blx FUN_020AF558
	ldr r3, _021D1C08 @ =0x00000292
	movs r0, #1
	adds r2, r3, #2
	ldrsh r1, [r5, r3]
	adds r3, r3, #4
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	blx FUN_020AF51C
	ldr r1, _021D1C04 @ =0x00007FFF
	movs r0, #1
	blx FUN_020AF558
	ldr r2, _021D1BF0 @ =0x04000060
	ldr r0, _021D1BF4 @ =0xFFFFCFFF
	ldrh r1, [r2]
	ands r1, r0
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _021D1C0C @ =0x021BF6DC
	movs r1, #1
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	movs r0, #2
	str r0, [r5, #4]
	movs r0, #1
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D1BF0: .4byte 0x04000060
_021D1BF4: .4byte 0xFFFFCFFF
_021D1BF8: .4byte 0x021D72C8
_021D1BFC: .4byte 0x00000FA4
_021D1C00: .4byte 0x021D72D8
_021D1C04: .4byte 0x00007FFF
_021D1C08: .4byte 0x00000292
_021D1C0C: .4byte 0x021BF6DC
	thumb_func_end ov77_021D1A60

	thumb_func_start ov77_021D1C10
ov77_021D1C10: @ 0x021D1C10
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xa
	lsls r0, r0, #6
	ldr r1, [r4, r0]
	subs r0, #0xc
	ldr r0, [r4, r0]
	subs r0, r1, r0
	movs r1, #0x3c
	blx FUN_020E1F6C
	movs r1, #9
	lsls r1, r1, #6
	ldr r2, [r4, r1]
	adds r0, r2, r0
	str r0, [r4, r1]
	adds r0, r1, #0
	adds r0, #0x44
	adds r1, #0x38
	ldr r2, [r4, r0]
	ldr r0, [r4, r1]
	movs r1, #0x3c
	subs r0, r2, r0
	blx FUN_020E1F6C
	movs r1, #0x91
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	adds r0, r2, r0
	str r0, [r4, r1]
	adds r0, r1, #0
	adds r0, #0x44
	adds r1, #0x38
	ldr r2, [r4, r0]
	ldr r0, [r4, r1]
	movs r1, #0x3c
	subs r0, r2, r0
	blx FUN_020E1F6C
	movs r1, #0x92
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	adds r0, r2, r0
	str r0, [r4, r1]
	adds r0, r1, #0
	adds r0, #0x20
	adds r1, #0x14
	ldr r2, [r4, r0]
	ldr r0, [r4, r1]
	movs r1, #0x3c
	subs r0, r2, r0
	blx FUN_020E1F6C
	movs r1, #0x93
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	adds r0, r2, r0
	str r0, [r4, r1]
	adds r0, r1, #0
	adds r0, #0x20
	adds r1, #0x14
	ldr r2, [r4, r0]
	ldr r0, [r4, r1]
	movs r1, #0x3c
	subs r0, r2, r0
	blx FUN_020E1F6C
	movs r1, #0x25
	lsls r1, r1, #4
	ldr r2, [r4, r1]
	adds r0, r2, r0
	str r0, [r4, r1]
	adds r0, r1, #0
	adds r0, #0x20
	adds r1, #0x14
	ldr r2, [r4, r0]
	ldr r0, [r4, r1]
	movs r1, #0x3c
	subs r0, r2, r0
	blx FUN_020E1F6C
	movs r1, #0x95
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	adds r0, r2, r0
	str r0, [r4, r1]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov77_021D1C10

	thumb_func_start ov77_021D1CC0
ov77_021D1CC0: @ 0x021D1CC0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	adds r4, r1, #0
	movs r1, #5
	adds r5, r0, #0
	bl FUN_02019044
	ldr r6, _021D1D3C @ =0x021D73C4
	add r3, sp, #0x10
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	movs r1, #5
	str r0, [r3]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x30
	movs r1, #0x17
	adds r2, r5, #0
	movs r3, #5
	str r4, [sp, #0xc]
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x30
	movs r1, #0x19
	adds r2, r5, #0
	movs r3, #5
	str r4, [sp, #0xc]
	bl FUN_02006E60
	ldr r0, _021D1D40 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	movs r3, #0xa
	ldr r0, _021D1D44 @ =0x04001050
	movs r1, #2
	movs r2, #8
	str r3, [sp]
	blx FUN_020BF55C
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF74
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	nop
_021D1D3C: .4byte 0x021D73C4
_021D1D40: .4byte 0x04000050
_021D1D44: .4byte 0x04001050
	thumb_func_end ov77_021D1CC0

	thumb_func_start ov77_021D1D48
ov77_021D1D48: @ 0x021D1D48
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	adds r5, r1, #0
	movs r1, #4
	adds r4, r0, #0
	bl FUN_02019044
	ldr r6, _021D1DE4 @ =0x021D7338
	add r3, sp, #0x10
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	movs r1, #4
	str r0, [r3]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x30
	movs r1, #0x16
	adds r2, r4, #0
	movs r3, #4
	str r5, [sp, #0xc]
	bl FUN_02006E60
	ldr r0, _021D1DE8 @ =0x04001008
	movs r2, #3
	ldrh r1, [r0]
	bics r1, r2
	strh r1, [r0]
	ldrh r3, [r0, #2]
	movs r1, #1
	bics r3, r2
	orrs r1, r3
	strh r1, [r0, #2]
	ldrh r1, [r0, #4]
	bics r1, r2
	strh r1, [r0, #4]
	ldrh r3, [r0, #6]
	movs r1, #2
	bics r3, r2
	orrs r1, r3
	strh r1, [r0, #6]
	movs r2, #0
	adds r0, r4, #0
	movs r1, #6
	adds r3, r2, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #6
	movs r2, #3
	movs r3, #1
	bl FUN_02019184
	movs r0, #0xa
	str r0, [sp]
	ldr r0, _021D1DEC @ =0x04001050
	movs r1, #3
	movs r2, #0xc
	movs r3, #0x1a
	blx FUN_020BF55C
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF74
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D1DE4: .4byte 0x021D7338
_021D1DE8: .4byte 0x04001008
_021D1DEC: .4byte 0x04001050
	thumb_func_end ov77_021D1D48

	thumb_func_start ov77_021D1DF0
ov77_021D1DF0: @ 0x021D1DF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	movs r6, #0
	bl ov77_021D11A4
	cmp r0, #1
	bne _021D1E22
	movs r0, #0x2a
	movs r1, #1
	lsls r0, r0, #4
	str r1, [r4, r0]
	adds r1, r6, #0
	adds r0, r0, #4
	str r1, [r4, r0]
	bl FUN_0200F2C0
	movs r0, #3
	bl FUN_0200ABB0
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_021D1E22:
	ldr r0, [r4]
	cmp r0, #0xa
	bhi _021D1EAC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D1E34: @ jump table
	.2byte _021D1E4A - _021D1E34 - 2 @ case 0
	.2byte _021D1E78 - _021D1E34 - 2 @ case 1
	.2byte _021D1E98 - _021D1E34 - 2 @ case 2
	.2byte _021D1EFA - _021D1E34 - 2 @ case 3
	.2byte _021D1F3A - _021D1E34 - 2 @ case 4
	.2byte _021D1F54 - _021D1E34 - 2 @ case 5
	.2byte _021D1FAC - _021D1E34 - 2 @ case 6
	.2byte _021D1FFE - _021D1E34 - 2 @ case 7
	.2byte _021D1FE8 - _021D1E34 - 2 @ case 8
	.2byte _021D2028 - _021D1E34 - 2 @ case 9
	.2byte _021D20A2 - _021D1E34 - 2 @ case 10
_021D1E4A:
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	adds r0, r6, #0
	ldr r1, _021D20D8 @ =0x0000029A
	ldr r2, _021D20DC @ =0x0000010B
	strh r0, [r4, r1]
	subs r1, #0x6e
	strh r2, [r4, r1]
	movs r1, #0xf
	str r1, [sp]
	movs r1, #3
	str r1, [sp, #4]
	movs r1, #1
	adds r2, r1, #0
	adds r3, r0, #0
	str r5, [sp, #8]
	bl FUN_0200F174
	movs r0, #1
	str r0, [r4]
	b _021D20BC
_021D1E78:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D1EAC
	movs r0, #0x8b
	lsls r0, r0, #2
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _021D1E90
	subs r1, r1, #1
	strh r1, [r4, r0]
	b _021D20BC
_021D1E90:
	movs r1, #2
	strh r1, [r4, r0]
	str r1, [r4]
	b _021D20BC
_021D1E98:
	movs r0, #1
	bl FUN_0200AC1C
	cmp r0, #1
	bne _021D1EAC
	movs r0, #2
	bl FUN_0200AC1C
	cmp r0, #1
	beq _021D1EAE
_021D1EAC:
	b _021D20BC
_021D1EAE:
	movs r0, #0x8b
	lsls r0, r0, #2
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _021D1EF0
	movs r0, #1
	str r0, [sp]
	movs r0, #0xa
	movs r1, #0x10
	adds r2, r6, #0
	movs r3, #7
	bl FUN_0200AAE0
	movs r0, #2
	str r0, [sp]
	movs r0, #0xa
	movs r1, #0x10
	adds r2, r6, #0
	movs r3, #0x27
	bl FUN_0200AAE0
	ldr r1, _021D20D8 @ =0x0000029A
	movs r0, #2
	strh r0, [r4, r1]
	adds r0, r1, #0
	subs r0, #0x6e
	ldrh r0, [r4, r0]
	subs r1, #0x6e
	subs r0, r0, #1
	strh r0, [r4, r1]
	movs r0, #3
	str r0, [r4]
	b _021D20BC
_021D1EF0:
	adds r1, r6, #0
	strh r1, [r4, r0]
	movs r0, #4
	str r0, [r4]
	b _021D20BC
_021D1EFA:
	movs r0, #1
	bl FUN_0200AC1C
	cmp r0, #1
	bne _021D1FB4
	movs r0, #2
	bl FUN_0200AC1C
	cmp r0, #1
	bne _021D1FB4
	movs r0, #1
	str r0, [sp]
	movs r0, #0xa
	adds r1, r6, #0
	movs r2, #0x10
	movs r3, #7
	bl FUN_0200AAE0
	movs r0, #2
	str r0, [sp]
	movs r0, #0xa
	adds r1, r6, #0
	movs r2, #0x10
	movs r3, #0x27
	bl FUN_0200AAE0
	ldr r0, _021D20D8 @ =0x0000029A
	movs r1, #3
	strh r1, [r4, r0]
	movs r0, #2
	str r0, [r4]
	b _021D20BC
_021D1F3A:
	movs r0, #0x8b
	lsls r0, r0, #2
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _021D1F4A
	subs r1, r1, #1
	strh r1, [r4, r0]
	b _021D20BC
_021D1F4A:
	movs r1, #1
	strh r1, [r4, r0]
	movs r0, #5
	str r0, [r4]
	b _021D20BC
_021D1F54:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D1FB4
	movs r0, #0x8b
	lsls r0, r0, #2
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _021D1F94
	movs r0, #5
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r6, #0
	ldr r3, _021D20E0 @ =0x00007FFF
	adds r1, r0, #0
	adds r2, r0, #0
	str r5, [sp, #8]
	bl FUN_0200F174
	ldr r1, _021D20D8 @ =0x0000029A
	movs r0, #2
	strh r0, [r4, r1]
	adds r0, r1, #0
	subs r0, #0x6e
	ldrh r0, [r4, r0]
	subs r1, #0x6e
	subs r0, r0, #1
	strh r0, [r4, r1]
	movs r0, #6
	str r0, [r4]
	b _021D20BC
_021D1F94:
	movs r1, #0xa
	strh r1, [r4, r0]
	movs r1, #8
	str r1, [r4]
	movs r1, #1
	adds r0, #0x74
	str r1, [r4, r0]
	adds r0, r6, #0
	adds r1, r0, #0
	bl FUN_0200F344
	b _021D20BC
_021D1FAC:
	bl FUN_0200F2AC
	cmp r0, #1
	beq _021D1FB6
_021D1FB4:
	b _021D20BC
_021D1FB6:
	movs r0, #0xa9
	adds r1, r6, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF74
	adds r0, r4, #0
	movs r1, #2
	adds r0, #0xb0
	str r1, [r0]
	movs r0, #0x10
	str r0, [sp]
	movs r0, #3
	movs r1, #1
	str r0, [sp, #4]
	ldr r3, _021D20E0 @ =0x00007FFF
	adds r2, r1, #0
	str r5, [sp, #8]
	bl FUN_0200F174
	movs r0, #5
	str r0, [r4]
	b _021D20BC
_021D1FE8:
	movs r0, #0x8b
	lsls r0, r0, #2
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _021D1FF8
	subs r1, r1, #1
	strh r1, [r4, r0]
	b _021D20BC
_021D1FF8:
	movs r0, #7
	str r0, [r4]
	b _021D20BC
_021D1FFE:
	movs r0, #0x30
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #3
	adds r2, r1, #0
	adds r3, r6, #0
	str r5, [sp, #8]
	bl FUN_0200F174
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #9
	str r0, [r4]
	movs r0, #0xaa
	adds r1, r6, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	b _021D20BC
_021D2028:
	adds r0, r4, #0
	bl ov77_021D1C10
	adds r1, r4, #0
	movs r0, #9
	adds r1, #0xa8
	lsls r0, r0, #6
	ldr r1, [r1]
	adds r0, r4, r0
	bl FUN_02020ACC
	adds r1, r4, #0
	movs r0, #0x93
	adds r1, #0xa8
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r0, r4, r0
	bl FUN_02020ADC
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0x3c
	blt _021D20BC
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	adds r0, r7, #0
	adds r1, r5, #0
	bl ov77_021D1CC0
	movs r0, #0x10
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r1, #1
	ldr r3, _021D20E0 @ =0x00007FFF
	movs r0, #4
	adds r2, r1, #0
	str r5, [sp, #8]
	bl FUN_0200F174
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #0x8b
	movs r1, #0x5a
	lsls r0, r0, #2
	strh r1, [r4, r0]
	movs r0, #0xa
	str r0, [r4]
	b _021D20BC
_021D20A2:
	movs r0, #0x8b
	lsls r0, r0, #2
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _021D20B2
	subs r1, r1, #1
	strh r1, [r4, r0]
	b _021D20BC
_021D20B2:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D20BC
	movs r6, #1
_021D20BC:
	adds r0, r4, #0
	bl ov77_021D2438
	adds r0, r4, #0
	adds r1, r4, #4
	bl ov77_021D1984
	adds r0, r4, #0
	adds r1, r4, #4
	bl ov77_021D1568
	adds r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D20D8: .4byte 0x0000029A
_021D20DC: .4byte 0x0000010B
_021D20E0: .4byte 0x00007FFF
	thumb_func_end ov77_021D1DF0

	thumb_func_start ov77_021D20E4
ov77_021D20E4: @ 0x021D20E4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	adds r6, r1, #0
	adds r7, r2, #0
	movs r4, #0
	cmp r0, #0
	beq _021D20FA
	cmp r0, #1
	beq _021D2174
	b _021D21B0
_021D20FA:
	adds r1, r5, #0
	movs r0, #0xa
	adds r1, #0xa8
	lsls r0, r0, #6
	ldr r1, [r1]
	adds r0, r5, r0
	bl FUN_02020ACC
	adds r1, r5, #0
	movs r0, #0x9a
	adds r1, #0xa8
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r0, r5, r0
	bl FUN_02020ADC
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	adds r0, r4, #0
	bl FUN_0200F338
	movs r0, #1
	bl FUN_0200F338
	adds r0, r5, #0
	movs r1, #2
	adds r0, #0xb0
	str r1, [r0]
	ldr r1, _021D21BC @ =0x00007FFF
	movs r0, #1
	blx FUN_020AF558
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov77_021D1CC0
	movs r0, #0x8b
	adds r1, r4, #0
	lsls r0, r0, #2
	strh r1, [r5, r0]
	movs r0, #1
	str r0, [r5]
	b _021D21B0
_021D2174:
	movs r0, #0x96
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #1
	bne _021D219C
	subs r0, #0x2c
	ldrh r0, [r5, r0]
	cmp r0, #0
	bne _021D2190
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF74
	b _021D219C
_021D2190:
	cmp r0, #0x10
	bne _021D219C
	movs r0, #1
	adds r1, r4, #0
	bl FUN_0201FF74
_021D219C:
	movs r1, #0x8b
	lsls r1, r1, #2
	ldrh r0, [r5, r1]
	movs r4, #1
	adds r0, r0, #1
	strh r0, [r5, r1]
	ldrh r2, [r5, r1]
	movs r0, #0x1f
	ands r0, r2
	strh r0, [r5, r1]
_021D21B0:
	adds r0, r5, #0
	adds r1, r5, #4
	bl ov77_021D1568
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D21BC: .4byte 0x00007FFF
	thumb_func_end ov77_021D20E4

	thumb_func_start ov77_021D21C0
ov77_021D21C0: @ 0x021D21C0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0xa8
	ldr r0, [r0]
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_020203B8
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	bl FUN_020203B8
	adds r0, r5, #4
	bl ov77_021D14E4
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl ov77_021D2428
	ldr r2, _021D2208 @ =0x04000050
	movs r3, #0
	strh r3, [r2]
	adds r2, #0x10
	ldrh r1, [r2]
	ldr r0, _021D220C @ =0x0000CFDF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _021D2210 @ =0x021BF6DC
	strb r3, [r0, #5]
	bl FUN_0201FFE8
	movs r0, #1
	pop {r4, r5, r6, pc}
	nop
_021D2208: .4byte 0x04000050
_021D220C: .4byte 0x0000CFDF
_021D2210: .4byte 0x021BF6DC
	thumb_func_end ov77_021D21C0

	thumb_func_start ov77_021D2214
ov77_021D2214: @ 0x021D2214
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r4, r1, #0
	str r0, [sp, #8]
	adds r6, r2, #0
	movs r0, #0x30
	movs r1, #0x17
	adds r2, r5, #0
	movs r3, #7
	str r4, [sp, #0xc]
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x30
	movs r1, #0x1a
	adds r2, r5, #0
	movs r3, #3
	str r4, [sp, #0xc]
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x30
	movs r1, #0x18
	adds r2, r5, #0
	movs r3, #7
	str r4, [sp, #0xc]
	bl FUN_02006E60
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x30
	movs r1, #0x1b
	adds r2, r5, #0
	movs r3, #3
	str r4, [sp, #0xc]
	bl FUN_02006E60
	movs r3, #0
	str r3, [sp]
	movs r0, #0x30
	movs r1, #7
	movs r2, #4
	str r4, [sp, #4]
	bl FUN_02006E84
	movs r2, #0
	str r2, [sp]
	movs r0, #0x30
	movs r1, #6
	adds r3, r2, #0
	str r4, [sp, #4]
	bl FUN_02006E84
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x30
	movs r1, #0xc
	adds r2, r5, #0
	movs r3, #6
	str r4, [sp, #0xc]
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	movs r3, #1
	movs r0, #0x30
	movs r1, #0xb
	movs r2, #6
	lsls r3, r3, #0xe
	str r4, [sp, #4]
	bl FUN_02006E84
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x30
	movs r1, #0x16
	adds r2, r5, #0
	movs r3, #6
	str r4, [sp, #0xc]
	bl FUN_02006E60
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x80
	movs r1, #0xe
	adds r2, r5, #0
	movs r3, #5
	str r4, [sp, #0xc]
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	movs r0, #0x80
	movs r1, #0xd
	movs r2, #6
	lsls r3, r0, #6
	str r4, [sp, #4]
	bl FUN_02006E84
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x80
	movs r1, #0xc
	adds r2, r5, #0
	movs r3, #5
	str r4, [sp, #0xc]
	bl FUN_02006E60
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x30
	movs r1, #5
	adds r2, r5, #0
	movs r3, #1
	str r4, [sp, #0xc]
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x30
	movs r1, #3
	adds r2, r5, #0
	movs r3, #1
	str r4, [sp, #0xc]
	bl FUN_02006E60
	movs r0, #0x60
	str r0, [sp]
	movs r0, #0x30
	movs r1, #4
	movs r2, #0
	movs r3, #0x20
	str r4, [sp, #4]
	bl FUN_02006E84
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0201975C
	movs r0, #4
	movs r1, #0
	bl FUN_0201975C
	movs r0, #4
	movs r1, #0x20
	movs r2, #0
	adds r3, r4, #0
	bl FUN_02019690
	ldr r2, _021D2418 @ =0x00000261
	movs r0, #1
	movs r1, #0x1a
	adds r3, r4, #0
	bl FUN_0200B144
	adds r7, r0, #0
	movs r0, #0x40
	adds r1, r4, #0
	bl FUN_02023790
	movs r1, #0x23
	lsls r1, r1, #4
	adds r4, r0, #0
	ldr r2, _021D241C @ =0x021D72D0
	adds r0, r5, #0
	adds r1, r6, r1
	bl FUN_0201A8D4
	movs r1, #0
	movs r0, #0xe0
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x23
	lsls r0, r0, #4
	adds r0, r6, r0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201AE78
	adds r0, r7, #0
	movs r1, #0
	adds r2, r4, #0
	bl FUN_0200B1B8
	ldr r3, _021D2420 @ =0x00000237
	movs r0, #0
	ldrb r3, [r6, r3]
	adds r1, r4, #0
	movs r2, #1
	lsls r3, r3, #3
	bl FUN_02002EEC
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	ldr r0, _021D2424 @ =0x00010100
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	movs r0, #0x23
	lsls r0, r0, #4
	str r1, [sp, #0x10]
	adds r0, r6, r0
	adds r2, r4, #0
	str r1, [sp, #0x14]
	bl FUN_0201D7E0
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_0200B190
	movs r1, #0x15
	add r0, sp, #0x18
	strh r1, [r0, #2]
	strh r1, [r0]
	add r1, sp, #0x18
	movs r0, #4
	adds r1, #2
	movs r2, #2
	movs r3, #0x42
	bl FUN_0201972C
	movs r0, #4
	add r1, sp, #0x18
	movs r2, #2
	movs r3, #0x44
	bl FUN_0201972C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D2418: .4byte 0x00000261
_021D241C: .4byte 0x021D72D0
_021D2420: .4byte 0x00000237
_021D2424: .4byte 0x00010100
	thumb_func_end ov77_021D2214

	thumb_func_start ov77_021D2428
ov77_021D2428: @ 0x021D2428
	movs r0, #0x23
	lsls r0, r0, #4
	ldr r3, _021D2434 @ =FUN_0201A8FC
	adds r0, r2, r0
	bx r3
	nop
_021D2434: .4byte FUN_0201A8FC
	thumb_func_end ov77_021D2428

	thumb_func_start ov77_021D2438
ov77_021D2438: @ 0x021D2438
	push {r4, lr}
	ldr r1, _021D24C4 @ =0x0000029A
	ldrh r2, [r0, r1]
	cmp r2, #3
	bhi _021D2498
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021D244E: @ jump table
	.2byte _021D2456 - _021D244E - 2 @ case 0
	.2byte _021D2498 - _021D244E - 2 @ case 1
	.2byte _021D2462 - _021D244E - 2 @ case 2
	.2byte _021D247E - _021D244E - 2 @ case 3
_021D2456:
	movs r3, #5
	subs r2, r1, #2
	strh r3, [r0, r2]
	movs r2, #1
	strh r2, [r0, r1]
	b _021D2498
_021D2462:
	subs r2, r1, #2
	ldrh r2, [r0, r2]
	adds r3, r2, #2
	subs r2, r1, #2
	strh r3, [r0, r2]
	ldrh r2, [r0, r2]
	cmp r2, #0x1f
	blo _021D2498
	movs r3, #0x1f
	subs r2, r1, #2
	strh r3, [r0, r2]
	movs r2, #1
	strh r2, [r0, r1]
	b _021D2498
_021D247E:
	subs r2, r1, #2
	ldrh r2, [r0, r2]
	subs r3, r2, #2
	subs r2, r1, #2
	strh r3, [r0, r2]
	ldrh r2, [r0, r2]
	cmp r2, #5
	bhi _021D2498
	movs r3, #5
	subs r2, r1, #2
	strh r3, [r0, r2]
	movs r2, #1
	strh r2, [r0, r1]
_021D2498:
	movs r1, #0xa6
	lsls r1, r1, #2
	ldrh r3, [r0, r1]
	movs r1, #0x1f
	lsls r1, r1, #0xa
	lsls r2, r3, #0xa
	ands r1, r2
	adds r4, r3, #0
	movs r2, #0x1f
	ands r4, r2
	lsls r3, r3, #5
	lsls r2, r2, #5
	ands r2, r3
	orrs r2, r4
	orrs r1, r2
	lsls r1, r1, #0x10
	movs r0, #1
	lsrs r1, r1, #0x10
	blx FUN_020AF558
	pop {r4, pc}
	nop
_021D24C4: .4byte 0x0000029A
	thumb_func_end ov77_021D2438

	thumb_func_start ov77_021D24C8
ov77_021D24C8: @ 0x021D24C8
	push {r4, r5, r6, lr}
	sub sp, #0x18
	movs r1, #0x97
	lsls r1, r1, #2
	adds r4, r0, #0
	movs r5, #0
	movs r3, #3
	movs r2, #0x96
	str r5, [r4, r1]
	lsls r3, r3, #0x12
	adds r0, r1, #4
	str r3, [r4, r0]
	adds r0, r1, #0
	lsls r2, r2, #0xe
	adds r0, #8
	str r2, [r4, r0]
	adds r0, r1, #0
	adds r6, r1, #0
	ldr r2, _021D2590 @ =0xFFFC0000
	adds r0, #0xc
	str r2, [r4, r0]
	adds r0, r1, #0
	adds r0, #0x10
	str r3, [r4, r0]
	movs r2, #0x79
	adds r0, r1, #0
	lsls r2, r2, #0xe
	adds r0, #0x14
	str r2, [r4, r0]
	adds r0, r1, #0
	adds r0, #0x18
	str r5, [r4, r0]
	movs r2, #0x19
	adds r0, r1, #0
	lsls r2, r2, #0xe
	adds r0, #0x1c
	str r2, [r4, r0]
	ldr r0, _021D2594 @ =0xFFFEE000
	adds r6, #0x20
	str r0, [r4, r6]
	adds r6, r1, #0
	adds r6, #0x24
	str r5, [r4, r6]
	adds r5, r1, #0
	adds r5, #0x28
	str r2, [r4, r5]
	adds r2, r1, #0
	adds r2, #0x2c
	str r0, [r4, r2]
	adds r0, r1, #0
	ldr r2, _021D2598 @ =0x000008DB
	adds r0, #0x30
	strh r2, [r4, r0]
	adds r0, r1, #0
	ldr r2, _021D259C @ =0xFFFFF85F
	adds r0, #0x32
	strh r2, [r4, r0]
	adds r2, r1, #0
	ldr r0, _021D25A0 @ =0xFFFFF513
	adds r2, #0x34
	strh r0, [r4, r2]
	adds r2, r1, #0
	ldr r5, _021D25A4 @ =0xFFFFF725
	adds r2, #0x36
	strh r5, [r4, r2]
	adds r2, r1, #0
	ldr r5, _021D25A8 @ =0x000007A1
	adds r2, #0x38
	strh r5, [r4, r2]
	adds r2, r1, #0
	adds r2, #0x3a
	strh r0, [r4, r2]
	adds r0, r1, #0
	lsrs r2, r3, #6
	adds r0, #0x40
	str r2, [r4, r0]
	adds r0, r1, #0
	adds r0, #0x24
	adds r1, #0xc
	adds r0, r4, r0
	adds r1, r4, r1
	add r2, sp, #0xc
	blx FUN_020BD1B0
	add r0, sp, #0xc
	add r1, sp, #0
	blx FUN_020BD3E4
	movs r0, #0xa3
	ldr r1, [sp]
	lsls r0, r0, #2
	strh r1, [r4, r0]
	adds r1, r0, #2
	ldr r2, [sp, #4]
	adds r0, r0, #4
	strh r2, [r4, r1]
	ldr r1, [sp, #8]
	strh r1, [r4, r0]
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D2590: .4byte 0xFFFC0000
_021D2594: .4byte 0xFFFEE000
_021D2598: .4byte 0x000008DB
_021D259C: .4byte 0xFFFFF85F
_021D25A0: .4byte 0xFFFFF513
_021D25A4: .4byte 0xFFFFF725
_021D25A8: .4byte 0x000007A1
	thumb_func_end ov77_021D24C8

	thumb_func_start ov77_021D25AC
ov77_021D25AC: @ 0x021D25AC
	bx lr
	.align 2, 0
	thumb_func_end ov77_021D25AC

	thumb_func_start ov77_021D25B0
ov77_021D25B0: @ 0x021D25B0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D25CC @ =0x021D76F4
	add r3, sp, #0
	movs r2, #5
_021D25BA:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D25BA
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_021D25CC: .4byte 0x021D76F4
	thumb_func_end ov77_021D25B0

	thumb_func_start ov77_021D25D0
ov77_021D25D0: @ 0x021D25D0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D25EC @ =0x021D771C
	add r3, sp, #0
	movs r2, #5
_021D25DA:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D25DA
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_021D25EC: .4byte 0x021D771C
	thumb_func_end ov77_021D25D0

	thumb_func_start ov77_021D25F0
ov77_021D25F0: @ 0x021D25F0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D260C @ =0x021D7744
	add r3, sp, #0
	movs r2, #5
_021D25FA:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D25FA
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_021D260C: .4byte 0x021D7744
	thumb_func_end ov77_021D25F0

	thumb_func_start ov77_021D2610
ov77_021D2610: @ 0x021D2610
	push {r3, r4, r5, lr}
	sub sp, #0xb8
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02018340
	add r3, sp, #0xa8
	ldr r5, _021D2708 @ =0x021D74CC
	str r0, [r4, #0xc]
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _021D270C @ =0x021D7510
	add r3, sp, #0x8c
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #1
	str r0, [r3]
	ldr r0, [r4, #0xc]
	movs r3, #0
	bl FUN_020183C4
	ldr r5, _021D2710 @ =0x021D752C
	add r3, sp, #0x70
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
	ldr r0, [r4, #0xc]
	movs r3, #0
	bl FUN_020183C4
	ldr r5, _021D2714 @ =0x021D7548
	add r3, sp, #0x54
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
	ldr r0, [r4, #0xc]
	movs r3, #0
	bl FUN_020183C4
	ldr r5, _021D2718 @ =0x021D75F0
	add r3, sp, #0x38
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
	ldr r0, [r4, #0xc]
	movs r3, #0
	bl FUN_020183C4
	ldr r5, _021D271C @ =0x021D75D4
	add r3, sp, #0x1c
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	ldr r0, [r4, #0xc]
	movs r1, #6
	movs r3, #0
	bl FUN_020183C4
	ldr r5, _021D2720 @ =0x021D7580
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
	ldr r0, [r4, #0xc]
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0201975C
	movs r0, #4
	movs r1, #0
	bl FUN_0201975C
	add sp, #0xb8
	pop {r3, r4, r5, pc}
	nop
_021D2708: .4byte 0x021D74CC
_021D270C: .4byte 0x021D7510
_021D2710: .4byte 0x021D752C
_021D2714: .4byte 0x021D7548
_021D2718: .4byte 0x021D75F0
_021D271C: .4byte 0x021D75D4
_021D2720: .4byte 0x021D7580
	thumb_func_end ov77_021D2610

	thumb_func_start ov77_021D2724
ov77_021D2724: @ 0x021D2724
	push {r4, r5, lr}
	sub sp, #0xd4
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02018340
	add r3, sp, #0x70
	ldr r5, _021D2810 @ =0x021D74AC
	str r0, [r4, #0xc]
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _021D2814 @ =0x021D75B8
	add r3, sp, #0x54
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #1
	str r0, [r3]
	ldr r0, [r4, #0xc]
	movs r3, #0
	bl FUN_020183C4
	ldr r5, _021D2818 @ =0x021D760C
	add r3, sp, #0x38
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
	ldr r0, [r4, #0xc]
	movs r3, #0
	bl FUN_020183C4
	ldr r5, _021D281C @ =0x021D7628
	add r3, sp, #0x1c
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
	ldr r0, [r4, #0xc]
	movs r3, #0
	bl FUN_020183C4
	ldr r5, _021D2820 @ =0x021D7644
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
	ldr r0, [r4, #0xc]
	movs r3, #0
	bl FUN_020183C4
	ldr r5, _021D2824 @ =0x021D7838
	add r3, sp, #0x80
	movs r2, #0xa
_021D27CC:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D27CC
	ldr r0, [r5]
	movs r1, #5
	str r0, [r3]
	ldr r0, [r4, #0xc]
	add r2, sp, #0x80
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4, #0xc]
	movs r1, #6
	add r2, sp, #0x9c
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4, #0xc]
	movs r1, #7
	add r2, sp, #0xb8
	movs r3, #0
	bl FUN_020183C4
	movs r0, #1
	movs r1, #0
	bl FUN_0201975C
	movs r0, #4
	movs r1, #0
	bl FUN_0201975C
	add sp, #0xd4
	pop {r4, r5, pc}
	.align 2, 0
_021D2810: .4byte 0x021D74AC
_021D2814: .4byte 0x021D75B8
_021D2818: .4byte 0x021D760C
_021D281C: .4byte 0x021D7628
_021D2820: .4byte 0x021D7644
_021D2824: .4byte 0x021D7838
	thumb_func_end ov77_021D2724

	thumb_func_start ov77_021D2828
ov77_021D2828: @ 0x021D2828
	push {r3, r4, r5, lr}
	sub sp, #0xa8
	movs r1, #0
	adds r4, r0, #0
	bl ov77_021D361C
	ldr r5, _021D28EC @ =0x021D767C
	add r3, sp, #0x38
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
	ldr r0, [r4, #0xc]
	movs r3, #0
	bl FUN_020183C4
	ldr r5, _021D28F0 @ =0x021D7698
	add r3, sp, #0x1c
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #1
	str r0, [r3]
	ldr r0, [r4, #0xc]
	movs r3, #0
	bl FUN_020183C4
	ldr r5, _021D28F4 @ =0x021D76B4
	add r3, sp, #0
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
	ldr r0, [r4, #0xc]
	movs r3, #0
	bl FUN_020183C4
	ldr r5, _021D28F8 @ =0x021D77E4
	add r3, sp, #0x54
	movs r2, #0xa
_021D289A:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D289A
	ldr r0, [r5]
	movs r1, #5
	str r0, [r3]
	ldr r0, [r4, #0xc]
	add r2, sp, #0x54
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4, #0xc]
	movs r1, #6
	add r2, sp, #0x70
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4, #0xc]
	movs r1, #7
	add r2, sp, #0x8c
	movs r3, #0
	bl FUN_020183C4
	movs r0, #1
	movs r1, #0
	bl FUN_0201975C
	movs r0, #4
	movs r1, #0
	bl FUN_0201975C
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, _021D28FC @ =0x0000028E
	movs r1, #1
	strb r1, [r4, r0]
	add sp, #0xa8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D28EC: .4byte 0x021D767C
_021D28F0: .4byte 0x021D7698
_021D28F4: .4byte 0x021D76B4
_021D28F8: .4byte 0x021D77E4
_021D28FC: .4byte 0x0000028E
	thumb_func_end ov77_021D2828

	thumb_func_start ov77_021D2900
ov77_021D2900: @ 0x021D2900
	push {r3, r4, r5, lr}
	sub sp, #0x48
	adds r4, r0, #0
	bl ov77_021D35B8
	adds r0, r4, #0
	bl ov77_021D2828
	ldr r5, _021D29F0 @ =0x021D74DC
	add r3, sp, #0x38
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _021D29F4 @ =0x021D7564
	add r3, sp, #0x1c
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #0
	str r0, [r3]
	ldr r0, [r4, #0xc]
	adds r3, r1, #0
	bl FUN_020183C4
	ldr r5, _021D29F8 @ =0x021D759C
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
	ldr r0, [r4, #0xc]
	movs r3, #0
	bl FUN_020183C4
	movs r1, #0
	ldr r0, [r4, #0xc]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02019184
	movs r1, #0
	ldr r0, [r4, #0xc]
	movs r2, #3
	adds r3, r1, #0
	bl FUN_02019184
	movs r2, #0
	ldr r0, [r4, #0xc]
	movs r1, #4
	adds r3, r2, #0
	bl FUN_02019184
	ldr r0, [r4, #0xc]
	movs r1, #4
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF74
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
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, _021D29FC @ =0x0000028E
	movs r1, #2
	strb r1, [r4, r0]
	add sp, #0x48
	pop {r3, r4, r5, pc}
	nop
_021D29F0: .4byte 0x021D74DC
_021D29F4: .4byte 0x021D7564
_021D29F8: .4byte 0x021D759C
_021D29FC: .4byte 0x0000028E
	thumb_func_end ov77_021D2900

	thumb_func_start ov77_021D2A00
ov77_021D2A00: @ 0x021D2A00
	push {r4, r5, lr}
	sub sp, #0x2c
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02018340
	add r3, sp, #0x1c
	ldr r5, _021D2A50 @ =0x021D74BC
	str r0, [r4, #0xc]
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _021D2A54 @ =0x021D7660
	add r3, sp, #0
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
	ldr r0, [r4, #0xc]
	movs r3, #0
	bl FUN_020183C4
	movs r0, #2
	movs r1, #0
	bl FUN_0201975C
	add sp, #0x2c
	pop {r4, r5, pc}
	nop
_021D2A50: .4byte 0x021D74BC
_021D2A54: .4byte 0x021D7660
	thumb_func_end ov77_021D2A00

	thumb_func_start ov77_021D2A58
ov77_021D2A58: @ 0x021D2A58
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #4
	str r0, [sp]
	ldr r0, _021D2A94 @ =ov77_021D2AA0
	movs r1, #0
	str r0, [sp, #4]
	ldr r0, [r4]
	movs r2, #1
	adds r3, r1, #0
	bl FUN_02024220
	str r0, [r4, #0x10]
	ldr r3, _021D2A98 @ =0x02100DEC
	movs r0, #2
	movs r1, #0
	ldr r3, [r3]
	lsls r0, r0, #0xe
	adds r2, r1, #0
	blx r3
	ldr r3, _021D2A9C @ =0x02100DF4
	movs r0, #0x80
	ldr r3, [r3]
	movs r1, #0
	movs r2, #1
	blx r3
	add sp, #8
	pop {r4, pc}
	nop
_021D2A94: .4byte ov77_021D2AA0
_021D2A98: .4byte 0x02100DEC
_021D2A9C: .4byte 0x02100DF4
	thumb_func_end ov77_021D2A58

	thumb_func_start ov77_021D2AA0
ov77_021D2AA0: @ 0x021D2AA0
	push {r3, lr}
	blx FUN_020B2628
	ldr r0, _021D2B14 @ =0x04000008
	movs r1, #3
	ldrh r2, [r0]
	bics r2, r1
	movs r1, #1
	orrs r1, r2
	strh r1, [r0]
	adds r0, #0x58
	ldrh r2, [r0]
	ldr r1, _021D2B18 @ =0xFFFFCFFD
	ands r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	adds r2, r1, #2
	ands r3, r2
	movs r2, #0x10
	orrs r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _021D2B1C @ =0x0000CFFB
	ands r2, r3
	strh r2, [r0]
	adds r2, r1, #2
	ldrh r3, [r0]
	adds r1, r1, #2
	ands r3, r2
	movs r2, #8
	orrs r2, r3
	strh r2, [r0]
	ldrh r2, [r0]
	ands r2, r1
	movs r1, #0x20
	orrs r1, r2
	strh r1, [r0]
	ldr r0, _021D2B20 @ =0x021D74EC
	blx FUN_020BFD2C
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	blx FUN_020BFC74
	movs r0, #0
	ldr r2, _021D2B24 @ =0x00007FFF
	adds r1, r0, #0
	movs r3, #0x3f
	str r0, [sp]
	blx FUN_020BFD58
	ldr r1, _021D2B28 @ =0xBFFF0000
	ldr r0, _021D2B2C @ =0x04000580
	str r1, [r0]
	pop {r3, pc}
	nop
_021D2B14: .4byte 0x04000008
_021D2B18: .4byte 0xFFFFCFFD
_021D2B1C: .4byte 0x0000CFFB
_021D2B20: .4byte 0x021D74EC
_021D2B24: .4byte 0x00007FFF
_021D2B28: .4byte 0xBFFF0000
_021D2B2C: .4byte 0x04000580
	thumb_func_end ov77_021D2AA0

	thumb_func_start ov77_021D2B30
ov77_021D2B30: @ 0x021D2B30
	ldr r3, _021D2B34 @ =FUN_0200A858
	bx r3
	.align 2, 0
_021D2B34: .4byte FUN_0200A858
	thumb_func_end ov77_021D2B30

	thumb_func_start ov77_021D2B38
ov77_021D2B38: @ 0x021D2B38
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	str r0, [sp]
	ldr r0, _021D2C64 @ =0x0000025B
	adds r5, #0x34
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _021D2B84
	ldr r0, _021D2C68 @ =0x021BF6DC
	movs r1, #1
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	ldr r1, _021D2C64 @ =0x0000025B
	movs r0, #0
	strb r0, [r5, r1]
	ldr r1, [r5, #0x28]
	bl FUN_02020854
	ldr r0, [r5, #0x28]
	bl FUN_020203D4
_021D2B84:
	ldr r0, [sp]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021D2B90
	bl FUN_0201C2B8
_021D2B90:
	ldr r7, _021D2C6C @ =0x00000247
	movs r4, #0
	adds r6, r7, #1
_021D2B96:
	ldr r0, _021D2C6C @ =0x00000247
	ldrb r1, [r5, r0]
	movs r0, #1
	tst r0, r1
	beq _021D2BAA
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	bl FUN_02019120
_021D2BAA:
	movs r0, #0x92
	lsls r0, r0, #2
	ldrb r1, [r5, r0]
	movs r0, #1
	tst r0, r1
	beq _021D2BC0
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	bl FUN_02019120
_021D2BC0:
	ldrb r0, [r5, r7]
	adds r4, r4, #1
	asrs r0, r0, #1
	strb r0, [r5, r7]
	ldrb r0, [r5, r6]
	asrs r0, r0, #1
	strb r0, [r5, r6]
	cmp r4, #8
	blt _021D2B96
	movs r2, #0x25
	lsls r2, r2, #4
	subs r1, r2, #2
	ldrsh r6, [r5, r1]
	subs r1, r2, #6
	ldrsh r1, [r5, r1]
	subs r4, r2, #4
	ldrsh r4, [r5, r4]
	lsls r3, r1, #8
	movs r1, #0xff
	lsls r1, r1, #8
	lsls r4, r4, #0x18
	ldrsh r0, [r5, r2]
	ands r3, r1
	lsrs r4, r4, #0x18
	orrs r3, r4
	ldr r4, _021D2C70 @ =0x04000040
	lsls r0, r0, #0x18
	strh r3, [r4]
	lsls r3, r6, #8
	ands r3, r1
	lsrs r0, r0, #0x18
	orrs r0, r3
	strh r0, [r4, #4]
	adds r0, r2, #0
	adds r0, #8
	ldrsh r4, [r5, r0]
	adds r0, r2, #6
	ldrsh r3, [r5, r0]
	adds r0, r2, #2
	adds r6, r2, #4
	ldrsh r0, [r5, r0]
	ldrsh r6, [r5, r6]
	lsls r3, r3, #8
	lsls r0, r0, #8
	lsls r6, r6, #0x18
	ands r0, r1
	lsrs r6, r6, #0x18
	orrs r6, r0
	ldr r0, _021D2C74 @ =0x04001040
	ands r3, r1
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	strh r6, [r0]
	orrs r1, r3
	subs r2, #0xb
	strh r1, [r0, #4]
	ldrb r0, [r5, r2]
	cmp r0, #1
	bne _021D2C40
	bl ov77_021D2C80
	ldr r0, _021D2C78 @ =0x00000245
	movs r1, #0
	strb r1, [r5, r0]
_021D2C40:
	ldr r0, _021D2C7C @ =0x00000246
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _021D2C52
	bl ov77_021D2CE8
	ldr r0, _021D2C7C @ =0x00000246
	movs r1, #0
	strb r1, [r5, r0]
_021D2C52:
	bl FUN_0201DCAC
	bl FUN_0200A858
	ldr r0, [sp]
	ldr r0, [r0, #0x50]
	bl ov77_021D6E40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D2C64: .4byte 0x0000025B
_021D2C68: .4byte 0x021BF6DC
_021D2C6C: .4byte 0x00000247
_021D2C70: .4byte 0x04000040
_021D2C74: .4byte 0x04001040
_021D2C78: .4byte 0x00000245
_021D2C7C: .4byte 0x00000246
	thumb_func_end ov77_021D2B38

	thumb_func_start ov77_021D2C80
ov77_021D2C80: @ 0x021D2C80
	push {r3, r4, r5, r6}
	movs r0, #1
	lsls r0, r0, #0x1a
	ldr r1, [r0]
	ldr r2, _021D2CE0 @ =0xFFFF1FFF
	adds r3, r1, #0
	adds r5, r0, #0
	ands r3, r2
	lsrs r1, r0, #0xd
	orrs r1, r3
	str r1, [r0]
	adds r5, #0x48
	ldrh r1, [r5]
	movs r4, #0x3f
	movs r3, #0x1f
	bics r1, r4
	orrs r1, r3
	movs r6, #0x20
	orrs r1, r6
	strh r1, [r5]
	adds r0, #0x4a
	ldrh r1, [r0]
	movs r5, #0x11
	bics r1, r4
	orrs r1, r5
	orrs r1, r6
	strh r1, [r0]
	ldr r0, _021D2CE4 @ =0x04001000
	ldr r1, [r0]
	ands r2, r1
	lsrs r1, r0, #0xd
	orrs r1, r2
	adds r2, r0, #0
	str r1, [r0]
	adds r2, #0x48
	ldrh r1, [r2]
	adds r0, #0x4a
	bics r1, r4
	orrs r1, r3
	orrs r1, r6
	strh r1, [r2]
	ldrh r1, [r0]
	bics r1, r4
	orrs r1, r5
	orrs r1, r6
	strh r1, [r0]
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
_021D2CE0: .4byte 0xFFFF1FFF
_021D2CE4: .4byte 0x04001000
	thumb_func_end ov77_021D2C80

	thumb_func_start ov77_021D2CE8
ov77_021D2CE8: @ 0x021D2CE8
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021D2D00 @ =0xFFFF1FFF
	ands r1, r0
	str r1, [r2]
	ldr r2, _021D2D04 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	bx lr
	nop
_021D2D00: .4byte 0xFFFF1FFF
_021D2D04: .4byte 0x04001000
	thumb_func_end ov77_021D2CE8

	thumb_func_start ov77_021D2D08
ov77_021D2D08: @ 0x021D2D08
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0200AB84
	ldr r1, _021D2D8C @ =0x00007FFF
	movs r0, #0
	bl FUN_0200F344
	ldr r1, _021D2D8C @ =0x00007FFF
	movs r0, #1
	bl FUN_0200F344
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r0, #0
	adds r1, r0, #0
	bl FUN_020177BC
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	movs r2, #0xa
	movs r0, #3
	movs r1, #0x4c
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	movs r1, #0x2b
	adds r0, r4, #0
	lsls r1, r1, #4
	movs r2, #0x4c
	bl FUN_0200681C
	movs r2, #0x2b
	movs r1, #0
	lsls r2, r2, #4
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x4c
	str r0, [r4]
	movs r1, #0
	movs r0, #0xab
	str r1, [r4, #8]
	lsls r0, r0, #2
	strb r1, [r4, r0]
	ldr r0, _021D2D90 @ =0x021BF6DC
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	bl FUN_0201D2D0
	str r0, [r4, #0x14]
	movs r0, #0
	bl FUN_0201D2DC
	movs r0, #1
	pop {r4, pc}
	nop
_021D2D8C: .4byte 0x00007FFF
_021D2D90: .4byte 0x021BF6DC
	thumb_func_end ov77_021D2D08

	thumb_func_start ov77_021D2D94
ov77_021D2D94: @ 0x021D2D94
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	bl FUN_0200682C
	adds r5, r0, #0
	movs r0, #0xab
	lsls r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _021D2DD0
	ldr r0, _021D2E58 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	bne _021D2DB8
	movs r0, #8
	tst r0, r1
	beq _021D2DD0
_021D2DB8:
	movs r0, #1
	str r0, [r5, #8]
	ldr r1, _021D2E58 @ =0x021BF67C
	movs r0, #0
	str r0, [r1, #0x6c]
	adds r1, r0, #0
	bl FUN_0200F344
	movs r0, #1
	movs r1, #0
	bl FUN_0200F344
_021D2DD0:
	ldr r0, [r4]
	cmp r0, #4
	bhi _021D2E3E
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D2DE2: @ jump table
	.2byte _021D2DEC - _021D2DE2 - 2 @ case 0
	.2byte _021D2DFC - _021D2DE2 - 2 @ case 1
	.2byte _021D2E0E - _021D2DE2 - 2 @ case 2
	.2byte _021D2E20 - _021D2DE2 - 2 @ case 3
	.2byte _021D2E32 - _021D2DE2 - 2 @ case 4
_021D2DEC:
	movs r0, #0xab
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [r5, #0x30]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D2E42
_021D2DFC:
	adds r0, r5, #0
	bl ov77_021D2E9C
	cmp r0, #0
	beq _021D2E42
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D2E42
_021D2E0E:
	adds r0, r5, #0
	bl ov77_021D33F0
	cmp r0, #0
	beq _021D2E42
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D2E42
_021D2E20:
	adds r0, r5, #0
	bl ov77_021D5254
	cmp r0, #0
	beq _021D2E42
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D2E42
_021D2E32:
	ldr r1, [r5, #4]
	ldr r0, _021D2E5C @ =0x0000097E
	cmp r1, r0
	blt _021D2E42
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D2E3E:
	bl FUN_02022974
_021D2E42:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021D2E4C
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D2E4C:
	ldr r0, [r5, #4]
	adds r0, r0, #1
	str r0, [r5, #4]
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D2E58: .4byte 0x021BF67C
_021D2E5C: .4byte 0x0000097E
	thumb_func_end ov77_021D2D94

	thumb_func_start ov77_021D2E60
ov77_021D2E60: @ 0x021D2E60
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	bl FUN_0200F2AC
	cmp r0, #0
	bne _021D2E76
	bl FUN_0200F2C0
_021D2E76:
	ldr r0, [r4, #0x14]
	bl FUN_0201D2DC
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0x4c
	bl FUN_0201807C
	ldr r0, _021D2E94 @ =0x0000004D
	ldr r1, _021D2E98 @ =0x021D742C
	bl FUN_02000EC4
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D2E94: .4byte 0x0000004D
_021D2E98: .4byte 0x021D742C
	thumb_func_end ov77_021D2E60

	thumb_func_start ov77_021D2E9C
ov77_021D2E9C: @ 0x021D2E9C
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, [r1, #8]
	adds r4, r1, #0
	adds r4, #0x18
	cmp r0, #0
	beq _021D2EAE
	movs r0, #3
	strb r0, [r4]
_021D2EAE:
	ldrb r0, [r4]
	cmp r0, #3
	bhi _021D2F06
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D2EC0: @ jump table
	.2byte _021D2EC8 - _021D2EC0 - 2 @ case 0
	.2byte _021D2ED6 - _021D2EC0 - 2 @ case 1
	.2byte _021D2EE6 - _021D2EC0 - 2 @ case 2
	.2byte _021D2EFC - _021D2EC0 - 2 @ case 3
_021D2EC8:
	adds r0, r1, #0
	bl ov77_021D2F0C
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _021D2F06
_021D2ED6:
	adds r1, #0x18
	adds r0, r1, #0
	bl ov77_021D2F38
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _021D2F06
_021D2EE6:
	adds r0, r1, #0
	ldr r1, [r1, #4]
	adds r0, #0x18
	bl ov77_021D30D0
	cmp r0, #0
	beq _021D2F06
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _021D2F06
_021D2EFC:
	adds r0, r1, #0
	bl ov77_021D3234
	movs r0, #1
	pop {r4, pc}
_021D2F06:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov77_021D2E9C

	thumb_func_start ov77_021D2F0C
ov77_021D2F0C: @ 0x021D2F0C
	push {r4, lr}
	adds r4, r0, #0
	bl ov77_021D25B0
	adds r0, r4, #0
	bl ov77_021D2610
	ldr r0, [r4, #0xc]
	str r0, [r4, #0x24]
	bl ov77_021D670C
	str r0, [r4, #0x2c]
	ldr r0, _021D2F34 @ =ov77_021D2B30
	adds r1, r4, #0
	bl FUN_02017798
	movs r0, #1
	strb r0, [r4, #0x1a]
	pop {r4, pc}
	nop
_021D2F34: .4byte ov77_021D2B30
	thumb_func_end ov77_021D2F0C

	thumb_func_start ov77_021D2F38
ov77_021D2F38: @ 0x021D2F38
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	movs r0, #0x80
	movs r1, #0x10
	movs r3, #2
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	movs r0, #0x80
	movs r1, #0x10
	movs r3, #6
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	movs r0, #0x80
	movs r1, #0x11
	movs r3, #2
	bl FUN_02006E60
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	movs r0, #0x80
	movs r1, #0x12
	movs r3, #6
	bl FUN_02006E60
	movs r2, #0
	str r2, [sp]
	movs r0, #0x4c
	str r0, [sp, #4]
	movs r0, #0x80
	movs r1, #0xf
	adds r3, r2, #0
	bl FUN_02006E84
	movs r3, #0
	str r3, [sp]
	movs r0, #0x4c
	str r0, [sp, #4]
	movs r0, #0x80
	movs r1, #0xf
	movs r2, #4
	bl FUN_02006E84
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	movs r0, #0x30
	movs r1, #0xf
	movs r3, #1
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	movs r0, #0x30
	movs r1, #0xd
	movs r3, #1
	bl FUN_02006E60
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x4c
	movs r2, #0
	str r0, [sp, #4]
	movs r0, #0x30
	movs r1, #0xe
	adds r3, r2, #0
	bl FUN_02006E84
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	movs r0, #0x80
	movs r1, #0x13
	movs r3, #3
	bl FUN_02006E60
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	movs r0, #0x80
	movs r1, #0x13
	movs r3, #7
	bl FUN_02006E60
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	movs r0, #0x80
	movs r1, #0x72
	movs r3, #5
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	movs r0, #0x80
	movs r1, #0x71
	movs r3, #5
	bl FUN_02006E60
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x4c
	str r0, [sp, #4]
	movs r0, #0x80
	movs r1, #0x73
	movs r2, #4
	movs r3, #0
	bl FUN_02006E84
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #0x10
	str r0, [sp]
	ldr r0, _021D30C8 @ =0x04000050
	movs r1, #2
	movs r2, #8
	movs r3, #0
	blx FUN_020BF55C
	movs r0, #0x10
	str r0, [sp]
	ldr r0, _021D30CC @ =0x04001050
	movs r1, #2
	movs r2, #8
	movs r3, #0
	blx FUN_020BF55C
	movs r0, #1
	adds r1, r0, #0
	blx FUN_020C12B4
	movs r0, #0
	bl FUN_0200F338
	movs r0, #1
	bl FUN_0200F338
	bl FUN_0201FFD0
	add sp, #0x10
	pop {r4, pc}
	nop
_021D30C8: .4byte 0x04000050
_021D30CC: .4byte 0x04001050
	thumb_func_end ov77_021D2F38

	thumb_func_start ov77_021D30D0
ov77_021D30D0: @ 0x021D30D0
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	adds r5, r1, #0
	bl ov77_021D69C0
	ldrb r0, [r4, #1]
	cmp r0, #5
	bls _021D30E6
	b _021D3208
_021D30E6:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D30F2: @ jump table
	.2byte _021D30FE - _021D30F2 - 2 @ case 0
	.2byte _021D3122 - _021D30F2 - 2 @ case 1
	.2byte _021D3148 - _021D30F2 - 2 @ case 2
	.2byte _021D31AE - _021D30F2 - 2 @ case 3
	.2byte _021D31CE - _021D30F2 - 2 @ case 4
	.2byte _021D31FA - _021D30F2 - 2 @ case 5
_021D30FE:
	movs r2, #0
	strb r2, [r4, #7]
	strb r2, [r4, #6]
	ldr r0, _021D3210 @ =ov77_021D32A4
	strb r2, [r4, #8]
	adds r1, r4, #0
	bl FUN_0200D9E8
	str r0, [r4, #0x10]
	movs r0, #1
	ldr r1, _021D3214 @ =0x00000494
	adds r2, r0, #0
	bl FUN_02004550
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D3208
_021D3122:
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _021D3208
	cmp r5, #0x73
	blt _021D3208
	movs r2, #0
	strb r2, [r4, #7]
	movs r0, #0x10
	strb r0, [r4, #6]
	ldr r0, _021D3218 @ =ov77_021D3300
	strb r2, [r4, #8]
	adds r1, r4, #0
	bl FUN_0200D9E8
	str r0, [r4, #0x10]
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D3208
_021D3148:
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _021D3208
	ldr r0, _021D321C @ =0x00000109
	cmp r5, r0
	blt _021D3208
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #0x10
	str r0, [sp]
	ldr r0, _021D3220 @ =0x04000050
	movs r1, #4
	movs r2, #8
	movs r3, #0
	blx FUN_020BF55C
	movs r0, #0x10
	str r0, [sp]
	ldr r0, _021D3224 @ =0x04001050
	movs r1, #4
	movs r2, #8
	movs r3, #0
	blx FUN_020BF55C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r2, #0
	strb r2, [r4, #7]
	strb r2, [r4, #6]
	ldr r0, _021D3228 @ =ov77_021D3360
	strb r2, [r4, #8]
	adds r1, r4, #0
	bl FUN_0200D9E8
	str r0, [r4, #0x10]
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D3208
_021D31AE:
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _021D3208
	movs r2, #0
	strb r2, [r4, #7]
	strb r2, [r4, #6]
	ldr r0, _021D322C @ =ov77_021D33A8
	strb r2, [r4, #8]
	adds r1, r4, #0
	bl FUN_0200D9E8
	str r0, [r4, #0x10]
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D3208
_021D31CE:
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _021D3208
	ldr r0, _021D3230 @ =0x000001EA
	cmp r5, r0
	blt _021D3208
	movs r0, #0x12
	str r0, [sp]
	movs r1, #0
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	movs r0, #2
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0200F174
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D3208
_021D31FA:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D3208
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_021D3208:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D3210: .4byte ov77_021D32A4
_021D3214: .4byte 0x00000494
_021D3218: .4byte ov77_021D3300
_021D321C: .4byte 0x00000109
_021D3220: .4byte 0x04000050
_021D3224: .4byte 0x04001050
_021D3228: .4byte ov77_021D3360
_021D322C: .4byte ov77_021D33A8
_021D3230: .4byte 0x000001EA
	thumb_func_end ov77_021D30D0

	thumb_func_start ov77_021D3234
ov77_021D3234: @ 0x021D3234
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	beq _021D3286
	ldr r0, [r4, #0x2c]
	bl ov77_021D67B0
	ldr r0, [r4, #0xc]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r4, #0xc]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r4, #0xc]
	movs r1, #6
	bl FUN_02019044
	ldr r0, [r4, #0xc]
	movs r1, #3
	bl FUN_02019044
	ldr r0, [r4, #0xc]
	movs r1, #7
	bl FUN_02019044
	ldr r0, [r4, #0xc]
	movs r1, #5
	bl FUN_02019044
	ldr r0, [r4, #0xc]
	bl FUN_020181C4
	movs r0, #0
	strb r0, [r4, #0x1a]
_021D3286:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021D32A0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021D3296
	bl FUN_02022974
_021D3296:
	ldr r0, [r4, #0x28]
	bl FUN_0200DA58
	movs r0, #0
	str r0, [r4, #0x28]
_021D32A0:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov77_021D3234

	thumb_func_start ov77_021D32A4
ov77_021D32A4: @ 0x021D32A4
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r1, #0
	ldrb r1, [r4, #7]
	adds r1, r1, #1
	strb r1, [r4, #7]
	ldrb r1, [r4, #7]
	cmp r1, #6
	blo _021D32C0
	movs r1, #0
	strb r1, [r4, #7]
	ldrb r1, [r4, #6]
	adds r1, r1, #1
	strb r1, [r4, #6]
_021D32C0:
	ldrb r1, [r4, #6]
	cmp r1, #0x10
	blo _021D32D2
	bl FUN_0200DA58
	movs r0, #0
	str r0, [r4, #0x10]
	movs r0, #1
	strb r0, [r4, #8]
_021D32D2:
	movs r0, #0x10
	str r0, [sp]
	ldrb r3, [r4, #6]
	ldr r0, _021D32F8 @ =0x04000050
	movs r1, #2
	movs r2, #8
	blx FUN_020BF55C
	movs r0, #0x10
	str r0, [sp]
	ldrb r3, [r4, #6]
	ldr r0, _021D32FC @ =0x04001050
	movs r1, #2
	movs r2, #8
	blx FUN_020BF55C
	add sp, #4
	pop {r3, r4, pc}
	nop
_021D32F8: .4byte 0x04000050
_021D32FC: .4byte 0x04001050
	thumb_func_end ov77_021D32A4

	thumb_func_start ov77_021D3300
ov77_021D3300: @ 0x021D3300
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r1, #0
	ldrb r1, [r4, #7]
	adds r1, r1, #1
	strb r1, [r4, #7]
	ldrb r1, [r4, #7]
	cmp r1, #4
	blo _021D331C
	movs r1, #0
	strb r1, [r4, #7]
	ldrb r1, [r4, #6]
	subs r1, r1, #1
	strb r1, [r4, #6]
_021D331C:
	ldrb r1, [r4, #6]
	cmp r1, #0
	bne _021D3332
	bl FUN_0200DA58
	movs r0, #0
	str r0, [r4, #0x10]
	movs r1, #1
	strb r1, [r4, #8]
	ldr r0, [r4, #0x18]
	strb r1, [r0]
_021D3332:
	movs r0, #0x10
	str r0, [sp]
	ldrb r3, [r4, #6]
	ldr r0, _021D3358 @ =0x04000050
	movs r1, #2
	movs r2, #8
	blx FUN_020BF55C
	movs r0, #0x10
	str r0, [sp]
	ldrb r3, [r4, #6]
	ldr r0, _021D335C @ =0x04001050
	movs r1, #2
	movs r2, #8
	blx FUN_020BF55C
	add sp, #4
	pop {r3, r4, pc}
	nop
_021D3358: .4byte 0x04000050
_021D335C: .4byte 0x04001050
	thumb_func_end ov77_021D3300

	thumb_func_start ov77_021D3360
ov77_021D3360: @ 0x021D3360
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r1, #0
	ldrb r1, [r4, #7]
	adds r1, r1, #1
	strb r1, [r4, #7]
	ldrb r1, [r4, #7]
	cmp r1, #4
	blo _021D337C
	movs r1, #0
	strb r1, [r4, #7]
	ldrb r1, [r4, #6]
	adds r1, r1, #1
	strb r1, [r4, #6]
_021D337C:
	ldrb r1, [r4, #6]
	cmp r1, #0x10
	blo _021D338E
	bl FUN_0200DA58
	movs r0, #0
	str r0, [r4, #0x10]
	movs r0, #1
	strb r0, [r4, #8]
_021D338E:
	movs r0, #0x10
	str r0, [sp]
	ldrb r3, [r4, #6]
	ldr r0, _021D33A4 @ =0x04000050
	movs r1, #4
	movs r2, #8
	blx FUN_020BF55C
	add sp, #4
	pop {r3, r4, pc}
	nop
_021D33A4: .4byte 0x04000050
	thumb_func_end ov77_021D3360

	thumb_func_start ov77_021D33A8
ov77_021D33A8: @ 0x021D33A8
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r1, #0
	ldrb r1, [r4, #7]
	adds r1, r1, #1
	strb r1, [r4, #7]
	ldrb r1, [r4, #7]
	cmp r1, #4
	blo _021D33C4
	movs r1, #0
	strb r1, [r4, #7]
	ldrb r1, [r4, #6]
	adds r1, r1, #1
	strb r1, [r4, #6]
_021D33C4:
	ldrb r1, [r4, #6]
	cmp r1, #0x10
	blo _021D33D6
	bl FUN_0200DA58
	movs r0, #0
	str r0, [r4, #0x10]
	movs r0, #1
	strb r0, [r4, #8]
_021D33D6:
	movs r0, #0x10
	str r0, [sp]
	ldrb r3, [r4, #6]
	ldr r0, _021D33EC @ =0x04001050
	movs r1, #4
	movs r2, #8
	blx FUN_020BF55C
	add sp, #4
	pop {r3, r4, pc}
	nop
_021D33EC: .4byte 0x04001050
	thumb_func_end ov77_021D33A8

	thumb_func_start ov77_021D33F0
ov77_021D33F0: @ 0x021D33F0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	adds r4, r5, #0
	adds r4, #0x34
	cmp r0, #0
	beq _021D3402
	movs r0, #4
	strb r0, [r4]
_021D3402:
	ldrb r0, [r4]
	cmp r0, #4
	bhi _021D34A4
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D3414: @ jump table
	.2byte _021D341E - _021D3414 - 2 @ case 0
	.2byte _021D342C - _021D3414 - 2 @ case 1
	.2byte _021D343C - _021D3414 - 2 @ case 2
	.2byte _021D3458 - _021D3414 - 2 @ case 3
	.2byte _021D349A - _021D3414 - 2 @ case 4
_021D341E:
	adds r0, r5, #0
	bl ov77_021D34A8
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _021D34A4
_021D342C:
	adds r5, #0x34
	adds r0, r5, #0
	bl ov77_021D37C0
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _021D34A4
_021D343C:
	adds r0, r5, #0
	adds r0, #0x34
	movs r1, #0
	bl ov77_021D40DC
	cmp r0, #1
	bne _021D34A4
	movs r0, #1
	adds r5, #0x3a
	strb r0, [r5]
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _021D34A4
_021D3458:
	adds r1, r5, #0
	ldr r2, [r5, #4]
	adds r0, r5, #0
	adds r1, #0x34
	bl ov77_021D4230
	cmp r0, #0
	beq _021D346E
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
_021D346E:
	ldr r0, [r5, #0x48]
	bl ov77_021D6020
	adds r0, r5, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D3492
	adds r0, r5, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D34A4
	adds r5, #0x34
	adds r0, r5, #0
	bl ov77_021D4188
	b _021D34A4
_021D3492:
	ldr r0, [r5, #0x50]
	bl ov77_021D6E50
	b _021D34A4
_021D349A:
	adds r0, r5, #0
	bl ov77_021D36F8
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D34A4:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov77_021D33F0

	thumb_func_start ov77_021D34A8
ov77_021D34A8: @ 0x021D34A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	bl ov77_021D25D0
	adds r0, r5, #0
	bl ov77_021D2724
	adds r0, r5, #0
	bl ov77_021D2A58
	bl ov77_021D555C
	adds r4, r0, #0
	bl ov77_021D6CB8
	adds r6, r0, #0
	movs r0, #0x4c
	adds r1, r4, #0
	bl FUN_02018144
	str r0, [r5, #0x48]
	movs r0, #0x10
	bl ov77_021D6734
	str r0, [r5, #0x4c]
	movs r0, #0x4c
	adds r1, r6, #0
	bl FUN_02018144
	str r0, [r5, #0x50]
	ldr r0, [r5, #0x48]
	movs r1, #0
	adds r2, r4, #0
	blx FUN_020D5124
	ldr r0, [r5, #0x50]
	movs r1, #0
	adds r2, r6, #0
	blx FUN_020D5124
	adds r0, r5, #0
	movs r1, #4
	adds r0, #0x3c
	strb r1, [r0]
	ldr r0, [r5, #0x50]
	bl ov77_021D6CFC
	ldr r0, [r5, #0xc]
	movs r1, #0
	str r0, [r5, #0x44]
	ldr r0, _021D3598 @ =0x021BF6DC
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	ldr r6, _021D359C @ =0x021D776C
	ldr r7, _021D35A0 @ =0x021D7444
	movs r4, #0
_021D351C:
	movs r0, #0xc
	adds r1, r4, #0
	muls r1, r0, r1
	adds r3, r6, r1
	ldr r2, [r3, #4]
	ldr r1, [r6, r1]
	ldr r3, [r3, #8]
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	adds r0, r4, #0
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	asrs r3, r3, #0x10
	blx FUN_020AF51C
	lsls r1, r4, #1
	ldrh r1, [r7, r1]
	adds r0, r4, #0
	blx FUN_020AF558
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	blo _021D351C
	ldr r0, _021D35A4 @ =0x00004210
	ldr r1, _021D35A8 @ =0x0000318A
	movs r2, #0
	blx FUN_020AF56C
	ldr r0, _021D35AC @ =0x00004A52
	ldr r1, _021D35B0 @ =0x000039CE
	movs r2, #0
	blx FUN_020AF590
	movs r0, #0x1f
	str r0, [sp]
	movs r0, #2
	lsls r0, r0, #0xe
	movs r1, #0
	str r0, [sp, #4]
	movs r0, #0xd
	movs r2, #2
	adds r3, r1, #0
	blx FUN_020AF5B4
	ldr r0, _021D35B4 @ =ov77_021D2B38
	adds r1, r5, #0
	bl FUN_02017798
	movs r0, #0xf
	mvns r0, r0
	movs r1, #8
	movs r2, #1
	bl FUN_0200AB4C
	movs r0, #1
	adds r5, #0x36
	strb r0, [r5]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D3598: .4byte 0x021BF6DC
_021D359C: .4byte 0x021D776C
_021D35A0: .4byte 0x021D7444
_021D35A4: .4byte 0x00004210
_021D35A8: .4byte 0x0000318A
_021D35AC: .4byte 0x00004A52
_021D35B0: .4byte 0x000039CE
_021D35B4: .4byte ov77_021D2B38
	thumb_func_end ov77_021D34A8

	thumb_func_start ov77_021D35B8
ov77_021D35B8: @ 0x021D35B8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D35CE
	adds r0, r5, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D3618
_021D35CE:
	bl FUN_020203E0
	ldr r0, [r5, #0x5c]
	bl FUN_020203B8
	movs r0, #0x27
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r6, #0
	cmp r0, #0
	ble _021D35FE
	movs r7, #0x27
	adds r4, r5, #0
	lsls r7, r7, #4
_021D35EA:
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	bl FUN_020181C4
	ldr r0, [r5, r7]
	adds r6, r6, #1
	adds r4, #0x58
	cmp r6, r0
	blt _021D35EA
_021D35FE:
	movs r0, #0x27
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r5, r0]
	ldr r0, [r5, #0x54]
	bl FUN_020181C4
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r5, #0x39
	strb r1, [r5]
_021D3618:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov77_021D35B8

	thumb_func_start ov77_021D361C
ov77_021D361C: @ 0x021D361C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x36
	ldrb r0, [r0]
	adds r4, r1, #0
	cmp r0, #0
	beq _021D36F0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021D36F0
	ldr r1, _021D36F4 @ =0x0000028E
	ldrb r1, [r5, r1]
	cmp r1, #0
	bne _021D3670
	movs r1, #3
	bl FUN_02019044
	ldr r0, [r5, #0xc]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r5, #0xc]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r5, #0xc]
	movs r1, #4
	bl FUN_02019044
	ldr r0, [r5, #0xc]
	movs r1, #5
	bl FUN_02019044
	ldr r0, [r5, #0xc]
	movs r1, #6
	bl FUN_02019044
	ldr r0, [r5, #0xc]
	movs r1, #7
	bl FUN_02019044
	b _021D36E2
_021D3670:
	cmp r1, #1
	bne _021D36A4
	movs r1, #3
	bl FUN_02019044
	ldr r0, [r5, #0xc]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r5, #0xc]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r5, #0xc]
	movs r1, #5
	bl FUN_02019044
	ldr r0, [r5, #0xc]
	movs r1, #6
	bl FUN_02019044
	ldr r0, [r5, #0xc]
	movs r1, #7
	bl FUN_02019044
	b _021D36E2
_021D36A4:
	movs r1, #0
	bl FUN_02019044
	ldr r0, [r5, #0xc]
	movs r1, #3
	bl FUN_02019044
	ldr r0, [r5, #0xc]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r5, #0xc]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r5, #0xc]
	movs r1, #4
	bl FUN_02019044
	ldr r0, [r5, #0xc]
	movs r1, #5
	bl FUN_02019044
	ldr r0, [r5, #0xc]
	movs r1, #6
	bl FUN_02019044
	ldr r0, [r5, #0xc]
	movs r1, #7
	bl FUN_02019044
_021D36E2:
	cmp r4, #1
	bne _021D36F0
	ldr r0, [r5, #0xc]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r5, #0xc]
_021D36F0:
	pop {r3, r4, r5, pc}
	nop
_021D36F4: .4byte 0x0000028E
	thumb_func_end ov77_021D361C

	thumb_func_start ov77_021D36F8
ov77_021D36F8: @ 0x021D36F8
	push {r4, lr}
	movs r3, #1
	lsls r3, r3, #0x1a
	ldr r2, [r3]
	ldr r1, _021D37B8 @ =0xFFFF1FFF
	adds r4, r0, #0
	ands r1, r2
	str r1, [r3]
	bl ov77_021D35B8
	adds r0, r4, #0
	adds r0, #0x37
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D3724
	ldr r0, [r4, #0x48]
	bl ov77_021D5BAC
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x37
	strb r1, [r0]
_021D3724:
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D3788
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _021D373C
	bl ov77_021D6760
	movs r0, #0
	str r0, [r4, #0x4c]
_021D373C:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _021D374A
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #0x48]
_021D374A:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _021D375E
	bl ov77_021D6E28
	ldr r0, [r4, #0x50]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #0x50]
_021D375E:
	adds r0, r4, #0
	movs r1, #1
	bl ov77_021D361C
	movs r0, #0x9d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D377C
	bl FUN_020181C4
	movs r0, #0x9d
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
_021D377C:
	ldr r0, [r4, #0x10]
	bl FUN_020242C4
	movs r0, #0
	adds r4, #0x36
	strb r0, [r4]
_021D3788:
	blx FUN_020B2628
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	blx FUN_020BFC74
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021D37B8 @ =0xFFFF1FFF
	ands r1, r0
	str r1, [r2]
	ldr r2, _021D37BC @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	pop {r4, pc}
	nop
_021D37B8: .4byte 0xFFFF1FFF
_021D37BC: .4byte 0x04001000
	thumb_func_end ov77_021D36F8

	thumb_func_start ov77_021D37C0
ov77_021D37C0: @ 0x021D37C0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x80
	movs r1, #0x4c
	bl FUN_02006C24
	movs r3, #6
	lsls r3, r3, #6
	str r3, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #0x4c
	str r1, [sp, #8]
	movs r1, #0x60
	movs r2, #0
	adds r4, r0, #0
	bl FUN_02007148
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x5f
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0xc
	movs r3, #3
	bl FUN_0200710C
	movs r3, #7
	lsls r3, r3, #6
	str r3, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0xd
	movs r2, #0
	bl FUN_02007148
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0xe
	movs r3, #2
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0xc
	movs r3, #2
	bl FUN_0200710C
	movs r0, #0x41
	movs r1, #0x4c
	bl FUN_02006C24
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0x4c
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x10]
	movs r1, #0x38
	movs r3, #1
	adds r6, r0, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r6, #0
	movs r1, #0x39
	movs r3, #1
	bl FUN_0200710C
	movs r0, #1
	lsls r0, r0, #0xa
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r6, #0
	movs r1, #0x39
	movs r3, #1
	bl FUN_0200710C
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x4c
	movs r2, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r1, #0x37
	adds r3, r2, #0
	bl FUN_02007130
	adds r0, r6, #0
	bl FUN_02006CA8
	movs r3, #0
	str r3, [sp]
	movs r0, #0x4c
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0x3d
	movs r2, #4
	bl FUN_02007130
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x3b
	movs r3, #5
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x3f
	movs r3, #5
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x3a
	movs r3, #6
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x3e
	movs r3, #6
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x3c
	movs r3, #7
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x40
	movs r3, #7
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0xe
	movs r3, #4
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0xc
	movs r3, #4
	bl FUN_0200710C
	movs r3, #7
	lsls r3, r3, #6
	str r3, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0xd
	movs r2, #4
	bl FUN_02007148
	ldr r0, [r5, #0x14]
	bl ov77_021D5564
	ldr r0, [r5, #0x14]
	bl ov77_021D5C3C
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	bl ov77_021D5FB4
	movs r1, #5
	movs r0, #0
	lsls r1, r1, #0x18
	movs r2, #2
	blx FUN_020C4AF0
	ldr r1, _021D3A0C @ =0x05000400
	movs r0, #0
	movs r2, #2
	blx FUN_020C4AF0
	movs r0, #0xe
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0xf
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #0
	bl FUN_0200F338
	movs r0, #1
	bl FUN_0200F338
	adds r0, r4, #0
	bl FUN_02006CA8
	movs r0, #1
	strb r0, [r5, #3]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021D3A0C: .4byte 0x05000400
	thumb_func_end ov77_021D37C0

	thumb_func_start ov77_021D3A10
ov77_021D3A10: @ 0x021D3A10
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r1, #0
	movs r2, #0
	ldr r0, [r5, #0x10]
	movs r1, #2
	adds r3, r2, #0
	bl FUN_02018898
	movs r2, #0
	ldr r0, [r5, #0x10]
	movs r1, #3
	adds r3, r2, #0
	bl FUN_02018898
	ldr r1, _021D3B54 @ =0x04000008
	movs r0, #3
	ldrh r2, [r1]
	bics r2, r0
	strh r2, [r1]
	movs r0, #1
	movs r1, #3
	bl FUN_02019060
	movs r0, #0x80
	movs r1, #0x4c
	bl FUN_02006C24
	movs r2, #0
	str r2, [sp]
	movs r1, #0x4c
	str r1, [sp, #4]
	movs r1, #0x44
	adds r3, r2, #0
	adds r4, r0, #0
	bl FUN_02007130
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x42
	movs r3, #1
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x46
	movs r3, #1
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x41
	movs r3, #2
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x45
	movs r3, #2
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x43
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x47
	movs r3, #3
	bl FUN_0200710C
	movs r1, #5
	movs r0, #0
	lsls r1, r1, #0x18
	movs r2, #2
	blx FUN_020C4AF0
	ldr r1, _021D3B58 @ =0x05000400
	movs r0, #0
	movs r2, #2
	blx FUN_020C4AF0
	movs r2, #0
	ldr r0, [r5, #0x10]
	movs r1, #1
	adds r3, r2, #0
	bl FUN_02019184
	movs r2, #0
	ldr r0, [r5, #0x10]
	movs r1, #2
	adds r3, r2, #0
	bl FUN_02019184
	movs r2, #0
	ldr r0, [r5, #0x10]
	movs r1, #3
	adds r3, r2, #0
	bl FUN_02019184
	movs r2, #0
	ldr r0, [r5, #0x10]
	movs r1, #5
	adds r3, r2, #0
	bl FUN_02019184
	movs r2, #0
	ldr r0, [r5, #0x10]
	movs r1, #6
	adds r3, r2, #0
	bl FUN_02019184
	movs r2, #0
	ldr r0, [r5, #0x10]
	movs r1, #7
	adds r3, r2, #0
	bl FUN_02019184
	adds r0, r4, #0
	bl FUN_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021D3B54: .4byte 0x04000008
_021D3B58: .4byte 0x05000400
	thumb_func_end ov77_021D3A10

	thumb_func_start ov77_021D3B5C
ov77_021D3B5C: @ 0x021D3B5C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r1, #0
	bl ov77_021D2828
	movs r0, #0x80
	movs r1, #0x4c
	bl FUN_02006C24
	movs r2, #0
	str r2, [sp]
	movs r1, #0x4c
	str r1, [sp, #4]
	movs r1, #0x48
	adds r3, r2, #0
	adds r4, r0, #0
	bl FUN_02007130
	movs r3, #0
	str r3, [sp]
	movs r0, #0x4c
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0x48
	movs r2, #4
	bl FUN_02007130
	movs r1, #2
	movs r0, #0x4c
	lsls r1, r1, #8
	bl FUN_02018144
	movs r2, #9
	lsls r2, r2, #6
	str r0, [r5, r2]
	movs r0, #5
	ldr r1, [r5, r2]
	lsls r0, r0, #0x18
	subs r2, #0x40
	blx FUN_020C4B18
	movs r1, #9
	lsls r1, r1, #6
	ldr r1, [r5, r1]
	movs r0, #0
	movs r2, #2
	blx FUN_020C4AF0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x49
	movs r3, #1
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0x4c
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r3, #1
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x49
	movs r3, #5
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0x4c
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r3, #5
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x4a
	movs r3, #2
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x4d
	movs r3, #2
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x4a
	movs r3, #6
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x4d
	movs r3, #6
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x4b
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x4e
	movs r3, #3
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x4b
	movs r3, #7
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x4e
	movs r3, #7
	bl FUN_0200710C
	movs r1, #5
	movs r0, #0
	lsls r1, r1, #0x18
	movs r2, #2
	blx FUN_020C4AF0
	ldr r1, _021D3D48 @ =0x05000400
	movs r0, #0
	movs r2, #2
	blx FUN_020C4AF0
	movs r2, #0
	adds r3, r2, #0
	ldr r0, [r5, #0x10]
	movs r1, #1
	subs r3, #0x80
	bl FUN_02019184
	movs r2, #0
	adds r3, r2, #0
	ldr r0, [r5, #0x10]
	movs r1, #2
	subs r3, #0xc8
	bl FUN_02019184
	movs r2, #0
	adds r3, r2, #0
	ldr r0, [r5, #0x10]
	movs r1, #3
	subs r3, #0x98
	bl FUN_02019184
	ldr r0, [r5, #0x10]
	movs r1, #5
	movs r2, #0
	movs r3, #0x80
	bl FUN_02019184
	ldr r0, [r5, #0x10]
	movs r1, #6
	movs r2, #0
	movs r3, #0xc0
	bl FUN_02019184
	ldr r0, [r5, #0x10]
	movs r1, #7
	movs r2, #0
	movs r3, #0xb0
	bl FUN_02019184
	adds r0, r4, #0
	bl FUN_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021D3D48: .4byte 0x05000400
	thumb_func_end ov77_021D3B5C

	thumb_func_start ov77_021D3D4C
ov77_021D3D4C: @ 0x021D3D4C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r1, #0
	bl ov77_021D2900
	movs r0, #0x80
	movs r1, #0x4c
	bl FUN_02006C24
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	movs r1, #0x4c
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x10]
	movs r1, #0x4f
	adds r4, r0, #0
	bl FUN_020070E8
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x50
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x51
	movs r3, #4
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x52
	movs r3, #4
	bl FUN_0200710C
	adds r0, r4, #0
	bl FUN_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov77_021D3D4C

	thumb_func_start ov77_021D3DC4
ov77_021D3DC4: @ 0x021D3DC4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D3ED8 @ =0x021BF6DC
	ldrb r0, [r0, #5]
	cmp r0, #0
	ldr r0, [r4, #0x10]
	bne _021D3E50
	movs r1, #1
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	ldr r0, [r4, #0x10]
	movs r1, #2
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	movs r1, #3
	ldr r0, [r4, #0x10]
	adds r2, r1, #0
	movs r3, #0
	bl FUN_02019184
	movs r2, #3
	adds r3, r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #5
	adds r3, #0xfd
	bl FUN_02019184
	movs r2, #3
	adds r3, r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #6
	adds r3, #0xfd
	bl FUN_02019184
	movs r2, #3
	adds r3, r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #7
	adds r3, #0xfd
	bl FUN_02019184
	movs r0, #1
	adds r1, r0, #0
	bl FUN_02019060
	movs r0, #2
	adds r1, r0, #0
	bl FUN_02019060
	movs r0, #3
	movs r1, #0
	bl FUN_02019060
	movs r0, #5
	movs r1, #1
	bl FUN_02019060
	movs r0, #6
	movs r1, #2
	bl FUN_02019060
	movs r0, #7
	movs r1, #0
	bl FUN_02019060
	b _021D3ECC
_021D3E50:
	movs r2, #3
	adds r3, r2, #0
	movs r1, #1
	adds r3, #0xfd
	bl FUN_02019184
	movs r2, #3
	adds r3, r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #2
	adds r3, #0xfd
	bl FUN_02019184
	movs r1, #3
	adds r3, r1, #0
	ldr r0, [r4, #0x10]
	adds r2, r1, #0
	adds r3, #0xfd
	bl FUN_02019184
	ldr r0, [r4, #0x10]
	movs r1, #5
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	ldr r0, [r4, #0x10]
	movs r1, #6
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	ldr r0, [r4, #0x10]
	movs r1, #7
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	movs r0, #1
	adds r1, r0, #0
	bl FUN_02019060
	movs r0, #2
	adds r1, r0, #0
	bl FUN_02019060
	movs r0, #3
	movs r1, #0
	bl FUN_02019060
	movs r0, #5
	movs r1, #1
	bl FUN_02019060
	movs r0, #6
	movs r1, #2
	bl FUN_02019060
	movs r0, #7
	movs r1, #0
	bl FUN_02019060
_021D3ECC:
	ldr r0, [r4, #0x14]
	movs r1, #0
	bl ov77_021D636C
	pop {r4, pc}
	nop
_021D3ED8: .4byte 0x021BF6DC
	thumb_func_end ov77_021D3DC4

	thumb_func_start ov77_021D3EDC
ov77_021D3EDC: @ 0x021D3EDC
	push {r4, lr}
	lsls r2, r1, #2
	ldr r1, _021D3F20 @ =0x021D7458
	adds r4, r0, #0
	ldr r1, [r1, r2]
	movs r0, #0x80
	movs r2, #0x4c
	bl FUN_02006AC0
	str r0, [r4, #0x20]
	blx FUN_020B3C1C
	str r0, [r4, #0x24]
	bl FUN_0201CBCC
	cmp r0, #0
	bne _021D3F02
	bl FUN_02022974
_021D3F02:
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _021D3F0E
	bl FUN_02022974
_021D3F0E:
	ldr r2, [r4, #0x24]
	ldr r0, [r4, #0x20]
	ldr r1, [r2, #0x14]
	adds r1, r2, r1
	subs r1, r1, r0
	bl FUN_020182F0
	pop {r4, pc}
	nop
_021D3F20: .4byte 0x021D7458
	thumb_func_end ov77_021D3EDC

	thumb_func_start ov77_021D3F24
ov77_021D3F24: @ 0x021D3F24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	str r3, [sp]
	cmp r3, #6
	ble _021D3F38
	movs r0, #6
	str r0, [sp]
_021D3F38:
	movs r0, #0x80
	movs r1, #0x4c
	bl FUN_02006C24
	str r0, [sp, #8]
	lsls r0, r4, #0x18
	lsrs r7, r0, #0x18
	ldr r0, [sp]
	cmp r7, r0
	bge _021D4036
	movs r0, #0x18
	ldr r1, _021D4040 @ =0x021D779C
	muls r0, r6, r0
	adds r0, r1, r0
	str r0, [sp, #4]
	adds r0, r5, #0
	str r0, [sp, #0xc]
	adds r0, #0x2c
	str r0, [sp, #0xc]
_021D3F5E:
	ldr r0, [sp, #4]
	lsls r1, r7, #2
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _021D4036
	movs r0, #0x58
	adds r6, r7, #0
	muls r6, r0, r6
	ldr r0, [sp, #8]
	movs r2, #0x4c
	bl FUN_02006CB8
	adds r1, r5, r6
	adds r1, #0x80
	str r0, [r1]
	adds r0, r5, r6
	adds r0, #0x80
	ldr r0, [r0]
	ldr r1, [r5, #0x24]
	bl FUN_0201CBB0
	cmp r0, #0
	bne _021D3F90
	bl FUN_02022974
_021D3F90:
	adds r0, r5, r6
	adds r0, #0x80
	ldr r0, [r0]
	blx FUN_020B3C0C
	ldrb r0, [r0, #9]
	cmp r0, #1
	beq _021D3FA4
	bl FUN_02022974
_021D3FA4:
	adds r0, r5, r6
	adds r0, #0x80
	ldr r0, [r0]
	blx FUN_020B3C0C
	cmp r0, #0
	beq _021D3FD2
	adds r2, r0, #0
	adds r2, #8
	beq _021D3FC6
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _021D3FC6
	ldrh r1, [r0, #0xe]
	adds r1, r2, r1
	adds r1, r1, #4
	b _021D3FC8
_021D3FC6:
	movs r1, #0
_021D3FC8:
	cmp r1, #0
	beq _021D3FD2
	ldr r1, [r1]
	adds r4, r0, r1
	b _021D3FD4
_021D3FD2:
	movs r4, #0
_021D3FD4:
	cmp r4, #0
	bne _021D3FDC
	bl FUN_02022974
_021D3FDC:
	ldr r0, [sp, #0xc]
	adds r1, r4, #0
	adds r0, r0, r6
	blx FUN_020AE608
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x40
	blx FUN_020B2CE4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x80
	blx FUN_020B2CE4
	movs r2, #2
	adds r0, r4, #0
	movs r1, #0
	lsls r2, r2, #8
	blx FUN_020B2CE4
	movs r2, #1
	adds r0, r4, #0
	movs r1, #0
	lsls r2, r2, #0xa
	blx FUN_020B2CE4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xf
	blx FUN_020B2D8C
	movs r0, #0x8f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r0, #1
	movs r0, #0x8f
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, [sp]
	cmp r7, r0
	blt _021D3F5E
_021D4036:
	ldr r0, [sp, #8]
	bl FUN_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D4040: .4byte 0x021D779C
	thumb_func_end ov77_021D3F24

	thumb_func_start ov77_021D4044
ov77_021D4044: @ 0x021D4044
	push {r4, r5, lr}
	sub sp, #0x24
	adds r4, r0, #0
	movs r0, #0x4c
	bl FUN_020203AC
	add r3, sp, #0x18
	ldr r5, _021D40A0 @ =0x021D7494
	str r0, [r4, #0x28]
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	ldr r1, _021D40A4 @ =0x0029AEC1
	str r0, [r3]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	ldr r3, _021D40A8 @ =0x000005C1
	str r0, [sp, #8]
	adds r0, r2, #0
	ldr r2, _021D40AC @ =0x021D7500
	bl FUN_020206D0
	ldr r0, _021D40B0 @ =0x00000981
	ldr r1, [r4, #0x28]
	bl FUN_02020910
	ldr r5, _021D40B4 @ =0x021D7464
	add r3, sp, #0xc
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	ldr r1, [r4, #0x28]
	adds r0, r2, #0
	bl FUN_02020990
	ldr r0, [r4, #0x28]
	bl FUN_020203D4
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_021D40A0: .4byte 0x021D7494
_021D40A4: .4byte 0x0029AEC1
_021D40A8: .4byte 0x000005C1
_021D40AC: .4byte 0x021D7500
_021D40B0: .4byte 0x00000981
_021D40B4: .4byte 0x021D7464
	thumb_func_end ov77_021D4044

	thumb_func_start ov77_021D40B8
ov77_021D40B8: @ 0x021D40B8
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl ov77_021D3EDC
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #6
	bl ov77_021D3F24
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov77_021D4044
	movs r0, #1
	strb r0, [r4, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov77_021D40B8

	thumb_func_start ov77_021D40DC
ov77_021D40DC: @ 0x021D40DC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r2, [r4, #9]
	bne _021D4126
	cmp r2, #0
	beq _021D40F2
	cmp r2, #1
	beq _021D4104
	cmp r2, #2
	b _021D410E
_021D40F2:
	movs r2, #1
	strb r2, [r4, #5]
	bl ov77_021D3EDC
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov77_021D4044
	b _021D417C
_021D4104:
	movs r2, #0
	movs r3, #1
	bl ov77_021D3F24
	b _021D417C
_021D410E:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	movs r3, #6
	bl ov77_021D3F24
	movs r0, #0
	strb r0, [r4, #9]
	strb r0, [r4, #5]
	movs r0, #1
	strb r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021D4126:
	cmp r2, #3
	bhi _021D4164
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021D4136: @ jump table
	.2byte _021D413E - _021D4136 - 2 @ case 0
	.2byte _021D4150 - _021D4136 - 2 @ case 1
	.2byte _021D415A - _021D4136 - 2 @ case 2
	.2byte _021D4164 - _021D4136 - 2 @ case 3
_021D413E:
	movs r2, #1
	strb r2, [r4, #5]
	bl ov77_021D3EDC
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov77_021D4044
	b _021D417C
_021D4150:
	movs r2, #0
	movs r3, #2
	bl ov77_021D3F24
	b _021D417C
_021D415A:
	movs r2, #2
	movs r3, #4
	bl ov77_021D3F24
	b _021D417C
_021D4164:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #4
	movs r3, #6
	bl ov77_021D3F24
	movs r0, #0
	strb r0, [r4, #9]
	strb r0, [r4, #5]
	movs r0, #1
	strb r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021D417C:
	ldrb r0, [r4, #9]
	adds r0, r0, #1
	strb r0, [r4, #9]
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov77_021D40DC

	thumb_func_start ov77_021D4188
ov77_021D4188: @ 0x021D4188
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	ldr r4, _021D4224 @ =0x021D76D0
	adds r5, r0, #0
	add r3, sp, #0x18
	movs r2, #4
_021D4194:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D4194
	ldr r0, [r4]
	add r2, sp, #0xc
	str r0, [r3]
	ldr r3, _021D4228 @ =0x021D7488
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	add r1, sp, #0
	str r0, [r2]
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	blx FUN_020B2628
	bl FUN_020241B4
	bl FUN_020203EC
	movs r0, #0x97
	lsls r0, r0, #2
	ldrb r1, [r5, r0]
	cmp r1, #1
	bne _021D41FE
	subs r0, #0x20
	ldr r0, [r5, r0]
	movs r4, #0
	cmp r0, #0
	ble _021D41FE
	adds r6, r5, #0
	movs r7, #0x8f
	adds r6, #0x2c
	lsls r7, r7, #2
_021D41DE:
	blx FUN_020C2BE8
	movs r0, #0x58
	muls r0, r4, r0
	adds r0, r6, r0
	add r1, sp, #0
	add r2, sp, #0x18
	add r3, sp, #0xc
	bl FUN_0201CA74
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r5, r7]
	cmp r4, r0
	blt _021D41DE
_021D41FE:
	ldr r0, _021D422C @ =0x0000025D
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _021D4216
	blx FUN_020B2628
	bl FUN_020241B4
	bl FUN_0201469C
	bl FUN_020146C0
_021D4216:
	movs r0, #0
	movs r1, #1
	bl FUN_020241BC
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_021D4224: .4byte 0x021D76D0
_021D4228: .4byte 0x021D7488
_021D422C: .4byte 0x0000025D
	thumb_func_end ov77_021D4188

	thumb_func_start ov77_021D4230
ov77_021D4230: @ 0x021D4230
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r6, r0, #0
	ldrb r0, [r4, #7]
	adds r5, r2, #0
	cmp r0, #0
	bne _021D424C
	movs r1, #0x91
	lsls r1, r1, #2
	ldrb r1, [r4, r1]
	ldr r0, [r4, #0x18]
	bl ov77_021D6BA0
_021D424C:
	ldrb r0, [r4, #7]
	ldrb r1, [r4, #8]
	adds r0, r0, #1
	blx FUN_020E1F6C
	strb r1, [r4, #7]
	ldrb r0, [r4, #1]
	cmp r0, #0x13
	bhi _021D42D0
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D426A: @ jump table
	.2byte _021D4292 - _021D426A - 2 @ case 0
	.2byte _021D42BE - _021D426A - 2 @ case 1
	.2byte _021D4318 - _021D426A - 2 @ case 2
	.2byte _021D43D8 - _021D426A - 2 @ case 3
	.2byte _021D4428 - _021D426A - 2 @ case 4
	.2byte _021D45C2 - _021D426A - 2 @ case 5
	.2byte _021D469C - _021D426A - 2 @ case 6
	.2byte _021D46D2 - _021D426A - 2 @ case 7
	.2byte _021D4742 - _021D426A - 2 @ case 8
	.2byte _021D47D8 - _021D426A - 2 @ case 9
	.2byte _021D4878 - _021D426A - 2 @ case 10
	.2byte _021D48B8 - _021D426A - 2 @ case 11
	.2byte _021D4906 - _021D426A - 2 @ case 12
	.2byte _021D4946 - _021D426A - 2 @ case 13
	.2byte _021D4986 - _021D426A - 2 @ case 14
	.2byte _021D49D0 - _021D426A - 2 @ case 15
	.2byte _021D4AA6 - _021D426A - 2 @ case 16
	.2byte _021D4AD6 - _021D426A - 2 @ case 17
	.2byte _021D4B24 - _021D426A - 2 @ case 18
	.2byte _021D4B4E - _021D426A - 2 @ case 19
_021D4292:
	movs r0, #0xa
	lsls r0, r0, #6
	cmp r5, r0
	blt _021D42D0
	movs r0, #3
	movs r1, #1
	bl FUN_02019120
	movs r0, #1
	movs r1, #0
	str r0, [sp]
	movs r0, #8
	adds r2, r1, #0
	subs r2, #0x10
	adds r3, r0, #0
	bl FUN_0200AAE0
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	bl _021D4B54
_021D42BE:
	movs r0, #1
	bl FUN_0200AC1C
	cmp r0, #1
	bne _021D42D0
	movs r0, #0xaf
	lsls r0, r0, #2
	cmp r5, r0
	beq _021D42D4
_021D42D0:
	bl _021D4B54
_021D42D4:
	movs r0, #0
	movs r1, #1
	bl FUN_02019120
	ldr r0, [r4, #0x1c]
	movs r1, #9
	bl ov77_021D6CD0
	ldr r0, [r4, #0x1c]
	movs r1, #0xa
	bl ov77_021D6CD0
	ldr r0, [r4, #0x1c]
	movs r1, #0xb
	bl ov77_021D6CD0
	movs r1, #0
	ldr r0, _021D45DC @ =0x04000050
	movs r2, #0xf
	adds r3, r1, #0
	str r1, [sp]
	blx FUN_020BF55C
	ldr r0, _021D45E0 @ =0x0000025D
	movs r1, #1
	strb r1, [r4, r0]
	ldr r0, [r4, #0x14]
	bl ov77_021D6050
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	bl _021D4B54
_021D4318:
	ldr r0, _021D45E4 @ =0x00000311
	cmp r5, r0
	bne _021D4336
	movs r0, #4
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x4c
	movs r1, #0
	str r0, [sp, #8]
	ldr r3, _021D45E8 @ =0x00007FFF
	movs r0, #3
	adds r2, r1, #0
	bl FUN_0200F174
_021D4336:
	ldr r0, _021D45EC @ =0x00000316
	cmp r5, r0
	bne _021D4368
	bl FUN_0200F2AC
	cmp r0, #1
	beq _021D4348
	bl FUN_02022974
_021D4348:
	ldr r0, _021D45F0 @ =0x00000247
	movs r2, #4
	strb r2, [r4, r0]
	movs r1, #8
	adds r0, r0, #1
	strb r1, [r4, r0]
	str r2, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	ldr r3, _021D45E8 @ =0x00007FFF
	movs r0, #3
	adds r2, r1, #0
	bl FUN_0200F174
_021D4368:
	movs r0, #0x3b
	lsls r0, r0, #4
	cmp r5, r0
	bne _021D439A
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, _021D45F4 @ =0x0000025B
	movs r3, #1
	strb r3, [r4, r0]
	adds r1, r0, #2
	movs r2, #0
	strb r2, [r4, r1]
	adds r0, r0, #1
	strb r3, [r4, r0]
	ldr r0, [r4, #0x1c]
	bl ov77_021D6CBC
	bl FUN_02014710
	cmp r0, #0
	beq _021D439A
	bl FUN_02022974
_021D439A:
	ldr r0, _021D45F8 @ =0x000003B1
	cmp r5, r0
	bne _021D43A8
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
_021D43A8:
	ldr r0, _021D45FC @ =0x000003CF
	cmp r5, r0
	blt _021D4458
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	movs r0, #0x12
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	ldr r3, _021D45E8 @ =0x00007FFF
	movs r0, #3
	adds r2, r1, #0
	bl FUN_0200F174
	movs r0, #0x10
	strb r0, [r4, #8]
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D43D8:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl ov77_021D513C
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov77_021D4F38
	ldr r0, [r4, #0x14]
	adds r1, r5, #0
	bl ov77_021D6530
	ldr r0, [r4, #0x14]
	adds r1, r5, #0
	bl ov77_021D60E0
	ldr r0, [r4, #0x14]
	adds r1, r5, #0
	bl ov77_021D61B8
	ldr r0, _021D4600 @ =0x00000628
	cmp r5, r0
	blt _021D4458
	movs r0, #0x12
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	movs r0, #0
	ldr r3, _021D45E8 @ =0x00007FFF
	adds r1, r0, #0
	adds r2, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4428:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov77_021D4F38
	ldr r0, [r4, #0x14]
	adds r1, r5, #0
	bl ov77_021D6530
	ldr r0, [r4, #0x14]
	adds r1, r5, #0
	bl ov77_021D60E0
	ldr r0, [r4, #0x14]
	adds r1, r5, #0
	bl ov77_021D61B8
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D4458
	movs r0, #0x19
	lsls r0, r0, #6
	cmp r5, r0
	bge _021D445A
_021D4458:
	b _021D4B54
_021D445A:
	movs r0, #4
	movs r1, #0
	bl FUN_02019120
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	bl ov77_021D6000
	movs r0, #0x91
	movs r1, #1
	lsls r0, r0, #2
	strb r1, [r4, r0]
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov77_021D3A10
	movs r1, #1
	ldr r0, [r4, #0x14]
	adds r2, r1, #0
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	movs r1, #2
	movs r2, #1
	bl ov77_021D603C
	movs r0, #1
	adds r1, r0, #0
	bl FUN_02019120
	movs r0, #2
	movs r1, #1
	bl FUN_02019120
	movs r0, #3
	movs r1, #1
	bl FUN_02019120
	movs r0, #5
	movs r1, #1
	bl FUN_02019120
	movs r0, #6
	movs r1, #1
	bl FUN_02019120
	movs r0, #7
	movs r1, #1
	bl FUN_02019120
	movs r1, #1
	adds r3, r1, #0
	ldr r0, [r4, #0x10]
	movs r2, #0
	adds r3, #0xff
	bl FUN_02019184
	ldr r0, [r4, #0x10]
	movs r1, #1
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	movs r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #2
	adds r3, r2, #0
	bl FUN_02019184
	movs r2, #3
	adds r3, r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #2
	adds r3, #0xfd
	bl FUN_02019184
	movs r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #3
	adds r3, r2, #0
	bl FUN_02019184
	movs r1, #3
	ldr r0, [r4, #0x10]
	adds r2, r1, #0
	movs r3, #0
	bl FUN_02019184
	movs r1, #5
	adds r3, r1, #0
	ldr r0, [r4, #0x10]
	movs r2, #0
	adds r3, #0xfb
	bl FUN_02019184
	ldr r0, [r4, #0x10]
	movs r1, #5
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	movs r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #6
	adds r3, r2, #0
	bl FUN_02019184
	movs r2, #3
	adds r3, r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #6
	adds r3, #0xfd
	bl FUN_02019184
	movs r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #7
	adds r3, r2, #0
	bl FUN_02019184
	ldr r0, [r4, #0x10]
	movs r1, #7
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	movs r2, #0x26
	lsls r2, r2, #4
	movs r0, #1
	lsls r0, r0, #0x14
	adds r1, r2, #0
	str r0, [r4, r2]
	adds r6, r2, #0
	movs r0, #0
	subs r1, #0x16
	strh r0, [r4, r1]
	adds r1, r2, #0
	movs r5, #0xff
	subs r1, #0x14
	strh r5, [r4, r1]
	adds r1, r2, #0
	movs r3, #0x20
	subs r1, #0x12
	strh r3, [r4, r1]
	movs r1, #0x9f
	subs r6, #0x10
	strh r1, [r4, r6]
	adds r6, r2, #0
	subs r6, #0xe
	strh r0, [r4, r6]
	adds r6, r2, #0
	subs r6, #0xc
	strh r5, [r4, r6]
	adds r5, r2, #0
	subs r5, #0xa
	strh r3, [r4, r5]
	adds r3, r2, #0
	subs r3, #8
	strh r1, [r4, r3]
	movs r1, #1
	subs r2, #0x1b
	strb r1, [r4, r2]
	ldr r2, _021D45DC @ =0x04000050
	strb r0, [r4, #6]
	strh r0, [r2]
	ldr r2, _021D4604 @ =0x04001050
	ldr r3, _021D45E8 @ =0x00007FFF
	strh r0, [r2]
	movs r2, #0x12
	str r2, [sp]
	str r1, [sp, #4]
	movs r2, #0x4c
	str r2, [sp, #8]
	adds r2, r1, #0
	bl FUN_0200F174
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D45C2:
	adds r0, r4, #0
	bl ov77_021D4B70
	ldr r0, [r4, #0x14]
	bl ov77_021D607C
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D46B0
	ldr r0, _021D4608 @ =0x00000726
	b _021D460C
	nop
_021D45DC: .4byte 0x04000050
_021D45E0: .4byte 0x0000025D
_021D45E4: .4byte 0x00000311
_021D45E8: .4byte 0x00007FFF
_021D45EC: .4byte 0x00000316
_021D45F0: .4byte 0x00000247
_021D45F4: .4byte 0x0000025B
_021D45F8: .4byte 0x000003B1
_021D45FC: .4byte 0x000003CF
_021D4600: .4byte 0x00000628
_021D4604: .4byte 0x04001050
_021D4608: .4byte 0x00000726
_021D460C:
	cmp r5, r0
	blt _021D46B0
	movs r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #3
	adds r3, r2, #0
	bl FUN_0201C63C
	movs r1, #3
	adds r3, r1, #0
	ldr r0, [r4, #0x10]
	adds r2, r1, #0
	adds r3, #0xfd
	bl FUN_0201C63C
	movs r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #7
	adds r3, r2, #0
	bl FUN_0201C63C
	movs r2, #3
	adds r3, r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #7
	adds r3, #0xfd
	bl FUN_0201C63C
	movs r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #2
	adds r3, r2, #0
	bl FUN_0201C63C
	ldr r0, [r4, #0x10]
	movs r1, #2
	movs r2, #3
	movs r3, #0
	bl FUN_0201C63C
	movs r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #6
	adds r3, r2, #0
	bl FUN_0201C63C
	ldr r0, [r4, #0x10]
	movs r1, #6
	movs r2, #3
	movs r3, #0
	bl FUN_0201C63C
	movs r0, #0x92
	movs r1, #0x22
	lsls r0, r0, #2
	strb r1, [r4, r0]
	movs r1, #1
	subs r0, r0, #2
	strb r1, [r4, r0]
	ldr r0, [r4, #0x14]
	movs r2, #0
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	movs r1, #2
	movs r2, #0
	bl ov77_021D603C
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D469C:
	adds r0, r4, #0
	bl ov77_021D4BE4
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov77_021D4C04
	ldr r0, _021D49F8 @ =0x00000735
	cmp r5, r0
	beq _021D46B2
_021D46B0:
	b _021D4B54
_021D46B2:
	movs r0, #4
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D46D2:
	adds r0, r4, #0
	bl ov77_021D4BE4
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov77_021D4C04
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D47B6
	ldr r0, _021D49FC @ =0x00000247
	movs r1, #0x22
	strb r1, [r4, r0]
	movs r2, #0
	movs r1, #0x44
	adds r0, r0, #1
	strb r1, [r4, r0]
	ldr r0, [r4, #0x10]
	movs r1, #1
	adds r3, r2, #0
	bl FUN_0201C63C
	ldr r0, [r4, #0x10]
	movs r1, #1
	movs r2, #3
	movs r3, #0
	bl FUN_0201C63C
	movs r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #5
	adds r3, r2, #0
	bl FUN_0201C63C
	ldr r0, [r4, #0x10]
	movs r1, #5
	movs r2, #3
	movs r3, #0
	bl FUN_0201C63C
	movs r0, #4
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4742:
	adds r0, r4, #0
	bl ov77_021D4BE4
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov77_021D4C04
	ldr r0, [r4, #0x14]
	adds r1, r5, #0
	bl ov77_021D6470
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D47B6
	ldr r0, _021D4A00 @ =0x00000744
	cmp r5, r0
	bne _021D47B0
	movs r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #1
	adds r3, r2, #0
	bl FUN_0201C63C
	movs r2, #3
	adds r3, r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #1
	adds r3, #0xfd
	bl FUN_0201C63C
	movs r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #5
	adds r3, r2, #0
	bl FUN_0201C63C
	movs r2, #3
	adds r3, r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #5
	adds r3, #0xfd
	bl FUN_0201C63C
	ldr r0, [r4, #0x14]
	movs r1, #0xb
	movs r2, #1
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	movs r1, #0xc
	movs r2, #1
	bl ov77_021D603C
	b _021D4B54
_021D47B0:
	adds r0, #0x3c
	cmp r5, r0
	bge _021D47B8
_021D47B6:
	b _021D4B54
_021D47B8:
	movs r0, #4
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	movs r0, #0
	ldr r3, _021D4A04 @ =0x00007FFF
	adds r1, r0, #0
	adds r2, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D47D8:
	ldr r0, [r4, #0x14]
	adds r1, r5, #0
	bl ov77_021D6470
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D4868
	movs r0, #0x40
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	ldr r3, _021D4A04 @ =0x00007FFF
	movs r0, #0
	adds r2, r1, #0
	bl FUN_0200F174
	ldr r0, [r4, #0x14]
	movs r1, #0xb
	movs r2, #0
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	movs r1, #0xc
	movs r2, #0
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	movs r1, #0xd
	movs r2, #1
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	movs r1, #0xe
	movs r2, #1
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	movs r1, #0xf
	movs r2, #1
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	movs r1, #0x10
	movs r2, #1
	bl ov77_021D603C
	ldr r0, [r4, #0x14]
	movs r1, #0
	bl ov77_021D636C
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov77_021D3B5C
	ldr r0, _021D4A08 @ =0x021BF6DC
	movs r1, #0
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	adds r0, r4, #0
	bl ov77_021D3DC4
	ldr r0, _021D4A0C @ =0x00000246
	movs r1, #1
	strb r1, [r4, r0]
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4868:
	adds r0, r4, #0
	bl ov77_021D4BE4
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov77_021D4C04
	b _021D4B54
_021D4878:
	movs r1, #1
	ldr r0, [r4, #0x14]
	lsls r1, r1, #0x10
	bl ov77_021D6290
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov77_021D4DC8
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D48CA
	ldr r0, _021D4A10 @ =0x000007DA
	cmp r5, r0
	blt _021D48CA
	movs r0, #4
	str r0, [sp]
	movs r1, #0
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	movs r0, #3
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0200F174
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D48B8:
	movs r1, #1
	ldr r0, [r4, #0x14]
	lsls r1, r1, #0x10
	bl ov77_021D6290
	bl FUN_0200F2AC
	cmp r0, #0
	bne _021D48CC
_021D48CA:
	b _021D4B54
_021D48CC:
	movs r1, #0
	ldr r0, _021D4A14 @ =0x04000050
	movs r2, #0x3e
	adds r3, r1, #0
	str r1, [sp]
	blx FUN_020BF55C
	movs r1, #5
	movs r2, #2
	movs r0, #0
	lsls r1, r1, #0x18
	lsls r2, r2, #8
	blx FUN_020C4AF0
	movs r0, #4
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	movs r0, #3
	adds r2, r1, #0
	movs r3, #0
	bl FUN_0200F174
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4906:
	movs r1, #1
	ldr r0, [r4, #0x14]
	lsls r1, r1, #0x10
	bl ov77_021D6290
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D49E2
	ldr r0, [r4, #0x1c]
	movs r1, #0
	adds r2, r5, #0
	bl ov77_021D6E78
	cmp r0, #0
	beq _021D49E2
	movs r0, #4
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4946:
	movs r1, #1
	ldr r0, [r4, #0x14]
	lsls r1, r1, #0x10
	bl ov77_021D6290
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D49E2
	ldr r0, _021D4A08 @ =0x021BF6DC
	movs r1, #1
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	adds r0, r4, #0
	bl ov77_021D3DC4
	movs r0, #4
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4986:
	movs r1, #1
	ldr r0, [r4, #0x14]
	lsls r1, r1, #0x10
	bl ov77_021D6290
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D49E2
	ldr r0, _021D4A18 @ =0x00000852
	cmp r5, r0
	blt _021D49E2
	ldr r0, [r4, #0x1c]
	movs r1, #1
	adds r2, r5, #0
	bl ov77_021D6E78
	cmp r0, #0
	beq _021D49E2
	movs r0, #4
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #0
	str r0, [r4, #0xc]
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D49D0:
	movs r1, #1
	ldr r0, [r4, #0x14]
	lsls r1, r1, #0x10
	bl ov77_021D6290
	bl FUN_0200F2AC
	cmp r0, #0
	bne _021D49E4
_021D49E2:
	b _021D4B54
_021D49E4:
	movs r2, #9
	lsls r2, r2, #6
	ldr r0, [r4, r2]
	movs r1, #5
	lsls r1, r1, #0x18
	subs r2, #0x40
	blx FUN_020C4B18
	ldr r0, _021D4A08 @ =0x021BF6DC
	b _021D4A1C
	.align 2, 0
_021D49F8: .4byte 0x00000735
_021D49FC: .4byte 0x00000247
_021D4A00: .4byte 0x00000744
_021D4A04: .4byte 0x00007FFF
_021D4A08: .4byte 0x021BF6DC
_021D4A0C: .4byte 0x00000246
_021D4A10: .4byte 0x000007DA
_021D4A14: .4byte 0x04000050
_021D4A18: .4byte 0x00000852
_021D4A1C:
	movs r1, #0
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov77_021D3D4C
	adds r0, r4, #0
	bl ov77_021D3DC4
	ldr r0, [r4, #0x14]
	movs r1, #1
	bl ov77_021D636C
	movs r2, #0
	adds r3, r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #1
	subs r3, #0x3c
	bl FUN_0201C63C
	movs r2, #0
	adds r3, r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #2
	subs r3, #0x3c
	bl FUN_0201C63C
	movs r2, #0
	adds r3, r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #3
	subs r3, #0x3c
	bl FUN_0201C63C
	ldr r0, [r4, #0x10]
	movs r1, #5
	movs r2, #0
	movs r3, #0x3c
	bl FUN_0201C63C
	ldr r0, [r4, #0x10]
	movs r1, #6
	movs r2, #0
	movs r3, #0x3c
	bl FUN_0201C63C
	ldr r0, [r4, #0x10]
	movs r1, #7
	movs r2, #0
	movs r3, #0x3c
	bl FUN_0201C63C
	movs r0, #0x10
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	movs r0, #3
	adds r2, r1, #0
	movs r3, #0
	bl FUN_0200F174
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4AA6:
	movs r1, #1
	ldr r0, [r4, #0x14]
	lsls r1, r1, #0x10
	bl ov77_021D6290
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D4B54
	movs r0, #0x10
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	movs r0, #4
	adds r2, r1, #0
	movs r3, #0
	bl FUN_0200F174
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4AD6:
	movs r1, #1
	ldr r0, [r4, #0x14]
	lsls r1, r1, #0x10
	bl ov77_021D6290
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D4B54
	ldr r0, _021D4B5C @ =0x000008A7
	cmp r5, r0
	blt _021D4AF4
	adds r0, r4, #0
	bl ov77_021D4E90
_021D4AF4:
	ldr r0, _021D4B60 @ =0x000008A8
	cmp r5, r0
	blt _021D4B54
	ldr r1, _021D4B64 @ =0x00000247
	movs r0, #0x11
	ldrb r2, [r4, r1]
	ldr r3, _021D4B68 @ =0x00007FFF
	orrs r0, r2
	strb r0, [r4, r1]
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4B24:
	adds r0, r4, #0
	bl ov77_021D4E90
	movs r1, #1
	ldr r0, [r4, #0x14]
	lsls r1, r1, #0x10
	bl ov77_021D6290
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D4B54
	ldr r0, _021D4B6C @ =0x021BF6DC
	movs r1, #1
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D4B54
_021D4B4E:
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_021D4B54:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021D4B5C: .4byte 0x000008A7
_021D4B60: .4byte 0x000008A8
_021D4B64: .4byte 0x00000247
_021D4B68: .4byte 0x00007FFF
_021D4B6C: .4byte 0x021BF6DC
	thumb_func_end ov77_021D4230

	thumb_func_start ov77_021D4B70
ov77_021D4B70: @ 0x021D4B70
	push {r4, lr}
	movs r3, #0x26
	adds r4, r0, #0
	lsls r3, r3, #4
	adds r0, r3, #0
	ldr r1, [r4, r3]
	adds r0, #0x20
	adds r0, r1, r0
	str r0, [r4, r3]
	adds r0, r3, #4
	ldr r1, [r4, r0]
	movs r0, #0x11
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r3, #4
	str r1, [r4, r0]
	adds r3, r3, #4
	ldr r3, [r4, r3]
	ldr r0, [r4, #0x10]
	asrs r3, r3, #0xc
	movs r1, #1
	movs r2, #3
	rsbs r3, r3, #0
	bl FUN_02019184
	movs r3, #0x26
	lsls r3, r3, #4
	ldr r3, [r4, r3]
	ldr r0, [r4, #0x10]
	asrs r3, r3, #0xc
	movs r1, #2
	movs r2, #3
	rsbs r3, r3, #0
	bl FUN_02019184
	movs r3, #0x99
	lsls r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r4, #0x10]
	asrs r3, r3, #0xc
	movs r1, #5
	movs r2, #3
	rsbs r3, r3, #0
	bl FUN_02019184
	movs r3, #0x26
	lsls r3, r3, #4
	ldr r3, [r4, r3]
	ldr r0, [r4, #0x10]
	asrs r3, r3, #0xc
	movs r1, #6
	movs r2, #3
	rsbs r3, r3, #0
	bl FUN_02019184
	movs r0, #0
	str r0, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end ov77_021D4B70

	thumb_func_start ov77_021D4BE4
ov77_021D4BE4: @ 0x021D4BE4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	movs r1, #3
	movs r2, #1
	movs r3, #0x10
	bl FUN_0201C63C
	movs r2, #1
	adds r3, r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #7
	subs r3, #0x11
	bl FUN_0201C63C
	pop {r4, pc}
	thumb_func_end ov77_021D4BE4

	thumb_func_start ov77_021D4C04
ov77_021D4C04: @ 0x021D4C04
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _021D4DB0 @ =0x00000744
	cmp r1, r0
	beq _021D4C10
	b _021D4D42
_021D4C10:
	ldr r7, _021D4DB4 @ =0x04000048
	ldr r3, _021D4DB8 @ =0x0000024A
	ldrh r2, [r7]
	movs r0, #0x3f
	movs r1, #0x1f
	bics r2, r0
	orrs r1, r2
	movs r6, #0x20
	orrs r1, r6
	strh r1, [r7]
	ldrh r2, [r7, #2]
	movs r1, #0x1d
	adds r5, r3, #4
	bics r2, r0
	orrs r1, r2
	orrs r1, r6
	strh r1, [r7, #2]
	movs r1, #0
	strh r1, [r4, r3]
	movs r2, #0xff
	adds r1, r3, #2
	strh r2, [r4, r1]
	movs r1, #0
	strh r1, [r4, r5]
	adds r5, r3, #6
	movs r1, #0x88
	strh r1, [r4, r5]
	adds r1, r5, #0
	ldrsh r1, [r4, r1]
	str r1, [sp]
	adds r1, r3, #4
	ldrsh r1, [r4, r1]
	mov ip, r1
	ldrsh r1, [r4, r3]
	lsls r5, r1, #8
	lsls r1, r2, #8
	ands r1, r5
	adds r5, r3, #2
	ldrsh r5, [r4, r5]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	orrs r5, r1
	adds r1, r7, #0
	subs r1, #8
	strh r5, [r1]
	mov r1, ip
	lsls r5, r1, #8
	lsls r1, r2, #8
	ands r1, r5
	ldr r5, [sp]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	orrs r5, r1
	subs r1, r7, #4
	strh r5, [r1]
	lsls r1, r6, #0x15
	ldr r7, [r1]
	ldr r5, _021D4DBC @ =0xFFFF1FFF
	ands r7, r5
	lsls r5, r6, #8
	orrs r5, r7
	str r5, [r1]
	ldr r1, _021D4DC0 @ =0x04001048
	movs r5, #0x1f
	ldrh r7, [r1]
	bics r7, r0
	orrs r5, r7
	orrs r5, r6
	strh r5, [r1]
	ldrh r5, [r1, #2]
	bics r5, r0
	movs r0, #0x1d
	orrs r0, r5
	orrs r0, r6
	strh r0, [r1, #2]
	ldrh r5, [r1]
	ldr r0, _021D4DC4 @ =0xFFFFC0FF
	ands r5, r0
	movs r0, #0x1f
	lsls r0, r0, #8
	orrs r5, r0
	lsrs r0, r1, #0xd
	orrs r0, r5
	adds r5, r3, #0
	strh r0, [r1]
	adds r5, #8
	movs r0, #0
	strh r0, [r4, r5]
	adds r0, r3, #0
	adds r0, #0xa
	adds r5, r3, #0
	strh r2, [r4, r0]
	adds r5, #0xc
	movs r0, #0
	strh r0, [r4, r5]
	adds r5, r3, #0
	adds r5, #0xe
	movs r0, #0x88
	strh r0, [r4, r5]
	adds r0, r3, #0
	adds r0, #0xe
	ldrsh r6, [r4, r0]
	adds r0, r3, #0
	adds r0, #0xc
	ldrsh r5, [r4, r0]
	adds r0, r3, #0
	adds r0, #8
	ldrsh r0, [r4, r0]
	lsls r5, r5, #8
	lsls r7, r0, #8
	lsls r0, r2, #8
	ands r0, r7
	adds r7, r3, #0
	adds r7, #0xa
	ldrsh r7, [r4, r7]
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x18
	orrs r7, r0
	adds r0, r1, #0
	subs r0, #8
	strh r7, [r0]
	lsls r0, r2, #8
	ands r5, r0
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	orrs r5, r0
	subs r0, r1, #4
	strh r5, [r0]
	adds r0, r3, #0
	adds r0, #0xe
	adds r3, #0xc
	ldrsh r0, [r4, r0]
	ldrsh r5, [r4, r3]
	lsrs r4, r1, #0x12
	subs r3, r1, #6
	strh r4, [r3]
	lsls r0, r0, #0x18
	lsls r3, r5, #8
	lsls r2, r2, #8
	ands r2, r3
	lsrs r0, r0, #0x18
	orrs r2, r0
	subs r0, r1, #2
	strh r2, [r0]
	subs r1, #0x48
	ldr r2, [r1]
	ldr r0, _021D4DBC @ =0xFFFF1FFF
	ands r2, r0
	movs r0, #6
	lsls r0, r0, #0xc
	orrs r0, r2
	str r0, [r1]
	pop {r3, r4, r5, r6, r7, pc}
_021D4D42:
	ble _021D4DAE
	ldr r0, [r4, #0x10]
	movs r1, #1
	bl FUN_02019FF0
	movs r1, #1
	lsls r1, r1, #8
	cmp r0, r1
	blt _021D4D60
	movs r1, #0x92
	lsls r1, r1, #2
	ldrb r2, [r4, r1]
	movs r0, #2
	orrs r0, r2
	strb r0, [r4, r1]
_021D4D60:
	ldr r0, [r4, #0x10]
	movs r1, #5
	bl FUN_02019FF0
	movs r1, #0xff
	mvns r1, r1
	cmp r0, r1
	bgt _021D4D7C
	movs r1, #0x92
	lsls r1, r1, #2
	ldrb r2, [r4, r1]
	movs r0, #0x20
	orrs r0, r2
	strb r0, [r4, r1]
_021D4D7C:
	movs r1, #1
	ldr r0, [r4, #0x10]
	adds r2, r1, #0
	movs r3, #0xc
	bl FUN_0201C63C
	movs r2, #4
	ldr r0, [r4, #0x10]
	movs r1, #1
	subs r3, r2, #5
	bl FUN_0201C63C
	movs r2, #1
	adds r3, r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #5
	subs r3, #0xd
	bl FUN_0201C63C
	movs r2, #4
	ldr r0, [r4, #0x10]
	movs r1, #5
	subs r3, r2, #5
	bl FUN_0201C63C
_021D4DAE:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D4DB0: .4byte 0x00000744
_021D4DB4: .4byte 0x04000048
_021D4DB8: .4byte 0x0000024A
_021D4DBC: .4byte 0xFFFF1FFF
_021D4DC0: .4byte 0x04001048
_021D4DC4: .4byte 0xFFFFC0FF
	thumb_func_end ov77_021D4C04

	thumb_func_start ov77_021D4DC8
ov77_021D4DC8: @ 0x021D4DC8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _021D4E84 @ =0x00000788
	adds r4, r1, #0
	cmp r4, r0
	ble _021D4E0A
	ldr r0, [r5, #0x10]
	movs r1, #1
	bl FUN_020192EC
	adds r3, r0, #0
	adds r3, #0x14
	cmp r3, #0
	ble _021D4DE6
	movs r3, #0
_021D4DE6:
	ldr r0, [r5, #0x10]
	movs r1, #1
	movs r2, #0
	bl FUN_0201C63C
	ldr r0, [r5, #0x10]
	movs r1, #5
	bl FUN_020192EC
	adds r3, r0, #0
	subs r3, #0x14
	bpl _021D4E00
	movs r3, #0
_021D4E00:
	ldr r0, [r5, #0x10]
	movs r1, #5
	movs r2, #0
	bl FUN_0201C63C
_021D4E0A:
	ldr r0, _021D4E88 @ =0x0000078E
	cmp r4, r0
	blt _021D4E46
	ldr r0, [r5, #0x10]
	movs r1, #2
	bl FUN_020192EC
	adds r3, r0, #0
	adds r3, #0x14
	cmp r3, #0
	ble _021D4E22
	movs r3, #0
_021D4E22:
	ldr r0, [r5, #0x10]
	movs r1, #2
	movs r2, #0
	bl FUN_0201C63C
	ldr r0, [r5, #0x10]
	movs r1, #6
	bl FUN_020192EC
	adds r3, r0, #0
	subs r3, #0x14
	bpl _021D4E3C
	movs r3, #0
_021D4E3C:
	ldr r0, [r5, #0x10]
	movs r1, #6
	movs r2, #0
	bl FUN_0201C63C
_021D4E46:
	ldr r0, _021D4E8C @ =0x00000794
	cmp r4, r0
	blt _021D4E82
	ldr r0, [r5, #0x10]
	movs r1, #3
	bl FUN_020192EC
	adds r3, r0, #0
	adds r3, #0x14
	cmp r3, #0
	ble _021D4E5E
	movs r3, #0
_021D4E5E:
	ldr r0, [r5, #0x10]
	movs r1, #3
	movs r2, #0
	bl FUN_0201C63C
	ldr r0, [r5, #0x10]
	movs r1, #7
	bl FUN_020192EC
	adds r3, r0, #0
	subs r3, #0x14
	bpl _021D4E78
	movs r3, #0
_021D4E78:
	ldr r0, [r5, #0x10]
	movs r1, #7
	movs r2, #0
	bl FUN_0201C63C
_021D4E82:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D4E84: .4byte 0x00000788
_021D4E88: .4byte 0x0000078E
_021D4E8C: .4byte 0x00000794
	thumb_func_end ov77_021D4DC8

	thumb_func_start ov77_021D4E90
ov77_021D4E90: @ 0x021D4E90
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	movs r1, #1
	bl FUN_020192EC
	adds r3, r0, #0
	adds r3, #0xc
	cmp r3, #0
	ble _021D4EA6
	movs r3, #0
_021D4EA6:
	ldr r0, [r4, #0x10]
	movs r1, #1
	movs r2, #0
	bl FUN_0201C63C
	ldr r0, [r4, #0x10]
	movs r1, #5
	bl FUN_020192EC
	adds r3, r0, #0
	subs r3, #0xc
	bpl _021D4EC0
	movs r3, #0
_021D4EC0:
	ldr r0, [r4, #0x10]
	movs r1, #5
	movs r2, #0
	bl FUN_0201C63C
	ldr r0, [r4, #0x10]
	movs r1, #2
	bl FUN_020192EC
	adds r3, r0, #0
	adds r3, #0xc
	cmp r3, #0
	ble _021D4EDC
	movs r3, #0
_021D4EDC:
	ldr r0, [r4, #0x10]
	movs r1, #2
	movs r2, #0
	bl FUN_0201C63C
	ldr r0, [r4, #0x10]
	movs r1, #6
	bl FUN_020192EC
	adds r3, r0, #0
	subs r3, #0xc
	bpl _021D4EF6
	movs r3, #0
_021D4EF6:
	ldr r0, [r4, #0x10]
	movs r1, #6
	movs r2, #0
	bl FUN_0201C63C
	ldr r0, [r4, #0x10]
	movs r1, #3
	bl FUN_020192EC
	adds r3, r0, #0
	adds r3, #0xc
	cmp r3, #0
	ble _021D4F12
	movs r3, #0
_021D4F12:
	ldr r0, [r4, #0x10]
	movs r1, #3
	movs r2, #0
	bl FUN_0201C63C
	ldr r0, [r4, #0x10]
	movs r1, #7
	bl FUN_020192EC
	adds r3, r0, #0
	subs r3, #0xc
	bpl _021D4F2C
	movs r3, #0
_021D4F2C:
	ldr r0, [r4, #0x10]
	movs r1, #7
	movs r2, #0
	bl FUN_0201C63C
	pop {r4, pc}
	thumb_func_end ov77_021D4E90

	thumb_func_start ov77_021D4F38
ov77_021D4F38: @ 0x021D4F38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	adds r4, r0, #0
	add r0, sp, #0x64
	movs r2, #0
	str r2, [r0]
	ldr r5, _021D5100 @ =0x000004A7
	str r2, [r0, #4]
	str r2, [r0, #8]
	cmp r1, r5
	bge _021D4F84
	ldr r0, [r4, #0x28]
	bl FUN_02020A88
	ldr r1, _021D5104 @ =0x000005C1
	subs r0, #0x20
	cmp r0, r1
	ble _021D4F66
	ldr r0, _021D5108 @ =0x0000FFE0
	ldr r1, [r4, #0x28]
	bl FUN_0202094C
	b _021D4F6E
_021D4F66:
	adds r0, r1, #0
	ldr r1, [r4, #0x28]
	bl FUN_02020910
_021D4F6E:
	movs r0, #2
	ldr r1, [sp, #0x6c]
	lsls r0, r0, #0xc
	subs r0, r1, r0
	str r0, [sp, #0x6c]
	ldr r1, [r4, #0x28]
	add r0, sp, #0x64
	bl FUN_02020990
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
_021D4F84:
	bne _021D502A
	ldr r6, _021D510C @ =0x021D7470
	add r5, sp, #0x58
	ldm r6!, {r0, r1}
	adds r3, r5, #0
	stm r5!, {r0, r1}
	ldr r0, [r6]
	ldr r1, _021D5110 @ =0x0029AEC1
	str r0, [r5]
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x28]
	ldr r2, _021D5114 @ =0x021D7500
	str r0, [sp, #8]
	adds r0, r3, #0
	ldr r3, _021D5104 @ =0x000005C1
	bl FUN_020206D0
	ldr r5, _021D5118 @ =0x021D74A0
	add r3, sp, #0x4c
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	ldr r1, [r4, #0x28]
	adds r0, r2, #0
	bl FUN_02020990
	blx FUN_020B2628
	ldr r3, _021D511C @ =0x00001194
	movs r0, #1
	movs r1, #0
	movs r2, #3
	blx FUN_020BFC74
	ldr r1, _021D5120 @ =0x001F7FFF
	ldr r0, _021D5124 @ =0x04000358
	movs r7, #0
	str r1, [r0]
	movs r0, #4
	adds r1, r7, #0
	movs r2, #8
	movs r3, #0xc
	add r4, sp, #0x2c
_021D4FE0:
	lsls r5, r3, #0x18
	mov ip, r5
	lsls r5, r0, #8
	lsls r6, r2, #0x10
	orrs r5, r1
	orrs r5, r6
	mov r6, ip
	orrs r5, r6
	adds r7, r7, #1
	stm r4!, {r5}
	adds r0, #0x10
	adds r1, #0x10
	adds r2, #0x10
	adds r3, #0x10
	cmp r7, #8
	blt _021D4FE0
	add r0, sp, #0x2c
	blx FUN_020BFD44
	movs r0, #9
	str r0, [sp]
	ldr r0, _021D5128 @ =0x04000050
	movs r1, #2
	movs r2, #0x21
	movs r3, #7
	blx FUN_020BF55C
	movs r0, #1
	movs r1, #0
	bl FUN_02019060
	movs r0, #1
	adds r1, r0, #0
	bl FUN_02019120
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
_021D502A:
	adds r3, r5, #0
	adds r3, #0xd2
	cmp r1, r3
	bge _021D5052
	movs r1, #1
	ldr r2, [sp, #0x64]
	lsls r1, r1, #0xe
	adds r1, r2, r1
	str r1, [sp, #0x64]
	ldr r1, [r4, #0x28]
	bl FUN_02020990
	movs r1, #1
	ldr r0, [r4, #0x10]
	adds r2, r1, #0
	movs r3, #4
	bl FUN_0201C63C
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
_021D5052:
	adds r5, #0xd2
	cmp r1, r5
	bne _021D50CC
	ldr r6, _021D512C @ =0x021D744C
	add r5, sp, #0x20
	ldm r6!, {r0, r1}
	adds r3, r5, #0
	stm r5!, {r0, r1}
	ldr r0, [r6]
	ldr r1, _021D5110 @ =0x0029AEC1
	str r0, [r5]
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x28]
	ldr r2, _021D5114 @ =0x021D7500
	str r0, [sp, #8]
	adds r0, r3, #0
	ldr r3, _021D5104 @ =0x000005C1
	bl FUN_020206D0
	ldr r5, _021D5130 @ =0x021D747C
	add r3, sp, #0x14
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	ldr r1, [r4, #0x28]
	adds r0, r2, #0
	bl FUN_02020990
	ldr r2, _021D5134 @ =0x021D743C
	add r1, sp, #0xc
	ldrh r3, [r2]
	add r0, sp, #0xc
	strh r3, [r1]
	ldrh r3, [r2, #2]
	strh r3, [r1, #2]
	ldrh r3, [r2, #4]
	ldrh r2, [r2, #6]
	strh r3, [r1, #4]
	strh r2, [r1, #6]
	ldr r1, [r4, #0x28]
	bl FUN_020209F8
	blx FUN_020B2628
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	blx FUN_020BFC74
	ldr r0, _021D5128 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	movs r0, #1
	bl FUN_02019120
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
_021D50CC:
	ldr r0, _021D5138 @ =0x00000618
	cmp r1, r0
	blt _021D50EA
	ldr r0, [r4, #0x28]
	bl FUN_02020A88
	movs r1, #1
	adds r0, #0x18
	lsls r1, r1, #0xe
	cmp r0, r1
	bge _021D50EA
	ldr r1, [r4, #0x28]
	movs r0, #0x18
	bl FUN_0202094C
_021D50EA:
	movs r0, #2
	ldr r1, [sp, #0x64]
	lsls r0, r0, #0xc
	subs r0, r1, r0
	str r0, [sp, #0x64]
	ldr r1, [r4, #0x28]
	add r0, sp, #0x64
	bl FUN_02020990
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D5100: .4byte 0x000004A7
_021D5104: .4byte 0x000005C1
_021D5108: .4byte 0x0000FFE0
_021D510C: .4byte 0x021D7470
_021D5110: .4byte 0x0029AEC1
_021D5114: .4byte 0x021D7500
_021D5118: .4byte 0x021D74A0
_021D511C: .4byte 0x00001194
_021D5120: .4byte 0x001F7FFF
_021D5124: .4byte 0x04000358
_021D5128: .4byte 0x04000050
_021D512C: .4byte 0x021D744C
_021D5130: .4byte 0x021D747C
_021D5134: .4byte 0x021D743C
_021D5138: .4byte 0x00000618
	thumb_func_end ov77_021D4F38

	thumb_func_start ov77_021D513C
ov77_021D513C: @ 0x021D513C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _021D524C @ =0x00000573
	adds r4, r1, #0
	cmp r2, r0
	bgt _021D5174
	bge _021D51FA
	subs r0, #0xd2
	subs r0, r2, r0
	cmp r0, #9
	bhi _021D5246
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D5160: @ jump table
	.2byte _021D517E - _021D5160 - 2 @ case 0
	.2byte _021D5246 - _021D5160 - 2 @ case 1
	.2byte _021D5246 - _021D5160 - 2 @ case 2
	.2byte _021D5246 - _021D5160 - 2 @ case 3
	.2byte _021D5246 - _021D5160 - 2 @ case 4
	.2byte _021D5246 - _021D5160 - 2 @ case 5
	.2byte _021D519A - _021D5160 - 2 @ case 6
	.2byte _021D51B8 - _021D5160 - 2 @ case 7
	.2byte _021D51C4 - _021D5160 - 2 @ case 8
	.2byte _021D51D0 - _021D5160 - 2 @ case 9
_021D5174:
	ldr r0, _021D5250 @ =0x00000579
	cmp r2, r0
	beq _021D5216
	add sp, #0xc
	pop {r4, r5, pc}
_021D517E:
	movs r0, #4
	str r0, [sp]
	movs r1, #0
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	movs r0, #3
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0200F174
	add sp, #0xc
	pop {r4, r5, pc}
_021D519A:
	bl FUN_0200F2AC
	cmp r0, #1
	beq _021D51A6
	bl FUN_02022974
_021D51A6:
	adds r0, r5, #0
	bl ov77_021D35B8
	adds r0, r4, #0
	movs r1, #1
	bl ov77_021D40DC
	add sp, #0xc
	pop {r4, r5, pc}
_021D51B8:
	adds r0, r4, #0
	movs r1, #1
	bl ov77_021D40DC
	add sp, #0xc
	pop {r4, r5, pc}
_021D51C4:
	adds r0, r4, #0
	movs r1, #1
	bl ov77_021D40DC
	add sp, #0xc
	pop {r4, r5, pc}
_021D51D0:
	adds r0, r4, #0
	movs r1, #1
	bl ov77_021D40DC
	cmp r0, #1
	beq _021D51E0
	bl FUN_02022974
_021D51E0:
	movs r0, #4
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	movs r0, #3
	adds r2, r1, #0
	movs r3, #0
	bl FUN_0200F174
	add sp, #0xc
	pop {r4, r5, pc}
_021D51FA:
	movs r0, #4
	str r0, [sp]
	movs r1, #0
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	movs r0, #3
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0200F174
	add sp, #0xc
	pop {r4, r5, pc}
_021D5216:
	bl FUN_0200F2AC
	cmp r0, #1
	beq _021D5222
	bl FUN_02022974
_021D5222:
	adds r0, r5, #0
	bl ov77_021D35B8
	adds r0, r4, #0
	movs r1, #2
	bl ov77_021D40B8
	movs r0, #4
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	movs r0, #3
	adds r2, r1, #0
	movs r3, #0
	bl FUN_0200F174
_021D5246:
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D524C: .4byte 0x00000573
_021D5250: .4byte 0x00000579
	thumb_func_end ov77_021D513C

	thumb_func_start ov77_021D5254
ov77_021D5254: @ 0x021D5254
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r5, #0xa7
	lsls r5, r5, #2
	cmp r0, #0
	beq _021D5266
	movs r0, #3
	strb r0, [r4, r5]
_021D5266:
	ldrb r0, [r4, r5]
	cmp r0, #3
	bhi _021D52C2
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D5278: @ jump table
	.2byte _021D5280 - _021D5278 - 2 @ case 0
	.2byte _021D528E - _021D5278 - 2 @ case 1
	.2byte _021D52A0 - _021D5278 - 2 @ case 2
	.2byte _021D52B8 - _021D5278 - 2 @ case 3
_021D5280:
	adds r0, r4, #0
	bl ov77_021D52C8
	ldrb r0, [r4, r5]
	adds r0, r0, #1
	strb r0, [r4, r5]
	b _021D52C2
_021D528E:
	movs r0, #0xa7
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov77_021D5308
	ldrb r0, [r4, r5]
	adds r0, r0, #1
	strb r0, [r4, r5]
	b _021D52C2
_021D52A0:
	movs r0, #0xa7
	lsls r0, r0, #2
	ldr r1, [r4, #4]
	adds r0, r4, r0
	bl ov77_021D5390
	cmp r0, #0
	beq _021D52C2
	ldrb r0, [r4, r5]
	adds r0, r0, #1
	strb r0, [r4, r5]
	b _021D52C2
_021D52B8:
	adds r0, r4, #0
	bl ov77_021D5478
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D52C2:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov77_021D5254

	thumb_func_start ov77_021D52C8
ov77_021D52C8: @ 0x021D52C8
	push {r4, lr}
	adds r4, r0, #0
	bl ov77_021D25F0
	adds r0, r4, #0
	bl ov77_021D2A00
	movs r0, #0xa9
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	str r1, [r4, r0]
	ldr r1, _021D52FC @ =0x00007FFF
	movs r0, #0
	bl FUN_0200F344
	ldr r1, _021D52FC @ =0x00007FFF
	movs r0, #1
	bl FUN_0200F344
	ldr r0, _021D5300 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	ldr r0, _021D5304 @ =0x0000029E
	movs r1, #1
	strb r1, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_021D52FC: .4byte 0x00007FFF
_021D5300: .4byte 0x04000050
_021D5304: .4byte 0x0000029E
	thumb_func_end ov77_021D52C8

	thumb_func_start ov77_021D5308
ov77_021D5308: @ 0x021D5308
	push {r3, r4, r5, lr}
	sub sp, #0x10
	movs r2, #0
	adds r4, r0, #0
	str r2, [sp]
	movs r0, #0x4c
	str r0, [sp, #4]
	movs r0, #0x80
	movs r1, #0x63
	adds r3, r2, #0
	bl FUN_02006E84
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	movs r0, #0x80
	movs r1, #0x62
	movs r3, #2
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	movs r0, #0x80
	movs r1, #0x61
	movs r3, #2
	bl FUN_02006E60
	bl FUN_0201FF00
	movs r0, #0
	bl FUN_0201FF48
	movs r0, #0
	bl FUN_0201FFB0
	ldr r0, _021D538C @ =0xFFFE8000
	movs r2, #0
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #2
	adds r3, r2, #0
	bl FUN_02019184
	ldr r5, [r4, #4]
	ldr r0, [r4, #8]
	asrs r3, r5, #0xb
	lsrs r3, r3, #0x14
	adds r3, r5, r3
	movs r1, #2
	movs r2, #3
	asrs r3, r3, #0xc
	bl FUN_02019184
	movs r0, #1
	strb r0, [r4, #3]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D538C: .4byte 0xFFFE8000
	thumb_func_end ov77_021D5308

	thumb_func_start ov77_021D5390
ov77_021D5390: @ 0x021D5390
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #4
	bhi _021D5448
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D53A8: @ jump table
	.2byte _021D53B2 - _021D53A8 - 2 @ case 0
	.2byte _021D53D6 - _021D53A8 - 2 @ case 1
	.2byte _021D5404 - _021D53A8 - 2 @ case 2
	.2byte _021D5414 - _021D53A8 - 2 @ case 3
	.2byte _021D543A - _021D53A8 - 2 @ case 4
_021D53B2:
	ldr r0, _021D546C @ =0x0000089D
	cmp r1, r0
	blt _021D5448
	movs r0, #0x1e
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	ldr r3, _021D5470 @ =0x00007FFF
	movs r0, #0
	adds r2, r1, #0
	bl FUN_0200F174
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D5448
_021D53D6:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D5448
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x5a
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D5448
_021D5404:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D5448
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D5448
_021D5414:
	ldr r0, _021D5474 @ =0x00000974
	cmp r1, r0
	blt _021D5448
	movs r0, #8
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _021D5448
_021D543A:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D5448
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_021D5448:
	movs r0, #1
	ldr r1, [r4, #4]
	lsls r0, r0, #0xa
	adds r5, r1, r0
	asrs r3, r5, #0xb
	str r5, [r4, #4]
	lsrs r3, r3, #0x14
	adds r3, r5, r3
	ldr r0, [r4, #8]
	movs r1, #2
	movs r2, #3
	asrs r3, r3, #0xc
	bl FUN_02019184
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D546C: .4byte 0x0000089D
_021D5470: .4byte 0x00007FFF
_021D5474: .4byte 0x00000974
	thumb_func_end ov77_021D5390

	thumb_func_start ov77_021D5478
ov77_021D5478: @ 0x021D5478
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D54A8 @ =0x0000029E
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021D5498
	ldr r0, [r4, #0xc]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r4, #0xc]
	bl FUN_020181C4
	ldr r0, _021D54A8 @ =0x0000029E
	movs r1, #0
	strb r1, [r4, r0]
_021D5498:
	ldr r0, _021D54AC @ =0x0000029F
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _021D54A4
	movs r1, #0
	strb r1, [r4, r0]
_021D54A4:
	pop {r4, pc}
	nop
_021D54A8: .4byte 0x0000029E
_021D54AC: .4byte 0x0000029F
	thumb_func_end ov77_021D5478

	thumb_func_start ov77_021D54B0
ov77_021D54B0: @ 0x021D54B0
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021D54E4 @ =0x021D78BC
	add r3, sp, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_0201E86C
	movs r0, #0xb
	movs r1, #0x4c
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	movs r0, #6
	movs r1, #0x4c
	bl FUN_0201DBEC
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_021D54E4: .4byte 0x021D78BC
	thumb_func_end ov77_021D54B0

	thumb_func_start ov77_021D54E8
ov77_021D54E8: @ 0x021D54E8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	adds r6, r0, #0
	movs r0, #0
	str r6, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x44]
	adds r5, r1, #0
	str r0, [sp, #0xc]
	movs r1, #0x4b
	str r2, [sp, #0x10]
	lsls r1, r1, #2
	ldr r0, [r5, r1]
	adds r4, r3, #0
	str r0, [sp, #0x14]
	adds r0, r1, #4
	ldr r0, [r5, r0]
	adds r2, r6, #0
	str r0, [sp, #0x18]
	adds r0, r1, #0
	adds r0, #8
	ldr r0, [r5, r0]
	adds r1, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [r5, r1]
	adds r1, r6, #0
	str r0, [sp, #0x20]
	movs r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x40]
	adds r3, r6, #0
	bl FUN_020093B4
	ldr r0, [r5]
	movs r1, #0
	str r0, [r4]
	ldr r0, [sp, #0x40]
	str r0, [r4, #4]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	movs r0, #1
	str r1, [r4, #0x10]
	lsls r0, r0, #0xc
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	strh r1, [r4, #0x20]
	movs r0, #1
	str r0, [r4, #0x24]
	ldr r0, [sp, #0x48]
	str r0, [r4, #0x28]
	movs r0, #0x4c
	str r0, [r4, #0x2c]
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov77_021D54E8

	thumb_func_start ov77_021D555C
ov77_021D555C: @ 0x021D555C
	movs r0, #0x2a
	lsls r0, r0, #4
	bx lr
	.align 2, 0
	thumb_func_end ov77_021D555C

	thumb_func_start ov77_021D5564
ov77_021D5564: @ 0x021D5564
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	adds r5, r0, #0
	adds r3, r1, #0
	ldr r0, _021D55C4 @ =0xFFCFFFEF
	movs r1, #0x10
	ands r3, r0
	orrs r3, r1
	str r3, [r2]
	ldr r3, _021D55C8 @ =0x04001000
	ldr r2, [r3]
	ands r0, r2
	orrs r0, r1
	str r0, [r3]
	bl ov77_021D54B0
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x20
	str r3, [sp, #0xc]
	movs r2, #0x4c
	str r2, [sp, #0x10]
	adds r2, r0, #0
	bl FUN_0200A784
	movs r0, #0x21
	adds r1, r5, #4
	movs r2, #0x4c
	bl FUN_020095C4
	str r0, [r5]
	movs r0, #3
	movs r1, #0x4c
	bl FUN_0201DCC8
	movs r1, #0xa7
	lsls r1, r1, #2
	ldr r4, _021D55CC @ =0x021D7914
	b _021D55D0
	nop
_021D55C4: .4byte 0xFFCFFFEF
_021D55C8: .4byte 0x04001000
_021D55CC: .4byte 0x021D7914
_021D55D0:
	str r0, [r5, r1]
	movs r7, #0
	adds r6, r5, #0
_021D55D6:
	ldrb r0, [r4]
	adds r1, r7, #0
	movs r2, #0x4c
	bl FUN_02009714
	movs r1, #0x4b
	lsls r1, r1, #2
	str r0, [r6, r1]
	adds r7, r7, #1
	adds r4, r4, #1
	adds r6, r6, #4
	cmp r7, #4
	blt _021D55D6
	movs r3, #0
	str r3, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xe0
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x2e
	bl FUN_0200985C
	movs r1, #0x4f
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xe0
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x2e
	movs r3, #0
	bl FUN_0200985C
	movs r1, #0x53
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xe0
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x32
	movs r3, #0
	bl FUN_0200985C
	movs r1, #0x57
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #3
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xe0
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x57
	movs r3, #0
	bl FUN_0200985C
	movs r1, #0x5b
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #4
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xe0
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x16
	movs r3, #0
	bl FUN_0200985C
	movs r1, #0x5f
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #5
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xe0
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x17
	movs r3, #0
	bl FUN_0200985C
	movs r1, #0x63
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xe0
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x5b
	movs r3, #0
	bl FUN_0200985C
	movs r1, #0x67
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #7
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xe0
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x53
	movs r3, #0
	bl FUN_0200985C
	movs r1, #0x6b
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #8
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xe0
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x53
	movs r3, #0
	bl FUN_0200985C
	movs r1, #0x6f
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #9
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xe0
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x36
	movs r3, #0
	bl FUN_0200985C
	movs r1, #0x73
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0xa
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xe0
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x36
	movs r3, #0
	bl FUN_0200985C
	movs r1, #0x77
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r3, #0
	str r3, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	adds r0, #0xe4
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x31
	bl FUN_020098B8
	movs r1, #5
	lsls r1, r1, #6
	str r0, [r5, r1]
	movs r1, #1
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	adds r0, #0xe4
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x31
	movs r3, #0
	bl FUN_020098B8
	movs r1, #0x15
	lsls r1, r1, #4
	str r0, [r5, r1]
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	adds r0, #0xe4
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x35
	movs r3, #0
	bl FUN_020098B8
	movs r1, #0x16
	lsls r1, r1, #4
	str r0, [r5, r1]
	movs r0, #3
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	adds r0, #0xe4
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x5a
	movs r3, #0
	bl FUN_020098B8
	movs r1, #0x17
	lsls r1, r1, #4
	str r0, [r5, r1]
	movs r0, #4
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	adds r0, #0xe4
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x14
	movs r3, #0
	bl FUN_020098B8
	movs r1, #6
	lsls r1, r1, #6
	str r0, [r5, r1]
	movs r0, #5
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	adds r0, #0xe4
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x15
	movs r3, #0
	bl FUN_020098B8
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [r5, r1]
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	adds r0, #0xe4
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x5e
	movs r3, #0
	bl FUN_020098B8
	movs r1, #0x1a
	lsls r1, r1, #4
	str r0, [r5, r1]
	movs r0, #7
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	adds r0, #0xe4
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x56
	movs r3, #0
	bl FUN_020098B8
	movs r1, #0x1b
	lsls r1, r1, #4
	str r0, [r5, r1]
	movs r0, #8
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	adds r0, #0xe4
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x56
	movs r3, #0
	bl FUN_020098B8
	movs r1, #7
	lsls r1, r1, #6
	str r0, [r5, r1]
	movs r0, #9
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	adds r0, #0xe4
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x39
	movs r3, #0
	bl FUN_020098B8
	movs r1, #0x1d
	lsls r1, r1, #4
	str r0, [r5, r1]
	movs r0, #0xa
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	adds r0, #0xe4
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x39
	movs r3, #0
	bl FUN_020098B8
	movs r1, #0x1e
	lsls r1, r1, #4
	str r0, [r5, r1]
	movs r3, #0
	str r3, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x30
	bl FUN_02009918
	movs r1, #0x51
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x30
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x55
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x33
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x59
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #3
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x59
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x5d
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #4
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x18
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x61
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #6
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x5d
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x69
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #7
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x55
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x6d
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #8
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x55
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x71
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #9
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x37
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x75
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0xa
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x37
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x79
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #5
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x19
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x65
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r3, #0
	str r3, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xec
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x2f
	bl FUN_02009918
	movs r1, #0x52
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #1
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xec
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x2f
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x56
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #2
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xec
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x34
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x5a
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xec
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x58
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x5e
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #4
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xec
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x1a
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x62
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #5
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xec
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x1b
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x66
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #6
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xec
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x5c
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x6a
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #7
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xec
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x54
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x6e
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #8
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xec
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x54
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x72
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #9
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xec
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x38
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x76
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0xa
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xec
	ldr r0, [r5, r0]
	movs r1, #0x80
	movs r2, #0x38
	movs r3, #0
	bl FUN_02009918
	movs r1, #0x7a
	lsls r1, r1, #2
	adds r7, r1, #0
	adds r6, r1, #0
	str r0, [r5, r1]
	movs r4, #0
	subs r7, #0xac
	subs r6, #0xa8
_021D5B8C:
	ldr r0, [r5, r7]
	bl FUN_0200A3DC
	ldr r0, [r5, r6]
	bl FUN_0200A640
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #0xb
	blt _021D5B8C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov77_021D5564

	thumb_func_start ov77_021D5BAC
ov77_021D5BAC: @ 0x021D5BAC
	push {r3, r4, r5, r6, r7, lr}
	movs r7, #5
	adds r5, r0, #0
	movs r4, #0
	lsls r7, r7, #6
_021D5BB6:
	lsls r0, r4, #4
	adds r6, r5, r0
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_0200A4E4
	ldr r0, [r6, r7]
	bl FUN_0200A6DC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xb
	blo _021D5BB6
	movs r6, #0x4b
	movs r4, #0
	lsls r6, r6, #2
_021D5BDA:
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, r6]
	bl FUN_02009754
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	blo _021D5BDA
	ldr r0, [r5]
	bl FUN_02021964
	movs r0, #0x23
	lsls r0, r0, #4
	movs r4, #0
	adds r6, r5, r0
	movs r7, #0x24
_021D5BFE:
	adds r0, r4, #0
	muls r0, r7, r0
	adds r0, r6, r0
	bl FUN_020094F0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	blo _021D5BFE
	movs r0, #0xa7
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D5C28
	bl FUN_0201DCF0
	movs r0, #0xa7
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
_021D5C28:
	bl FUN_0200A878
	bl FUN_0201E958
	bl FUN_0201F8B4
	bl FUN_0201DC3C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov77_021D5BAC

	thumb_func_start ov77_021D5C3C
ov77_021D5C3C: @ 0x021D5C3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xac
	ldr r3, _021D5FA4 @ =0x021D78FC
	adds r5, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0x40
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r3, _021D5FA8 @ =0x021D78CC
	add r2, sp, #0x28
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r3, _021D5FAC @ =0x021D78E4
	add r2, sp, #0x10
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	movs r0, #0x23
	lsls r0, r0, #4
	adds r0, r5, r0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r5, #0
	adds r2, r0, #0
	add r3, sp, #0x58
	bl ov77_021D54E8
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [sp, #0x60]
	movs r0, #7
	lsls r0, r0, #0x10
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl FUN_02021AA0
	movs r1, #0x7b
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	movs r1, #0
	bl FUN_02021CC8
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	adds r1, r5, #0
	movs r2, #0
	add r3, sp, #0x58
	bl ov77_021D54E8
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [sp, #0x60]
	movs r0, #0x13
	lsls r0, r0, #0x10
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl FUN_02021AA0
	movs r1, #0x1f
	lsls r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	movs r1, #0
	bl FUN_02021CC8
	movs r0, #0x1f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #0x95
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #2
	adds r1, r5, #0
	movs r2, #0
	add r3, sp, #0x58
	bl ov77_021D54E8
	movs r0, #0xb
	lsls r0, r0, #0x10
	str r0, [sp, #0x60]
	movs r0, #7
	lsls r0, r0, #0x10
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl FUN_02021AA0
	movs r1, #0x7d
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	movs r1, #0
	bl FUN_02021CC8
	movs r0, #0x7d
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	add r0, sp, #0x88
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #3
	adds r1, r5, #0
	add r3, sp, #0x58
	bl ov77_021D54E8
	ldr r0, _021D5FB0 @ =0xFFFC0000
	str r0, [sp, #0x60]
	movs r0, #7
	lsls r0, r0, #0x10
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl FUN_02021AA0
	movs r1, #0x7e
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	add r0, sp, #0x88
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #6
	adds r1, r5, #0
	add r3, sp, #0x58
	bl ov77_021D54E8
	movs r0, #5
	lsls r0, r0, #0x12
	str r0, [sp, #0x60]
	movs r0, #7
	lsls r0, r0, #0x10
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl FUN_02021AA0
	movs r1, #0x85
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0x85
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	add r0, sp, #0x88
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r2, #1
	movs r0, #7
	adds r1, r5, #0
	add r3, sp, #0x58
	str r2, [sp, #8]
	bl ov77_021D54E8
	movs r0, #2
	lsls r0, r0, #0x12
	str r0, [sp, #0x60]
	movs r0, #6
	lsls r0, r0, #0x10
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl FUN_02021AA0
	movs r1, #0x86
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0x86
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #0x86
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CF8
	add r0, sp, #0x88
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #8
	adds r1, r5, #0
	movs r2, #1
	add r3, sp, #0x58
	bl ov77_021D54E8
	movs r0, #2
	lsls r0, r0, #0x12
	str r0, [sp, #0x60]
	movs r0, #0x12
	lsls r0, r0, #0x10
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl FUN_02021AA0
	movs r1, #0x87
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0x87
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #0x87
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CF8
	add r0, sp, #0x88
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #9
	adds r1, r5, #0
	movs r2, #3
	add r3, sp, #0x58
	bl ov77_021D54E8
	movs r0, #2
	lsls r0, r0, #0x12
	str r0, [sp, #0x60]
	movs r0, #0x1a
	lsls r0, r0, #0xe
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl FUN_02021AA0
	movs r1, #0x22
	lsls r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0x22
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	add r0, sp, #0x58
	bl FUN_02021AA0
	movs r1, #0x89
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0x89
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	add r0, sp, #0x88
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xa
	adds r1, r5, #0
	movs r2, #3
	add r3, sp, #0x58
	bl ov77_021D54E8
	movs r0, #2
	lsls r0, r0, #0x12
	str r0, [sp, #0x60]
	movs r0, #0x4a
	lsls r0, r0, #0xe
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl FUN_02021AA0
	movs r1, #0x8a
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	add r0, sp, #0x58
	bl FUN_02021AA0
	movs r1, #0x8b
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0x8b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #0
	str r0, [sp, #0xc]
	add r7, sp, #0x28
	add r6, sp, #0x10
	add r4, sp, #0x40
_021D5F36:
	add r0, sp, #0x88
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #4
	adds r1, r5, #0
	movs r2, #0
	add r3, sp, #0x58
	bl ov77_021D54E8
	ldr r0, [r7]
	lsls r0, r0, #0xc
	str r0, [sp, #0x60]
	ldr r0, [r6]
	lsls r0, r0, #0xc
	str r0, [sp, #0x64]
	add r0, sp, #0x58
	bl FUN_02021AA0
	ldr r1, [r4]
	lsls r1, r1, #2
	adds r2, r5, r1
	movs r1, #0x7b
	lsls r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4]
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #1
	bl FUN_02021CC8
	ldr r0, [r4]
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [sp, #0xc]
	adds r7, r7, #4
	adds r0, r0, #1
	adds r6, r6, #4
	adds r4, r4, #4
	str r0, [sp, #0xc]
	cmp r0, #6
	blt _021D5F36
	add sp, #0xac
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D5FA4: .4byte 0x021D78FC
_021D5FA8: .4byte 0x021D78CC
_021D5FAC: .4byte 0x021D78E4
_021D5FB0: .4byte 0xFFFC0000
	thumb_func_end ov77_021D5C3C

	thumb_func_start ov77_021D5FB4
ov77_021D5FB4: @ 0x021D5FB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	adds r3, r0, #0
	add r0, sp, #0x3c
	str r0, [sp]
	movs r2, #0
	adds r6, r1, #0
	adds r1, r3, #0
	str r2, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #5
	add r3, sp, #0xc
	bl ov77_021D54E8
	movs r5, #0
	add r7, sp, #0xc
_021D5FD6:
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov77_021D6794
	adds r4, r0, #0
	adds r0, r7, #0
	bl FUN_02021AA0
	str r0, [r4]
	movs r1, #0
	bl FUN_02021CC8
	ldr r0, [r4]
	movs r1, #0
	bl FUN_02021CAC
	adds r5, r5, #1
	cmp r5, #0x10
	blt _021D5FD6
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov77_021D5FB4

	thumb_func_start ov77_021D6000
ov77_021D6000: @ 0x021D6000
	push {r4, r5, r6, lr}
	movs r4, #0
	adds r5, r1, #0
	adds r6, r4, #0
_021D6008:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov77_021D6794
	ldr r0, [r0]
	adds r1, r6, #0
	bl FUN_02021CAC
	adds r4, r4, #1
	cmp r4, #0x10
	blt _021D6008
	pop {r4, r5, r6, pc}
	thumb_func_end ov77_021D6000

	thumb_func_start ov77_021D6020
ov77_021D6020: @ 0x021D6020
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_020219F8
	movs r0, #0xa7
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D6038
	bl FUN_0201DCE8
_021D6038:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov77_021D6020

	thumb_func_start ov77_021D603C
ov77_021D603C: @ 0x021D603C
	lsls r1, r1, #2
	adds r1, r0, r1
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	ldr r3, _021D604C @ =FUN_02021CAC
	adds r1, r2, #0
	bx r3
	.align 2, 0
_021D604C: .4byte FUN_02021CAC
	thumb_func_end ov77_021D603C

	thumb_func_start ov77_021D6050
ov77_021D6050: @ 0x021D6050
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r4, r1, #0
	bl FUN_02021CC8
	movs r0, #0x7d
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl FUN_02021CC8
	movs r0, #0x1f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl FUN_02021CC8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov77_021D6050

	thumb_func_start ov77_021D607C
ov77_021D607C: @ 0x021D607C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #0x1f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02021D28
	adds r5, r0, #0
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	movs r0, #2
	ldr r1, [sp]
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [sp]
	subs r0, #0x10
	ldr r0, [r4, r0]
	adds r1, r2, #0
	bl FUN_02021C50
	movs r0, #0x7d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02021D28
	adds r5, r0, #0
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	movs r0, #2
	ldr r1, [sp]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [sp]
	subs r0, #0xc
	ldr r0, [r4, r0]
	adds r1, r2, #0
	bl FUN_02021C50
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov77_021D607C

	thumb_func_start ov77_021D60E0
ov77_021D60E0: @ 0x021D60E0
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r1, #0
	ldr r1, _021D61B0 @ =0x00000582
	adds r4, r0, #0
	cmp r5, r1
	bge _021D60F4
	add sp, #0xc
	movs r0, #0
	pop {r4, r5, pc}
_021D60F4:
	bne _021D60FE
	movs r1, #3
	movs r2, #1
	bl ov77_021D603C
_021D60FE:
	ldr r0, _021D61B4 @ =0x00000627
	cmp r5, r0
	bge _021D6154
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02021D28
	adds r5, r0, #0
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	movs r0, #0x12
	ldr r1, [sp]
	lsls r0, r0, #0xc
	adds r1, r1, r0
	movs r0, #0xb
	lsls r0, r0, #0x10
	str r1, [sp]
	cmp r1, r0
	blt _021D6142
	str r0, [sp]
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, r2, #0
	bl FUN_02021C50
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_021D6142:
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, r2, #0
	bl FUN_02021C50
	add sp, #0xc
	movs r0, #0
	pop {r4, r5, pc}
_021D6154:
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02021D28
	adds r5, r0, #0
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	movs r0, #0x12
	ldr r1, [sp]
	lsls r0, r0, #0xc
	adds r1, r1, r0
	movs r0, #5
	lsls r0, r0, #0x12
	str r1, [sp]
	cmp r1, r0
	blt _021D619C
	str r0, [sp]
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, r2, #0
	bl FUN_02021C50
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	bl ov77_021D603C
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_021D619C:
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, r2, #0
	bl FUN_02021C50
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D61B0: .4byte 0x00000582
_021D61B4: .4byte 0x00000627
	thumb_func_end ov77_021D60E0

	thumb_func_start ov77_021D61B8
ov77_021D61B8: @ 0x021D61B8
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r1, #0
	ldr r1, _021D6284 @ =0x000005DC
	adds r4, r0, #0
	cmp r5, r1
	bge _021D61CC
	add sp, #0xc
	movs r0, #0
	pop {r4, r5, pc}
_021D61CC:
	bne _021D61D6
	movs r1, #0xa
	movs r2, #1
	bl ov77_021D603C
_021D61D6:
	ldr r0, _021D6288 @ =0x00000627
	cmp r5, r0
	bge _021D622C
	movs r0, #0x85
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02021D28
	adds r5, r0, #0
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	movs r0, #0x12
	ldr r1, [sp]
	lsls r0, r0, #0xc
	subs r1, r1, r0
	movs r0, #5
	lsls r0, r0, #0x10
	str r1, [sp]
	cmp r1, r0
	bgt _021D621A
	str r0, [sp]
	movs r0, #0x85
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, r2, #0
	bl FUN_02021C50
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_021D621A:
	movs r0, #0x85
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, r2, #0
	bl FUN_02021C50
	add sp, #0xc
	movs r0, #0
	pop {r4, r5, pc}
_021D622C:
	movs r0, #0x85
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02021D28
	adds r5, r0, #0
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	movs r0, #0x12
	ldr r1, [sp]
	lsls r0, r0, #0xc
	subs r1, r1, r0
	ldr r0, _021D628C @ =0xFFFC0000
	str r1, [sp]
	cmp r1, r0
	bgt _021D6272
	str r0, [sp]
	movs r0, #0x85
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, r2, #0
	bl FUN_02021C50
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0
	bl ov77_021D603C
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_021D6272:
	movs r0, #0x85
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, r2, #0
	bl FUN_02021C50
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_021D6284: .4byte 0x000005DC
_021D6288: .4byte 0x00000627
_021D628C: .4byte 0xFFFC0000
	thumb_func_end ov77_021D61B8

	thumb_func_start ov77_021D6290
ov77_021D6290: @ 0x021D6290
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r0, _021D6364 @ =0x021BF6DC
	adds r7, r1, #0
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _021D62A6
	movs r6, #0xd
	movs r4, #0xf
	b _021D62AA
_021D62A6:
	movs r6, #0xf
	movs r4, #0xd
_021D62AA:
	movs r0, #0x7b
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [sp]
	ldr r1, [sp]
	lsls r0, r6, #2
	str r0, [sp, #4]
	ldr r0, [r1, r0]
	bl FUN_02021D28
	adds r3, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0xc
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [sp, #0xc]
	adds r1, r0, r7
	movs r0, #6
	lsls r0, r0, #0x12
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _021D62E0
	movs r0, #1
	lsls r0, r0, #0x14
	subs r0, r1, r0
	str r0, [sp, #0xc]
_021D62E0:
	ldr r1, [sp]
	ldr r0, [sp, #4]
	ldr r0, [r1, r0]
	add r1, sp, #0xc
	bl FUN_02021C50
	movs r0, #1
	ldr r1, [sp, #0xc]
	lsls r0, r0, #0x14
	subs r0, r1, r0
	str r0, [sp, #0xc]
	adds r0, r6, #1
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0xc
	bl FUN_02021C50
	movs r0, #0x7b
	lsls r0, r0, #2
	adds r6, r5, r0
	lsls r0, r4, #2
	str r0, [sp, #8]
	ldr r0, [r6, r0]
	bl FUN_02021D28
	adds r3, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0xc
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [sp, #0xc]
	subs r1, r0, r7
	ldr r0, _021D6368 @ =0xFFF80000
	str r1, [sp, #0xc]
	cmp r1, r0
	bgt _021D6338
	movs r0, #1
	lsls r0, r0, #0x14
	adds r0, r1, r0
	str r0, [sp, #0xc]
_021D6338:
	ldr r0, [sp, #8]
	add r1, sp, #0xc
	ldr r0, [r6, r0]
	bl FUN_02021C50
	movs r0, #1
	ldr r1, [sp, #0xc]
	lsls r0, r0, #0x14
	adds r0, r1, r0
	str r0, [sp, #0xc]
	adds r0, r4, #1
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0xc
	bl FUN_02021C50
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D6364: .4byte 0x021BF6DC
_021D6368: .4byte 0xFFF80000
	thumb_func_end ov77_021D6290

	thumb_func_start ov77_021D636C
ov77_021D636C: @ 0x021D636C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	cmp r1, #0
	bne _021D63E2
	ldr r0, _021D646C @ =0x021BF6DC
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _021D63B0
	movs r0, #0x22
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021F24
	movs r0, #0x89
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021F24
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021F24
	movs r0, #0x8b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021F24
	b _021D6412
_021D63B0:
	movs r0, #0x22
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021F24
	movs r0, #0x89
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021F24
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021F24
	movs r0, #0x8b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021F24
	b _021D6412
_021D63E2:
	movs r0, #0x22
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #2
	bl FUN_02021F24
	movs r0, #0x89
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #2
	bl FUN_02021F24
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #2
	bl FUN_02021F24
	movs r0, #0x8b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #2
	bl FUN_02021F24
_021D6412:
	movs r0, #0x22
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02021D28
	adds r5, r0, #0
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	adds r1, r2, #0
	str r0, [r3]
	movs r0, #2
	lsls r0, r0, #0x12
	str r0, [sp]
	movs r0, #0x22
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02021C50
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02021D28
	adds r5, r0, #0
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	adds r1, r2, #0
	str r0, [r3]
	movs r0, #2
	lsls r0, r0, #0x12
	str r0, [sp]
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02021C50
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D646C: .4byte 0x021BF6DC
	thumb_func_end ov77_021D636C

	thumb_func_start ov77_021D6470
ov77_021D6470: @ 0x021D6470
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _021D652C @ =0x00000744
	adds r6, r1, #0
	subs r4, r6, r0
	bpl _021D6480
	movs r4, #0
_021D6480:
	movs r0, #0x86
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02021D30
	movs r1, #7
	adds r2, r0, #0
	lsls r1, r1, #0xa
	movs r0, #0x86
	adds r1, r2, r1
	lsls r0, r0, #2
	adds r1, r1, r4
	lsls r1, r1, #0x10
	ldr r0, [r5, r0]
	lsrs r1, r1, #0x10
	bl FUN_02021C94
	movs r0, #0x87
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02021D30
	movs r1, #7
	adds r2, r0, #0
	lsls r1, r1, #0xa
	movs r0, #0x87
	subs r1, r2, r1
	lsls r0, r0, #2
	subs r1, r1, r4
	lsls r1, r1, #0x10
	ldr r0, [r5, r0]
	lsrs r1, r1, #0x10
	bl FUN_02021C94
	ldr r0, _021D652C @ =0x00000744
	cmp r6, r0
	blt _021D6526
	movs r0, #0x86
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02021D28
	adds r4, r0, #0
	add r3, sp, #0
	ldm r4!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	movs r0, #1
	ldr r1, [sp]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [sp]
	movs r0, #0x86
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r2, #0
	bl FUN_02021C50
	movs r0, #0x87
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02021D28
	adds r4, r0, #0
	add r3, sp, #0
	ldm r4!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	movs r0, #1
	ldr r1, [sp]
	lsls r0, r0, #0xc
	subs r0, r1, r0
	str r0, [sp]
	movs r0, #0x87
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r2, #0
	bl FUN_02021C50
_021D6526:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021D652C: .4byte 0x00000744
	thumb_func_end ov77_021D6470

	thumb_func_start ov77_021D6530
ov77_021D6530: @ 0x021D6530
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r3, _021D6650 @ =0x021D78B0
	add r2, sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	ldm r3!, {r0, r1}
	str r2, [sp, #8]
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, _021D6654 @ =0x021D789C
	ldr r1, [r0, #8]
	str r1, [sp, #0x14]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r1, _021D6658 @ =0x000005A5
	ldr r0, [sp, #4]
	cmp r0, r1
	blt _021D65AC
	movs r4, #0
_021D655E:
	ldr r0, [sp, #8]
	lsls r7, r4, #2
	ldr r0, [r0, r7]
	lsls r1, r0, #2
	ldr r0, [sp]
	adds r5, r0, r1
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02021D28
	adds r6, r0, #0
	add r3, sp, #0x24
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	ldr r0, _021D665C @ =0x021D79AC
	ldr r1, [sp, #0x24]
	ldr r0, [r0, r7]
	subs r0, r1, r0
	str r0, [sp, #0x24]
	movs r0, #1
	ldr r1, [sp, #0x28]
	lsls r0, r0, #0xe
	subs r0, r1, r0
	str r0, [sp, #0x28]
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r2, #0
	bl FUN_02021C50
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	blo _021D655E
_021D65AC:
	ldr r1, _021D6660 @ =0x000005D2
	ldr r0, [sp, #4]
	cmp r0, r1
	blt _021D65F4
	ldr r0, [sp, #0x14]
	lsls r1, r0, #2
	ldr r0, [sp]
	adds r4, r0, r1
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02021D28
	adds r5, r0, #0
	add r3, sp, #0x24
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	ldr r0, _021D6664 @ =0x021D79A0
	ldr r1, [sp, #0x24]
	ldr r0, [r0]
	subs r0, r1, r0
	str r0, [sp, #0x24]
	movs r0, #3
	ldr r1, [sp, #0x28]
	lsls r0, r0, #0xc
	subs r0, r1, r0
	str r0, [sp, #0x28]
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, r2, #0
	bl FUN_02021C50
_021D65F4:
	ldr r1, _021D6668 @ =0x000005E6
	ldr r0, [sp, #4]
	cmp r0, r1
	blt _021D664C
	movs r5, #0
_021D65FE:
	lsls r7, r5, #2
	add r0, sp, #0xc
	ldr r0, [r0, r7]
	lsls r1, r0, #2
	ldr r0, [sp]
	adds r4, r0, r1
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02021D28
	adds r6, r0, #0
	add r3, sp, #0x24
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	ldr r0, _021D666C @ =0x021D79A4
	ldr r1, [sp, #0x24]
	ldr r0, [r0, r7]
	subs r0, r1, r0
	str r0, [sp, #0x24]
	movs r0, #3
	ldr r1, [sp, #0x28]
	lsls r0, r0, #0xc
	subs r0, r1, r0
	str r0, [sp, #0x28]
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, r2, #0
	bl FUN_02021C50
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	blo _021D65FE
_021D664C:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D6650: .4byte 0x021D78B0
_021D6654: .4byte 0x021D789C
_021D6658: .4byte 0x000005A5
_021D665C: .4byte 0x021D79AC
_021D6660: .4byte 0x000005D2
_021D6664: .4byte 0x021D79A0
_021D6668: .4byte 0x000005E6
_021D666C: .4byte 0x021D79A4
	thumb_func_end ov77_021D6530

	thumb_func_start ov77_021D6670
ov77_021D6670: @ 0x021D6670
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021D669C @ =0x021D7920
	add r3, sp, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_0201E86C
	movs r0, #1
	movs r1, #0x4c
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_021D669C: .4byte 0x021D7920
	thumb_func_end ov77_021D6670

	thumb_func_start ov77_021D66A0
ov77_021D66A0: @ 0x021D66A0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	adds r4, r1, #0
	movs r1, #0
	adds r5, r0, #0
	str r1, [sp]
	subs r0, r1, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r6, r2, #0
	str r1, [sp, #0xc]
	movs r2, #0x4b
	str r1, [sp, #0x10]
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r3, r1, #0
	str r0, [sp, #0x14]
	adds r0, r2, #4
	ldr r0, [r5, r0]
	str r0, [sp, #0x18]
	adds r0, r2, #0
	adds r0, #8
	ldr r0, [r5, r0]
	adds r2, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [r5, r2]
	adds r2, r1, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	adds r0, r6, #0
	bl FUN_020093B4
	ldr r0, [r5]
	movs r1, #0
	str r0, [r4]
	str r6, [r4, #4]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	movs r0, #1
	str r1, [r4, #0x10]
	lsls r0, r0, #0xc
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	strh r1, [r4, #0x20]
	movs r0, #1
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	movs r0, #0x4c
	str r0, [r4, #0x2c]
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov77_021D66A0

	thumb_func_start ov77_021D670C
ov77_021D670C: @ 0x021D670C
	push {r4, lr}
	movs r1, #0x7d
	movs r0, #0x4c
	lsls r1, r1, #2
	bl FUN_02018144
	movs r2, #0x7d
	adds r4, r0, #0
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020D5124
	adds r0, r4, #0
	bl ov77_021D6800
	adds r0, r4, #0
	bl ov77_021D6964
	adds r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov77_021D670C

	thumb_func_start ov77_021D6734
ov77_021D6734: @ 0x021D6734
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x4c
	movs r1, #8
	bl FUN_02018144
	adds r4, r0, #0
	movs r0, #0xc
	adds r6, r5, #0
	muls r6, r0, r6
	movs r0, #0x4c
	adds r1, r6, #0
	bl FUN_02018144
	movs r1, #0
	adds r2, r6, #0
	str r0, [r4, #4]
	blx FUN_020D5124
	str r5, [r4]
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov77_021D6734

	thumb_func_start ov77_021D6760
ov77_021D6760: @ 0x021D6760
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	movs r6, #0
	cmp r0, #0
	ble _021D6786
	adds r4, r6, #0
_021D676E:
	ldr r0, [r5, #4]
	adds r0, r0, r4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021D677C
	bl FUN_0200DA58
_021D677C:
	ldr r0, [r5]
	adds r6, r6, #1
	adds r4, #0xc
	cmp r6, r0
	blt _021D676E
_021D6786:
	ldr r0, [r5, #4]
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_020181C4
	pop {r4, r5, r6, pc}
	thumb_func_end ov77_021D6760

	thumb_func_start ov77_021D6794
ov77_021D6794: @ 0x021D6794
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	cmp r4, r0
	blt _021D67A4
	bl FUN_02022974
_021D67A4:
	movs r0, #0xc
	ldr r1, [r5, #4]
	muls r0, r4, r0
	adds r0, r1, r0
	adds r0, r0, #4
	pop {r3, r4, r5, pc}
	thumb_func_end ov77_021D6794

	thumb_func_start ov77_021D67B0
ov77_021D67B0: @ 0x021D67B0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl ov77_021D691C
	movs r6, #0x73
	movs r4, #0
	lsls r6, r6, #2
_021D67BE:
	lsls r0, r4, #4
	adds r0, r5, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _021D67CC
	bl FUN_0200DA58
_021D67CC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	blo _021D67BE
	movs r6, #0x55
	movs r4, #0
	movs r7, #0xc
	lsls r6, r6, #2
_021D67DE:
	adds r0, r4, #0
	muls r0, r7, r0
	adds r0, r5, r0
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _021D67EE
	bl FUN_0200DA58
_021D67EE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xa
	blo _021D67DE
	adds r0, r5, #0
	bl FUN_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov77_021D67B0

	thumb_func_start ov77_021D6800
ov77_021D6800: @ 0x021D6800
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	adds r7, r0, #0
	adds r3, r1, #0
	ldr r0, _021D6910 @ =0xFFCFFFEF
	movs r1, #0x10
	ands r3, r0
	orrs r3, r1
	str r3, [r2]
	ldr r3, _021D6914 @ =0x04001000
	ldr r2, [r3]
	ands r0, r2
	orrs r0, r1
	str r0, [r3]
	bl ov77_021D6670
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x20
	str r3, [sp, #0xc]
	movs r2, #0x4c
	str r2, [sp, #0x10]
	adds r2, r0, #0
	bl FUN_0200A784
	movs r0, #0xa
	adds r1, r7, #4
	movs r2, #0x4c
	bl FUN_020095C4
	ldr r4, _021D6918 @ =0x021D7930
	str r0, [r7]
	movs r6, #0
	adds r5, r7, #0
_021D6854:
	ldrb r0, [r4]
	adds r1, r6, #0
	movs r2, #0x4c
	bl FUN_02009714
	movs r1, #0x4b
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r6, r6, #1
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r6, #4
	blt _021D6854
	movs r3, #0
	str r3, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xe0
	ldr r0, [r7, r0]
	movs r1, #0x80
	movs r2, #4
	bl FUN_0200985C
	movs r1, #0x4f
	lsls r1, r1, #2
	str r0, [r7, r1]
	movs r3, #0
	str r3, [sp]
	movs r2, #3
	str r2, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x4c
	str r0, [sp, #0xc]
	adds r0, #0xe4
	ldr r0, [r7, r0]
	movs r1, #0x80
	bl FUN_020098B8
	movs r1, #5
	lsls r1, r1, #6
	str r0, [r7, r1]
	movs r3, #0
	str r3, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r7, r0]
	movs r1, #0x80
	movs r2, #5
	bl FUN_02009918
	movs r1, #0x51
	lsls r1, r1, #2
	str r0, [r7, r1]
	movs r3, #0
	str r3, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x4c
	str r0, [sp, #8]
	adds r0, #0xec
	ldr r0, [r7, r0]
	movs r1, #0x80
	movs r2, #6
	bl FUN_02009918
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
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D6910: .4byte 0xFFCFFFEF
_021D6914: .4byte 0x04001000
_021D6918: .4byte 0x021D7930
	thumb_func_end ov77_021D6800

	thumb_func_start ov77_021D691C
ov77_021D691C: @ 0x021D691C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
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
_021D693A:
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, r6]
	bl FUN_02009754
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	blo _021D693A
	ldr r0, [r5]
	bl FUN_02021964
	bl FUN_0200A878
	bl FUN_0201E958
	bl FUN_0201F8B4
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov77_021D691C

	thumb_func_start ov77_021D6964
ov77_021D6964: @ 0x021D6964
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	adds r7, r0, #0
	movs r6, #0
	adds r4, r6, #0
	adds r5, r7, #0
_021D6970:
	adds r0, r7, #0
	add r1, sp, #0
	add r2, sp, #0x30
	bl ov77_021D66A0
	add r0, sp, #0
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	bl FUN_02021AA0
	movs r1, #0x15
	lsls r1, r1, #4
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CC8
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #2
	lsls r0, r0, #0xc
	adds r6, r6, #1
	adds r4, r4, r0
	adds r5, #0xc
	cmp r6, #0xa
	blt _021D6970
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov77_021D6964

	thumb_func_start ov77_021D69B4
ov77_021D69B4: @ 0x021D69B4
	ldr r3, _021D69BC @ =FUN_020219F8
	ldr r0, [r0]
	bx r3
	nop
_021D69BC: .4byte FUN_020219F8
	thumb_func_end ov77_021D69B4

	thumb_func_start ov77_021D69C0
ov77_021D69C0: @ 0x021D69C0
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	cmp r1, #0xb4
	bne _021D69E2
	movs r2, #3
	str r2, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x71
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r1, r4, #0
	adds r3, r2, #0
	bl ov77_021D6A0C
	b _021D69FC
_021D69E2:
	ldr r0, _021D6A08 @ =0x0000011D
	cmp r1, r0
	bne _021D69FC
	movs r2, #3
	adds r0, #0xb7
	str r2, [sp]
	movs r1, #1
	str r1, [sp, #4]
	adds r0, r4, r0
	adds r1, r4, #0
	adds r3, r2, #0
	bl ov77_021D6A0C
_021D69FC:
	adds r0, r4, #0
	bl ov77_021D69B4
	add sp, #8
	pop {r4, pc}
	nop
_021D6A08: .4byte 0x0000011D
	thumb_func_end ov77_021D69C0

	thumb_func_start ov77_021D6A0C
ov77_021D6A0C: @ 0x021D6A0C
	push {r4, lr}
	adds r4, r0, #0
	strb r2, [r4]
	ldr r2, _021D6A3C @ =0xFFFFFFF8
	strb r3, [r4, #1]
	add r2, sp
	ldrb r0, [r2, #0x10]
	strb r0, [r4, #2]
	movs r0, #0
	strb r0, [r4, #4]
	strb r0, [r4, #3]
	movs r0, #0x53
	lsls r0, r0, #2
	adds r0, r1, r0
	str r0, [r4, #0xc]
	ldrb r0, [r2, #0x14]
	adds r1, r4, #0
	movs r2, #0xa
	strb r0, [r4, #5]
	ldr r0, _021D6A40 @ =ov77_021D6B0C
	bl FUN_0200D9E8
	str r0, [r4, #8]
	pop {r4, pc}
	.align 2, 0
_021D6A3C: .4byte 0xFFFFFFF8
_021D6A40: .4byte ov77_021D6B0C
	thumb_func_end ov77_021D6A0C

	thumb_func_start ov77_021D6A44
ov77_021D6A44: @ 0x021D6A44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r1, #0
	str r0, [sp]
	cmp r2, #0
	bne _021D6A54
	movs r7, #0x40
	b _021D6A56
_021D6A54:
	movs r7, #0x20
_021D6A56:
	movs r5, #0
	cmp r6, #0
	bls _021D6AD2
_021D6A5C:
	ldr r0, [sp]
	movs r1, #0xa
	bl ov77_021D6ADC
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl FUN_02021D28
	adds r3, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #4
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bl FUN_0201D2E8
	lsrs r1, r0, #0x1f
	lsls r2, r0, #0x19
	subs r2, r2, r1
	movs r0, #0x19
	rors r2, r0
	adds r0, r1, r2
	adds r0, #0x40
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	bl FUN_0201D2E8
	lsrs r1, r0, #0x1f
	lsls r2, r0, #0x1a
	subs r2, r2, r1
	movs r0, #0x1a
	rors r2, r0
	adds r0, r1, r2
	adds r0, r7, r0
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #4
	bl FUN_02021C50
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_02021CC8
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_02021CAC
	ldr r0, _021D6AD8 @ =ov77_021D6B48
	adds r1, r4, #0
	movs r2, #0x14
	bl FUN_0200D9E8
	str r0, [r4, #8]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r6
	blo _021D6A5C
_021D6AD2:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D6AD8: .4byte ov77_021D6B48
	thumb_func_end ov77_021D6A44

	thumb_func_start ov77_021D6ADC
ov77_021D6ADC: @ 0x021D6ADC
	push {r4, lr}
	movs r4, #0
	movs r2, #0xc
_021D6AE2:
	adds r1, r4, #0
	muls r1, r2, r1
	adds r3, r0, r1
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _021D6AFA
	movs r0, #1
	strb r0, [r3]
	movs r0, #0
	strb r0, [r3, #1]
	adds r0, r3, #0
	pop {r4, pc}
_021D6AFA:
	adds r1, r4, #1
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	cmp r4, #0xa
	blo _021D6AE2
	bl FUN_02022974
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov77_021D6ADC

	thumb_func_start ov77_021D6B0C
ov77_021D6B0C: @ 0x021D6B0C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldrb r1, [r4, #4]
	adds r5, r0, #0
	adds r0, r1, #1
	strb r0, [r4, #4]
	ldrb r0, [r4, #1]
	cmp r1, r0
	blo _021D6B44
	ldrb r1, [r4]
	ldrb r2, [r4, #5]
	ldr r0, [r4, #0xc]
	bl ov77_021D6A44
	movs r0, #0
	strb r0, [r4, #4]
	ldrb r0, [r4, #3]
	adds r0, r0, #1
	strb r0, [r4, #3]
	ldrb r1, [r4, #3]
	ldrb r0, [r4, #2]
	cmp r1, r0
	blo _021D6B44
	adds r0, r5, #0
	bl FUN_0200DA58
	movs r0, #0
	str r0, [r4, #8]
_021D6B44:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov77_021D6B0C

	thumb_func_start ov77_021D6B48
ov77_021D6B48: @ 0x021D6B48
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
	movs r0, #3
	ldr r1, [sp, #4]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	adds r1, r2, #0
	bl FUN_02021C50
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #0x50
	blo _021D6B9C
	adds r0, r5, #0
	bl FUN_0200DA58
	movs r1, #0
	str r1, [r4, #8]
	strb r1, [r4]
	ldr r0, [r4, #4]
	bl FUN_02021CC8
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_02021CAC
_021D6B9C:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov77_021D6B48

	thumb_func_start ov77_021D6BA0
ov77_021D6BA0: @ 0x021D6BA0
	ldr r3, _021D6BA8 @ =ov77_021D6BAC
	adds r2, r1, #0
	movs r1, #2
	bx r3
	.align 2, 0
_021D6BA8: .4byte ov77_021D6BAC
	thumb_func_end ov77_021D6BA0

	thumb_func_start ov77_021D6BAC
ov77_021D6BAC: @ 0x021D6BAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	ldr r0, [r6, #4]
	adds r7, r1, #0
	str r2, [sp]
	str r0, [sp, #4]
	ldr r4, _021D6C3C @ =0x00000000
	beq _021D6C36
_021D6BBE:
	ldr r0, [sp, #4]
	ldr r1, [r6]
	bl ov77_021D6ADC
	adds r5, r0, #0
	ldr r0, [r5, #4]
	bl FUN_02021D28
	adds r3, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #8
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bl FUN_0201D2E8
	movs r1, #0xe0
	blx FUN_020E1F6C
	adds r1, #0xa
	lsls r0, r1, #0xc
	str r0, [sp, #8]
	bl FUN_0201D2E8
	movs r1, #0x38
	blx FUN_020E1F6C
	adds r1, #0xfa
	lsls r0, r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	add r1, sp, #8
	bl FUN_02021C50
	ldr r0, [r5, #4]
	movs r1, #1
	bl FUN_02021CC8
	ldr r0, [sp]
	cmp r0, #0
	ldr r0, [r5, #4]
	bne _021D6C1A
	movs r1, #1
	bl FUN_02021CAC
	b _021D6C20
_021D6C1A:
	movs r1, #0
	bl FUN_02021CAC
_021D6C20:
	ldr r0, _021D6C40 @ =ov77_021D6C44
	adds r1, r5, #0
	movs r2, #0x14
	bl FUN_0200D9E8
	str r0, [r5, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r7
	blo _021D6BBE
_021D6C36:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D6C3C: .4byte 0x00000000
_021D6C40: .4byte ov77_021D6C44
	thumb_func_end ov77_021D6BAC

	thumb_func_start ov77_021D6C44
ov77_021D6C44: @ 0x021D6C44
	push {r4, lr}
	adds r4, r1, #0
	ldrb r1, [r4, #1]
	adds r1, r1, #1
	strb r1, [r4, #1]
	ldrb r1, [r4, #1]
	cmp r1, #8
	blo _021D6C6C
	bl FUN_0200DA58
	movs r1, #0
	str r1, [r4, #8]
	strb r1, [r4]
	ldr r0, [r4, #4]
	bl FUN_02021CC8
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_02021CAC
_021D6C6C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov77_021D6C44

	thumb_func_start ov77_021D6C70
ov77_021D6C70: @ 0x021D6C70
	push {r4, lr}
	ldr r3, _021D6C90 @ =0x02100DEC
	movs r2, #0
	ldr r3, [r3]
	blx r3
	adds r4, r0, #0
	bl FUN_020145B4
	cmp r4, #0
	bne _021D6C88
	bl FUN_02022974
_021D6C88:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0xd
	pop {r4, pc}
	nop
_021D6C90: .4byte 0x02100DEC
	thumb_func_end ov77_021D6C70

	thumb_func_start ov77_021D6C94
ov77_021D6C94: @ 0x021D6C94
	push {r4, lr}
	ldr r3, _021D6CB4 @ =0x02100DF4
	movs r2, #1
	ldr r3, [r3]
	blx r3
	adds r4, r0, #0
	bne _021D6CA6
	bl FUN_02022974
_021D6CA6:
	adds r0, r4, #0
	bl FUN_020145F4
	lsls r0, r4, #0x10
	lsrs r0, r0, #0xd
	pop {r4, pc}
	nop
_021D6CB4: .4byte 0x02100DF4
	thumb_func_end ov77_021D6C94

	thumb_func_start ov77_021D6CB8
ov77_021D6CB8: @ 0x021D6CB8
	movs r0, #0x2c
	bx lr
	thumb_func_end ov77_021D6CB8

	thumb_func_start ov77_021D6CBC
ov77_021D6CBC: @ 0x021D6CBC
	push {r4, lr}
	adds r4, r0, #0
	beq _021D6CC8
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _021D6CCC
_021D6CC8:
	bl FUN_02022974
_021D6CCC:
	ldr r0, [r4, #0x18]
	pop {r4, pc}
	thumb_func_end ov77_021D6CBC

	thumb_func_start ov77_021D6CD0
ov77_021D6CD0: @ 0x021D6CD0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r5, #0
	beq _021D6CE0
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _021D6CE4
_021D6CE0:
	bl FUN_02022974
_021D6CE4:
	ldr r0, [r5, #0x18]
	movs r1, #1
	bl FUN_02014788
	movs r2, #0
	ldr r0, [r5, #0x18]
	adds r1, r4, #0
	adds r3, r2, #0
	bl FUN_020146F4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov77_021D6CD0

	thumb_func_start ov77_021D6CFC
ov77_021D6CFC: @ 0x021D6CFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	ldr r3, _021D6E14 @ =0x021D7934
	adds r5, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0x28
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, sp, #0x10
	bl FUN_02013880
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	muls r1, r2, r1
	adds r2, r0, r1
	movs r1, #1
	adds r4, r2, #0
	ands r4, r1
	movs r1, #3
	blx FUN_020E2178
	adds r2, r1, #0
	movs r1, #0
	add r6, sp, #0x28
	add r7, sp, #0x1c
_021D6D32:
	lsls r3, r2, #2
	ldr r3, [r6, r3]
	lsls r0, r1, #2
	str r3, [r7, r0]
	adds r0, r5, r0
	str r2, [r0, #0x1c]
	cmp r4, #0
	beq _021D6D46
	adds r2, r2, #1
	b _021D6D48
_021D6D46:
	subs r2, r2, #1
_021D6D48:
	cmp r2, #3
	blt _021D6D50
	movs r2, #0
	b _021D6D56
_021D6D50:
	cmp r2, #0
	bge _021D6D56
	movs r2, #2
_021D6D56:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	blo _021D6D32
	movs r0, #0x4c
	bl FUN_0200762C
	ldr r7, _021D6E18 @ =0x021D7958
	str r0, [r5]
	movs r4, #0
_021D6D6C:
	lsls r6, r4, #2
	add r1, sp, #0x1c
	movs r0, #0
	ldr r1, [r1, r6]
	str r0, [sp]
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	str r0, [sp, #8]
	add r0, sp, #0x34
	lsrs r1, r1, #0x10
	movs r2, #0
	movs r3, #2
	bl FUN_02075FB4
	adds r6, r5, r6
	ldr r0, [r6, #0x1c]
	add r1, sp, #0x34
	lsls r2, r0, #3
	ldr r0, _021D6E1C @ =0x000003FF
	adds r3, r7, r2
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5]
	ldr r2, [r7, r2]
	ldr r3, [r3, #4]
	bl FUN_02007C34
	movs r1, #6
	movs r2, #1
	str r0, [r6, #4]
	bl FUN_02007DEC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	blo _021D6D6C
	movs r0, #1
	str r0, [r5, #0x10]
	bl FUN_02014000
	movs r1, #0x12
	movs r0, #0x4c
	lsls r1, r1, #0xa
	bl FUN_02018144
	str r0, [r5, #0x14]
	movs r0, #1
	str r0, [sp]
	movs r0, #0x4c
	str r0, [sp, #4]
	movs r3, #0x12
	ldr r0, _021D6E20 @ =ov77_021D6C70
	ldr r1, _021D6E24 @ =ov77_021D6C94
	ldr r2, [r5, #0x14]
	lsls r3, r3, #0xa
	bl FUN_02014014
	str r0, [r5, #0x18]
	bl FUN_02014784
	adds r2, r0, #0
	movs r0, #1
	movs r1, #0xe1
	lsls r0, r0, #0xc
	lsls r1, r1, #0xe
	bl FUN_020206BC
	movs r0, #0x3d
	movs r1, #4
	movs r2, #0x4c
	bl FUN_020144C4
	adds r1, r0, #0
	ldr r0, [r5, #0x18]
	movs r2, #0xa
	movs r3, #1
	bl FUN_020144CC
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D6E14: .4byte 0x021D7934
_021D6E18: .4byte 0x021D7958
_021D6E1C: .4byte 0x000003FF
_021D6E20: .4byte ov77_021D6C70
_021D6E24: .4byte ov77_021D6C94
	thumb_func_end ov77_021D6CFC

	thumb_func_start ov77_021D6E28
ov77_021D6E28: @ 0x021D6E28
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x18]
	bl FUN_0201411C
	ldr r0, [r4, #0x14]
	bl FUN_020181C4
	ldr r0, [r4]
	bl FUN_02007B6C
	pop {r4, pc}
	thumb_func_end ov77_021D6E28

	thumb_func_start ov77_021D6E40
ov77_021D6E40: @ 0x021D6E40
	push {r3, lr}
	cmp r0, #0
	beq _021D6E4C
	ldr r0, [r0]
	bl FUN_02008A94
_021D6E4C:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov77_021D6E40

	thumb_func_start ov77_021D6E50
ov77_021D6E50: @ 0x021D6E50
	push {r4, lr}
	adds r4, r0, #0
	beq _021D6E74
	blx FUN_020B2628
	bl FUN_020241B4
	blx FUN_020A73C0
	ldr r0, [r4]
	bl FUN_02007768
	bl ov77_021D725C
	movs r0, #1
	movs r1, #0
	bl FUN_020241BC
_021D6E74:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov77_021D6E50

	thumb_func_start ov77_021D6E78
ov77_021D6E78: @ 0x021D6E78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x28
	ldrb r2, [r2]
	adds r5, r4, #0
	adds r6, r1, #0
	adds r5, #0x28
	cmp r2, #5
	bls _021D6E90
	b _021D6FE2
_021D6E90:
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021D6E9C: @ jump table
	.2byte _021D6EA8 - _021D6E9C - 2 @ case 0
	.2byte _021D6EEA - _021D6E9C - 2 @ case 1
	.2byte _021D6F0E - _021D6E9C - 2 @ case 2
	.2byte _021D6F6E - _021D6E9C - 2 @ case 3
	.2byte _021D6F92 - _021D6E9C - 2 @ case 4
	.2byte _021D6FBE - _021D6E9C - 2 @ case 5
_021D6EA8:
	ldr r0, _021D6FE8 @ =0x0400004A
	movs r1, #0x3f
	ldrh r2, [r0]
	adds r7, r4, #4
	bics r2, r1
	movs r1, #0x11
	orrs r1, r2
	movs r2, #0x20
	orrs r1, r2
	strh r1, [r0]
	lsls r0, r6, #2
	str r0, [sp]
	ldr r0, [r7, r0]
	movs r1, #0xc
	lsls r2, r2, #5
	bl FUN_02007DEC
	ldr r0, [sp]
	movs r2, #1
	ldr r0, [r7, r0]
	movs r1, #0xd
	lsls r2, r2, #0xa
	bl FUN_02007DEC
	ldr r0, [sp]
	movs r1, #6
	ldr r0, [r7, r0]
	movs r2, #0
	bl FUN_02007DEC
	ldrb r0, [r5]
	adds r0, r0, #1
	strb r0, [r5]
_021D6EEA:
	lsls r2, r6, #2
	adds r2, r4, r2
	ldr r2, [r2, #0x1c]
	adds r0, r4, #0
	lsls r3, r2, #3
	ldr r2, _021D6FEC @ =0x021D7940
	adds r1, r6, #0
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _021D6FE2
	movs r0, #0
	adds r4, #0x29
	strb r0, [r4]
	ldrb r0, [r5]
	adds r0, r0, #1
	strb r0, [r5]
	b _021D6FE2
_021D6F0E:
	ldr r0, [r4, #0x18]
	movs r1, #1
	bl FUN_02014788
	adds r0, r4, #0
	str r0, [sp, #4]
	adds r0, #0x1c
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	lsls r6, r6, #2
	adds r7, r4, #4
	ldr r1, [r1, r6]
	movs r2, #0xc
	muls r2, r1, r2
	ldr r1, _021D6FF0 @ =0x021D7970
	ldr r0, [r4, #0x18]
	ldr r1, [r1, r2]
	ldr r2, _021D6FF4 @ =ov77_021D7268
	ldr r3, [r7, r6]
	bl FUN_020146F4
	ldr r1, [sp, #4]
	movs r2, #0xc
	ldr r1, [r1, r6]
	ldr r0, [r4, #0x18]
	muls r2, r1, r2
	ldr r1, _021D6FF8 @ =0x021D7974
	ldr r3, [r7, r6]
	ldr r1, [r1, r2]
	ldr r2, _021D6FF4 @ =ov77_021D7268
	bl FUN_020146F4
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r2, [r1, r6]
	movs r1, #0xc
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _021D6FFC @ =0x021D7978
	ldr r2, _021D6FF4 @ =ov77_021D7268
	ldr r1, [r1, r3]
	ldr r3, [r7, r6]
	bl FUN_020146F4
	ldrb r0, [r5]
	adds r0, r0, #1
	strb r0, [r5]
	b _021D6FE2
_021D6F6E:
	ldr r0, [r4, #0x18]
	bl FUN_02014710
	cmp r0, #0
	bne _021D6FE2
	ldr r1, _021D6FE8 @ =0x0400004A
	movs r0, #0x3f
	ldrh r2, [r1]
	bics r2, r0
	movs r0, #0x10
	orrs r2, r0
	movs r0, #0x20
	orrs r0, r2
	strh r0, [r1]
	ldrb r0, [r5]
	adds r0, r0, #1
	strb r0, [r5]
	b _021D6FE2
_021D6F92:
	lsls r6, r6, #2
	adds r2, r4, r6
	ldr r2, [r2, #0x1c]
	lsls r3, r2, #3
	ldr r2, _021D7000 @ =0x021D7944
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _021D6FE2
	adds r0, r4, r6
	ldr r0, [r0, #4]
	movs r1, #6
	movs r2, #1
	bl FUN_02007DEC
	movs r0, #0
	adds r4, #0x29
	strb r0, [r4]
	ldrb r0, [r5]
	adds r0, r0, #1
	strb r0, [r5]
	b _021D6FE2
_021D6FBE:
	adds r0, #0x29
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x29
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0x14
	blo _021D6FE2
	movs r0, #0
	adds r4, #0x29
	strb r0, [r4]
	strb r0, [r5]
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D6FE2:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D6FE8: .4byte 0x0400004A
_021D6FEC: .4byte 0x021D7940
_021D6FF0: .4byte 0x021D7970
_021D6FF4: .4byte ov77_021D7268
_021D6FF8: .4byte 0x021D7974
_021D6FFC: .4byte 0x021D7978
_021D7000: .4byte 0x021D7944
	thumb_func_end ov77_021D6E78

	thumb_func_start ov77_021D7004
ov77_021D7004: @ 0x021D7004
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	lsls r0, r1, #2
	adds r0, r5, r0
	ldr r4, [r0, #4]
	movs r1, #0
	adds r0, r4, #0
	movs r2, #6
	bl FUN_02008274
	movs r1, #1
	adds r2, r1, #0
	adds r0, r4, #0
	subs r2, #0x11
	bl FUN_02008274
	movs r1, #0xc
	adds r2, r1, #0
	adds r0, r4, #0
	subs r2, #0x8c
	bl FUN_02008274
	movs r1, #0xd
	adds r2, r1, #0
	adds r0, r4, #0
	subs r2, #0x8d
	bl FUN_02008274
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0x29
	adds r5, #0x29
	strb r1, [r0]
	ldrb r0, [r5]
	cmp r0, #6
	blo _021D706E
	movs r1, #0xc
	adds r2, r1, #0
	adds r0, r4, #0
	adds r2, #0xf4
	bl FUN_02007DEC
	movs r1, #0xd
	adds r2, r1, #0
	adds r0, r4, #0
	adds r2, #0xf3
	bl FUN_02007DEC
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D706E:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov77_021D7004

	thumb_func_start ov77_021D7074
ov77_021D7074: @ 0x021D7074
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	lsls r0, r1, #2
	adds r0, r5, r0
	ldr r4, [r0, #4]
	movs r1, #0
	adds r0, r4, #0
	subs r2, r1, #3
	bl FUN_02008274
	movs r1, #1
	adds r2, r1, #0
	adds r0, r4, #0
	subs r2, #0x13
	bl FUN_02008274
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0x29
	adds r5, #0x29
	strb r1, [r0]
	ldrb r0, [r5]
	cmp r0, #6
	blo _021D70C6
	movs r1, #0xc
	adds r2, r1, #0
	adds r0, r4, #0
	adds r2, #0xf4
	bl FUN_02007DEC
	movs r1, #0xd
	adds r2, r1, #0
	adds r0, r4, #0
	adds r2, #0xf3
	bl FUN_02007DEC
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D70C6:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov77_021D7074

	thumb_func_start ov77_021D70CC
ov77_021D70CC: @ 0x021D70CC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	lsls r0, r1, #2
	adds r0, r5, r0
	ldr r4, [r0, #4]
	movs r1, #0
	adds r2, r1, #0
	adds r0, r4, #0
	subs r2, #0x10
	bl FUN_02008274
	movs r1, #1
	adds r2, r1, #0
	adds r0, r4, #0
	subs r2, #0x11
	bl FUN_02008274
	movs r1, #0xc
	adds r2, r1, #0
	adds r0, r4, #0
	subs r2, #0x8c
	bl FUN_02008274
	movs r1, #0xd
	adds r2, r1, #0
	adds r0, r4, #0
	subs r2, #0x8d
	bl FUN_02008274
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0x29
	adds r5, #0x29
	strb r1, [r0]
	ldrb r0, [r5]
	cmp r0, #6
	blo _021D7138
	movs r1, #0xc
	adds r2, r1, #0
	adds r0, r4, #0
	adds r2, #0xf4
	bl FUN_02007DEC
	movs r1, #0xd
	adds r2, r1, #0
	adds r0, r4, #0
	adds r2, #0xf3
	bl FUN_02007DEC
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D7138:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov77_021D70CC

	thumb_func_start ov77_021D713C
ov77_021D713C: @ 0x021D713C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	lsls r0, r1, #2
	adds r0, r5, r0
	ldr r4, [r0, #4]
	movs r1, #0
	adds r0, r4, #0
	subs r2, r1, #6
	bl FUN_02008274
	movs r1, #1
	adds r2, r1, #0
	adds r0, r4, #0
	subs r2, #0x11
	bl FUN_02008274
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0x29
	adds r5, #0x29
	strb r1, [r0]
	ldrb r0, [r5]
	cmp r0, #6
	blo _021D718E
	movs r1, #0xc
	adds r2, r1, #0
	adds r0, r4, #0
	adds r2, #0xf4
	bl FUN_02007DEC
	movs r1, #0xd
	adds r2, r1, #0
	adds r0, r4, #0
	adds r2, #0xf3
	bl FUN_02007DEC
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D718E:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov77_021D713C

	thumb_func_start ov77_021D7194
ov77_021D7194: @ 0x021D7194
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	lsls r0, r1, #2
	adds r0, r5, r0
	ldr r4, [r0, #4]
	movs r1, #0
	adds r0, r4, #0
	movs r2, #8
	bl FUN_02008274
	movs r1, #1
	adds r2, r1, #0
	adds r0, r4, #0
	subs r2, #0x11
	bl FUN_02008274
	movs r1, #0xc
	adds r2, r1, #0
	adds r0, r4, #0
	subs r2, #0x8c
	bl FUN_02008274
	movs r1, #0xd
	adds r2, r1, #0
	adds r0, r4, #0
	subs r2, #0x8d
	bl FUN_02008274
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0x29
	adds r5, #0x29
	strb r1, [r0]
	ldrb r0, [r5]
	cmp r0, #6
	blo _021D71FE
	movs r1, #0xc
	adds r2, r1, #0
	adds r0, r4, #0
	adds r2, #0xf4
	bl FUN_02007DEC
	movs r1, #0xd
	adds r2, r1, #0
	adds r0, r4, #0
	adds r2, #0xf3
	bl FUN_02007DEC
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D71FE:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov77_021D7194

	thumb_func_start ov77_021D7204
ov77_021D7204: @ 0x021D7204
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	lsls r0, r1, #2
	adds r0, r5, r0
	ldr r4, [r0, #4]
	movs r1, #0
	adds r0, r4, #0
	movs r2, #6
	bl FUN_02008274
	movs r1, #1
	adds r2, r1, #0
	adds r0, r4, #0
	subs r2, #0x15
	bl FUN_02008274
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0x29
	adds r5, #0x29
	strb r1, [r0]
	ldrb r0, [r5]
	cmp r0, #6
	blo _021D7256
	movs r1, #0xc
	adds r2, r1, #0
	adds r0, r4, #0
	adds r2, #0xf4
	bl FUN_02007DEC
	movs r1, #0xd
	adds r2, r1, #0
	adds r0, r4, #0
	adds r2, #0xf3
	bl FUN_02007DEC
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D7256:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov77_021D7204

	thumb_func_start ov77_021D725C
ov77_021D725C: @ 0x021D725C
	push {r3, lr}
	bl FUN_0201469C
	bl FUN_020146C0
	pop {r3, pc}
	thumb_func_end ov77_021D725C

	thumb_func_start ov77_021D7268
ov77_021D7268: @ 0x021D7268
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	bl FUN_02014764
	add r2, sp, #0
	movs r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	adds r4, r0, #0
	str r1, [r2, #8]
	bl FUN_020080C0
	subs r0, #0x80
	movs r1, #0xac
	muls r1, r0, r1
	str r1, [sp]
	adds r0, r4, #0
	movs r1, #1
	bl FUN_020080C0
	subs r0, #0x60
	movs r1, #0xac
	muls r1, r0, r1
	str r1, [sp, #4]
	movs r0, #0x40
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	ldr r1, [sp]
	ldr r0, [r0]
	ldr r0, [r0, #4]
	adds r0, r1, r0
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #4]
	ldr r0, [r0]
	ldr r0, [r0, #8]
	adds r0, r1, r0
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #8]
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	adds r0, r1, r0
	str r0, [r5, #0x30]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov77_021D7268
	@ 0x021D72C8
