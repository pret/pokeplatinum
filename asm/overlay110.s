	.include "macros/function.inc"


	.text

	thumb_func_start ov110_021D0D80
ov110_021D0D80: @ 0x021D0D80
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0
	adds r6, r1, #0
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
	ldr r0, _021D0E90 @ =0xFFFFE0FF
	ldr r3, _021D0E94 @ =0x04001000
	ands r1, r0
	str r1, [r2]
	ldr r1, [r3]
	lsrs r2, r2, #9
	ands r0, r1
	str r0, [r3]
	movs r0, #3
	movs r1, #0x72
	bl FUN_02017FC8
	movs r1, #0x13
	adds r0, r4, #0
	lsls r1, r1, #4
	movs r2, #0x72
	bl FUN_0200681C
	movs r2, #0x13
	adds r5, r0, #0
	movs r1, #0
	lsls r2, r2, #4
	blx FUN_020D5124
	str r4, [r5]
	movs r0, #0x72
	bl FUN_02018340
	str r0, [r5, #0xc]
	adds r0, r4, #0
	bl FUN_02006840
	adds r4, r0, #0
	movs r0, #0x4a
	ldr r1, [r4]
	lsls r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	bl FUN_0203068C
	movs r1, #0x4b
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldrb r0, [r4, #4]
	strb r0, [r5, #5]
	ldrb r0, [r4, #5]
	strb r0, [r5, #6]
	ldrh r0, [r4, #6]
	strh r0, [r5, #8]
	subs r0, r1, #4
	ldr r0, [r5, r0]
	bl FUN_02025E44
	movs r1, #0x49
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r5, #0
	bl ov110_021D1180
	movs r0, #1
	movs r1, #0x1a
	movs r2, #0x10
	movs r3, #0x72
	bl FUN_0200B144
	movs r1, #0x11
	lsls r1, r1, #4
	str r0, [r5, r1]
	movs r0, #0x72
	bl FUN_0200B358
	movs r1, #0x45
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0x32
	lsls r0, r0, #4
	movs r1, #0x72
	bl FUN_02023790
	movs r1, #0x46
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0x32
	lsls r0, r0, #4
	movs r1, #0x72
	bl FUN_02023790
	movs r1, #0x47
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0
	adds r1, #0x84
	movs r2, #0x72
	bl FUN_02002E7C
	movs r1, #6
	movs r0, #0
	lsls r1, r1, #6
	movs r2, #0x72
	bl FUN_02002E98
	ldrb r0, [r5, #6]
	bl ov110_021D1208
	adds r2, r0, #0
	adds r1, r5, #0
	ldr r0, [r5, #0xc]
	adds r1, #0x10
	bl ov110_021D2124
	ldr r0, _021D0E98 @ =ov110_021D1048
	adds r1, r5, #0
	bl FUN_02017798
	movs r0, #0
	str r0, [r6]
	movs r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D0E90: .4byte 0xFFFFE0FF
_021D0E94: .4byte 0x04001000
_021D0E98: .4byte ov110_021D1048
	thumb_func_end ov110_021D0D80

	thumb_func_start ov110_021D0E9C
ov110_021D0E9C: @ 0x021D0E9C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	bl FUN_0200682C
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #0
	beq _021D0EB6
	cmp r1, #1
	beq _021D0ECA
	cmp r1, #2
	beq _021D0EDE
	b _021D0EEA
_021D0EB6:
	bl ov110_021D0F78
	cmp r0, #1
	bne _021D0EEA
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl ov110_021D1200
	b _021D0EEA
_021D0ECA:
	bl ov110_021D0FD0
	cmp r0, #1
	bne _021D0EEA
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	bl ov110_021D1200
	b _021D0EEA
_021D0EDE:
	bl ov110_021D1000
	cmp r0, #1
	bne _021D0EEA
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D0EEA:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov110_021D0E9C

	thumb_func_start ov110_021D0EF0
ov110_021D0EF0: @ 0x021D0EF0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #2
	bl FUN_02002FA0
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02002FA0
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02002F54
	movs r0, #0x12
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
	subs r0, #0x10
	ldr r0, [r4, r0]
	bl FUN_0200B190
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200B3F0
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020237BC
	movs r0, #0x47
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020237BC
	ldrb r0, [r4, #6]
	bl ov110_021D1208
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x10
	bl ov110_021D216C
	ldr r0, [r4, #0xc]
	bl ov110_021D11CC
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r0, #0x72
	bl FUN_0201807C
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov110_021D0EF0

	thumb_func_start ov110_021D0F78
ov110_021D0F78: @ 0x021D0F78
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _021D0F8E
	cmp r0, #1
	beq _021D0F94
	cmp r0, #2
	beq _021D0FBA
	b _021D0FC8
_021D0F8E:
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _021D0FC8
_021D0F94:
	movs r0, #6
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x72
	str r0, [sp, #8]
	movs r0, #0
	movs r1, #1
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	adds r0, r4, #0
	bl ov110_021D140C
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _021D0FC8
_021D0FBA:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D0FC8
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, pc}
_021D0FC8:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov110_021D0F78

	thumb_func_start ov110_021D0FD0
ov110_021D0FD0: @ 0x021D0FD0
	ldrb r1, [r0, #4]
	cmp r1, #0
	beq _021D0FDC
	cmp r1, #1
	beq _021D0FE2
	b _021D0FF6
_021D0FDC:
	adds r1, r1, #1
	strb r1, [r0, #4]
	b _021D0FF6
_021D0FE2:
	ldr r0, _021D0FFC @ =0x021BF67C
	ldr r1, [r0, #0x44]
	movs r0, #1
	tst r0, r1
	bne _021D0FF2
	movs r0, #2
	tst r0, r1
	beq _021D0FF6
_021D0FF2:
	movs r0, #1
	bx lr
_021D0FF6:
	movs r0, #0
	bx lr
	nop
_021D0FFC: .4byte 0x021BF67C
	thumb_func_end ov110_021D0FD0

	thumb_func_start ov110_021D1000
ov110_021D1000: @ 0x021D1000
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _021D1012
	cmp r0, #1
	beq _021D1032
	b _021D1040
_021D1012:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x72
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _021D1040
_021D1032:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _021D1040
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, pc}
_021D1040:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov110_021D1000

	thumb_func_start ov110_021D1048
ov110_021D1048: @ 0x021D1048
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D105A
	bl FUN_02003694
_021D105A:
	ldr r0, [r4, #0xc]
	bl FUN_0201C2B8
	ldr r3, _021D1070 @ =0x027E0000
	ldr r1, _021D1074 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_021D1070: .4byte 0x027E0000
_021D1074: .4byte 0x00003FF8
	thumb_func_end ov110_021D1048

	thumb_func_start ov110_021D1078
ov110_021D1078: @ 0x021D1078
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D1094 @ =0x021D21F8
	add r3, sp, #0
	movs r2, #5
_021D1082:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D1082
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_021D1094: .4byte 0x021D21F8
	thumb_func_end ov110_021D1078

	thumb_func_start ov110_021D1098
ov110_021D1098: @ 0x021D1098
	push {r4, r5, lr}
	sub sp, #0x64
	ldr r5, _021D116C @ =0x021D2194
	add r3, sp, #0x54
	adds r4, r0, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _021D1170 @ =0x021D21A4
	add r3, sp, #0x38
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
	adds r0, r4, #0
	adds r3, r1, #0
	bl FUN_020183C4
	movs r0, #0
	movs r1, #0x20
	adds r2, r0, #0
	movs r3, #0x72
	bl FUN_02019690
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02019EBC
	ldr r5, _021D1174 @ =0x021D21DC
	add r3, sp, #0x1c
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
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	movs r0, #2
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x72
	bl FUN_02019690
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019EBC
	ldr r5, _021D1178 @ =0x021D21C0
	add r3, sp, #0
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
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	movs r0, #6
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x72
	bl FUN_02019690
	adds r0, r4, #0
	movs r1, #6
	bl FUN_02019EBC
	ldr r1, _021D117C @ =0x04000008
	movs r0, #3
	ldrh r2, [r1]
	bics r2, r0
	movs r0, #1
	strh r2, [r1]
	adds r1, r0, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	add sp, #0x64
	pop {r4, r5, pc}
	.align 2, 0
_021D116C: .4byte 0x021D2194
_021D1170: .4byte 0x021D21A4
_021D1174: .4byte 0x021D21DC
_021D1178: .4byte 0x021D21C0
_021D117C: .4byte 0x04000008
	thumb_func_end ov110_021D1098

	thumb_func_start ov110_021D1180
ov110_021D1180: @ 0x021D1180
	push {r4, lr}
	adds r4, r0, #0
	bl ov110_021D1078
	ldr r0, [r4, #0xc]
	bl ov110_021D1098
	movs r0, #0x72
	bl FUN_02002F38
	movs r1, #0x12
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #2
	lsls r2, r1, #8
	movs r3, #0x72
	bl FUN_02002F70
	movs r2, #0x12
	lsls r2, r2, #4
	ldr r0, [r4, r2]
	movs r1, #0
	adds r2, #0xe0
	movs r3, #0x72
	bl FUN_02002F70
	adds r0, r4, #0
	movs r1, #2
	bl ov110_021D123C
	bl ov110_021D128C
	adds r0, r4, #0
	movs r1, #6
	bl ov110_021D12C0
	pop {r4, pc}
	thumb_func_end ov110_021D1180

	thumb_func_start ov110_021D11CC
ov110_021D11CC: @ 0x021D11CC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x1f
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0x1f
	movs r1, #0
	bl FUN_0201FF74
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #6
	bl FUN_02019044
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov110_021D11CC

	thumb_func_start ov110_021D1200
ov110_021D1200: @ 0x021D1200
	movs r3, #0
	strb r3, [r0, #4]
	str r2, [r1]
	bx lr
	thumb_func_end ov110_021D1200

	thumb_func_start ov110_021D1208
ov110_021D1208: @ 0x021D1208
	movs r1, #0
	cmp r0, #6
	bhi _021D1238
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D121A: @ jump table
	.2byte _021D1238 - _021D121A - 2 @ case 0
	.2byte _021D1236 - _021D121A - 2 @ case 1
	.2byte _021D1228 - _021D121A - 2 @ case 2
	.2byte _021D1228 - _021D121A - 2 @ case 3
	.2byte _021D122E - _021D121A - 2 @ case 4
	.2byte _021D122A - _021D121A - 2 @ case 5
	.2byte _021D1232 - _021D121A - 2 @ case 6
_021D1228:
	b _021D1238
_021D122A:
	movs r1, #1
	b _021D1238
_021D122E:
	movs r1, #2
	b _021D1238
_021D1232:
	movs r1, #3
	b _021D1238
_021D1236:
	movs r1, #4
_021D1238:
	adds r0, r1, #0
	bx lr
	thumb_func_end ov110_021D1208

	thumb_func_start ov110_021D123C
ov110_021D123C: @ 0x021D123C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0x96
	movs r1, #0x72
	bl FUN_02006C24
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r1, #0x72
	str r1, [sp, #0xc]
	ldr r2, [r5, #0xc]
	movs r1, #0x7c
	adds r3, r4, #0
	adds r6, r0, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x72
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	adds r0, r6, #0
	movs r1, #0x7b
	adds r3, r4, #0
	bl FUN_0200710C
	adds r0, r6, #0
	bl FUN_02006CA8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov110_021D123C

	thumb_func_start ov110_021D128C
ov110_021D128C: @ 0x021D128C
	push {r3, r4, lr}
	sub sp, #4
	movs r0, #0x96
	movs r1, #0xaa
	add r2, sp, #0
	movs r3, #0x72
	bl FUN_02006F88
	adds r4, r0, #0
	ldr r0, [sp]
	movs r1, #0x40
	ldr r0, [r0, #0xc]
	blx FUN_020C2C54
	ldr r0, [sp]
	movs r1, #0
	ldr r0, [r0, #0xc]
	movs r2, #0x40
	blx FUN_020C00B4
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov110_021D128C

	thumb_func_start ov110_021D12C0
ov110_021D12C0: @ 0x021D12C0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0xc
	movs r1, #0x72
	bl FUN_02006C24
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r1, #0x72
	str r1, [sp, #0xc]
	ldr r2, [r5, #0xc]
	movs r1, #0xa
	adds r3, r6, #0
	adds r4, r0, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x72
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	adds r0, r4, #0
	movs r1, #0xb
	adds r3, r6, #0
	bl FUN_0200710C
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x72
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #4
	movs r3, #0
	bl FUN_02007130
	adds r0, r4, #0
	bl FUN_02006CA8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov110_021D12C0

	thumb_func_start ov110_021D1324
ov110_021D1324: @ 0x021D1324
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	add r0, sp, #0x3c
	ldrb r0, [r0]
	adds r6, r1, #0
	adds r7, r2, #0
	adds r4, r3, #0
	cmp r0, #0
	beq _021D1342
	add r1, sp, #0x18
	ldrb r1, [r1, #0x1c]
	adds r0, r6, #0
	bl FUN_0201ADA4
_021D1342:
	movs r2, #0x11
	lsls r2, r2, #4
	ldr r0, [r5, r2]
	adds r2, #0xc
	ldr r2, [r5, r2]
	adds r1, r7, #0
	bl FUN_0200B1B8
	movs r2, #0x45
	lsls r2, r2, #2
	adds r1, r2, #4
	ldr r0, [r5, r2]
	adds r2, #8
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl FUN_0200C388
	ldr r0, [sp, #0x40]
	cmp r0, #1
	beq _021D1370
	cmp r0, #2
	beq _021D1386
	b _021D1396
_021D1370:
	movs r1, #0x46
	lsls r1, r1, #2
	movs r0, #0
	ldr r1, [r5, r1]
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r0, r0, #1
	lsrs r0, r0, #1
	subs r4, r4, r0
	b _021D1396
_021D1386:
	movs r1, #0x46
	lsls r1, r1, #2
	movs r0, #0
	ldr r1, [r5, r1]
	adds r2, r0, #0
	bl FUN_02002D7C
	subs r4, r4, r0
_021D1396:
	ldr r0, [sp, #0x28]
	movs r2, #0
	str r0, [sp]
	str r2, [sp, #4]
	add r3, sp, #0x18
	ldrb r0, [r3, #0x14]
	ldrb r1, [r3, #0x1c]
	ldrb r3, [r3, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x10
	orrs r0, r3
	orrs r0, r1
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	add r1, sp, #0x38
	movs r2, #0x46
	lsls r2, r2, #2
	ldrb r1, [r1]
	ldr r2, [r5, r2]
	adds r0, r6, #0
	adds r3, r4, #0
	bl FUN_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov110_021D1324

	thumb_func_start ov110_021D13CC
ov110_021D13CC: @ 0x021D13CC
	push {r4, r5, lr}
	sub sp, #0x1c
	movs r5, #0
	str r5, [sp]
	movs r4, #1
	str r4, [sp, #4]
	movs r4, #2
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	str r3, [sp, #0x14]
	adds r3, r5, #0
	str r5, [sp, #0x18]
	bl ov110_021D1324
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov110_021D13CC

	thumb_func_start ov110_021D13F0
ov110_021D13F0: @ 0x021D13F0
	push {r3, lr}
	sub sp, #8
	movs r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	movs r3, #0x45
	lsls r3, r3, #2
	ldr r0, [r0, r3]
	movs r3, #4
	bl FUN_0200B60C
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov110_021D13F0

	thumb_func_start ov110_021D140C
ov110_021D140C: @ 0x021D140C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #6]
	cmp r1, #6
	bhi _021D1460
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D1422: @ jump table
	.2byte _021D1460 - _021D1422 - 2 @ case 0
	.2byte _021D144E - _021D1422 - 2 @ case 1
	.2byte _021D1430 - _021D1422 - 2 @ case 2
	.2byte _021D1430 - _021D1422 - 2 @ case 3
	.2byte _021D1442 - _021D1422 - 2 @ case 4
	.2byte _021D143C - _021D1422 - 2 @ case 5
	.2byte _021D1448 - _021D1422 - 2 @ case 6
_021D1430:
	bl ov110_021D1468
	adds r0, r4, #0
	bl ov110_021D1650
	pop {r4, pc}
_021D143C:
	bl ov110_021D1808
	pop {r4, pc}
_021D1442:
	bl ov110_021D19F4
	pop {r4, pc}
_021D1448:
	bl ov110_021D1C40
	pop {r4, pc}
_021D144E:
	ldrb r1, [r4, #5]
	cmp r1, #1
	bhi _021D145A
	bl ov110_021D1DBC
	pop {r4, pc}
_021D145A:
	bl ov110_021D1ED8
	pop {r4, pc}
_021D1460:
	adds r0, r4, #0
	bl ov110_021D1C40
	pop {r4, pc}
	thumb_func_end ov110_021D140C

	thumb_func_start ov110_021D1468
ov110_021D1468: @ 0x021D1468
	push {r3, r4, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	adds r0, #0x10
	movs r1, #0
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x10
	movs r2, #0x16
	movs r3, #8
	bl ov110_021D1324
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _021D14A4
	movs r2, #0x1a
	movs r3, #0xd8
	b _021D14B2
_021D14A4:
	cmp r0, #1
	bne _021D14AE
	movs r2, #0x1b
	movs r3, #0xd8
	b _021D14B2
_021D14AE:
	movs r2, #0x1c
	movs r3, #0xd8
_021D14B2:
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r1, r4, #0
	str r0, [sp, #0x18]
	adds r0, r4, #0
	adds r1, #0x10
	bl ov110_021D1324
	adds r0, r4, #0
	adds r0, #0x10
	bl FUN_0201A9A4
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x20
	movs r2, #0x22
	movs r3, #1
	bl ov110_021D13CC
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r1, r4, #0
	str r0, [sp, #0x18]
	adds r0, r4, #0
	adds r1, #0x20
	movs r2, #0x24
	movs r3, #0xe0
	bl ov110_021D1324
	adds r0, r4, #0
	adds r0, #0x20
	bl FUN_0201A9A4
	adds r0, r4, #0
	movs r1, #0
	bl ov110_021D17AC
	adds r1, r4, #0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, #0x30
	movs r3, #1
	bl ov110_021D13CC
	ldrb r1, [r4, #5]
	movs r0, #0
	bl FUN_0205E430
	adds r1, r0, #0
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #0xff
	bl FUN_02030698
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl ov110_021D13F0
	movs r2, #0
	str r2, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x30
	movs r2, #0x26
	movs r3, #0x70
	bl ov110_021D1324
	ldrb r1, [r4, #5]
	movs r0, #0
	bl FUN_0205E488
	adds r1, r0, #0
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #0xff
	bl FUN_02030698
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl ov110_021D13F0
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r1, r4, #0
	str r0, [sp, #0x18]
	adds r0, r4, #0
	adds r1, #0x30
	movs r2, #0x28
	movs r3, #0xe0
	bl ov110_021D1324
	adds r0, r4, #0
	adds r0, #0x30
	bl FUN_0201A9A4
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x40
	movs r2, #0x1f
	movs r3, #1
	bl ov110_021D13CC
	ldrb r1, [r4, #5]
	movs r0, #0
	bl FUN_0205E45C
	adds r1, r0, #0
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #0xff
	bl FUN_02030698
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl ov110_021D13F0
	movs r2, #0
	str r2, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x40
	movs r2, #0x26
	movs r3, #0x70
	bl ov110_021D1324
	ldrb r1, [r4, #5]
	movs r0, #0
	bl FUN_0205E4B4
	adds r1, r0, #0
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #0xff
	bl FUN_02030698
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl ov110_021D13F0
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r1, r4, #0
	str r0, [sp, #0x18]
	adds r0, r4, #0
	adds r1, #0x40
	movs r2, #0x28
	movs r3, #0xe0
	bl ov110_021D1324
	adds r4, #0x40
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ov110_021D1468

	thumb_func_start ov110_021D1650
ov110_021D1650: @ 0x021D1650
	push {r3, r4, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0x23
	movs r3, #1
	bl ov110_021D13CC
	adds r0, r4, #0
	adds r0, #0x50
	bl FUN_0201A9A4
	adds r0, r4, #0
	movs r1, #1
	bl ov110_021D17AC
	adds r1, r4, #0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, #0x60
	movs r3, #1
	bl ov110_021D13CC
	ldrb r1, [r4, #5]
	movs r0, #1
	bl FUN_0205E430
	adds r1, r0, #0
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #0xff
	bl FUN_02030698
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl ov110_021D13F0
	movs r2, #0
	str r2, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x60
	movs r2, #0x26
	movs r3, #0x70
	bl ov110_021D1324
	ldrb r1, [r4, #5]
	movs r0, #1
	bl FUN_0205E488
	adds r1, r0, #0
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #0xff
	bl FUN_02030698
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl ov110_021D13F0
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r1, r4, #0
	str r0, [sp, #0x18]
	adds r0, r4, #0
	adds r1, #0x60
	movs r2, #0x28
	movs r3, #0xe0
	bl ov110_021D1324
	adds r0, r4, #0
	adds r0, #0x60
	bl FUN_0201A9A4
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x70
	movs r2, #0x1f
	movs r3, #1
	bl ov110_021D13CC
	ldrb r1, [r4, #5]
	movs r0, #1
	bl FUN_0205E45C
	adds r1, r0, #0
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #0xff
	bl FUN_02030698
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl ov110_021D13F0
	movs r2, #0
	str r2, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x70
	movs r2, #0x26
	movs r3, #0x70
	bl ov110_021D1324
	ldrb r1, [r4, #5]
	movs r0, #1
	bl FUN_0205E4B4
	adds r1, r0, #0
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #0xff
	bl FUN_02030698
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl ov110_021D13F0
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r1, r4, #0
	str r0, [sp, #0x18]
	adds r0, r4, #0
	adds r1, #0x70
	movs r2, #0x28
	movs r3, #0xe0
	bl ov110_021D1324
	adds r4, #0x70
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #0x1c
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov110_021D1650

	thumb_func_start ov110_021D17AC
ov110_021D17AC: @ 0x021D17AC
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	bne _021D17B6
	movs r5, #0x66
	b _021D17B8
_021D17B6:
	movs r5, #0x68
_021D17B8:
	ldrb r4, [r0, #5]
	cmp r4, #3
	bne _021D17DC
	movs r1, #0x4a
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bl FUN_0203068C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_02030698
	b _021D17F6
_021D17DC:
	movs r1, #0x4a
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bl FUN_020300F4
	lsls r2, r6, #2
	adds r2, r4, r2
	lsls r2, r2, #0x18
	movs r1, #0xa
	lsrs r2, r2, #0x18
	movs r3, #0
	bl FUN_020300E0
_021D17F6:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _021D1802
	movs r0, #0x1e
	pop {r4, r5, r6, pc}
_021D1802:
	movs r0, #0x1d
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov110_021D17AC

	thumb_func_start ov110_021D1808
ov110_021D1808: @ 0x021D1808
	push {r4, r5, r6, lr}
	sub sp, #0x20
	adds r5, r0, #0
	adds r0, #0x10
	movs r1, #0
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r1, r5, #0
	adds r0, r5, #0
	adds r1, #0x10
	movs r2, #0x18
	movs r3, #8
	bl ov110_021D1324
	ldrb r0, [r5, #5]
	cmp r0, #0
	bne _021D1844
	movs r2, #0x1a
	movs r3, #0xd8
	b _021D1852
_021D1844:
	cmp r0, #1
	bne _021D184E
	movs r2, #0x1b
	movs r3, #0xd8
	b _021D1852
_021D184E:
	movs r2, #0x1c
	movs r3, #0xd8
_021D1852:
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r1, r5, #0
	str r0, [sp, #0x18]
	adds r0, r5, #0
	adds r1, #0x10
	bl ov110_021D1324
	adds r0, r5, #0
	adds r0, #0x10
	bl FUN_0201A9A4
	adds r0, r5, #0
	bl ov110_021D19B0
	movs r3, #0
	adds r1, r5, #0
	str r3, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r3, [sp, #0x14]
	adds r0, r5, #0
	adds r1, #0x20
	movs r2, #0x27
	str r3, [sp, #0x18]
	bl ov110_021D1324
	adds r0, r5, #0
	adds r0, #0x20
	bl FUN_0201A9A4
	adds r1, r5, #0
	adds r0, r5, #0
	adds r1, #0x30
	movs r2, #0x1d
	movs r3, #1
	bl ov110_021D13CC
	movs r0, #0x4a
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0203068C
	adds r4, r0, #0
	ldrb r0, [r5, #5]
	bl FUN_0205E55C
	adds r6, r0, #0
	ldrb r0, [r5, #5]
	bl FUN_0205E55C
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_02030698
	ldrh r1, [r5, #8]
	cmp r1, r0
	beq _021D18E6
	movs r2, #0
	b _021D18FC
_021D18E6:
	ldrb r0, [r5, #5]
	bl FUN_0205E50C
	adds r1, r0, #0
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r2, #0xff
	bl FUN_02030698
	adds r2, r0, #0
_021D18FC:
	adds r0, r5, #0
	movs r1, #0
	bl ov110_021D13F0
	movs r2, #0
	str r2, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r1, r5, #0
	adds r0, r5, #0
	adds r1, #0x30
	movs r2, #0x26
	movs r3, #0x70
	bl ov110_021D1324
	adds r0, r5, #0
	adds r0, #0x30
	bl FUN_0201A9A4
	adds r1, r5, #0
	adds r0, r5, #0
	adds r1, #0x40
	movs r2, #0x1f
	movs r3, #1
	bl ov110_021D13CC
	movs r0, #0x4a
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0xb
	add r2, sp, #0x1c
	bl FUN_020308A0
	adds r4, r0, #0
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	beq _021D1956
	movs r6, #0
	b _021D196E
_021D1956:
	ldrb r0, [r5, #5]
	bl FUN_0205E584
	adds r2, r0, #0
	movs r0, #0x4a
	lsls r0, r0, #2
	ldrh r3, [r5, #8]
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl FUN_020308BC
	adds r6, r0, #0
_021D196E:
	cmp r4, #0
	beq _021D1978
	adds r0, r4, #0
	bl FUN_020181C4
_021D1978:
	adds r0, r5, #0
	movs r1, #0
	adds r2, r6, #0
	bl ov110_021D13F0
	movs r2, #0
	str r2, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r1, r5, #0
	adds r0, r5, #0
	adds r1, #0x40
	movs r2, #0x26
	movs r3, #0x70
	bl ov110_021D1324
	adds r5, #0x40
	adds r0, r5, #0
	bl FUN_0201A9A4
	add sp, #0x20
	pop {r4, r5, r6, pc}
	thumb_func_end ov110_021D1808

	thumb_func_start ov110_021D19B0
ov110_021D19B0: @ 0x021D19B0
	push {r4, r5, r6, lr}
	sub sp, #8
	movs r2, #0x67
	adds r5, r0, #0
	movs r0, #1
	movs r1, #0x1a
	lsls r2, r2, #2
	movs r3, #0x72
	bl FUN_0200B144
	ldrh r1, [r5, #8]
	adds r6, r0, #0
	bl FUN_0200B1EC
	adds r4, r0, #0
	adds r0, r6, #0
	bl FUN_0200B190
	movs r1, #0
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r2, r4, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	adds r0, r4, #0
	bl FUN_020237BC
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov110_021D19B0

	thumb_func_start ov110_021D19F4
ov110_021D19F4: @ 0x021D19F4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	adds r0, #0x10
	movs r1, #0
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r1, r5, #0
	adds r0, r5, #0
	adds r1, #0x10
	movs r2, #0x17
	movs r3, #8
	bl ov110_021D1324
	ldrb r0, [r5, #5]
	cmp r0, #0
	bne _021D1A30
	movs r2, #0x1a
	movs r3, #0xd8
	b _021D1A3E
_021D1A30:
	cmp r0, #1
	bne _021D1A3A
	movs r2, #0x1b
	movs r3, #0xd8
	b _021D1A3E
_021D1A3A:
	movs r2, #0x1c
	movs r3, #0xd8
_021D1A3E:
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r1, r5, #0
	str r0, [sp, #0x18]
	adds r0, r5, #0
	adds r1, #0x10
	bl ov110_021D1324
	adds r0, r5, #0
	adds r0, #0x10
	bl FUN_0201A9A4
	movs r2, #0
	str r2, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r1, r5, #0
	str r0, [sp, #0x18]
	adds r0, r5, #0
	adds r1, #0x20
	movs r2, #0x25
	movs r3, #0x60
	bl ov110_021D1324
	adds r0, r5, #0
	adds r0, #0x20
	bl FUN_0201A9A4
	adds r0, r5, #0
	bl ov110_021D1BEC
	adds r1, r5, #0
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, #0x30
	movs r3, #1
	bl ov110_021D13CC
	ldrb r0, [r5, #5]
	bl FUN_0205E5E0
	adds r1, r0, #0
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r2, #0xff
	bl FUN_02030698
	adds r2, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl ov110_021D13F0
	movs r2, #0
	str r2, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r1, r5, #0
	adds r0, r5, #0
	adds r1, #0x30
	movs r2, #0x2a
	movs r3, #0x70
	bl ov110_021D1324
	movs r0, #0x4a
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0203068C
	adds r4, r0, #0
	ldrb r0, [r5, #5]
	bl FUN_0205E630
	adds r6, r0, #0
	ldrb r0, [r5, #5]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_02030698
	adds r2, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl ov110_021D13F0
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r1, r5, #0
	str r0, [sp, #0x18]
	adds r0, r5, #0
	adds r1, #0x30
	movs r2, #0x29
	movs r3, #0xe0
	bl ov110_021D1324
	adds r0, r5, #0
	adds r0, #0x30
	bl FUN_0201A9A4
	adds r1, r5, #0
	adds r0, r5, #0
	adds r1, #0x40
	movs r2, #0x1f
	movs r3, #1
	bl ov110_021D13CC
	ldrb r0, [r5, #5]
	bl FUN_0205E608
	adds r1, r0, #0
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r2, #0xff
	bl FUN_02030698
	adds r2, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl ov110_021D13F0
	movs r2, #0
	str r2, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r1, r5, #0
	adds r0, r5, #0
	adds r1, #0x40
	movs r2, #0x2a
	movs r3, #0x70
	bl ov110_021D1324
	movs r0, #0x4a
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0203068C
	adds r4, r0, #0
	ldrb r0, [r5, #5]
	bl FUN_0205E680
	adds r6, r0, #0
	ldrb r0, [r5, #5]
	bl FUN_0205E680
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_02030698
	adds r2, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl ov110_021D13F0
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r1, r5, #0
	str r0, [sp, #0x18]
	adds r0, r5, #0
	adds r1, #0x40
	movs r2, #0x29
	movs r3, #0xe0
	bl ov110_021D1324
	adds r5, #0x40
	adds r0, r5, #0
	bl FUN_0201A9A4
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov110_021D19F4

	thumb_func_start ov110_021D1BEC
ov110_021D1BEC: @ 0x021D1BEC
	push {r3, r4, lr}
	sub sp, #4
	ldrb r4, [r0, #5]
	cmp r4, #3
	bne _021D1C14
	movs r1, #0x4a
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bl FUN_0203068C
	adds r4, r0, #0
	movs r0, #0x6c
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0x6c
	bl FUN_02030698
	b _021D1C2A
_021D1C14:
	movs r1, #0x4a
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bl FUN_0203041C
	movs r3, #0
	movs r1, #9
	adds r2, r4, #0
	str r3, [sp]
	bl FUN_02030470
_021D1C2A:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _021D1C38
	add sp, #4
	movs r0, #0x1e
	pop {r3, r4, pc}
_021D1C38:
	movs r0, #0x1d
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov110_021D1BEC

	thumb_func_start ov110_021D1C40
ov110_021D1C40: @ 0x021D1C40
	push {r3, r4, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	adds r0, #0x10
	movs r1, #0
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x10
	movs r2, #0x19
	movs r3, #8
	bl ov110_021D1324
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _021D1C7C
	movs r2, #0x1a
	movs r3, #0xd8
	b _021D1C8A
_021D1C7C:
	cmp r0, #1
	bne _021D1C86
	movs r2, #0x1b
	movs r3, #0xd8
	b _021D1C8A
_021D1C86:
	movs r2, #0x1c
	movs r3, #0xd8
_021D1C8A:
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r1, r4, #0
	str r0, [sp, #0x18]
	adds r0, r4, #0
	adds r1, #0x10
	bl ov110_021D1324
	adds r0, r4, #0
	adds r0, #0x10
	bl FUN_0201A9A4
	adds r0, r4, #0
	bl ov110_021D1D68
	adds r1, r4, #0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, #0x20
	movs r3, #1
	bl ov110_021D13CC
	ldrb r0, [r4, #5]
	bl FUN_0205E700
	adds r1, r0, #0
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #0xff
	bl FUN_02030698
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl ov110_021D13F0
	movs r2, #0
	str r2, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x20
	movs r2, #0x2b
	movs r3, #0x70
	bl ov110_021D1324
	adds r0, r4, #0
	adds r0, #0x20
	bl FUN_0201A9A4
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x30
	movs r2, #0x1f
	movs r3, #1
	bl ov110_021D13CC
	ldrb r0, [r4, #5]
	bl FUN_0205E728
	adds r1, r0, #0
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #0xff
	bl FUN_02030698
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl ov110_021D13F0
	movs r2, #0
	str r2, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x30
	movs r2, #0x2b
	movs r3, #0x70
	bl ov110_021D1324
	adds r4, #0x30
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #0x1c
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov110_021D1C40

	thumb_func_start ov110_021D1D68
ov110_021D1D68: @ 0x021D1D68
	push {r3, r4, lr}
	sub sp, #4
	ldrb r4, [r0, #5]
	cmp r4, #3
	bne _021D1D90
	movs r1, #0x4a
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bl FUN_0203068C
	adds r4, r0, #0
	movs r0, #0x6e
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0x6e
	bl FUN_02030698
	b _021D1DA6
_021D1D90:
	movs r1, #0x4a
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bl FUN_020305B8
	movs r3, #0
	movs r1, #8
	adds r2, r4, #0
	str r3, [sp]
	bl FUN_02030600
_021D1DA6:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _021D1DB4
	add sp, #4
	movs r0, #0x1e
	pop {r3, r4, pc}
_021D1DB4:
	movs r0, #0x1d
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov110_021D1D68

	thumb_func_start ov110_021D1DBC
ov110_021D1DBC: @ 0x021D1DBC
	push {r3, r4, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	adds r0, #0x10
	movs r1, #0
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x10
	movs r2, #0x15
	movs r3, #8
	bl ov110_021D1324
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _021D1DF6
	movs r2, #0x1a
	b _021D1DF8
_021D1DF6:
	movs r2, #0x1b
_021D1DF8:
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r1, r4, #0
	str r0, [sp, #0x18]
	movs r3, #0xd8
	adds r0, r4, #0
	adds r1, #0x10
	bl ov110_021D1324
	adds r0, r4, #0
	adds r0, #0x10
	bl FUN_0201A9A4
	ldrb r1, [r4, #5]
	adds r0, r4, #0
	bl ov110_021D20CC
	adds r1, r4, #0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, #0x30
	movs r3, #1
	bl ov110_021D13CC
	ldrb r0, [r4, #5]
	bl FUN_0205E750
	adds r1, r0, #0
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #0xff
	bl FUN_02030698
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl ov110_021D13F0
	movs r2, #0
	str r2, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x30
	movs r2, #0x26
	movs r3, #0x70
	bl ov110_021D1324
	adds r0, r4, #0
	adds r0, #0x30
	bl FUN_0201A9A4
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x40
	movs r2, #0x1f
	movs r3, #1
	bl ov110_021D13CC
	ldrb r0, [r4, #5]
	bl FUN_0205E790
	adds r1, r0, #0
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #0xff
	bl FUN_02030698
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl ov110_021D13F0
	movs r2, #0
	str r2, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x40
	movs r2, #0x26
	movs r3, #0x70
	bl ov110_021D1324
	adds r4, #0x40
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ov110_021D1DBC

	thumb_func_start ov110_021D1ED8
ov110_021D1ED8: @ 0x021D1ED8
	push {r3, r4, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	adds r0, #0x10
	movs r1, #0
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x10
	movs r2, #0x15
	movs r3, #8
	bl ov110_021D1324
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r1, r4, #0
	str r0, [sp, #0x18]
	adds r0, r4, #0
	adds r1, #0x10
	movs r2, #0x1c
	movs r3, #0xd8
	bl ov110_021D1324
	adds r0, r4, #0
	adds r0, #0x10
	bl FUN_0201A9A4
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x20
	movs r2, #0x20
	movs r3, #1
	bl ov110_021D13CC
	adds r0, r4, #0
	adds r0, #0x20
	bl FUN_0201A9A4
	ldrb r1, [r4, #5]
	adds r0, r4, #0
	bl ov110_021D20CC
	adds r1, r4, #0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, #0x50
	movs r3, #1
	bl ov110_021D13CC
	ldrb r0, [r4, #5]
	bl FUN_0205E750
	adds r1, r0, #0
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #0xff
	bl FUN_02030698
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl ov110_021D13F0
	movs r2, #0
	str r2, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x50
	movs r2, #0x26
	movs r3, #0x70
	bl ov110_021D1324
	adds r0, r4, #0
	adds r0, #0x50
	bl FUN_0201A9A4
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x60
	movs r2, #0x1f
	movs r3, #1
	bl ov110_021D13CC
	ldrb r0, [r4, #5]
	bl FUN_0205E790
	adds r1, r0, #0
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #0xff
	bl FUN_02030698
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl ov110_021D13F0
	movs r2, #0
	str r2, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x60
	movs r2, #0x26
	movs r3, #0x70
	bl ov110_021D1324
	adds r0, r4, #0
	adds r0, #0x60
	bl FUN_0201A9A4
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x70
	movs r2, #0x21
	movs r3, #1
	bl ov110_021D13CC
	adds r0, r4, #0
	adds r0, #0x70
	bl FUN_0201A9A4
	adds r0, r4, #0
	movs r1, #3
	bl ov110_021D20CC
	adds r1, r4, #0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, #0x80
	movs r3, #1
	bl ov110_021D13CC
	movs r0, #3
	bl FUN_0205E750
	adds r1, r0, #0
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #0xff
	bl FUN_02030698
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl ov110_021D13F0
	movs r2, #0
	str r2, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x80
	movs r2, #0x26
	movs r3, #0x70
	bl ov110_021D1324
	adds r0, r4, #0
	adds r0, #0x80
	bl FUN_0201A9A4
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x90
	movs r2, #0x1f
	movs r3, #1
	bl ov110_021D13CC
	movs r0, #3
	bl FUN_0205E790
	adds r1, r0, #0
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #0xff
	bl FUN_02030698
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl ov110_021D13F0
	movs r2, #0
	str r2, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x90
	movs r2, #0x26
	movs r3, #0x70
	bl ov110_021D1324
	adds r4, #0x90
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #0x1c
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov110_021D1ED8

	thumb_func_start ov110_021D20CC
ov110_021D20CC: @ 0x021D20CC
	push {r4, lr}
	adds r4, r1, #0
	movs r1, #0x4a
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bl FUN_0202D750
	cmp r4, #6
	bhi _021D2110
	adds r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D20EA: @ jump table
	.2byte _021D20F8 - _021D20EA - 2 @ case 0
	.2byte _021D20FC - _021D20EA - 2 @ case 1
	.2byte _021D2100 - _021D20EA - 2 @ case 2
	.2byte _021D2104 - _021D20EA - 2 @ case 3
	.2byte _021D2108 - _021D20EA - 2 @ case 4
	.2byte _021D2110 - _021D20EA - 2 @ case 5
	.2byte _021D210C - _021D20EA - 2 @ case 6
_021D20F8:
	movs r1, #8
	b _021D2112
_021D20FC:
	movs r1, #9
	b _021D2112
_021D2100:
	movs r1, #0xa
	b _021D2112
_021D2104:
	movs r1, #0xb
	b _021D2112
_021D2108:
	movs r1, #0xc
	b _021D2112
_021D210C:
	movs r1, #0xf
	b _021D2112
_021D2110:
	movs r1, #8
_021D2112:
	movs r2, #0
	bl FUN_0202D414
	cmp r0, #1
	bne _021D2120
	movs r0, #0x1e
	pop {r4, pc}
_021D2120:
	movs r0, #0x1d
	pop {r4, pc}
	thumb_func_end ov110_021D20CC

	thumb_func_start ov110_021D2124
ov110_021D2124: @ 0x021D2124
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	adds r5, r1, #0
	ldr r0, _021D2164 @ =0x021D2278
	lsls r1, r2, #3
	ldr r0, [r0, r1]
	movs r4, #0
	str r0, [sp, #4]
	ldr r0, _021D2168 @ =0x021D227C
	ldr r7, [r0, r1]
	cmp r7, #0
	bls _021D2160
_021D213E:
	ldr r2, [sp, #4]
	lsls r6, r4, #4
	lsls r3, r4, #3
	ldr r0, [sp]
	adds r1, r5, r6
	adds r2, r2, r3
	bl FUN_0201A8D4
	adds r0, r5, r6
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r7
	blo _021D213E
_021D2160:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D2164: .4byte 0x021D2278
_021D2168: .4byte 0x021D227C
	thumb_func_end ov110_021D2124

	thumb_func_start ov110_021D216C
ov110_021D216C: @ 0x021D216C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _021D2190 @ =0x021D227C
	lsls r1, r1, #3
	ldr r5, [r0, r1]
	movs r4, #0
	cmp r5, #0
	bls _021D218E
_021D217C:
	lsls r0, r4, #4
	adds r0, r6, r0
	bl FUN_0201A8FC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _021D217C
_021D218E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D2190: .4byte 0x021D227C
	thumb_func_end ov110_021D216C
	@ 0x021D2194
