	.include "macros/function.inc"


	.text

	thumb_func_start ov80_021D0D80
ov80_021D0D80: @ 0x021D0D80
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl FUN_02006840
	movs r2, #2
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0x11
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	adds r0, r4, #0
	movs r1, #0xe4
	movs r2, #0x11
	bl FUN_0200681C
	movs r1, #0
	movs r2, #0xe4
	adds r4, r0, #0
	blx FUN_020D5124
	ldr r0, _021D0DD4 @ =0x00000139
	str r5, [r4, #0x2c]
	ldrb r0, [r5, r0]
	cmp r0, #3
	bhs _021D0DB6
	b _021D0DB8
_021D0DB6:
	movs r0, #0
_021D0DB8:
	strb r0, [r4]
	movs r0, #0x4f
	lsls r0, r0, #2
	ldrh r0, [r5, r0]
	movs r1, #0
	adds r2, r1, #0
	strh r0, [r4, #2]
	movs r0, #0x11
	str r0, [r4, #4]
	movs r0, #0x37
	bl FUN_02004550
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D0DD4: .4byte 0x00000139
	thumb_func_end ov80_021D0D80

	thumb_func_start ov80_021D0DD8
ov80_021D0DD8: @ 0x021D0DD8
	push {r4, lr}
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #8
	bhi _021D0E4A
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D0DF2: @ jump table
	.2byte _021D0E04 - _021D0DF2 - 2 @ case 0
	.2byte _021D0E0C - _021D0DF2 - 2 @ case 1
	.2byte _021D0E4A - _021D0DF2 - 2 @ case 2
	.2byte _021D0E14 - _021D0DF2 - 2 @ case 3
	.2byte _021D0E22 - _021D0DF2 - 2 @ case 4
	.2byte _021D0E4A - _021D0DF2 - 2 @ case 5
	.2byte _021D0E30 - _021D0DF2 - 2 @ case 6
	.2byte _021D0E46 - _021D0DF2 - 2 @ case 7
	.2byte _021D0E3E - _021D0DF2 - 2 @ case 8
_021D0E04:
	bl ov80_021D132C
	str r0, [r4, #8]
	b _021D0E4A
_021D0E0C:
	bl ov80_021D1354
	str r0, [r4, #8]
	b _021D0E4A
_021D0E14:
	bl ov80_021D138C
	str r0, [r4, #8]
	adds r0, r4, #0
	bl ov80_021D1068
	b _021D0E4A
_021D0E22:
	bl ov80_021D13A0
	str r0, [r4, #8]
	adds r0, r4, #0
	bl ov80_021D1068
	b _021D0E4A
_021D0E30:
	bl ov80_021D13DC
	str r0, [r4, #8]
	adds r0, r4, #0
	bl ov80_021D1068
	b _021D0E4A
_021D0E3E:
	bl ov80_021D1438
	str r0, [r4, #8]
	b _021D0E4A
_021D0E46:
	movs r0, #1
	pop {r4, pc}
_021D0E4A:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov80_021D0DD8

	thumb_func_start ov80_021D0E50
ov80_021D0E50: @ 0x021D0E50
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0200682C
	adds r0, r4, #0
	bl FUN_02006830
	movs r0, #0x11
	bl FUN_0201807C
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov80_021D0E50

	thumb_func_start ov80_021D0E68
ov80_021D0E68: @ 0x021D0E68
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4]
	movs r1, #0x24
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _021D0E9C @ =0x021D2EB4
	ldr r1, [r1, r3]
	cmp r1, #0
	beq _021D0E7E
	blx r1
_021D0E7E:
	blx FUN_020A635C
	adds r0, r4, #0
	bl ov80_021D2AEC
	ldr r0, [r4, #0x28]
	bl FUN_0201C2B8
	ldr r3, _021D0EA0 @ =0x027E0000
	ldr r1, _021D0EA4 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.align 2, 0
_021D0E9C: .4byte 0x021D2EB4
_021D0EA0: .4byte 0x027E0000
_021D0EA4: .4byte 0x00003FF8
	thumb_func_end ov80_021D0E68

	thumb_func_start ov80_021D0EA8
ov80_021D0EA8: @ 0x021D0EA8
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D0EC4 @ =0x021D2E6C
	add r3, sp, #0
	movs r2, #5
_021D0EB2:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D0EB2
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_021D0EC4: .4byte 0x021D2E6C
	thumb_func_end ov80_021D0EA8

	thumb_func_start ov80_021D0EC8
ov80_021D0EC8: @ 0x021D0EC8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021D0EDC
	cmp r0, #1
	beq _021D0F82
	cmp r0, #2
	beq _021D0FAE
	b _021D0FCC
_021D0EDC:
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021D0FD8 @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _021D0FDC @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	ldr r0, [r4, #0x2c]
	ldr r1, [r0]
	cmp r1, #0
	bne _021D0F1C
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _021D0F1C
	movs r0, #3
	str r0, [r4, #0x20]
	movs r0, #0x1b
	str r0, [r4, #0x24]
	b _021D0F34
_021D0F1C:
	asrs r0, r1, #4
	lsrs r0, r0, #0x1b
	adds r0, r1, r0
	asrs r0, r0, #5
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x2c]
	ldr r1, [r0, #4]
	asrs r0, r1, #4
	lsrs r0, r0, #0x1b
	adds r0, r1, r0
	asrs r0, r0, #5
	str r0, [r4, #0x24]
_021D0F34:
	ldr r0, [r4, #0x20]
	ldr r2, _021D0FE0 @ =0x000001B1
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x24]
	movs r1, #0x1a
	str r0, [r4, #0x1c]
	ldr r3, [r4, #4]
	movs r0, #1
	bl FUN_0200B144
	adds r1, r4, #0
	adds r1, #0x80
	str r0, [r1]
	ldr r2, _021D0FE4 @ =0x00000267
	ldr r3, [r4, #4]
	movs r0, #1
	movs r1, #0x1a
	bl FUN_0200B144
	adds r1, r4, #0
	adds r1, #0x84
	str r0, [r1]
	ldr r1, [r4, #4]
	movs r0, #0x16
	bl FUN_02023790
	adds r1, r4, #0
	adds r1, #0x88
	str r0, [r1]
	ldr r0, [r4, #4]
	bl FUN_02039EBC
	str r0, [r4, #0x30]
	ldr r0, _021D0FE8 @ =0x021D3380
	ldr r1, [r4, #4]
	bl ov80_021D2D70
	str r0, [r4, #0x40]
	b _021D0FCC
_021D0F82:
	bl ov80_021D0EA8
	ldr r0, [r4, #4]
	bl FUN_02018340
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x28]
	adds r0, r4, #0
	bl ov80_021D1088
	adds r0, r4, #0
	bl ov80_021D1158
	bl FUN_0201E3D8
	movs r0, #4
	bl FUN_0201E450
	adds r0, r4, #0
	bl ov80_021D2A08
	b _021D0FCC
_021D0FAE:
	ldr r0, _021D0FEC @ =ov80_021D0E68
	adds r1, r4, #0
	bl FUN_02017798
	ldrb r1, [r4]
	movs r0, #0x24
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, _021D0FF0 @ =0x021D2EA4
	ldr r0, [r0, r2]
	str r0, [r4, #0x38]
	movs r0, #0
	str r0, [r4, #0xc]
	movs r0, #1
	pop {r4, pc}
_021D0FCC:
	ldr r0, [r4, #0xc]
	adds r0, r0, #1
	str r0, [r4, #0xc]
	movs r0, #0
	pop {r4, pc}
	nop
_021D0FD8: .4byte 0xFFFFE0FF
_021D0FDC: .4byte 0x04001000
_021D0FE0: .4byte 0x000001B1
_021D0FE4: .4byte 0x00000267
_021D0FE8: .4byte 0x021D3380
_021D0FEC: .4byte ov80_021D0E68
_021D0FF0: .4byte 0x021D2EA4
	thumb_func_end ov80_021D0EC8

	thumb_func_start ov80_021D0FF4
ov80_021D0FF4: @ 0x021D0FF4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0201E530
	movs r0, #0x1f
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0x1f
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	adds r0, r5, #0
	bl ov80_021D2AC0
	adds r0, r5, #0
	bl ov80_021D12D8
	movs r4, #0
_021D1026:
	lsls r1, r4, #0x18
	ldr r0, [r5, #0x28]
	lsrs r1, r1, #0x18
	bl FUN_02019044
	adds r4, r4, #1
	cmp r4, #8
	blt _021D1026
	ldr r0, [r5, #0x28]
	bl FUN_020181C4
	ldr r0, [r5, #0x40]
	bl ov80_021D2E10
	ldr r0, [r5, #0x30]
	bl FUN_02039EF0
	adds r0, r5, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_020237BC
	adds r0, r5, #0
	adds r0, #0x84
	ldr r0, [r0]
	bl FUN_0200B190
	adds r5, #0x80
	ldr r0, [r5]
	bl FUN_0200B190
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov80_021D0FF4

	thumb_func_start ov80_021D1068
ov80_021D1068: @ 0x021D1068
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4]
	movs r1, #0x24
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _021D1084 @ =0x021D2EAC
	ldr r1, [r1, r3]
	blx r1
	adds r0, r4, #0
	bl ov80_021D2AE0
	pop {r4, pc}
	nop
_021D1084: .4byte 0x021D2EAC
	thumb_func_end ov80_021D1068

	thumb_func_start ov80_021D1088
ov80_021D1088: @ 0x021D1088
	push {r4, r5, r6, r7, lr}
	sub sp, #0xf4
	ldr r4, _021D1150 @ =0x021D2E5C
	add r3, sp, #4
	str r0, [sp]
	adds r6, r1, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r4, _021D1154 @ =0x021D2F00
	add r3, sp, #0x14
	movs r2, #0x1c
_021D10AA:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D10AA
	movs r4, #0
	adds r7, r4, #0
	add r5, sp, #0x14
_021D10B8:
	lsls r1, r4, #0x18
	adds r0, r6, #0
	lsrs r1, r1, #0x18
	adds r2, r5, #0
	movs r3, #0
	bl FUN_020183C4
	lsls r1, r4, #0x18
	adds r0, r6, #0
	lsrs r1, r1, #0x18
	adds r4, r4, #1
	bl FUN_02019EBC
	adds r7, r7, #1
	adds r5, #0x1c
	cmp r7, #8
	blt _021D10B8
	ldr r3, [sp]
	movs r0, #0
	ldr r3, [r3, #4]
	movs r1, #0x20
	adds r2, r0, #0
	bl FUN_02019690
	ldr r3, [sp]
	movs r0, #1
	ldr r3, [r3, #4]
	movs r1, #0x20
	movs r2, #0
	bl FUN_02019690
	ldr r3, [sp]
	movs r0, #2
	ldr r3, [r3, #4]
	movs r1, #0x20
	movs r2, #0
	bl FUN_02019690
	ldr r3, [sp]
	movs r0, #3
	ldr r3, [r3, #4]
	movs r1, #0x20
	movs r2, #0
	bl FUN_02019690
	ldr r3, [sp]
	movs r0, #4
	ldr r3, [r3, #4]
	movs r1, #0x20
	movs r2, #0
	bl FUN_02019690
	ldr r3, [sp]
	movs r0, #5
	ldr r3, [r3, #4]
	movs r1, #0x20
	movs r2, #0
	bl FUN_02019690
	ldr r3, [sp]
	movs r0, #6
	ldr r3, [r3, #4]
	movs r1, #0x20
	movs r2, #0
	bl FUN_02019690
	ldr r3, [sp]
	movs r0, #7
	ldr r3, [r3, #4]
	movs r1, #0x20
	movs r2, #0
	bl FUN_02019690
	add sp, #0xf4
	pop {r4, r5, r6, r7, pc}
	nop
_021D1150: .4byte 0x021D2E5C
_021D1154: .4byte 0x021D2F00
	thumb_func_end ov80_021D1088

	thumb_func_start ov80_021D1158
ov80_021D1158: @ 0x021D1158
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r1, [r5, #4]
	movs r0, #0x11
	bl FUN_02006C24
	adds r4, r0, #0
	movs r0, #0x13
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #4]
	adds r2, r4, #0
	movs r3, #0x11
	bl FUN_0208C210
	movs r0, #0x14
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #4]
	adds r2, r4, #0
	movs r3, #0x11
	bl FUN_0208C210
	movs r0, #0x15
	str r0, [sp]
	movs r0, #5
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #4]
	adds r2, r4, #0
	movs r3, #0x11
	bl FUN_0208C210
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #4]
	adds r2, r4, #0
	movs r3, #0x11
	bl FUN_0208C210
	movs r0, #1
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #4]
	adds r2, r4, #0
	movs r3, #0x11
	bl FUN_0208C210
	ldr r0, [r5, #4]
	adds r3, r5, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0x18
	adds r3, #0xb8
	bl FUN_0208C2F4
	adds r1, r5, #0
	adds r1, #0x98
	str r0, [r1]
	ldr r0, [r5, #4]
	adds r3, r5, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0x16
	adds r3, #0xbc
	bl FUN_0208C2F4
	adds r1, r5, #0
	adds r1, #0x9c
	str r0, [r1]
	ldr r0, [r5, #4]
	adds r3, r5, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0x17
	adds r3, #0xc0
	bl FUN_0208C2F4
	adds r1, r5, #0
	adds r1, #0xa0
	str r0, [r1]
	ldr r0, [r5, #4]
	adds r3, r5, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0x19
	adds r3, #0xc4
	bl FUN_0208C2F4
	adds r1, r5, #0
	adds r1, #0xa4
	str r0, [r1]
	ldr r0, [r5, #4]
	adds r3, r5, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0x1a
	adds r3, #0xc8
	bl FUN_0208C2F4
	adds r1, r5, #0
	adds r1, #0xa8
	str r0, [r1]
	ldr r0, [r5, #4]
	adds r3, r5, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0x1b
	adds r3, #0xcc
	bl FUN_0208C2F4
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r0, [r5, #4]
	adds r3, r5, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0x1c
	adds r3, #0xd0
	bl FUN_0208C2F4
	adds r1, r5, #0
	adds r1, #0xb0
	str r0, [r1]
	ldr r0, [r5, #4]
	adds r3, r5, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0x1d
	adds r3, #0xd4
	bl FUN_0208C2F4
	adds r1, r5, #0
	adds r1, #0xb4
	str r0, [r1]
	adds r0, r4, #0
	bl FUN_02006CA8
	movs r1, #0x1e
	ldr r2, [r5, #4]
	movs r0, #0
	lsls r1, r1, #4
	bl FUN_02002E7C
	movs r1, #0x1e
	ldr r2, [r5, #4]
	movs r0, #4
	lsls r1, r1, #4
	bl FUN_02002E7C
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov80_021D1158

	thumb_func_start ov80_021D12D8
ov80_021D12D8: @ 0x021D12D8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xb4
	ldr r0, [r0]
	bl FUN_020181C4
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	bl FUN_020181C4
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	bl FUN_020181C4
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	bl FUN_020181C4
	adds r0, r4, #0
	adds r0, #0xa4
	ldr r0, [r0]
	bl FUN_020181C4
	adds r0, r4, #0
	adds r0, #0xa0
	ldr r0, [r0]
	bl FUN_020181C4
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	bl FUN_020181C4
	adds r4, #0x98
	ldr r0, [r4]
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov80_021D12D8

	thumb_func_start ov80_021D132C
ov80_021D132C: @ 0x021D132C
	push {r4, lr}
	adds r4, r0, #0
	bl ov80_021D0EC8
	cmp r0, #1
	beq _021D133C
	movs r0, #0
	pop {r4, pc}
_021D133C:
	ldrb r2, [r4]
	movs r1, #0x24
	adds r0, r4, #0
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _021D1350 @ =0x021D2E94
	ldr r1, [r1, r3]
	blx r1
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_021D1350: .4byte 0x021D2E94
	thumb_func_end ov80_021D132C

	thumb_func_start ov80_021D1354
ov80_021D1354: @ 0x021D1354
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4]
	movs r1, #0x24
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _021D1384 @ =0x021D2E98
	ldr r1, [r1, r3]
	blx r1
	cmp r0, #1
	beq _021D136E
	movs r0, #1
	pop {r4, pc}
_021D136E:
	ldrb r2, [r4]
	movs r1, #0x24
	adds r0, r4, #0
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _021D1388 @ =0x021D2E9C
	ldr r1, [r1, r3]
	blx r1
	movs r0, #3
	pop {r4, pc}
	nop
_021D1384: .4byte 0x021D2E98
_021D1388: .4byte 0x021D2E9C
	thumb_func_end ov80_021D1354

	thumb_func_start ov80_021D138C
ov80_021D138C: @ 0x021D138C
	push {r3, lr}
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D139A
	movs r0, #4
	pop {r3, pc}
_021D139A:
	movs r0, #3
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov80_021D138C

	thumb_func_start ov80_021D13A0
ov80_021D13A0: @ 0x021D13A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x38]
	blx r1
	cmp r0, #1
	beq _021D13C0
	ldrb r2, [r4]
	movs r1, #0x24
	adds r0, r4, #0
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _021D13D4 @ =0x021D2EA8
	ldr r1, [r1, r3]
	blx r1
	movs r0, #4
	pop {r4, pc}
_021D13C0:
	ldrb r2, [r4]
	movs r1, #0x24
	adds r0, r4, #0
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _021D13D8 @ =0x021D2EA0
	ldr r1, [r1, r3]
	blx r1
	movs r0, #6
	pop {r4, pc}
	.align 2, 0
_021D13D4: .4byte 0x021D2EA8
_021D13D8: .4byte 0x021D2EA0
	thumb_func_end ov80_021D13A0

	thumb_func_start ov80_021D13DC
ov80_021D13DC: @ 0x021D13DC
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D141A
	movs r1, #0
	ldr r0, _021D1430 @ =0x04000050
	adds r2, r1, #0
	movs r3, #0x1f
	str r1, [sp]
	blx FUN_020BF55C
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0200F344
	movs r0, #1
	movs r1, #0
	bl FUN_0200F344
	movs r0, #0
	bl FUN_0200F32C
	movs r0, #1
	bl FUN_0200F32C
	add sp, #4
	movs r0, #8
	pop {r3, r4, pc}
_021D141A:
	ldrb r2, [r4]
	movs r1, #0x24
	adds r0, r4, #0
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _021D1434 @ =0x021D2EA8
	ldr r1, [r1, r3]
	blx r1
	movs r0, #6
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021D1430: .4byte 0x04000050
_021D1434: .4byte 0x021D2EA8
	thumb_func_end ov80_021D13DC

	thumb_func_start ov80_021D1438
ov80_021D1438: @ 0x021D1438
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4]
	movs r1, #0x24
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _021D1454 @ =0x021D2EB0
	ldr r1, [r1, r3]
	blx r1
	adds r0, r4, #0
	bl ov80_021D0FF4
	movs r0, #7
	pop {r4, pc}
	.align 2, 0
_021D1454: .4byte 0x021D2EB0
	thumb_func_end ov80_021D1438

	thumb_func_start ov80_021D1458
ov80_021D1458: @ 0x021D1458
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x11
	ldr r0, [r4, #4]
	lsls r1, r1, #4
	bl FUN_02018144
	movs r2, #0x11
	movs r1, #0
	lsls r2, r2, #4
	str r0, [r4, #0x34]
	blx FUN_020D5124
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov80_021D1458

	thumb_func_start ov80_021D1478
ov80_021D1478: @ 0x021D1478
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x34]
	bl ov80_021D225C
	ldrb r0, [r5]
	cmp r0, #2
	beq _021D148E
	adds r0, r5, #0
	bl ov80_021D2700
_021D148E:
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	bl ov80_021D2C1C
	adds r0, r5, #0
	bl ov80_021D1F14
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov80_021D1478

	thumb_func_start ov80_021D14A8
ov80_021D14A8: @ 0x021D14A8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x34]
	ldr r1, [r4]
	cmp r1, #0
	beq _021D14BA
	cmp r1, #1
	beq _021D1504
	b _021D1546
_021D14BA:
	ldr r1, [r5, #0x18]
	str r1, [r4, #0x18]
	ldr r1, [r5, #0x1c]
	str r1, [r4, #0x1c]
	movs r1, #0
	mvns r1, r1
	str r1, [r4, #0x20]
	ldr r1, [r4, #0x18]
	lsls r2, r1, #4
	adds r1, r4, #0
	subs r2, #0x68
	adds r1, #0x8c
	str r2, [r1]
	ldr r1, [r4, #0x1c]
	lsls r2, r1, #4
	adds r1, r4, #0
	subs r2, #0x60
	adds r1, #0x90
	str r2, [r1]
	adds r1, r4, #0
	adds r2, r4, #0
	adds r1, #0x8c
	adds r2, #0x90
	ldr r1, [r1]
	ldr r2, [r2]
	bl ov80_021D24BC
	adds r0, r5, #0
	bl ov80_021D1DF8
	ldrb r0, [r5]
	cmp r0, #2
	beq _021D1546
	adds r0, r5, #0
	bl ov80_021D259C
	b _021D1546
_021D1504:
	bl ov80_021D20DC
	adds r0, r5, #0
	bl ov80_021D2398
	ldr r0, [r5, #4]
	adds r1, r5, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	movs r2, #0x49
	ldr r3, [r5, #0x2c]
	lsls r2, r2, #2
	adds r2, r3, r2
	ldr r0, [r0]
	ldr r1, [r1]
	movs r3, #0x14
	bl ov80_021D2AF4
	adds r1, r4, #0
	adds r1, #0x9c
	str r0, [r1]
	adds r0, r5, #0
	bl ov80_021D1A30
	adds r0, r5, #0
	bl ov80_021D19E4
	movs r0, #0
	str r0, [r4]
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D1546:
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov80_021D14A8

	thumb_func_start ov80_021D1550
ov80_021D1550: @ 0x021D1550
	push {lr}
	sub sp, #0xc
	movs r3, #0
	str r3, [r0, #0x14]
	movs r1, #6
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	movs r2, #0x25
	str r0, [sp, #8]
	adds r0, r1, #0
	movs r1, #0x11
	bl FUN_0200F174
	ldr r0, _021D1594 @ =0x0000068F
	bl FUN_02005748
	movs r0, #0
	bl FUN_0200F338
	movs r0, #1
	bl FUN_0200F338
	movs r1, #4
	ldr r0, _021D1598 @ =0x04000050
	movs r2, #8
	movs r3, #0x1c
	str r1, [sp]
	blx FUN_020BF55C
	movs r0, #0
	add sp, #0xc
	pop {pc}
	.align 2, 0
_021D1594: .4byte 0x0000068F
_021D1598: .4byte 0x04000050
	thumb_func_end ov80_021D1550

	thumb_func_start ov80_021D159C
ov80_021D159C: @ 0x021D159C
	push {lr}
	sub sp, #0xc
	movs r3, #0
	str r3, [r0, #0x14]
	movs r1, #6
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	movs r1, #0x10
	str r0, [sp, #8]
	movs r0, #2
	movs r2, #0x24
	bl FUN_0200F174
	movs r0, #0x69
	lsls r0, r0, #4
	bl FUN_02005748
	movs r0, #0
	add sp, #0xc
	pop {pc}
	thumb_func_end ov80_021D159C

	thumb_func_start ov80_021D15C8
ov80_021D15C8: @ 0x021D15C8
	push {lr}
	sub sp, #0xc
	movs r3, #0
	str r3, [r0, #0x14]
	movs r1, #6
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	movs r1, #0x11
	str r0, [sp, #8]
	movs r0, #3
	adds r2, r1, #0
	bl FUN_0200F174
	ldr r0, _021D1608 @ =0x0000068F
	bl FUN_02005748
	movs r0, #0
	bl FUN_0200F338
	movs r1, #4
	ldr r0, _021D160C @ =0x04000050
	movs r2, #8
	movs r3, #0x1c
	str r1, [sp]
	blx FUN_020BF55C
	movs r0, #0
	add sp, #0xc
	pop {pc}
	nop
_021D1608: .4byte 0x0000068F
_021D160C: .4byte 0x04000050
	thumb_func_end ov80_021D15C8

	thumb_func_start ov80_021D1610
ov80_021D1610: @ 0x021D1610
	push {lr}
	sub sp, #0xc
	movs r3, #0
	str r3, [r0, #0x14]
	movs r1, #6
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	movs r1, #0x10
	str r0, [sp, #8]
	movs r0, #3
	adds r2, r1, #0
	bl FUN_0200F174
	movs r0, #0x69
	lsls r0, r0, #4
	bl FUN_02005748
	movs r0, #0
	add sp, #0xc
	pop {pc}
	thumb_func_end ov80_021D1610

	thumb_func_start ov80_021D163C
ov80_021D163C: @ 0x021D163C
	push {r3, lr}
	ldr r1, [r0, #0x34]
	ldrb r3, [r1, #0x14]
	cmp r3, #1
	bhi _021D165A
	ldr r1, _021D1670 @ =0x021BF67C
	ldr r2, [r1, #0x48]
	movs r1, #2
	tst r1, r2
	beq _021D165A
	ldr r0, _021D1674 @ =0x000005DD
	bl FUN_02005748
	movs r0, #1
	pop {r3, pc}
_021D165A:
	cmp r3, #1
	bls _021D1662
	movs r0, #0
	pop {r3, pc}
_021D1662:
	ldr r1, _021D1670 @ =0x021BF67C
	ldr r1, [r1, #0x44]
	bl ov80_021D18F8
	movs r0, #0
	pop {r3, pc}
	nop
_021D1670: .4byte 0x021BF67C
_021D1674: .4byte 0x000005DD
	thumb_func_end ov80_021D163C

	thumb_func_start ov80_021D1678
ov80_021D1678: @ 0x021D1678
	push {r3, lr}
	ldr r1, [r0, #0x34]
	ldrb r1, [r1, #0x14]
	cmp r1, #1
	bhi _021D16B2
	ldr r2, _021D16C8 @ =0x021BF67C
	ldr r3, [r2, #0x48]
	movs r2, #1
	tst r2, r3
	beq _021D16A2
	bl ov80_021D29BC
	cmp r0, #0
	beq _021D169E
	ldr r0, _021D16CC @ =0x000005DD
	bl FUN_02005748
	movs r0, #1
	pop {r3, pc}
_021D169E:
	movs r0, #0
	pop {r3, pc}
_021D16A2:
	movs r2, #2
	tst r2, r3
	beq _021D16B2
	ldr r0, _021D16CC @ =0x000005DD
	bl FUN_02005748
	movs r0, #1
	pop {r3, pc}
_021D16B2:
	cmp r1, #1
	bls _021D16BA
	movs r0, #0
	pop {r3, pc}
_021D16BA:
	ldr r1, _021D16C8 @ =0x021BF67C
	ldr r1, [r1, #0x44]
	bl ov80_021D18F8
	movs r0, #0
	pop {r3, pc}
	nop
_021D16C8: .4byte 0x021BF67C
_021D16CC: .4byte 0x000005DD
	thumb_func_end ov80_021D1678

	thumb_func_start ov80_021D16D0
ov80_021D16D0: @ 0x021D16D0
	push {r3, lr}
	ldr r2, _021D16F0 @ =0x021BF67C
	movs r1, #2
	ldr r3, [r2, #0x48]
	tst r1, r3
	beq _021D16E6
	ldr r0, _021D16F4 @ =0x000005DD
	bl FUN_02005748
	movs r0, #1
	pop {r3, pc}
_021D16E6:
	ldr r1, [r2, #0x44]
	bl ov80_021D18F8
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_021D16F0: .4byte 0x021BF67C
_021D16F4: .4byte 0x000005DD
	thumb_func_end ov80_021D16D0

	thumb_func_start ov80_021D16F8
ov80_021D16F8: @ 0x021D16F8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x34]
	movs r1, #1
	ldrb r2, [r4, #0x12]
	tst r1, r2
	beq _021D1724
	ldrb r1, [r4, #0x15]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	cmp r1, #2
	blo _021D1738
	bl ov80_021D19E4
	movs r0, #0
	strb r0, [r4, #0x12]
	strh r0, [r4, #0x16]
	ldrb r1, [r4, #0x15]
	movs r0, #0xf
	bics r1, r0
	strb r1, [r4, #0x15]
	b _021D1738
_021D1724:
	ldrb r1, [r4, #0x10]
	cmp r1, #1
	bne _021D1738
	ldrh r1, [r4, #0x16]
	cmp r1, #1
	bne _021D1738
	ldr r2, [r4, #0x20]
	movs r1, #0
	bl ov80_021D1D24
_021D1738:
	adds r0, r5, #0
	bl ov80_021D1C24
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov80_021D16F8

	thumb_func_start ov80_021D1744
ov80_021D1744: @ 0x021D1744
	push {r3, lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x34]
	ldrb r1, [r1]
	adds r0, #0x9c
	ldr r0, [r0]
	bl ov80_021D2D28
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov80_021D1744

	thumb_func_start ov80_021D1758
ov80_021D1758: @ 0x021D1758
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r1, r6, #0
	adds r1, #0x94
	ldr r5, [r1]
	adds r1, r6, #0
	adds r1, #0x90
	ldr r7, [r1]
	adds r1, r6, #0
	adds r1, #0x8c
	ldr r1, [r1]
	ldr r4, [r6, #0x34]
	cmp r1, #0
	bne _021D177C
	add sp, #0xc
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_021D177C:
	adds r1, r6, #0
	movs r2, #0
	adds r1, #0x8c
	str r2, [r1]
	cmp r5, #0
	bne _021D179C
	adds r4, #0x58
	adds r1, r4, #0
	bl ov80_021D1B5C
	adds r0, r6, #0
	bl ov80_021D1D38
	add sp, #0xc
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_021D179C:
	adds r1, r4, #0
	adds r1, #0x58
	adds r2, r5, #0
	bl ov80_021D1B5C
	adds r0, r6, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_020237E8
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x1c]
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov80_021D1A58
	ldrh r0, [r5, #4]
	ldr r2, _021D1844 @ =0x0000013B
	movs r1, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r5, #6]
	movs r3, #0xe
	str r0, [sp, #4]
	ldr r0, [r6, #4]
	str r0, [sp, #8]
	ldr r0, [r6, #0x28]
	bl FUN_0200E2A4
	ldrh r0, [r5, #4]
	cmp r0, #1
	bhi _021D17E4
	adds r7, r4, #0
	adds r7, #0x38
	b _021D17E8
_021D17E4:
	adds r7, r4, #0
	adds r7, #0x48
_021D17E8:
	str r7, [r4, #0x78]
	ldrb r0, [r4, #0x15]
	movs r1, #0xf0
	ldr r2, _021D1844 @ =0x0000013B
	bics r0, r1
	ldrh r1, [r5, #4]
	movs r3, #0xe
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x18
	orrs r0, r1
	strb r0, [r4, #0x15]
	ldrh r0, [r5, #4]
	movs r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r7, #0
	bl FUN_0200E69C
	adds r0, r7, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	adds r6, #0x88
	ldr r2, [r6]
	adds r0, r7, #0
	movs r1, #1
	bl FUN_0201D738
	adds r0, r7, #0
	bl FUN_0201A954
	adds r4, #0x58
	adds r0, r4, #0
	bl FUN_0201A954
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D1844: .4byte 0x0000013B
	thumb_func_end ov80_021D1758

	thumb_func_start ov80_021D1848
ov80_021D1848: @ 0x021D1848
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #1
	subs r0, r0, r6
	ldr r1, _021D1898 @ =0x021D2FEC
	lsls r0, r0, #2
	adds r0, r1, r0
	bl FUN_02022664
	adds r4, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	beq _021D186C
	cmp r6, #1
	bne _021D1872
_021D186C:
	add sp, #8
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
_021D1872:
	movs r1, #0x12
	add r0, sp, #4
	strh r1, [r0]
	add r0, sp, #4
	str r0, [sp]
	ldr r3, _021D189C @ =0x021BF6BC
	ldr r0, [r5, #0x28]
	ldrh r2, [r3, #0x1c]
	ldrh r3, [r3, #0x1e]
	movs r1, #5
	bl FUN_0201C784
	cmp r0, #0
	beq _021D1892
	movs r4, #0
	mvns r4, r4
_021D1892:
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D1898: .4byte 0x021D2FEC
_021D189C: .4byte 0x021BF6BC
	thumb_func_end ov80_021D1848

	thumb_func_start ov80_021D18A0
ov80_021D18A0: @ 0x021D18A0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x2c]
	ldr r0, _021D18F4 @ =0x00000139
	ldr r4, [r5, #0x34]
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _021D18B4
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D18B4:
	bl FUN_0202278C
	cmp r0, #0
	ldrb r0, [r4, #0x14]
	beq _021D18E2
	cmp r0, #0
	bne _021D18F0
	ldrb r1, [r4, #0x10]
	adds r0, r5, #0
	bl ov80_021D1848
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _021D18F0
	ldrb r1, [r4, #0x10]
	adds r0, r5, #0
	bl ov80_021D273C
	movs r0, #3
	strb r0, [r4, #0x14]
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D18E2:
	cmp r0, #3
	beq _021D18EA
	cmp r0, #1
	bne _021D18F0
_021D18EA:
	ldrb r0, [r4, #0x14]
	subs r0, r0, #1
	strb r0, [r4, #0x14]
_021D18F0:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D18F4: .4byte 0x00000139
	thumb_func_end ov80_021D18A0

	thumb_func_start ov80_021D18F8
ov80_021D18F8: @ 0x021D18F8
	push {r3, r4, r5, lr}
	ldr r4, [r0, #0x34]
	adds r5, r1, #0
	ldrb r1, [r4, #0x11]
	cmp r1, #0
	beq _021D1928
	movs r0, #0xf0
	tst r0, r5
	bne _021D19E0
	ldrb r2, [r4, #0x15]
	lsls r0, r2, #0x1c
	lsrs r1, r0, #0x1c
	cmp r1, #1
	bne _021D19E0
	movs r0, #0xf
	bics r2, r0
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x15]
	pop {r3, r4, r5, pc}
_021D1928:
	bl ov80_021D18A0
	cmp r0, #0
	bne _021D19E0
	movs r0, #0xf0
	tst r0, r5
	bne _021D1954
	ldrb r2, [r4, #0x15]
	lsls r0, r2, #0x1c
	lsrs r1, r0, #0x1c
	cmp r1, #1
	bne _021D19E0
	movs r0, #0xf
	bics r2, r0
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x15]
	pop {r3, r4, r5, pc}
_021D1954:
	movs r0, #0x40
	tst r0, r5
	beq _021D196C
	ldr r0, [r4, #0x1c]
	cmp r0, #7
	blt _021D196C
	subs r0, r0, #1
	str r0, [r4, #0x1c]
	ldrb r1, [r4, #0x11]
	movs r0, #8
	orrs r0, r1
	strb r0, [r4, #0x11]
_021D196C:
	movs r0, #0x80
	tst r0, r5
	beq _021D1984
	ldr r0, [r4, #0x1c]
	cmp r0, #0x1b
	bgt _021D1984
	adds r0, r0, #1
	str r0, [r4, #0x1c]
	ldrb r1, [r4, #0x11]
	movs r0, #4
	orrs r0, r1
	strb r0, [r4, #0x11]
_021D1984:
	movs r0, #0x10
	tst r0, r5
	beq _021D199C
	ldr r0, [r4, #0x18]
	cmp r0, #0x1b
	bgt _021D199C
	adds r0, r0, #1
	str r0, [r4, #0x18]
	ldrb r1, [r4, #0x11]
	movs r0, #1
	orrs r0, r1
	strb r0, [r4, #0x11]
_021D199C:
	movs r0, #0x20
	tst r0, r5
	beq _021D19B4
	ldr r0, [r4, #0x18]
	cmp r0, #2
	blt _021D19B4
	subs r0, r0, #1
	str r0, [r4, #0x18]
	ldrb r1, [r4, #0x11]
	movs r0, #2
	orrs r0, r1
	strb r0, [r4, #0x11]
_021D19B4:
	movs r0, #3
	strb r0, [r4, #0x13]
	ldrb r1, [r4, #0x11]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _021D19CC
	ldrh r0, [r4, #0x16]
	adds r0, r0, #1
	b _021D19CE
_021D19CC:
	movs r0, #0
_021D19CE:
	strh r0, [r4, #0x16]
	movs r0, #0
	strb r0, [r4, #0x12]
	ldrb r1, [r4, #0x15]
	movs r0, #0xf
	bics r1, r0
	movs r0, #1
	orrs r0, r1
	strb r0, [r4, #0x15]
_021D19E0:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov80_021D18F8

	thumb_func_start ov80_021D19E4
ov80_021D19E4: @ 0x021D19E4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x34]
	ldr r1, [r4, #0x1c]
	str r1, [sp]
	adds r1, r4, #0
	ldr r2, [r4, #0x20]
	ldr r3, [r4, #0x18]
	adds r1, #0x28
	bl ov80_021D1AB0
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x1c]
	bl ov80_021D2CC0
	ldrb r0, [r4, #0x10]
	cmp r0, #1
	bne _021D1A2E
	adds r1, r4, #0
	adds r1, #0xa0
	ldr r1, [r1]
	ldr r2, [r4, #0x20]
	adds r0, r5, #0
	bl ov80_021D1D24
	ldr r0, [r5, #0x28]
	movs r1, #4
	bl FUN_0201C3C0
	ldr r0, [r5, #0x28]
	movs r1, #5
	bl FUN_0201C3C0
_021D1A2E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov80_021D19E4

	thumb_func_start ov80_021D1A30
ov80_021D1A30: @ 0x021D1A30
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x34]
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x24]
	ldr r0, [r5, #0x30]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x1c]
	bl FUN_02039F04
	str r0, [r4, #0x20]
	ldrh r3, [r5, #2]
	ldr r0, [r5, #0x40]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x1c]
	bl ov80_021D2E24
	adds r4, #0xa0
	str r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov80_021D1A30

	thumb_func_start ov80_021D1A58
ov80_021D1A58: @ 0x021D1A58
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _021D1A6E
	adds r0, r1, #0
	ldr r1, [r4, #4]
	adds r4, #0x88
	ldr r2, [r4]
	bl FUN_02071D10
	pop {r3, r4, r5, pc}
_021D1A6E:
	ldr r5, _021D1AA8 @ =0x021D3080
	movs r1, #0
_021D1A72:
	ldrh r0, [r5]
	cmp r2, r0
	bne _021D1A90
	ldrh r0, [r5, #2]
	cmp r3, r0
	bne _021D1A90
	ldr r0, _021D1AAC @ =0x021D3084
	lsls r1, r1, #3
	ldr r0, [r0, r1]
	ldr r1, [r4, #4]
	adds r4, #0x88
	ldr r2, [r4]
	bl FUN_02071D10
	pop {r3, r4, r5, pc}
_021D1A90:
	adds r1, r1, #1
	adds r5, #8
	cmp r1, #0xd
	blo _021D1A72
	ldr r1, [r4, #4]
	adds r4, #0x88
	ldr r2, [r4]
	movs r0, #0
	bl FUN_02071D10
	pop {r3, r4, r5, pc}
	nop
_021D1AA8: .4byte 0x021D3080
_021D1AAC: .4byte 0x021D3084
	thumb_func_end ov80_021D1A58

	thumb_func_start ov80_021D1AB0
ov80_021D1AB0: @ 0x021D1AB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r0, #0x88
	ldr r0, [r0]
	adds r4, r1, #0
	ldr r6, [r5, #0x34]
	adds r7, r2, #0
	str r3, [sp, #0x10]
	bl FUN_020237E8
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r6, #0xa0
	ldr r0, [r6]
	cmp r0, #0
	beq _021D1B1C
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x28]
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov80_021D1A58
	ldrb r0, [r5]
	cmp r0, #1
	bne _021D1AEC
	movs r3, #0x7a
	b _021D1B00
_021D1AEC:
	adds r1, r5, #0
	adds r1, #0x88
	movs r0, #0
	ldr r1, [r1]
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0xd0
	subs r0, r1, r0
	lsrs r3, r0, #1
_021D1B00:
	movs r0, #6
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1B58 @ =0x00010200
	adds r2, r5, #0
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	adds r2, #0x88
	ldr r2, [r2]
	adds r0, r4, #0
	bl FUN_0201D78C
_021D1B1C:
	ldrb r0, [r5]
	cmp r0, #1
	bne _021D1B4E
	adds r5, #0x84
	ldr r0, [r5]
	movs r1, #0
	bl FUN_0200B1EC
	adds r5, r0, #0
	movs r0, #6
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1B58 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r2, r5, #0
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_020237BC
_021D1B4E:
	adds r0, r4, #0
	bl FUN_0201A954
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D1B58: .4byte 0x00010200
	thumb_func_end ov80_021D1AB0

	thumb_func_start ov80_021D1B5C
ov80_021D1B5C: @ 0x021D1B5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	bne _021D1B80
	adds r0, r6, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r6, #0
	bl FUN_0201A954
	adds r0, r6, #0
	bl FUN_0201ACF4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D1B80:
	adds r0, r6, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldrh r1, [r4, #8]
	ldr r0, _021D1C1C @ =0x0000FFFF
	cmp r1, r0
	beq _021D1BD0
	ldr r2, [r5, #0x2c]
	ldrh r0, [r4, #0x16]
	adds r2, #0x5c
	ldrb r0, [r2, r0]
	lsls r2, r0, #0x1e
	lsrs r2, r2, #0x1e
	beq _021D1BA4
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	beq _021D1BD0
_021D1BA4:
	adds r0, r5, #0
	adds r0, #0x84
	ldr r0, [r0]
	bl FUN_0200B1EC
	adds r7, r0, #0
	ldrh r0, [r4, #0xe]
	movs r1, #0
	adds r2, r7, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1C20 @ =0x00010200
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldrh r3, [r4, #0xc]
	adds r0, r6, #0
	bl FUN_0201D78C
	adds r0, r7, #0
	bl FUN_020237BC
_021D1BD0:
	ldrh r1, [r4, #0xa]
	ldr r0, _021D1C1C @ =0x0000FFFF
	cmp r1, r0
	beq _021D1C16
	ldr r2, [r5, #0x2c]
	ldrh r0, [r4, #0x16]
	adds r2, #0x5c
	ldrb r0, [r2, r0]
	lsls r2, r0, #0x1a
	lsrs r2, r2, #0x1e
	beq _021D1BEC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1e
	beq _021D1C16
_021D1BEC:
	adds r5, #0x84
	ldr r0, [r5]
	bl FUN_0200B1EC
	adds r5, r0, #0
	ldrh r0, [r4, #0x12]
	movs r1, #0
	adds r2, r5, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1C20 @ =0x00010200
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldrh r3, [r4, #0x10]
	adds r0, r6, #0
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_020237BC
_021D1C16:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1C1C: .4byte 0x0000FFFF
_021D1C20: .4byte 0x00010200
	thumb_func_end ov80_021D1B5C

	thumb_func_start ov80_021D1C24
ov80_021D1C24: @ 0x021D1C24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r5, [r6, #0x34]
	movs r4, #5
	ldrb r1, [r5, #0x13]
	cmp r1, #0
	beq _021D1D20
	subs r0, r1, #1
	strb r0, [r5, #0x13]
	cmp r1, #3
	bne _021D1C94
	ldr r1, [r5, #0x18]
	adds r0, r4, #0
	movs r2, #7
	adds r3, r1, #0
	muls r3, r2, r3
	adds r3, #0x19
	lsls r1, r3, #0x10
	ldr r3, [r5, #0x1c]
	adds r0, #0xff
	muls r2, r3, r2
	subs r2, #0x22
	lsls r2, r2, #0x10
	ldr r0, [r5, r0]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D494
	adds r0, r4, #0
	adds r0, #0xff
	movs r1, #1
	ldr r0, [r5, r0]
	lsls r1, r1, #0xc
	bl FUN_02021E2C
	adds r0, r6, #0
	bl ov80_021D1A30
	ldr r0, [r5, #0x18]
	ldr r7, [r5, #0x1c]
	str r0, [sp, #4]
	ldr r0, [r6, #0x30]
	ldr r1, [sp, #4]
	adds r2, r7, #0
	bl FUN_02039F04
	adds r1, r5, #0
	adds r2, r0, #0
	ldr r3, [sp, #4]
	adds r0, r6, #0
	adds r1, #0x28
	str r7, [sp]
	bl ov80_021D1AB0
	adds r4, r4, #1
_021D1C94:
	ldrb r1, [r5, #0x11]
	movs r0, #8
	tst r0, r1
	beq _021D1CAA
	adds r0, r5, #0
	adds r0, #0x90
	ldr r0, [r0]
	subs r1, r0, r4
	adds r0, r5, #0
	adds r0, #0x90
	str r1, [r0]
_021D1CAA:
	ldrb r1, [r5, #0x11]
	movs r0, #4
	tst r0, r1
	beq _021D1CC0
	adds r0, r5, #0
	adds r0, #0x90
	ldr r0, [r0]
	adds r1, r0, r4
	adds r0, r5, #0
	adds r0, #0x90
	str r1, [r0]
_021D1CC0:
	ldrb r1, [r5, #0x11]
	movs r0, #1
	tst r0, r1
	beq _021D1CD6
	adds r0, r5, #0
	adds r0, #0x8c
	ldr r0, [r0]
	adds r1, r0, r4
	adds r0, r5, #0
	adds r0, #0x8c
	str r1, [r0]
_021D1CD6:
	ldrb r1, [r5, #0x11]
	movs r0, #2
	tst r0, r1
	beq _021D1CEC
	adds r0, r5, #0
	adds r0, #0x8c
	ldr r0, [r0]
	subs r1, r0, r4
	adds r0, r5, #0
	adds r0, #0x8c
	str r1, [r0]
_021D1CEC:
	adds r1, r5, #0
	adds r2, r5, #0
	adds r1, #0x8c
	adds r2, #0x90
	ldr r1, [r1]
	ldr r2, [r2]
	adds r0, r6, #0
	bl ov80_021D24BC
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	bne _021D1D20
	movs r0, #1
	strb r0, [r5, #0x12]
	movs r2, #0
	strb r2, [r5, #0x11]
	ldr r1, [r5, #0x24]
	ldr r0, [r5, #0x20]
	cmp r1, r0
	beq _021D1D20
	adds r5, #0x9c
	ldr r0, [r5]
	subs r1, r2, #1
	adds r3, r2, #0
	bl ov80_021D2CC0
_021D1D20:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov80_021D1C24

	thumb_func_start ov80_021D1D24
ov80_021D1D24: @ 0x021D1D24
	adds r3, r0, #0
	adds r3, #0x90
	str r2, [r3]
	adds r2, r0, #0
	adds r2, #0x94
	str r1, [r2]
	movs r1, #1
	adds r0, #0x8c
	str r1, [r0]
	bx lr
	thumb_func_end ov80_021D1D24

	thumb_func_start ov80_021D1D38
ov80_021D1D38: @ 0x021D1D38
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, [r6, #0x34]
	movs r1, #0
	ldr r5, [r4, #0x78]
	str r1, [r4, #0x78]
	cmp r5, #0
	beq _021D1D6A
	adds r0, r5, #0
	bl FUN_0201ADA4
	adds r0, r5, #0
	bl FUN_0201ACF4
	ldrb r1, [r4, #0x15]
	adds r0, r5, #0
	movs r2, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	bl FUN_0200E744
	ldr r0, [r6, #0x28]
	movs r1, #4
	bl FUN_0201C3C0
_021D1D6A:
	pop {r4, r5, r6, pc}
	thumb_func_end ov80_021D1D38

	thumb_func_start ov80_021D1D6C
ov80_021D1D6C: @ 0x021D1D6C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	adds r0, #0xcc
	adds r5, r1, #0
	ldr r0, [r0]
	movs r1, #0xc
	str r1, [sp]
	movs r1, #2
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xc
	str r1, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	movs r1, #7
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	movs r2, #0xa
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r1, #5
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x28]
	bl FUN_02019964
	adds r4, #0x84
	ldr r0, [r4]
	movs r1, #1
	bl FUN_0200B1EC
	adds r6, r0, #0
	movs r0, #0
	adds r1, r6, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0x50
	subs r4, r1, r0
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1DF4 @ =0x00010200
	adds r2, r6, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	lsrs r3, r4, #1
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_0201A954
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_021D1DF4: .4byte 0x00010200
	thumb_func_end ov80_021D1D6C

	thumb_func_start ov80_021D1DF8
ov80_021D1DF8: @ 0x021D1DF8
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r4, [r5, #0x34]
	movs r0, #0x15
	str r0, [sp]
	movs r0, #0x1d
	str r0, [sp, #4]
	movs r3, #3
	str r3, [sp, #8]
	movs r0, #0xf
	str r0, [sp, #0xc]
	movs r0, #0xea
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	adds r1, r4, #0
	ldr r0, [r5, #0x28]
	adds r1, #0x28
	movs r2, #1
	bl FUN_0201A7E8
	movs r0, #3
	str r0, [sp]
	movs r0, #0x15
	str r0, [sp, #4]
	movs r2, #4
	adds r1, r4, #0
	str r2, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, _021D1F04 @ =0x000003AB
	adds r1, #0x38
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	movs r3, #9
	bl FUN_0201A7E8
	movs r0, #3
	str r0, [sp]
	movs r0, #0x1c
	str r0, [sp, #4]
	movs r2, #4
	adds r1, r4, #0
	str r2, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, _021D1F08 @ =0x0000033B
	adds r1, #0x48
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	movs r3, #2
	bl FUN_0201A7E8
	movs r0, #8
	str r0, [sp]
	movs r0, #0x1c
	str r0, [sp, #4]
	movs r0, #0xe
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _021D1F0C @ =0x000001B3
	adds r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	adds r1, #0x58
	movs r2, #4
	movs r3, #1
	bl FUN_0201A7E8
	movs r0, #0
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xf
	str r0, [sp, #0xc]
	ldr r0, _021D1F10 @ =0x0000019F
	adds r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	adds r1, #0x68
	movs r2, #4
	movs r3, #0xb
	bl FUN_0201A7E8
	adds r0, r4, #0
	adds r0, #0x28
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r4, #0
	adds r0, #0x38
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r4, #0
	adds r0, #0x48
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r4, #0
	adds r0, #0x58
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r4, #0
	adds r0, #0x68
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r4, #0
	adds r0, #0x28
	bl FUN_0201A954
	adds r0, r4, #0
	adds r0, #0x38
	bl FUN_0201ACF4
	adds r0, r4, #0
	adds r0, #0x48
	bl FUN_0201ACF4
	adds r0, r4, #0
	adds r0, #0x58
	bl FUN_0201ACF4
	adds r4, #0x68
	adds r0, r4, #0
	bl FUN_0201ACF4
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_021D1F04: .4byte 0x000003AB
_021D1F08: .4byte 0x0000033B
_021D1F0C: .4byte 0x000001B3
_021D1F10: .4byte 0x0000019F
	thumb_func_end ov80_021D1DF8

	thumb_func_start ov80_021D1F14
ov80_021D1F14: @ 0x021D1F14
	push {r3, r4, r5, lr}
	ldr r4, [r0, #0x34]
	movs r5, #0
	adds r4, #0x28
_021D1F1C:
	lsls r0, r5, #4
	adds r0, r4, r0
	bl FUN_0201A8FC
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #5
	blo _021D1F1C
	pop {r3, r4, r5, pc}
	thumb_func_end ov80_021D1F14

	thumb_func_start ov80_021D1F30
ov80_021D1F30: @ 0x021D1F30
	push {r4, r5, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r2, #0
	beq _021D1F6E
	adds r0, #0xd0
	ldr r0, [r0]
	movs r1, #0x20
	str r1, [sp]
	movs r1, #0x18
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xc
	movs r2, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrh r1, [r0]
	adds r3, r2, #0
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r1, #5
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x28]
	bl FUN_020198E8
_021D1F6E:
	adds r0, r5, #0
	adds r0, #0xcc
	ldr r0, [r0]
	movs r2, #6
	str r2, [sp]
	movs r1, #7
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xc
	str r1, [sp, #8]
	adds r1, r4, #0
	muls r1, r2, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	movs r2, #0xd
	movs r3, #0xa
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r1, #5
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x28]
	bl FUN_02019964
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end ov80_021D1F30

	thumb_func_start ov80_021D1FB0
ov80_021D1FB0: @ 0x021D1FB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r1, [sp, #0x1c]
	lsls r1, r1, #2
	adds r4, r0, #0
	movs r7, #6
	adds r2, r1, #0
	ldr r0, _021D20D8 @ =0x021D3020
	muls r2, r7, r2
	adds r6, r0, r2
	adds r2, r1, #1
	adds r0, r2, #0
	muls r0, r7, r0
	ldr r2, _021D20D8 @ =0x021D3020
	mov ip, r0
	adds r3, r2, r0
	adds r2, r1, #2
	adds r0, r2, #0
	ldr r2, _021D20D8 @ =0x021D3020
	muls r0, r7, r0
	adds r5, r2, r0
	adds r0, r1, #3
	adds r1, r0, #0
	muls r1, r7, r1
	adds r0, r2, #0
	adds r7, r0, r1
	adds r0, r4, #0
	adds r0, #0xc0
	str r1, [sp, #0x20]
	ldr r1, [r0]
	ldrb r0, [r3, #4]
	str r0, [sp]
	ldrb r0, [r3, #5]
	str r0, [sp, #4]
	adds r0, r1, #0
	adds r0, #0xc
	str r0, [sp, #8]
	adds r0, r2, #0
	mov r2, ip
	ldrb r0, [r0, r2]
	str r0, [sp, #0xc]
	ldrb r0, [r3, #1]
	str r0, [sp, #0x10]
	ldrh r0, [r1]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	ldrh r0, [r1, #2]
	movs r1, #2
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldrb r2, [r3, #2]
	ldrb r3, [r3, #3]
	ldr r0, [r4, #0x28]
	bl FUN_020198E8
	adds r0, r4, #0
	adds r0, #0xd4
	ldrb r1, [r7, #4]
	ldr r0, [r0]
	ldr r2, _021D20D8 @ =0x021D3020
	str r1, [sp]
	ldrb r1, [r7, #5]
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xc
	str r1, [sp, #8]
	ldr r1, [sp, #0x20]
	ldrb r1, [r2, r1]
	str r1, [sp, #0xc]
	ldrb r1, [r7, #1]
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r1, #6
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldrb r2, [r7, #2]
	ldrb r3, [r7, #3]
	ldr r0, [r4, #0x28]
	bl FUN_02019964
	ldr r0, [sp, #0x1c]
	cmp r0, #2
	beq _021D20D4
	adds r0, r4, #0
	adds r0, #0xc0
	ldrb r1, [r6, #4]
	ldr r0, [r0]
	str r1, [sp]
	ldrb r1, [r6, #5]
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xc
	str r1, [sp, #8]
	ldrb r1, [r6]
	str r1, [sp, #0xc]
	ldrb r1, [r6, #1]
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r1, #3
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldrb r2, [r6, #2]
	ldrb r3, [r6, #3]
	ldr r0, [r4, #0x28]
	bl FUN_020198E8
	adds r0, r4, #0
	adds r0, #0xd4
	ldrb r1, [r5, #4]
	ldr r0, [r0]
	str r1, [sp]
	ldrb r1, [r5, #5]
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xc
	str r1, [sp, #8]
	ldrb r1, [r5]
	str r1, [sp, #0xc]
	ldrb r1, [r5, #1]
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r1, #7
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldrb r2, [r5, #2]
	ldrb r3, [r5, #3]
	ldr r0, [r4, #0x28]
	bl FUN_02019964
_021D20D4:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D20D8: .4byte 0x021D3020
	thumb_func_end ov80_021D1FB0

	thumb_func_start ov80_021D20DC
ov80_021D20DC: @ 0x021D20DC
	push {r3, r4, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	adds r0, #0xb8
	ldr r0, [r0]
	movs r1, #0x20
	str r1, [sp]
	movs r1, #0x18
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xc
	movs r2, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrh r1, [r0]
	adds r3, r2, #0
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r1, #2
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x28]
	bl FUN_020198E8
	adds r0, r4, #0
	adds r0, #0xbc
	movs r2, #0
	ldr r0, [r0]
	movs r1, #0x20
	str r1, [sp]
	movs r1, #0x18
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xc
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrh r1, [r0]
	adds r3, r2, #0
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r1, #3
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x28]
	bl FUN_020198E8
	ldrb r0, [r4]
	cmp r0, #1
	beq _021D2182
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #2
	str r1, [sp]
	movs r1, #3
	adds r2, r0, #0
	str r1, [sp, #4]
	adds r2, #0xc
	str r2, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	movs r3, #0x15
	str r3, [sp, #0x10]
	ldrh r2, [r0]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x18
	str r2, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r2, #0x10
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x28]
	bl FUN_020198E8
_021D2182:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl ov80_021D1F30
	adds r0, r4, #0
	adds r0, #0xc8
	movs r2, #0
	ldr r0, [r0]
	movs r1, #0x40
	str r1, [sp]
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xc
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrh r1, [r0]
	adds r3, r2, #0
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r1, #6
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x28]
	bl FUN_02019964
	adds r0, r4, #0
	adds r0, #0xc4
	movs r2, #0
	ldr r0, [r0]
	movs r1, #0x40
	str r1, [sp]
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xc
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrh r1, [r0]
	adds r3, r2, #0
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r1, #7
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x28]
	bl FUN_02019964
	ldrh r1, [r4, #2]
	movs r0, #1
	tst r0, r1
	beq _021D2200
	adds r0, r4, #0
	movs r1, #0
	bl ov80_021D1FB0
_021D2200:
	ldrh r1, [r4, #2]
	movs r0, #2
	tst r0, r1
	beq _021D2210
	adds r0, r4, #0
	movs r1, #1
	bl ov80_021D1FB0
_021D2210:
	ldrh r1, [r4, #2]
	movs r0, #4
	tst r0, r1
	beq _021D2220
	adds r0, r4, #0
	movs r1, #2
	bl ov80_021D1FB0
_021D2220:
	ldrh r1, [r4, #2]
	movs r0, #8
	tst r0, r1
	beq _021D2230
	adds r0, r4, #0
	movs r1, #3
	bl ov80_021D1FB0
_021D2230:
	ldr r0, [r4, #0x28]
	movs r1, #2
	bl FUN_0201C3C0
	ldr r0, [r4, #0x28]
	movs r1, #3
	bl FUN_0201C3C0
	ldr r0, [r4, #0x28]
	movs r1, #5
	bl FUN_0201C3C0
	ldr r0, [r4, #0x28]
	movs r1, #6
	bl FUN_0201C3C0
	ldr r0, [r4, #0x28]
	movs r1, #7
	bl FUN_0201C3C0
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ov80_021D20DC

	thumb_func_start ov80_021D225C
ov80_021D225C: @ 0x021D225C
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r0, [r4, #0x28]
	movs r1, #6
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	ldr r0, [r4, #0x28]
	movs r1, #7
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	movs r2, #0
	ldr r0, [r4, #0x28]
	movs r1, #6
	adds r3, r2, #0
	bl FUN_02019184
	movs r2, #0
	ldr r0, [r4, #0x28]
	movs r1, #7
	adds r3, r2, #0
	bl FUN_02019184
	movs r1, #0
	str r1, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02019CB8
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	movs r1, #1
	adds r3, r2, #0
	bl FUN_02019CB8
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	movs r1, #2
	adds r3, r2, #0
	bl FUN_02019CB8
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	movs r1, #3
	adds r3, r2, #0
	bl FUN_02019CB8
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	movs r1, #4
	adds r3, r2, #0
	bl FUN_02019CB8
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	movs r1, #5
	adds r3, r2, #0
	bl FUN_02019CB8
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	movs r1, #6
	adds r3, r2, #0
	bl FUN_02019CB8
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	movs r1, #7
	adds r3, r2, #0
	bl FUN_02019CB8
	ldr r0, [r4, #0x28]
	movs r1, #0
	bl FUN_0201C3C0
	ldr r0, [r4, #0x28]
	movs r1, #1
	bl FUN_0201C3C0
	ldr r0, [r4, #0x28]
	movs r1, #2
	bl FUN_0201C3C0
	ldr r0, [r4, #0x28]
	movs r1, #3
	bl FUN_0201C3C0
	ldr r0, [r4, #0x28]
	movs r1, #4
	bl FUN_0201C3C0
	ldr r0, [r4, #0x28]
	movs r1, #5
	bl FUN_0201C3C0
	ldr r0, [r4, #0x28]
	movs r1, #6
	bl FUN_0201C3C0
	ldr r0, [r4, #0x28]
	movs r1, #7
	bl FUN_0201C3C0
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov80_021D225C

	thumb_func_start ov80_021D2398
ov80_021D2398: @ 0x021D2398
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r5, r0, #0
	ldr r4, [r5, #0x34]
	ldr r6, _021D24B0 @ =0x021D3138
	add r3, sp, #0
	movs r2, #5
_021D23A6:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D23A6
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, _021D24B4 @ =0x021D30E8
	bl FUN_0200CA08
	movs r1, #1
	lsls r1, r1, #8
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #0
	bl FUN_02021CAC
	movs r1, #1
	lsls r1, r1, #8
	ldr r0, [r4, r1]
	lsls r1, r1, #4
	bl FUN_02021CE4
	movs r0, #1
	lsls r0, r0, #8
	ldr r0, [r4, r0]
	movs r1, #0x80
	movs r2, #0x6c
	bl FUN_0200D494
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, _021D24B8 @ =0x021D3110
	bl FUN_0200CA08
	movs r1, #0x41
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #1
	bl FUN_02021CAC
	movs r0, #0x41
	lsls r0, r0, #2
	movs r1, #2
	ldr r0, [r4, r0]
	lsls r1, r1, #0xc
	bl FUN_02021CE4
	movs r0, #0x41
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021CC8
	ldr r1, [r4, #0x18]
	movs r0, #0x41
	lsls r0, r0, #2
	movs r2, #7
	adds r3, r1, #0
	muls r3, r2, r3
	adds r3, #0x19
	lsls r1, r3, #0x10
	ldr r3, [r4, #0x1c]
	ldr r0, [r4, r0]
	muls r2, r3, r2
	subs r2, #0x22
	lsls r2, r2, #0x10
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D494
	ldr r0, [r5, #0x2c]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _021D2452
	movs r0, #1
	str r0, [sp, #0x10]
	b _021D2456
_021D2452:
	movs r0, #0
	str r0, [sp, #0x10]
_021D2456:
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	ldr r0, [r0]
	ldr r1, [r1]
	add r2, sp, #0
	bl FUN_0200CA08
	movs r1, #0x42
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #1
	bl FUN_02021CAC
	ldr r1, [r5, #0x2c]
	movs r0, #0x42
	ldr r1, [r1, #0xc]
	lsls r0, r0, #2
	lsls r1, r1, #0x10
	ldr r0, [r4, r0]
	lsrs r1, r1, #0x10
	bl FUN_02021E50
	ldr r1, [r4, #0x18]
	movs r0, #0x42
	lsls r0, r0, #2
	movs r2, #7
	adds r3, r1, #0
	muls r3, r2, r3
	adds r3, #0x19
	lsls r1, r3, #0x10
	ldr r3, [r4, #0x1c]
	ldr r0, [r4, r0]
	muls r2, r3, r2
	subs r2, #0x22
	lsls r2, r2, #0x10
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D494
	add sp, #0x28
	pop {r4, r5, r6, pc}
	nop
_021D24B0: .4byte 0x021D3138
_021D24B4: .4byte 0x021D30E8
_021D24B8: .4byte 0x021D3110
	thumb_func_end ov80_021D2398

	thumb_func_start ov80_021D24BC
ov80_021D24BC: @ 0x021D24BC
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	cmp r4, #8
	bge _021D24E2
	ldr r0, [r5, #0x28]
	movs r1, #6
	movs r2, #0
	movs r3, #8
	bl FUN_0201C63C
	ldr r0, [r5, #0x28]
	movs r1, #7
	movs r2, #0
	movs r3, #8
	bl FUN_0201C63C
	b _021D2516
_021D24E2:
	cmp r4, #0xf8
	ldr r0, [r5, #0x28]
	ble _021D2500
	movs r1, #6
	movs r2, #0
	movs r3, #0xf8
	bl FUN_0201C63C
	ldr r0, [r5, #0x28]
	movs r1, #7
	movs r2, #0
	movs r3, #0xf8
	bl FUN_0201C63C
	b _021D2516
_021D2500:
	movs r1, #6
	movs r2, #0
	adds r3, r4, #0
	bl FUN_0201C63C
	ldr r0, [r5, #0x28]
	movs r1, #7
	movs r2, #0
	adds r3, r4, #0
	bl FUN_0201C63C
_021D2516:
	cmp r6, #0x50
	bge _021D2534
	ldr r0, [r5, #0x28]
	movs r1, #6
	movs r2, #3
	movs r3, #0x50
	bl FUN_0201C63C
	ldr r0, [r5, #0x28]
	movs r1, #7
	movs r2, #3
	movs r3, #0x50
	bl FUN_0201C63C
	pop {r4, r5, r6, pc}
_021D2534:
	movs r3, #0x13
	lsls r3, r3, #4
	cmp r6, r3
	ldr r0, [r5, #0x28]
	ble _021D2556
	movs r1, #6
	movs r2, #3
	bl FUN_0201C63C
	movs r3, #0x13
	ldr r0, [r5, #0x28]
	movs r1, #7
	movs r2, #3
	lsls r3, r3, #4
	bl FUN_0201C63C
	pop {r4, r5, r6, pc}
_021D2556:
	movs r1, #6
	movs r2, #3
	adds r3, r6, #0
	bl FUN_0201C63C
	ldr r0, [r5, #0x28]
	movs r1, #7
	movs r2, #3
	adds r3, r6, #0
	bl FUN_0201C63C
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov80_021D24BC

	thumb_func_start ov80_021D2570
ov80_021D2570: @ 0x021D2570
	push {r4, r5}
	ldr r5, [r0]
	movs r4, #0
	cmp r5, #0
	ble _021D2594
_021D257A:
	ldr r3, [r0, #0xc]
	cmp r1, r3
	bne _021D258C
	ldr r3, [r0, #0x10]
	cmp r2, r3
	bne _021D258C
	adds r0, r4, #0
	pop {r4, r5}
	bx lr
_021D258C:
	adds r4, r4, #1
	adds r0, #0x10
	cmp r4, r5
	blt _021D257A
_021D2594:
	movs r0, #0
	mvns r0, r0
	pop {r4, r5}
	bx lr
	thumb_func_end ov80_021D2570

	thumb_func_start ov80_021D259C
ov80_021D259C: @ 0x021D259C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	ldr r0, [r6, #0x34]
	movs r1, #0
	str r0, [sp, #8]
	adds r0, #0xa4
	movs r2, #0x5c
	blx FUN_020C4CF4
	movs r0, #0
	ldr r7, [sp, #8]
	str r0, [sp, #4]
	str r0, [sp]
	ldr r0, [sp, #8]
	adds r7, #0xa4
	str r0, [sp, #0xc]
	adds r0, #0xb0
	str r0, [sp, #0xc]
_021D25C2:
	ldr r1, [r6, #0x2c]
	ldr r0, [sp]
	adds r1, #0x20
	adds r4, r1, r0
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _021D2676
	ldr r1, [r4]
	ldr r0, [r6, #0x20]
	cmp r1, r0
	bne _021D25E0
	ldr r2, [r4, #4]
	ldr r0, [r6, #0x24]
	cmp r2, r0
	beq _021D2666
_021D25E0:
	ldr r2, [r4, #4]
	adds r0, r7, #0
	bl ov80_021D2570
	cmp r0, #0
	bge _021D25FE
	ldr r0, [sp, #8]
	adds r0, #0xa4
	ldr r1, [r0]
	ldr r0, [r7]
	lsls r1, r1, #4
	adds r0, r0, #1
	str r0, [r7]
	ldr r0, [sp, #0xc]
	b _021D2602
_021D25FE:
	lsls r1, r0, #4
	ldr r0, [sp, #0xc]
_021D2602:
	adds r5, r0, r1
	ldr r0, [r4]
	str r0, [r5]
	ldr r0, [r4, #4]
	str r0, [r5, #4]
	ldrh r0, [r4, #8]
	cmp r0, #3
	bls _021D2616
	movs r0, #0
	b _021D261C
_021D2616:
	lsls r1, r0, #1
	ldr r0, _021D26A0 @ =0x021D2FE4
	ldrh r0, [r0, r1]
_021D261C:
	strh r0, [r5, #8]
	ldr r0, [sp, #4]
	adds r1, r6, #0
	strb r0, [r5, #0xa]
	movs r0, #1
	strb r0, [r5, #0xb]
	adds r0, r6, #0
	adds r0, #0xd8
	adds r1, #0xdc
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, _021D26A4 @ =0x021D2FF8
	bl FUN_0200CA08
	str r0, [r5, #0xc]
	ldr r2, [r5]
	movs r1, #7
	muls r1, r2, r1
	adds r1, #0x19
	lsls r1, r1, #0x10
	ldr r3, [r5, #4]
	movs r2, #7
	muls r2, r3, r2
	subs r2, #0x22
	lsls r2, r2, #0x10
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D494
	ldr r0, [r5, #0xc]
	movs r1, #2
	bl FUN_02021F58
	ldr r0, [r5, #0xc]
	movs r1, #0
	bl FUN_02021CAC
_021D2666:
	ldr r0, [sp]
	adds r0, #0xc
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blt _021D25C2
_021D2676:
	ldr r0, [sp, #8]
	adds r0, #0xa4
	ldr r0, [r0]
	cmp r0, #0
	beq _021D269C
	subs r1, r0, #1
	ldr r0, [sp, #8]
	movs r2, #1
	adds r0, #0xae
	strb r1, [r0]
	ldr r1, [sp, #8]
	ldr r0, _021D26A8 @ =ov80_021D26AC
	adds r1, #0xa4
	bl FUN_0200D9E8
	ldr r1, [sp, #8]
	adds r1, #0xa8
	str r1, [sp, #8]
	str r0, [r1]
_021D269C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D26A0: .4byte 0x021D2FE4
_021D26A4: .4byte 0x021D2FF8
_021D26A8: .4byte ov80_021D26AC
	thumb_func_end ov80_021D259C

	thumb_func_start ov80_021D26AC
ov80_021D26AC: @ 0x021D26AC
	push {r4, lr}
	adds r4, r1, #0
	ldrh r0, [r4, #8]
	adds r1, r0, #1
	strh r1, [r4, #8]
	movs r1, #0x1a
	blx FUN_020E1F6C
	cmp r1, #0
	bgt _021D26FC
	ldrb r0, [r4, #0xb]
	movs r1, #0
	lsls r0, r0, #4
	adds r0, r4, r0
	ldr r0, [r0, #0x18]
	bl FUN_02021CAC
	ldrb r0, [r4, #0xa]
	movs r1, #1
	lsls r0, r0, #4
	adds r0, r4, r0
	ldr r0, [r0, #0x18]
	bl FUN_02021CAC
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	ldr r1, [r4]
	ldrb r2, [r4, #0xa]
	subs r0, r1, #1
	adds r0, r2, r0
	blx FUN_020E1F6C
	strb r1, [r4, #0xa]
	movs r0, #0x41
	ldrh r1, [r4, #8]
	lsls r0, r0, #2
	cmp r1, r0
	bls _021D26FC
	movs r0, #1
	strh r0, [r4, #8]
_021D26FC:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov80_021D26AC

	thumb_func_start ov80_021D2700
ov80_021D2700: @ 0x021D2700
	push {r4, r5, r6, lr}
	ldr r6, [r0, #0x34]
	adds r0, r6, #0
	adds r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	beq _021D2712
	bl FUN_0200DA58
_021D2712:
	adds r0, r6, #0
	adds r0, #0xa4
	ldr r0, [r0]
	movs r4, #0
	cmp r0, #0
	ble _021D2738
	adds r5, r6, #0
_021D2720:
	adds r0, r5, #0
	adds r0, #0xbc
	ldr r0, [r0]
	bl FUN_0200C7E4
	adds r0, r6, #0
	adds r0, #0xa4
	ldr r0, [r0]
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, r0
	blt _021D2720
_021D2738:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov80_021D2700

	thumb_func_start ov80_021D273C
ov80_021D273C: @ 0x021D273C
	push {r4, lr}
	adds r3, r0, #0
	ldr r4, [r3, #0x34]
	movs r2, #0
	str r2, [r4, #4]
	str r2, [r4, #8]
	cmp r1, #0
	bne _021D275C
	ldr r0, _021D276C @ =ov80_021D2774
	adds r1, r3, #0
	bl FUN_0200D9E8
	movs r1, #0x43
	lsls r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
_021D275C:
	ldr r0, _021D2770 @ =ov80_021D28EC
	adds r1, r3, #0
	bl FUN_0200D9E8
	movs r1, #0x43
	lsls r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	.align 2, 0
_021D276C: .4byte ov80_021D2774
_021D2770: .4byte ov80_021D28EC
	thumb_func_end ov80_021D273C

	thumb_func_start ov80_021D2774
ov80_021D2774: @ 0x021D2774
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r1, #0
	ldr r4, [r5, #0x34]
	adds r6, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #4
	bls _021D2786
	b _021D28E0
_021D2786:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D2792: @ jump table
	.2byte _021D279C - _021D2792 - 2 @ case 0
	.2byte _021D27D0 - _021D2792 - 2 @ case 1
	.2byte _021D280C - _021D2792 - 2 @ case 2
	.2byte _021D2848 - _021D2792 - 2 @ case 3
	.2byte _021D28BE - _021D2792 - 2 @ case 4
_021D279C:
	movs r0, #1
	lsls r0, r0, #8
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021CAC
	movs r0, #1
	lsls r0, r0, #8
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #1
	lsls r0, r0, #8
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021E50
	ldr r0, _021D28E4 @ =0x000005E4
	bl FUN_02005748
	ldr r0, [r4, #4]
	add sp, #0x10
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_021D27D0:
	ldr r1, [r4, #8]
	movs r0, #0x1f
	lsrs r3, r1, #0x1f
	lsls r2, r1, #0x1f
	subs r2, r2, r3
	rors r2, r0
	adds r0, r3, r2
	beq _021D27F8
	adds r3, r1, r3
	ldr r1, _021D28E8 @ =0x021D2FE0
	asrs r2, r3, #1
	ldrb r1, [r1, r2]
	adds r0, r5, #0
	movs r2, #0
	bl ov80_021D1F30
	ldr r0, [r5, #0x28]
	movs r1, #5
	bl FUN_0201C3C0
_021D27F8:
	ldr r1, [r4, #8]
	adds r0, r1, #1
	str r0, [r4, #8]
	cmp r1, #7
	ble _021D28E0
	ldr r0, [r4, #4]
	add sp, #0x10
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_021D280C:
	movs r0, #1
	lsls r0, r0, #8
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #1
	lsls r0, r0, #8
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021CC8
	movs r3, #0
	str r3, [r5, #0x14]
	movs r0, #8
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	movs r1, #0xd
	str r0, [sp, #8]
	movs r0, #4
	movs r2, #2
	bl FUN_0200F174
	ldr r0, [r4, #4]
	add sp, #0x10
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_021D2848:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D28E0
	movs r0, #1
	strb r0, [r4, #0x10]
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x28]
	movs r1, #4
	adds r3, r2, #0
	bl FUN_02019CB8
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x28]
	movs r1, #5
	adds r3, r2, #0
	bl FUN_02019CB8
	adds r1, r4, #0
	adds r0, r5, #0
	adds r1, #0x68
	bl ov80_021D1D6C
	adds r0, r5, #0
	bl ov80_021D1A30
	adds r0, r5, #0
	bl ov80_021D19E4
	movs r3, #0
	str r3, [r5, #0x14]
	movs r0, #8
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	movs r1, #0xd
	str r0, [sp, #8]
	movs r0, #4
	movs r2, #5
	bl FUN_0200F174
	ldr r0, [r4, #4]
	add sp, #0x10
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_021D28BE:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D28E0
	movs r0, #0
	str r0, [r4, #8]
	str r0, [r4, #4]
	ldrb r0, [r4, #0x14]
	subs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r6, #0
	bl FUN_0200DA58
	movs r0, #0x43
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
_021D28E0:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D28E4: .4byte 0x000005E4
_021D28E8: .4byte 0x021D2FE0
	thumb_func_end ov80_021D2774

	thumb_func_start ov80_021D28EC
ov80_021D28EC: @ 0x021D28EC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r1, #0
	ldr r4, [r5, #0x34]
	adds r6, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021D2908
	cmp r0, #1
	beq _021D2932
	cmp r0, #2
	beq _021D2990
	add sp, #0x10
	pop {r4, r5, r6, pc}
_021D2908:
	movs r3, #0
	str r3, [r5, #0x14]
	movs r0, #8
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	movs r1, #0xd
	str r0, [sp, #8]
	movs r0, #4
	movs r2, #2
	bl FUN_0200F174
	ldr r0, _021D29B8 @ =0x00000691
	bl FUN_02005748
	ldr r0, [r4, #4]
	add sp, #0x10
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_021D2932:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D29B4
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x28]
	movs r1, #4
	adds r3, r2, #0
	bl FUN_02019CB8
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl ov80_021D1F30
	ldr r0, [r5, #0x28]
	movs r1, #4
	bl FUN_0201C3C0
	ldr r0, [r5, #0x28]
	movs r1, #5
	bl FUN_0201C3C0
	movs r3, #0
	str r3, [r5, #0x14]
	movs r0, #8
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	movs r1, #0xd
	str r0, [sp, #8]
	movs r0, #4
	movs r2, #5
	bl FUN_0200F174
	ldr r0, [r4, #4]
	add sp, #0x10
	adds r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_021D2990:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D29B4
	movs r0, #0
	strb r0, [r4, #0x10]
	str r0, [r4, #4]
	str r0, [r4, #8]
	ldrb r0, [r4, #0x14]
	subs r0, r0, #2
	strb r0, [r4, #0x14]
	adds r0, r6, #0
	bl FUN_0200DA58
	movs r0, #0x43
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
_021D29B4:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D29B8: .4byte 0x00000691
	thumb_func_end ov80_021D28EC

	thumb_func_start ov80_021D29BC
ov80_021D29BC: @ 0x021D29BC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x34]
	adds r0, r4, #0
	adds r0, #0xa0
	ldr r0, [r0]
	cmp r0, #0
	bne _021D29D0
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D29D0:
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x1c]
	bl ov80_021D2C5C
	cmp r0, #0
	beq _021D29EA
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _021D29EE
_021D29EA:
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D29EE:
	ldr r1, [r5, #0x2c]
	movs r0, #1
	str r0, [r1, #0x10]
	ldr r2, [r4, #0x18]
	ldr r1, [r5, #0x2c]
	str r2, [r1, #0x14]
	ldr r2, [r4, #0x1c]
	ldr r1, [r5, #0x2c]
	str r2, [r1, #0x18]
	ldr r2, [r4, #0x20]
	ldr r1, [r5, #0x2c]
	str r2, [r1, #0x1c]
	pop {r3, r4, r5, pc}
	thumb_func_end ov80_021D29BC

	thumb_func_start ov80_021D2A08
ov80_021D2A08: @ 0x021D2A08
	push {r4, r5, r6, lr}
	sub sp, #0x50
	adds r4, r0, #0
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	ldr r1, [r4, #4]
	movs r0, #0x20
	bl FUN_0201DBEC
	ldr r0, [r4, #4]
	bl FUN_0200C6E4
	adds r1, r4, #0
	adds r1, #0xd8
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xd8
	ldr r0, [r0]
	bl FUN_0200C704
	adds r1, r4, #0
	adds r1, #0xdc
	add r2, sp, #0x30
	ldr r5, _021D2AB4 @ =0x021D3190
	str r0, [r1]
	ldm r5!, {r0, r1}
	adds r3, r2, #0
	stm r2!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r5!, {r0, r1}
	ldr r6, _021D2AB8 @ =0x021D3160
	stm r2!, {r0, r1}
	add r5, sp, #0x1c
	ldm r6!, {r0, r1}
	adds r2, r5, #0
	stm r5!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r5!, {r0, r1}
	ldr r0, [r6]
	adds r1, r3, #0
	str r0, [r5]
	adds r0, r4, #0
	adds r0, #0xd8
	ldr r0, [r0]
	movs r3, #0x20
	bl FUN_0200C73C
	adds r0, r4, #0
	adds r1, r4, #0
	adds r0, #0xd8
	adds r1, #0xdc
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #0x1c
	bl FUN_0200C7C0
	ldr r5, _021D2ABC @ =0x021D3174
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	adds r0, r4, #0
	adds r0, #0xd8
	adds r4, #0xdc
	ldr r0, [r0]
	ldr r1, [r4]
	bl FUN_0200C8F0
	add sp, #0x50
	pop {r4, r5, r6, pc}
	nop
_021D2AB4: .4byte 0x021D3190
_021D2AB8: .4byte 0x021D3160
_021D2ABC: .4byte 0x021D3174
	thumb_func_end ov80_021D2A08

	thumb_func_start ov80_021D2AC0
ov80_021D2AC0: @ 0x021D2AC0
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r0, #0xd8
	adds r1, #0xdc
	ldr r0, [r0]
	ldr r1, [r1]
	bl FUN_0200C8B0
	adds r4, #0xd8
	ldr r0, [r4]
	bl FUN_0200C8D4
	bl FUN_0201DC3C
	pop {r4, pc}
	thumb_func_end ov80_021D2AC0

	thumb_func_start ov80_021D2AE0
ov80_021D2AE0: @ 0x021D2AE0
	ldr r3, _021D2AE8 @ =FUN_0200C7EC
	adds r0, #0xdc
	ldr r0, [r0]
	bx r3
	.align 2, 0
_021D2AE8: .4byte FUN_0200C7EC
	thumb_func_end ov80_021D2AE0

	thumb_func_start ov80_021D2AEC
ov80_021D2AEC: @ 0x021D2AEC
	ldr r3, _021D2AF0 @ =FUN_0200C800
	bx r3
	.align 2, 0
_021D2AF0: .4byte FUN_0200C800
	thumb_func_end ov80_021D2AEC

	thumb_func_start ov80_021D2AF4
ov80_021D2AF4: @ 0x021D2AF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r5, [sp, #0x28]
	str r0, [sp]
	str r1, [sp, #4]
	adds r0, r5, #0
	movs r1, #0xc
	str r2, [sp, #8]
	adds r4, r3, #0
	bl FUN_02018144
	adds r7, r0, #0
	movs r0, #0
	strb r0, [r7]
	strb r0, [r7, #1]
	strb r0, [r7, #2]
	strb r0, [r7, #3]
	strb r0, [r7, #4]
	strb r0, [r7, #5]
	strb r0, [r7, #6]
	strb r0, [r7, #7]
	strb r0, [r7, #8]
	strb r0, [r7, #9]
	strb r0, [r7, #0xa]
	strb r0, [r7, #0xb]
	strh r4, [r7]
	ldrh r2, [r7]
	movs r1, #0x1c
	adds r0, r5, #0
	muls r1, r2, r1
	bl FUN_02018144
	str r0, [r7, #8]
	ldrh r3, [r7]
	movs r2, #0x1c
	movs r1, #0
	muls r2, r3, r2
	blx FUN_020D5124
	ldrh r0, [r7]
	movs r6, #0
	ldr r5, _021D2C10 @ =0x021D31D8
	cmp r0, #0
	ble _021D2C0A
	str r6, [sp, #0xc]
_021D2B4E:
	ldr r0, [r7, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r5]
	adds r4, r0, r1
	str r2, [r0, r1]
	ldrb r0, [r5, #8]
	ldr r1, [sp, #4]
	ldr r2, _021D2C14 @ =0x021D31B0
	strb r0, [r4, #8]
	ldrb r0, [r5, #9]
	strb r0, [r4, #9]
	ldrh r0, [r5, #0xa]
	strh r0, [r4, #0xa]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [sp, #8]
	ldrb r0, [r0, r6]
	str r0, [r4, #0x14]
	ldr r0, [sp]
	bl FUN_0200CA08
	str r0, [r4, #0x18]
	movs r1, #1
	bl FUN_02021CAC
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021D2B98
	ldrb r2, [r4, #9]
	ldr r0, [r4, #0x18]
	adds r2, r2, #5
	adds r1, r2, r1
	bl FUN_02021E90
	b _021D2BAE
_021D2B98:
	ldrh r1, [r4, #0xa]
	ldr r0, _021D2C18 @ =0x0000FFFF
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _021D2BAE
	ldr r0, [r4, #0x18]
	movs r1, #0
	bl FUN_02021CAC
_021D2BAE:
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _021D2BC6
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _021D2BD4
_021D2BC6:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_021D2BD4:
	blx FUN_020E1740
	adds r1, r0, #0
	ldr r0, [r4, #0x18]
	bl FUN_02021E2C
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	adds r1, #0x19
	subs r2, #0x22
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	ldr r0, [r4, #0x18]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D494
	ldr r0, [sp, #0xc]
	adds r5, #0x14
	adds r0, #0x1c
	str r0, [sp, #0xc]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	ldrh r0, [r7]
	cmp r6, r0
	blt _021D2B4E
_021D2C0A:
	adds r0, r7, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D2C10: .4byte 0x021D31D8
_021D2C14: .4byte 0x021D31B0
_021D2C18: .4byte 0x0000FFFF
	thumb_func_end ov80_021D2AF4

	thumb_func_start ov80_021D2C1C
ov80_021D2C1C: @ 0x021D2C1C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r0, [r5]
	movs r6, #0
	cmp r0, #0
	ble _021D2C4C
	adds r4, r6, #0
_021D2C2A:
	ldr r0, [r5, #8]
	movs r1, #0
	adds r7, r0, r4
	ldr r0, [r7, #0x18]
	adds r2, r1, #0
	bl FUN_02021C98
	ldr r0, [r7, #0x18]
	bl FUN_02021BD4
	adds r0, r6, #1
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	ldrh r0, [r5]
	adds r4, #0x1c
	cmp r6, r0
	blt _021D2C2A
_021D2C4C:
	ldr r0, [r5, #8]
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov80_021D2C1C

	thumb_func_start ov80_021D2C5C
ov80_021D2C5C: @ 0x021D2C5C
	push {r3, r4, r5, r6}
	ldrh r5, [r0]
	movs r4, #0
	cmp r5, #0
	ble _021D2CB8
	ldr r0, [r0, #8]
_021D2C68:
	ldr r6, [r0]
	cmp r6, r1
	bne _021D2CAC
	ldrh r6, [r0, #0xa]
	cmp r6, #3
	bhi _021D2CAC
	adds r6, r6, r6
	add r6, pc
	ldrh r6, [r6, #6]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	add pc, r6
_021D2C80: @ jump table
	.2byte _021D2C88 - _021D2C80 - 2 @ case 0
	.2byte _021D2C8C - _021D2C80 - 2 @ case 1
	.2byte _021D2C98 - _021D2C80 - 2 @ case 2
	.2byte _021D2CA4 - _021D2C80 - 2 @ case 3
_021D2C88:
	pop {r3, r4, r5, r6}
	bx lr
_021D2C8C:
	cmp r2, #9
	bne _021D2CAC
	cmp r3, #0x1c
	bne _021D2CAC
	pop {r3, r4, r5, r6}
	bx lr
_021D2C98:
	cmp r2, #0x1a
	bne _021D2CAC
	cmp r3, #0x12
	bne _021D2CAC
	pop {r3, r4, r5, r6}
	bx lr
_021D2CA4:
	cmp r2, #0x1a
	bne _021D2CAC
	cmp r3, #0x11
	beq _021D2CBA
_021D2CAC:
	adds r4, r4, #1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, #0x1c
	cmp r4, r5
	blt _021D2C68
_021D2CB8:
	movs r0, #0
_021D2CBA:
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end ov80_021D2C5C

	thumb_func_start ov80_021D2CC0
ov80_021D2CC0: @ 0x021D2CC0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bne _021D2CCA
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D2CCA:
	bl ov80_021D2C5C
	adds r4, r0, #0
	beq _021D2CD8
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021D2CF2
_021D2CD8:
	ldr r3, [r5, #4]
	cmp r3, #0
	beq _021D2CEC
	ldrb r1, [r3, #9]
	ldr r0, [r3, #0x18]
	adds r2, r1, #5
	ldr r1, [r3, #0x14]
	adds r1, r2, r1
	bl FUN_02021E90
_021D2CEC:
	movs r0, #0
	str r0, [r5, #4]
	pop {r3, r4, r5, pc}
_021D2CF2:
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _021D2D00
	movs r0, #0
	strb r0, [r5, #2]
	strb r0, [r5, #3]
	b _021D2D1C
_021D2D00:
	ldrh r2, [r4, #0xa]
	ldr r0, _021D2D24 @ =0x0000FFFE
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _021D2D1C
	ldrb r2, [r1, #9]
	ldr r0, [r1, #0x18]
	ldr r1, [r1, #0x14]
	adds r2, r2, #5
	adds r1, r2, r1
	bl FUN_02021E90
_021D2D1C:
	str r4, [r5, #4]
	movs r0, #1
	pop {r3, r4, r5, pc}
	nop
_021D2D24: .4byte 0x0000FFFE
	thumb_func_end ov80_021D2CC0

	thumb_func_start ov80_021D2D28
ov80_021D2D28: @ 0x021D2D28
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, [r4, #4]
	cmp r3, #0
	beq _021D2D6C
	cmp r1, #1
	bne _021D2D6C
	ldrb r0, [r4, #3]
	cmp r0, #0
	ldr r0, [r3, #0x18]
	bne _021D2D48
	ldrb r1, [r3, #9]
	adds r1, #8
	bl FUN_02021E90
	b _021D2D54
_021D2D48:
	ldrb r1, [r3, #9]
	adds r2, r1, #5
	ldr r1, [r3, #0x14]
	adds r1, r2, r1
	bl FUN_02021E90
_021D2D54:
	ldrb r0, [r4, #2]
	adds r0, r0, #1
	strb r0, [r4, #2]
	ldrb r0, [r4, #2]
	cmp r0, #0x10
	bne _021D2D6C
	movs r0, #0
	strb r0, [r4, #2]
	ldrb r1, [r4, #3]
	movs r0, #1
	eors r0, r1
	strb r0, [r4, #3]
_021D2D6C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov80_021D2D28

	thumb_func_start ov80_021D2D70
ov80_021D2D70: @ 0x021D2D70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	adds r5, r0, #0
	add r0, sp, #4
	adds r4, r1, #0
	blx FUN_020C7DA0
	add r0, sp, #4
	adds r1, r5, #0
	blx FUN_020C8080
	cmp r0, #0
	bne _021D2D94
	bl FUN_02022974
	add sp, #0x4c
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_021D2D94:
	add r0, sp, #4
	add r1, sp, #0
	movs r2, #4
	blx FUN_020C81D4
	cmp r0, #0
	bge _021D2DA6
	bl FUN_02022974
_021D2DA6:
	adds r0, r4, #0
	movs r1, #8
	bl FUN_02018144
	adds r6, r0, #0
	movs r0, #0
	strb r0, [r6]
	strb r0, [r6, #1]
	strb r0, [r6, #2]
	strb r0, [r6, #3]
	strb r0, [r6, #4]
	strb r0, [r6, #5]
	strb r0, [r6, #6]
	strb r0, [r6, #7]
	ldr r2, [sp]
	movs r1, #0x18
	adds r0, r4, #0
	muls r1, r2, r1
	bl FUN_02018144
	str r0, [r6, #4]
	ldr r3, [sp]
	movs r2, #0x18
	movs r1, #0
	muls r2, r3, r2
	blx FUN_020D5124
	ldr r0, [sp]
	movs r4, #0
	str r0, [r6]
	cmp r0, #0
	ble _021D2E02
	adds r5, r4, #0
_021D2DE8:
	ldr r0, [r6, #4]
	movs r2, #0x18
	adds r7, r0, r5
	add r0, sp, #4
	adds r1, r7, #0
	blx FUN_020C81D4
	strh r4, [r7, #0x16]
	ldr r0, [r6]
	adds r4, r4, #1
	adds r5, #0x18
	cmp r4, r0
	blt _021D2DE8
_021D2E02:
	add r0, sp, #4
	blx FUN_020C80C8
	adds r0, r6, #0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov80_021D2D70

	thumb_func_start ov80_021D2E10
ov80_021D2E10: @ 0x021D2E10
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov80_021D2E10

	thumb_func_start ov80_021D2E24
ov80_021D2E24: @ 0x021D2E24
	push {r3, r4, r5, r6}
	ldr r6, [r0]
	movs r5, #0
	cmp r6, #0
	ble _021D2E54
	ldr r0, [r0, #4]
_021D2E30:
	ldrh r4, [r0]
	cmp r4, r1
	bne _021D2E4C
	ldrh r4, [r0, #2]
	cmp r4, r2
	bne _021D2E4C
	ldrh r1, [r0, #0x14]
	cmp r1, #0
	beq _021D2E56
	tst r1, r3
	bne _021D2E56
	movs r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_021D2E4C:
	adds r5, r5, #1
	adds r0, #0x18
	cmp r5, r6
	blt _021D2E30
_021D2E54:
	movs r0, #0
_021D2E56:
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end ov80_021D2E24
	@ 0x021D2E5C
