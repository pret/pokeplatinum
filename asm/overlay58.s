	.include "macros/function.inc"


	.text

	thumb_func_start ov58_021D0D80
ov58_021D0D80: @ 0x021D0D80
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r1, #0
	ldr r1, [r5]
	adds r6, r0, #0
	cmp r1, #0
	beq _021D0D96
	cmp r1, #1
	bne _021D0D94
	b _021D0ED6
_021D0D94:
	b _021D0EE4
_021D0D96:
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021D0EEC @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _021D0EF0 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	movs r0, #3
	movs r1, #0x27
	lsls r2, r2, #6
	bl FUN_02017FC8
	ldr r1, _021D0EF4 @ =0x0000940C
	adds r0, r6, #0
	movs r2, #0x27
	bl FUN_0200681C
	ldr r2, _021D0EF4 @ =0x0000940C
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x27
	bl FUN_02018340
	str r0, [r4]
	movs r0, #0x27
	bl FUN_0200B358
	str r0, [r4, #0xc]
	ldr r2, _021D0EF8 @ =0x000001A9
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0x27
	bl FUN_0200B144
	str r0, [r4, #0x10]
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	bl ov58_021D1184
	ldr r0, [r4]
	bl ov58_021D11A4
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0200F344
	movs r0, #1
	movs r1, #0
	bl FUN_0200F344
	movs r0, #0x10
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x27
	str r0, [sp, #8]
	movs r0, #0
	movs r1, #0x11
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	adds r0, r6, #0
	bl FUN_02006840
	str r0, [r4, #8]
	movs r0, #0x4e
	movs r1, #0x27
	bl FUN_02006C24
	adds r7, r0, #0
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov58_021D142C
	bl FUN_0201E3D8
	movs r0, #2
	bl FUN_0201E450
	ldr r0, _021D0EFC @ =ov58_021D115C
	ldr r1, [r4]
	bl FUN_02017798
	adds r0, r4, #0
	bl ov58_021D12C4
	bl ov58_021D1524
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov58_021D1554
	adds r0, r4, #0
	bl ov58_021D16D8
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov58_021D18AC
	movs r1, #0
	movs r0, #0x34
	adds r2, r1, #0
	bl FUN_02004550
	ldr r2, _021D0F00 @ =0x04000304
	ldr r0, _021D0F04 @ =0xFFFF7FFF
	ldrh r1, [r2]
	ands r0, r1
	strh r0, [r2]
	adds r0, r4, #0
	bl FUN_02095E98
	movs r0, #0
	movs r1, #1
	bl FUN_020388F4
	bl FUN_0203608C
	cmp r0, #0
	bne _021D0EB0
	movs r0, #3
	bl FUN_02037B58
_021D0EB0:
	bl FUN_02039734
	bl FUN_0203608C
	cmp r0, #0
	bne _021D0EC8
	movs r0, #1
	bl FUN_0205BEA8
	movs r0, #1
	bl FUN_02033ED4
_021D0EC8:
	adds r0, r7, #0
	bl FUN_02006CA8
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _021D0EE4
_021D0ED6:
	bl FUN_0200682C
	movs r0, #0
	str r0, [r5]
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_021D0EE4:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021D0EEC: .4byte 0xFFFFE0FF
_021D0EF0: .4byte 0x04001000
_021D0EF4: .4byte 0x0000940C
_021D0EF8: .4byte 0x000001A9
_021D0EFC: .4byte ov58_021D115C
_021D0F00: .4byte 0x04000304
_021D0F04: .4byte 0xFFFF7FFF
	thumb_func_end ov58_021D0D80

	thumb_func_start ov58_021D0F08
ov58_021D0F08: @ 0x021D0F08
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	bl FUN_0203608C
	cmp r0, #0
	bne _021D0F2E
	ldr r0, _021D1004 @ =0x000093B4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D0F2E
	bl FUN_020318EC
	ldr r1, _021D1004 @ =0x000093B4
	ldr r2, [r4, r1]
	ands r0, r2
	str r0, [r4, r1]
_021D0F2E:
	movs r0, #3
	ldr r1, [r5]
	lsls r0, r0, #8
	str r1, [r4, r0]
	ldr r1, [r5]
	adds r0, r4, #0
	bl ov58_021D2CB8
	ldr r1, [r5]
	cmp r1, #3
	bhi _021D0FF8
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D0F50: @ jump table
	.2byte _021D0F58 - _021D0F50 - 2 @ case 0
	.2byte _021D0F86 - _021D0F50 - 2 @ case 1
	.2byte _021D0FCC - _021D0F50 - 2 @ case 2
	.2byte _021D0FEC - _021D0F50 - 2 @ case 3
_021D0F58:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D0FF8
	bl FUN_0203608C
	cmp r0, #0
	beq _021D0F80
	bl ov58_021D2A30
	cmp r0, #2
	blt _021D0FF8
	movs r1, #0
	movs r0, #0x80
	adds r2, r1, #0
	bl FUN_020359DC
	movs r0, #1
	str r0, [r5]
	b _021D0FF8
_021D0F80:
	movs r0, #1
	str r0, [r5]
	b _021D0FF8
_021D0F86:
	movs r0, #0xc1
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	lsls r2, r0, #3
	ldr r0, _021D1008 @ =0x021D3180
	ldr r2, [r0, r2]
	cmp r2, #0
	beq _021D0F9C
	adds r0, r4, #0
	blx r2
	str r0, [r5]
_021D0F9C:
	movs r0, #0x9e
	lsls r0, r0, #2
	ldr r2, _021D100C @ =0x000E0D0F
	adds r0, r4, r0
	movs r1, #0
	adds r3, r4, #0
	bl ov58_021D28E4
	bl FUN_0203608C
	cmp r0, #0
	bne _021D0FC2
	adds r0, r4, #0
	bl ov58_021D2B5C
	ldr r1, [r5]
	cmp r1, #1
	bne _021D0FC2
	str r0, [r5]
_021D0FC2:
	ldr r0, _021D1010 @ =0x00004374
	adds r0, r4, r0
	bl ov58_021D2888
	b _021D0FF8
_021D0FCC:
	movs r0, #0xc1
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	lsls r3, r0, #3
	ldr r0, _021D1008 @ =0x021D3180
	ldr r2, [r0, r3]
	cmp r2, #0
	beq _021D0FF8
	ldr r0, _021D1014 @ =0x021D3184
	ldr r0, [r0, r3]
	cmp r0, #0
	beq _021D0FF8
	adds r0, r4, #0
	blx r2
	str r0, [r5]
	b _021D0FF8
_021D0FEC:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D0FF8
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D0FF8:
	ldr r0, [r4, #0x34]
	bl FUN_020219F8
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D1004: .4byte 0x000093B4
_021D1008: .4byte 0x021D3180
_021D100C: .4byte 0x000E0D0F
_021D1010: .4byte 0x00004374
_021D1014: .4byte 0x021D3184
	thumb_func_end ov58_021D0F08

	thumb_func_start ov58_021D1018
ov58_021D1018: @ 0x021D1018
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	bl FUN_0200682C
	adds r6, r0, #0
	adds r0, r5, #0
	bl FUN_02006840
	adds r4, r0, #0
	ldr r0, [r7]
	cmp r0, #3
	bls _021D1034
	b _021D1152
_021D1034:
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D1040: @ jump table
	.2byte _021D1048 - _021D1040 - 2 @ case 0
	.2byte _021D10D4 - _021D1040 - 2 @ case 1
	.2byte _021D1102 - _021D1040 - 2 @ case 2
	.2byte _021D1122 - _021D1040 - 2 @ case 3
_021D1048:
	movs r0, #0x27
	bl FUN_0202C168
	adds r1, r0, #0
	ldr r0, [r4, #4]
	movs r2, #4
	bl FUN_0202B758
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r0, #0x17
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	bl FUN_0200A4E4
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	bl FUN_0200A4E4
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_0200A6DC
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_0200A6DC
	movs r4, #0
	adds r5, r6, #0
_021D108C:
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02009754
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _021D108C
	ldr r0, [r6, #0x34]
	bl FUN_02021964
	bl FUN_0200A878
	bl FUN_0201E958
	bl FUN_0201F8B4
	adds r0, r6, #0
	bl ov58_021D19D4
	ldr r0, [r6]
	bl ov58_021D13F0
	bl FUN_0201E530
	ldr r0, [r6, #0x10]
	bl FUN_0200B190
	ldr r0, [r6, #0xc]
	bl FUN_0200B3F0
	ldr r0, [r7]
	adds r0, r0, #1
	str r0, [r7]
	b _021D1152
_021D10D4:
	movs r0, #1
	bl FUN_02037B58
	bl FUN_02036AC4
	ldr r0, [r4]
	bl FUN_0205C2C8
	ldr r2, _021D1158 @ =0x04000304
	ldrh r1, [r2]
	lsrs r0, r2, #0xb
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	bl FUN_0205BEA8
	movs r0, #0
	bl FUN_02033ED4
	ldr r0, [r7]
	adds r0, r0, #1
	str r0, [r7]
	b _021D1152
_021D1102:
	movs r1, #0x25
	lsls r1, r1, #0xa
	ldr r1, [r6, r1]
	cmp r1, #0
	beq _021D111C
	bl FUN_020318EC
	cmp r0, #1
	bne _021D1152
	ldr r0, [r7]
	adds r0, r0, #1
	str r0, [r7]
	b _021D1152
_021D111C:
	adds r0, r0, #1
	str r0, [r7]
	b _021D1152
_021D1122:
	movs r0, #2
	bl FUN_02037B58
	adds r0, r6, #0
	bl ov58_021D13B4
	ldr r0, [r6, #8]
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r0, #0x27
	bl FUN_0201807C
	movs r0, #2
	bl FUN_02037B58
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D1152:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1158: .4byte 0x04000304
	thumb_func_end ov58_021D1018

	thumb_func_start ov58_021D115C
ov58_021D115C: @ 0x021D115C
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0201DCAC
	bl FUN_0200A858
	adds r0, r4, #0
	bl FUN_0201C2B8
	ldr r3, _021D117C @ =0x027E0000
	ldr r1, _021D1180 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.align 2, 0
_021D117C: .4byte 0x027E0000
_021D1180: .4byte 0x00003FF8
	thumb_func_end ov58_021D115C

	thumb_func_start ov58_021D1184
ov58_021D1184: @ 0x021D1184
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D11A0 @ =0x021D2E90
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
_021D11A0: .4byte 0x021D2E90
	thumb_func_end ov58_021D1184

	thumb_func_start ov58_021D11A4
ov58_021D11A4: @ 0x021D11A4
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r5, _021D12AC @ =0x021D2DE4
	add r3, sp, #0x8c
	adds r4, r0, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _021D12B0 @ =0x021D2E04
	add r3, sp, #0x70
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
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02019EBC
	ldr r5, _021D12B4 @ =0x021D2E3C
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
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019EBC
	ldr r5, _021D12B8 @ =0x021D2E58
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
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	ldr r5, _021D12BC @ =0x021D2E74
	add r3, sp, #0x1c
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
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #4
	bl FUN_02019EBC
	ldr r5, _021D12C0 @ =0x021D2E20
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
	movs r1, #5
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0
	movs r1, #0x20
	adds r2, r0, #0
	movs r3, #0x27
	bl FUN_02019690
	movs r0, #4
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x27
	bl FUN_02019690
	movs r0, #1
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x27
	bl FUN_02019690
	movs r0, #5
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x27
	bl FUN_02019690
	add sp, #0x9c
	pop {r4, r5, pc}
	nop
_021D12AC: .4byte 0x021D2DE4
_021D12B0: .4byte 0x021D2E04
_021D12B4: .4byte 0x021D2E3C
_021D12B8: .4byte 0x021D2E58
_021D12BC: .4byte 0x021D2E74
_021D12C0: .4byte 0x021D2E20
	thumb_func_end ov58_021D11A4

	thumb_func_start ov58_021D12C4
ov58_021D12C4: @ 0x021D12C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _021D1398 @ =0x0000438A
	adds r6, r7, #0
	adds r4, r7, r0
	movs r0, #0x38
	adds r5, r7, #0
	str r0, [sp, #4]
_021D12DA:
	movs r0, #8
	movs r1, #0x27
	bl FUN_02023790
	str r0, [r6, #0x14]
	ldrb r1, [r4]
	ldr r0, [sp, #4]
	bics r1, r0
	strb r1, [r4]
	ldr r0, _021D139C @ =0x000043B6
	movs r1, #0
	strh r1, [r6, r0]
	movs r0, #0xcd
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r0, #4
	str r1, [r5, r0]
	ldr r0, [sp]
	adds r6, r6, #4
	adds r0, r0, #1
	adds r4, #0xa
	adds r5, #8
	str r0, [sp]
	cmp r0, #5
	blt _021D12DA
	movs r0, #0xa
	movs r1, #0x27
	bl FUN_02023790
	str r0, [r7, #0x28]
	movs r0, #0x50
	movs r1, #0x27
	bl FUN_02023790
	str r0, [r7, #0x2c]
	ldr r0, _021D13A0 @ =0x00004376
	movs r2, #0
	strb r2, [r7, r0]
	movs r1, #1
	adds r0, r0, #1
	strb r1, [r7, r0]
	ldr r0, _021D13A4 @ =0x000093F4
	str r1, [r7, r0]
	adds r0, r0, #4
	str r2, [r7, r0]
	movs r0, #0xc6
	movs r1, #2
	lsls r0, r0, #2
	str r1, [r7, r0]
	bl FUN_020318EC
	movs r1, #0xc7
	lsls r1, r1, #2
	str r0, [r7, r1]
	ldr r2, _021D13A8 @ =0x000093FC
	movs r3, #0
	str r3, [r7, r2]
	adds r0, r2, #4
	str r3, [r7, r0]
	adds r0, r2, #0
	subs r1, #0x18
	str r3, [r7, r1]
	adds r0, #8
	str r3, [r7, r0]
	adds r2, #0xc
	str r3, [r7, r2]
	bl FUN_0203608C
	adds r0, r7, #0
	movs r1, #4
	bl ov58_021D2CB0
	ldr r0, [r7, #0x10]
	ldr r2, [r7, #0x28]
	movs r1, #7
	bl FUN_0200B1B8
	movs r1, #0xf
	movs r0, #0x27
	lsls r1, r1, #0xa
	bl FUN_02018144
	ldr r1, _021D13AC @ =0x000043C8
	str r0, [r7, r1]
	movs r0, #0x27
	bl FUN_02015920
	ldr r1, _021D13B0 @ =0x000093F0
	str r0, [r7, r1]
	movs r0, #0xc5
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r7, r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D1398: .4byte 0x0000438A
_021D139C: .4byte 0x000043B6
_021D13A0: .4byte 0x00004376
_021D13A4: .4byte 0x000093F4
_021D13A8: .4byte 0x000093FC
_021D13AC: .4byte 0x000043C8
_021D13B0: .4byte 0x000093F0
	thumb_func_end ov58_021D12C4

	thumb_func_start ov58_021D13B4
ov58_021D13B4: @ 0x021D13B4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _021D13E8 @ =0x000043C8
	ldr r0, [r6, r0]
	bl FUN_020181C4
	ldr r0, _021D13EC @ =0x000093F0
	ldr r0, [r6, r0]
	bl FUN_02015938
	movs r4, #0
	adds r5, r6, #0
_021D13CC:
	ldr r0, [r5, #0x14]
	bl FUN_020237BC
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #5
	blt _021D13CC
	ldr r0, [r6, #0x2c]
	bl FUN_020237BC
	ldr r0, [r6, #0x28]
	bl FUN_020237BC
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D13E8: .4byte 0x000043C8
_021D13EC: .4byte 0x000093F0
	thumb_func_end ov58_021D13B4

	thumb_func_start ov58_021D13F0
ov58_021D13F0: @ 0x021D13F0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #5
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #4
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
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02019044
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov58_021D13F0

	thumb_func_start ov58_021D142C
ov58_021D142C: @ 0x021D142C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r0, #0
	ldr r4, [r6]
	movs r0, #0x40
	adds r5, r1, #0
	movs r1, #0
	str r0, [sp]
	movs r0, #0x27
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02007130
	movs r0, #0x40
	str r0, [sp]
	movs r0, #0x27
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #4
	movs r3, #0
	bl FUN_02007130
	movs r1, #0x1a
	movs r0, #0
	lsls r1, r1, #4
	movs r2, #0x27
	bl FUN_02002E98
	movs r1, #0x1a
	movs r0, #4
	lsls r1, r1, #4
	movs r2, #0x27
	bl FUN_02002E98
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x27
	movs r1, #2
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r2, r4, #0
	adds r3, r1, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x27
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #4
	adds r2, r4, #0
	movs r3, #2
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x27
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #3
	adds r2, r4, #0
	movs r3, #5
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x27
	movs r1, #5
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r2, r4, #0
	adds r3, r1, #0
	bl FUN_0200710C
	ldr r0, [r6, #8]
	ldr r0, [r0, #8]
	bl FUN_02027B50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x27
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xa
	bl FUN_0200DD0C
	movs r1, #0
	str r1, [sp]
	movs r0, #0x27
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_0200DAA4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov58_021D142C

	thumb_func_start ov58_021D1524
ov58_021D1524: @ 0x021D1524
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021D1550 @ =0x021D2DF4
	add r3, sp, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_0201E86C
	movs r0, #0x14
	movs r1, #0x27
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_021D1550: .4byte 0x021D2DF4
	thumb_func_end ov58_021D1524

	thumb_func_start ov58_021D1554
ov58_021D1554: @ 0x021D1554
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r7, r1, #0
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x20
	str r3, [sp, #0xc]
	movs r2, #0x27
	str r2, [sp, #0x10]
	adds r2, r0, #0
	bl FUN_0200A784
	adds r1, r5, #0
	movs r0, #0x35
	adds r1, #0x38
	movs r2, #0x27
	bl FUN_020095C4
	str r0, [r5, #0x34]
	adds r0, r5, #0
	movs r2, #1
	adds r0, #0x38
	movs r1, #0
	lsls r2, r2, #0x14
	bl FUN_0200964C
	movs r6, #0
	adds r4, r5, #0
_021D1598:
	movs r0, #2
	adds r1, r6, #0
	movs r2, #0x27
	bl FUN_02009714
	movs r1, #0x16
	lsls r1, r1, #4
	str r0, [r4, r1]
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #4
	blt _021D1598
	movs r0, #0
	str r0, [sp]
	movs r3, #1
	str r3, [sp, #4]
	movs r0, #0x27
	str r0, [sp, #8]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	adds r1, r7, #0
	movs r2, #6
	bl FUN_02009A4C
	movs r1, #0x17
	lsls r1, r1, #4
	str r0, [r5, r1]
	movs r2, #0
	str r2, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #7
	str r0, [sp, #8]
	movs r0, #0x27
	subs r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	adds r1, r7, #0
	adds r3, r2, #0
	bl FUN_02009B04
	movs r1, #0x5d
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x27
	subs r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	adds r1, r7, #0
	movs r2, #7
	movs r3, #1
	bl FUN_02009BC4
	movs r1, #0x5e
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x27
	subs r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	adds r1, r7, #0
	movs r2, #8
	movs r3, #1
	bl FUN_02009BC4
	movs r1, #0x5f
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r3, #1
	str r3, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x27
	subs r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	adds r1, r7, #0
	movs r2, #6
	bl FUN_02009A4C
	movs r1, #6
	lsls r1, r1, #6
	str r0, [r5, r1]
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	movs r0, #0x27
	movs r2, #0
	subs r1, #0x1c
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	adds r1, r7, #0
	adds r3, r2, #0
	bl FUN_02009B04
	movs r1, #0x61
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r3, #1
	str r3, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x27
	subs r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	adds r1, r7, #0
	movs r2, #7
	bl FUN_02009BC4
	movs r1, #0x62
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r3, #1
	str r3, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x27
	subs r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	adds r1, r7, #0
	movs r2, #8
	bl FUN_02009BC4
	movs r1, #0x63
	lsls r1, r1, #2
	str r0, [r5, r1]
	subs r1, #0x1c
	ldr r0, [r5, r1]
	bl FUN_0200A328
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	bl FUN_0200A328
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200A5C8
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200A5C8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov58_021D1554

	thumb_func_start ov58_021D16D8
ov58_021D16D8: @ 0x021D16D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	movs r1, #0
	adds r5, r0, #0
	str r1, [sp]
	subs r0, r1, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	movs r2, #0x16
	str r1, [sp, #0x10]
	lsls r2, r2, #4
	ldr r0, [r5, r2]
	adds r3, r1, #0
	str r0, [sp, #0x14]
	adds r0, r2, #4
	ldr r0, [r5, r0]
	str r0, [sp, #0x18]
	adds r0, r2, #0
	adds r0, #8
	ldr r0, [r5, r0]
	str r0, [sp, #0x1c]
	adds r0, r2, #0
	adds r0, #0xc
	ldr r0, [r5, r0]
	adds r2, #0x30
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	adds r0, r5, r2
	adds r2, r1, #0
	str r1, [sp, #0x28]
	bl FUN_020093B4
	movs r1, #1
	movs r3, #0x16
	str r1, [sp]
	subs r0, r1, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsls r3, r3, #4
	ldr r2, [r5, r3]
	str r2, [sp, #0x14]
	adds r2, r3, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	adds r2, r3, #0
	adds r2, #8
	ldr r2, [r5, r2]
	str r2, [sp, #0x1c]
	adds r2, r3, #0
	adds r2, #0xc
	ldr r2, [r5, r2]
	adds r3, #0x54
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	adds r0, r5, r3
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_020093B4
	ldr r0, [r5, #0x34]
	movs r6, #0
	str r0, [sp, #0x34]
	movs r0, #0x19
	lsls r0, r0, #4
	adds r0, r5, r0
	str r0, [sp, #0x38]
	movs r0, #1
	lsls r0, r0, #0xc
	str r6, [sp, #0x44]
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	add r0, sp, #0x34
	strh r6, [r0, #0x20]
	movs r0, #1
	str r0, [sp, #0x58]
	str r0, [sp, #0x5c]
	movs r0, #0x27
	str r0, [sp, #0x60]
	movs r0, #0x6d
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r7, #0x18
	adds r4, r5, #0
	str r0, [sp, #0x2c]
_021D178C:
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x38]
	lsls r0, r7, #0xc
	str r0, [sp, #0x3c]
	movs r0, #1
	lsls r0, r0, #0x12
	str r0, [sp, #0x40]
	movs r0, #2
	str r0, [sp, #0x5c]
	add r0, sp, #0x34
	bl FUN_02021AA0
	movs r1, #0x76
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r1, #0
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0x76
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, r6, #0
	bl FUN_02021D6C
	movs r0, #0x76
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021CAC
	adds r6, r6, #1
	adds r7, #0x28
	adds r4, r4, #4
	cmp r6, #5
	blt _021D178C
	movs r0, #0x6d
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r6, _021D18A8 @ =0x021D2EEC
	movs r7, #0
	adds r4, r5, #0
	str r0, [sp, #0x30]
_021D17E4:
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x38]
	ldrh r0, [r6]
	lsls r0, r0, #0xc
	str r0, [sp, #0x3c]
	ldrh r0, [r6, #2]
	lsls r0, r0, #0xc
	str r0, [sp, #0x40]
	add r0, sp, #0x34
	bl FUN_02021AA0
	movs r1, #0x92
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r1, #0
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0x92
	lsls r0, r0, #2
	ldrh r1, [r6, #4]
	ldr r0, [r4, r0]
	bl FUN_02021D6C
	cmp r7, #8
	blt _021D1826
	movs r0, #0x92
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #2
	bl FUN_02021E80
_021D1826:
	adds r7, r7, #1
	adds r6, r6, #6
	adds r4, r4, #4
	cmp r7, #0xc
	blt _021D17E4
	movs r0, #0x92
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #6
	bl FUN_02021D6C
	movs r7, #6
	movs r6, #0
	movs r4, #0x20
	lsls r7, r7, #0xe
_021D1844:
	movs r0, #1
	lsls r1, r4, #0xc
	lsls r0, r0, #0x14
	adds r0, r1, r0
	str r0, [sp, #0x40]
	add r0, sp, #0x34
	str r7, [sp, #0x3c]
	bl FUN_02021AA0
	movs r1, #0x21
	lsls r1, r1, #4
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0x21
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r1, r6, #0
	bl FUN_02021D6C
	movs r0, #0x21
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021F58
	movs r0, #0x21
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	adds r6, r6, #1
	adds r4, #0x20
	adds r5, r5, #4
	cmp r6, #5
	blt _021D1844
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D18A8: .4byte 0x021D2EEC
	thumb_func_end ov58_021D16D8

	thumb_func_start ov58_021D18AC
ov58_021D18AC: @ 0x021D18AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r7, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x28
	movs r1, #0xb6
	str r0, [sp, #0x10]
	lsls r1, r1, #2
	ldr r0, [r7]
	adds r1, r7, r1
	movs r2, #0
	movs r3, #2
	bl FUN_0201A7E8
	movs r0, #0xb6
	lsls r0, r0, #2
	adds r0, r7, r0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #2
	str r0, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #0xf
	str r0, [sp, #8]
	movs r0, #0
	movs r2, #1
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r1, #0xb2
	lsls r1, r1, #2
	ldr r0, [r7]
	adds r1, r7, r1
	adds r3, r2, #0
	bl FUN_0201A7E8
	movs r0, #0xb2
	lsls r0, r0, #2
	adds r0, r7, r0
	movs r1, #2
	bl FUN_0201ADA4
	movs r0, #0x15
	str r0, [sp]
	movs r0, #7
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _021D19C8 @ =0x000001C3
	movs r1, #0xba
	str r0, [sp, #0x10]
	lsls r1, r1, #2
	ldr r0, [r7]
	adds r1, r7, r1
	movs r2, #1
	movs r3, #0x19
	bl FUN_0201A7E8
	movs r0, #0xba
	lsls r0, r0, #2
	adds r0, r7, r0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r1, [r7, #0x28]
	movs r0, #1
	movs r2, #0
	movs r3, #0x30
	bl FUN_02002EEC
	adds r3, r0, #0
	movs r1, #0
	str r1, [sp]
	ldr r0, _021D19CC @ =0x00070100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	movs r0, #0xba
	lsls r0, r0, #2
	ldr r2, [r7, #0x28]
	adds r0, r7, r0
	movs r1, #1
	adds r3, r3, #2
	bl FUN_0201D78C
	movs r0, #0
	str r0, [sp, #0x14]
	movs r0, #0x9e
	lsls r0, r0, #2
	movs r6, #1
	movs r4, #3
	adds r5, r7, r0
_021D1978:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r7]
	adds r1, r5, #0
	movs r2, #4
	movs r3, #5
	bl FUN_0201A7E8
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [sp, #0x14]
	adds r6, #0x14
	adds r0, r0, #1
	adds r4, r4, #4
	adds r5, #0x10
	str r0, [sp, #0x14]
	cmp r0, #5
	blt _021D1978
	movs r0, #0x9e
	lsls r0, r0, #2
	ldr r2, _021D19D0 @ =0x000E0D0F
	adds r0, r7, r0
	movs r1, #0
	adds r3, r7, #0
	bl ov58_021D28E4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D19C8: .4byte 0x000001C3
_021D19CC: .4byte 0x00070100
_021D19D0: .4byte 0x000E0D0F
	thumb_func_end ov58_021D18AC

	thumb_func_start ov58_021D19D4
ov58_021D19D4: @ 0x021D19D4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x9e
	lsls r0, r0, #2
	movs r4, #0
	adds r5, r6, r0
_021D19E0:
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #5
	blt _021D19E0
	movs r0, #0xba
	lsls r0, r0, #2
	adds r0, r6, r0
	bl FUN_0201A8FC
	movs r0, #0xb2
	lsls r0, r0, #2
	adds r0, r6, r0
	bl FUN_0201A8FC
	movs r0, #0xb6
	lsls r0, r0, #2
	adds r0, r6, r0
	bl FUN_0201A8FC
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov58_021D19D4

	thumb_func_start ov58_021D1A10
ov58_021D1A10: @ 0x021D1A10
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r2, #0
	cmp r1, #0
	ble _021D1A2E
	lsls r0, r1, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _021D1A3C
_021D1A2E:
	lsls r0, r1, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_021D1A3C:
	blx FUN_020E1740
	subs r5, #8
	str r0, [sp]
	cmp r5, #0
	ble _021D1A5A
	lsls r0, r5, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _021D1A68
_021D1A5A:
	lsls r0, r5, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_021D1A68:
	blx FUN_020E1740
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	add r1, sp, #0
	bl FUN_02021C50
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov58_021D1A10

	thumb_func_start ov58_021D1A80
ov58_021D1A80: @ 0x021D1A80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _021D1C7C @ =0x021D2EB8
	bl FUN_02022664
	movs r1, #0
	mvns r1, r1
	str r0, [sp, #8]
	cmp r0, r1
	beq _021D1ACE
	cmp r0, #0xb
	bhi _021D1ACE
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D1AAA: @ jump table
	.2byte _021D1AC2 - _021D1AAA - 2 @ case 0
	.2byte _021D1AC2 - _021D1AAA - 2 @ case 1
	.2byte _021D1AC2 - _021D1AAA - 2 @ case 2
	.2byte _021D1AC2 - _021D1AAA - 2 @ case 3
	.2byte _021D1AC2 - _021D1AAA - 2 @ case 4
	.2byte _021D1AC2 - _021D1AAA - 2 @ case 5
	.2byte _021D1AC2 - _021D1AAA - 2 @ case 6
	.2byte _021D1AC2 - _021D1AAA - 2 @ case 7
	.2byte _021D1AEA - _021D1AAA - 2 @ case 8
	.2byte _021D1B8E - _021D1AAA - 2 @ case 9
	.2byte _021D1B8E - _021D1AAA - 2 @ case 10
	.2byte _021D1B8E - _021D1AAA - 2 @ case 11
_021D1AC2:
	ldr r2, _021D1C80 @ =0x00004376
	ldr r0, [sp]
	ldrb r1, [r0, r2]
	ldr r0, [sp, #8]
	cmp r1, r0
	bne _021D1AD0
_021D1ACE:
	b _021D1BE6
_021D1AD0:
	adds r1, r0, #0
	ldr r0, [sp]
	strb r1, [r0, r2]
	movs r1, #0x92
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [sp, #8]
	bl ov58_021D1CAC
	ldr r0, _021D1C84 @ =0x000005DC
	bl FUN_02005748
	b _021D1BE6
_021D1AEA:
	movs r1, #0xc1
	ldr r0, [sp]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #4
	bne _021D1BE6
	bl FUN_0203608C
	cmp r0, #0
	bne _021D1B50
	bl FUN_020318EC
	movs r2, #0xc7
	ldr r1, [sp]
	lsls r2, r2, #2
	ldr r1, [r1, r2]
	cmp r1, r0
	beq _021D1B16
	ldr r0, _021D1C88 @ =0x000005F2
	bl FUN_02005748
	b _021D1BE6
_021D1B16:
	bl FUN_02035E18
	bl FUN_02037B58
	ldr r1, _021D1C8C @ =0x000093F4
	ldr r0, [sp]
	movs r2, #2
	str r2, [r0, r1]
	movs r1, #1
	adds r2, r1, #0
	bl ov58_021D2A98
	ldr r0, [sp]
	movs r1, #5
	bl ov58_021D2CB0
	movs r1, #0x92
	ldr r0, [sp]
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #1
	bl ov58_021D1CDC
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _021D1C84 @ =0x000005DC
	bl FUN_02005748
	b _021D1BE6
_021D1B50:
	ldr r1, _021D1C90 @ =0x0000438B
	ldr r0, [sp]
	ldrb r0, [r0, r1]
	cmp r0, #2
	bne _021D1B62
	ldr r0, _021D1C88 @ =0x000005F2
	bl FUN_02005748
	b _021D1BE6
_021D1B62:
	movs r1, #1
	ldr r0, [sp]
	adds r2, r1, #0
	bl ov58_021D2A98
	ldr r0, [sp]
	movs r1, #5
	bl ov58_021D2CB0
	movs r1, #0x92
	ldr r0, [sp]
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #1
	bl ov58_021D1CDC
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _021D1C84 @ =0x000005DC
	bl FUN_02005748
	b _021D1BE6
_021D1B8E:
	ldr r0, [sp, #8]
	ldr r5, [sp]
	str r0, [sp, #0xc]
	subs r0, #9
	movs r4, #0
	movs r7, #0x1e
	movs r6, #0x1d
	str r0, [sp, #0xc]
_021D1B9E:
	ldr r0, [sp, #0xc]
	cmp r0, r4
	bne _021D1BB2
	movs r0, #0x9b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r7, #0
	bl FUN_02021D6C
	b _021D1BBE
_021D1BB2:
	movs r0, #0x9b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r6, #0
	bl FUN_02021D6C
_021D1BBE:
	adds r4, r4, #1
	adds r7, r7, #2
	adds r5, r5, #4
	adds r6, r6, #2
	cmp r4, #3
	blt _021D1B9E
	ldr r2, _021D1C94 @ =0x00004377
	ldr r0, [sp]
	ldrb r1, [r0, r2]
	ldr r0, [sp, #8]
	subs r0, #9
	str r0, [sp, #8]
	cmp r1, r0
	beq _021D1BE6
	adds r1, r0, #0
	ldr r0, [sp]
	strb r1, [r0, r2]
	ldr r0, _021D1C98 @ =0x000005E5
	bl FUN_02005748
_021D1BE6:
	ldr r0, _021D1C9C @ =0x021D2DDC
	bl FUN_02022644
	adds r4, r0, #0
	bl FUN_0203608C
	lsls r1, r0, #2
	ldr r0, [sp]
	adds r1, r0, r1
	movs r0, #0x76
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	beq _021D1C3C
	bl FUN_0203608C
	lsls r1, r0, #2
	ldr r0, [sp]
	ldr r2, _021D1CA0 @ =0x021BF6BC
	adds r1, r0, r1
	movs r0, #0x76
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	ldrh r1, [r2, #0x1c]
	ldrh r2, [r2, #0x1e]
	bl ov58_021D1A10
	bl FUN_0203608C
	lsls r1, r0, #2
	ldr r0, [sp]
	adds r1, r0, r1
	movs r0, #0x76
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #1
	bl FUN_02021CAC
_021D1C3C:
	add r0, sp, #0x10
	movs r1, #4
	movs r2, #0x40
	bl FUN_0201E564
	cmp r0, #1
	bne _021D1C76
	ldr r3, _021D1CA4 @ =0x00004378
	ldr r0, [sp]
	ldr r2, [sp]
	subs r4, r3, #2
	ldrb r2, [r2, r4]
	adds r0, r0, r3
	subs r4, r3, #1
	ldr r3, [sp]
	add r1, sp, #0x10
	ldrb r3, [r3, r4]
	bl ov58_021D2D4C
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _021D1C76
	ldr r1, _021D1CA8 @ =0x00004380
	ldr r0, [sp]
	ldrb r2, [r0, r1]
	movs r0, #0x38
	bics r2, r0
	ldr r0, [sp]
	strb r2, [r0, r1]
_021D1C76:
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	nop
_021D1C7C: .4byte 0x021D2EB8
_021D1C80: .4byte 0x00004376
_021D1C84: .4byte 0x000005DC
_021D1C88: .4byte 0x000005F2
_021D1C8C: .4byte 0x000093F4
_021D1C90: .4byte 0x0000438B
_021D1C94: .4byte 0x00004377
_021D1C98: .4byte 0x000005E5
_021D1C9C: .4byte 0x021D2DDC
_021D1CA0: .4byte 0x021BF6BC
_021D1CA4: .4byte 0x00004378
_021D1CA8: .4byte 0x00004380
	thumb_func_end ov58_021D1A80

	thumb_func_start ov58_021D1CAC
ov58_021D1CAC: @ 0x021D1CAC
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021D1CD8 @ =0x021D2EEC
	adds r5, r0, #0
	adds r7, r1, #0
	movs r6, #0
_021D1CB6:
	cmp r6, r7
	ldr r0, [r5]
	bne _021D1CC6
	ldrh r1, [r4, #4]
	adds r1, r1, #1
	bl FUN_02021D6C
	b _021D1CCC
_021D1CC6:
	ldrh r1, [r4, #4]
	bl FUN_02021D6C
_021D1CCC:
	adds r6, r6, #1
	adds r4, r4, #6
	adds r5, r5, #4
	cmp r6, #8
	blt _021D1CB6
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D1CD8: .4byte 0x021D2EEC
	thumb_func_end ov58_021D1CAC

	thumb_func_start ov58_021D1CDC
ov58_021D1CDC: @ 0x021D1CDC
	push {r3, lr}
	cmp r1, #1
	ldr r0, [r0, #0x20]
	bne _021D1CEC
	movs r1, #0x16
	bl FUN_02021D6C
	pop {r3, pc}
_021D1CEC:
	movs r1, #0x15
	bl FUN_02021D6C
	pop {r3, pc}
	thumb_func_end ov58_021D1CDC

	thumb_func_start ov58_021D1CF4
ov58_021D1CF4: @ 0x021D1CF4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov58_021D1A80
	bl FUN_0203608C
	cmp r0, #0
	bne _021D1D16
	bl ov58_021D28C8
	cmp r0, #1
	beq _021D1D1C
	adds r0, r5, #0
	bl ov58_021D29C8
	b _021D1D1C
_021D1D16:
	adds r0, r5, #0
	bl ov58_021D29C8
_021D1D1C:
	adds r0, r5, #0
	bl ov58_021D2820
	ldr r2, _021D1D3C @ =0x00004382
	movs r0, #0xb2
	lsls r0, r0, #2
	adds r1, r5, r2
	adds r2, #0x32
	adds r0, r5, r0
	adds r2, r5, r2
	movs r3, #1
	bl ov58_021D2754
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D1D3C: .4byte 0x00004382
	thumb_func_end ov58_021D1CF4

	thumb_func_start ov58_021D1D40
ov58_021D1D40: @ 0x021D1D40
	push {r4, lr}
	adds r4, r0, #0
	bl ov58_021D2820
	ldr r2, _021D1D60 @ =0x00004382
	movs r0, #0xb2
	lsls r0, r0, #2
	adds r1, r4, r2
	adds r2, #0x32
	adds r0, r4, r0
	adds r2, r4, r2
	movs r3, #0
	bl ov58_021D2754
	pop {r4, pc}
	nop
_021D1D60: .4byte 0x00004382
	thumb_func_end ov58_021D1D40

	thumb_func_start ov58_021D1D64
ov58_021D1D64: @ 0x021D1D64
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0203608C
	movs r1, #0x32
	lsls r1, r1, #4
	ldr r1, [r5, r1]
	cmp r1, r0
	bne _021D1D84
	adds r0, r5, #0
	movs r1, #0xd
	movs r2, #0
	bl ov58_021D2A98
	b _021D1D8E
_021D1D84:
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov58_021D2A98
_021D1D8E:
	adds r0, r5, #0
	movs r1, #2
	bl ov58_021D2CB0
	ldr r0, _021D1DB4 @ =0x000005E4
	bl FUN_02005748
	movs r1, #0x1e
	adds r2, r1, #0
	ldr r0, _021D1DB8 @ =0x04000050
	subs r2, #0x24
	blx FUN_020BF578
	adds r0, r5, #0
	bl ov58_021D1D40
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D1DB4: .4byte 0x000005E4
_021D1DB8: .4byte 0x04000050
	thumb_func_end ov58_021D1D64

	thumb_func_start ov58_021D1DBC
ov58_021D1DBC: @ 0x021D1DBC
	push {r4, lr}
	adds r4, r1, #0
	bl ov58_021D1D40
	adds r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov58_021D1DBC

	thumb_func_start ov58_021D1DC8
ov58_021D1DC8: @ 0x021D1DC8
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r1, _021D1DF4 @ =0x04000050
	movs r2, #0
	strh r2, [r1]
	adds r5, r0, #0
	movs r1, #1
	bl ov58_021D2B3C
	adds r0, r5, #0
	movs r1, #4
	bl ov58_021D2CB0
	adds r0, r5, #0
	bl ov58_021D1D40
	ldr r0, _021D1DF8 @ =0x00009404
	movs r1, #0
	str r1, [r5, r0]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D1DF4: .4byte 0x04000050
_021D1DF8: .4byte 0x00009404
	thumb_func_end ov58_021D1DC8

	thumb_func_start ov58_021D1DFC
ov58_021D1DFC: @ 0x021D1DFC
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, [r5, #0x30]
	adds r4, r1, #0
	bl ov58_021D2B0C
	cmp r0, #0
	beq _021D1E40
	ldr r0, [r5]
	movs r1, #0x19
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0xb4
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	add r0, sp, #0
	strb r1, [r0, #0x10]
	movs r1, #6
	strb r1, [r0, #0x11]
	adds r0, r5, #0
	add r1, sp, #0
	bl ov58_021D2CEC
	cmp r0, #0
	bne _021D1E38
	bl FUN_02022974
_021D1E38:
	adds r0, r5, #0
	movs r1, #6
	bl ov58_021D2CB0
_021D1E40:
	adds r0, r5, #0
	bl ov58_021D1D40
	adds r0, r4, #0
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov58_021D1DFC

	thumb_func_start ov58_021D1E4C
ov58_021D1E4C: @ 0x021D1E4C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r6, r1, #0
	adds r5, r0, #0
	ldr r1, _021D1F98 @ =0x00004380
	movs r0, #0x38
	ldrb r2, [r5, r1]
	bics r2, r0
	strb r2, [r5, r1]
	adds r1, #0xb
	ldrb r0, [r5, r1]
	cmp r0, #2
	bne _021D1E8A
	bl FUN_0203608C
	cmp r0, #0
	beq _021D1E8A
	adds r0, r5, #0
	bl ov58_021D1D40
	adds r0, r5, #0
	bl ov58_021D2D30
	cmp r0, #0
	beq _021D1E84
	ldr r0, _021D1F9C @ =0x000005F2
	bl FUN_02005748
_021D1E84:
	add sp, #4
	adds r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_021D1E8A:
	bl FUN_0203608C
	cmp r0, #0
	bne _021D1EA6
	ldr r0, _021D1FA0 @ =0x000093B4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D1EA6
	adds r0, r5, #0
	bl ov58_021D1D40
	add sp, #4
	adds r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_021D1EA6:
	bl ov58_021D2A30
	adds r4, r0, #0
	bl FUN_02035E18
	cmp r4, r0
	beq _021D1EC0
	adds r0, r5, #0
	bl ov58_021D1D40
	add sp, #4
	adds r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_021D1EC0:
	ldr r0, _021D1FA4 @ =0x000093F0
	ldr r0, [r5, r0]
	bl FUN_020159FC
	cmp r0, #1
	beq _021D1ED2
	cmp r0, #2
	beq _021D1F42
	b _021D1F8A
_021D1ED2:
	bl FUN_0203608C
	cmp r0, #0
	bne _021D1EEE
	adds r0, r5, #0
	movs r1, #0xd
	bl ov58_021D2CB0
	adds r0, r5, #0
	movs r1, #4
	movs r2, #1
	bl ov58_021D2A98
	b _021D1F30
_021D1EEE:
	add r0, sp, #0
	movs r1, #0
	movs r2, #4
	blx FUN_020C4CF4
	movs r1, #0
	add r0, sp, #0
	strb r1, [r0, #2]
	bl FUN_0203608C
	add r1, sp, #0
	strb r0, [r1]
	ldr r0, _021D1FA8 @ =0x000093BC
	movs r1, #1
	strb r1, [r5, r0]
	movs r1, #0
	subs r0, r0, #2
	strh r1, [r5, r0]
	adds r0, r5, #0
	movs r1, #7
	bl ov58_021D2CB0
	movs r0, #0x7e
	add r1, sp, #0
	movs r2, #4
	bl FUN_020359DC
	movs r0, #0xb6
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #1
	bl FUN_0200E084
_021D1F30:
	adds r0, r5, #0
	bl ov58_021D2D10
	movs r0, #0xb2
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A954
	b _021D1F8A
_021D1F42:
	adds r0, r5, #0
	movs r1, #4
	bl ov58_021D2CB0
	movs r0, #0x92
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl ov58_021D1CDC
	movs r0, #0xb6
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #1
	bl FUN_0200E084
	adds r0, r5, #0
	bl ov58_021D2D10
	movs r0, #0xb2
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A954
	bl FUN_0203608C
	cmp r0, #0
	bne _021D1F8A
	bl FUN_02035E18
	adds r0, r0, #1
	bl FUN_02037B58
	ldr r0, _021D1FAC @ =0x000093F4
	movs r1, #1
	str r1, [r5, r0]
_021D1F8A:
	adds r0, r5, #0
	bl ov58_021D1D40
	adds r0, r6, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021D1F98: .4byte 0x00004380
_021D1F9C: .4byte 0x000005F2
_021D1FA0: .4byte 0x000093B4
_021D1FA4: .4byte 0x000093F0
_021D1FA8: .4byte 0x000093BC
_021D1FAC: .4byte 0x000093F4
	thumb_func_end ov58_021D1E4C

	thumb_func_start ov58_021D1FB0
ov58_021D1FB0: @ 0x021D1FB0
	push {r4, lr}
	ldr r2, _021D1FCC @ =0x00004380
	adds r4, r1, #0
	ldrb r3, [r0, r2]
	movs r1, #0x38
	bics r3, r1
	strb r3, [r0, r2]
	ldr r1, _021D1FD0 @ =0x000093BA
	movs r2, #0
	strh r2, [r0, r1]
	bl ov58_021D1D40
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_021D1FCC: .4byte 0x00004380
_021D1FD0: .4byte 0x000093BA
	thumb_func_end ov58_021D1FB0

	thumb_func_start ov58_021D1FD4
ov58_021D1FD4: @ 0x021D1FD4
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r1, _021D2060 @ =0x00004380
	movs r0, #0x38
	ldrb r2, [r5, r1]
	bics r2, r0
	strb r2, [r5, r1]
	bl FUN_02035E18
	ldr r1, _021D2064 @ =0x000093B8
	ldrh r1, [r5, r1]
	cmp r1, r0
	bne _021D1FFC
	bl ov58_021D2A30
	ldr r1, _021D2064 @ =0x000093B8
	ldrh r2, [r5, r1]
	cmp r2, r0
	beq _021D2014
_021D1FFC:
	ldr r0, _021D2068 @ =0x000093BA
	movs r1, #0
	strh r1, [r5, r0]
	adds r0, r5, #0
	movs r1, #9
	bl ov58_021D2CB0
	adds r0, r5, #0
	bl ov58_021D1D40
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_021D2014:
	adds r0, r1, #2
	ldrsh r0, [r5, r0]
	adds r2, r0, #1
	adds r0, r1, #2
	strh r2, [r5, r0]
	ldrsh r0, [r5, r0]
	cmp r0, #0x1e
	ble _021D2054
	add r0, sp, #0
	movs r1, #0
	movs r2, #4
	blx FUN_020C4CF4
	movs r1, #1
	add r0, sp, #0
	strb r1, [r0, #2]
	bl FUN_0203608C
	add r1, sp, #0
	strb r0, [r1]
	movs r0, #0x7e
	add r1, sp, #0
	movs r2, #4
	bl FUN_020359DC
	ldr r0, _021D2068 @ =0x000093BA
	movs r1, #0
	strh r1, [r5, r0]
	adds r0, r5, #0
	movs r1, #0xa
	bl ov58_021D2CB0
_021D2054:
	adds r0, r5, #0
	bl ov58_021D1D40
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D2060: .4byte 0x00004380
_021D2064: .4byte 0x000093B8
_021D2068: .4byte 0x000093BA
	thumb_func_end ov58_021D1FD4

	thumb_func_start ov58_021D206C
ov58_021D206C: @ 0x021D206C
	push {r3, r4, r5, lr}
	ldr r2, _021D20A0 @ =0x00004380
	adds r5, r0, #0
	ldrb r3, [r5, r2]
	adds r4, r1, #0
	movs r1, #0x38
	bics r3, r1
	strb r3, [r5, r2]
	ldr r1, _021D20A4 @ =0x000093BC
	movs r2, #0
	strb r2, [r5, r1]
	movs r1, #4
	bl ov58_021D2CB0
	movs r0, #0x92
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl ov58_021D1CDC
	adds r0, r5, #0
	bl ov58_021D1D40
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D20A0: .4byte 0x00004380
_021D20A4: .4byte 0x000093BC
	thumb_func_end ov58_021D206C

	thumb_func_start ov58_021D20A8
ov58_021D20A8: @ 0x021D20A8
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	movs r1, #6
	movs r2, #1
	bl ov58_021D2A98
	adds r0, r5, #0
	movs r1, #0xb
	bl ov58_021D2CB0
	adds r0, r5, #0
	bl ov58_021D1D40
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov58_021D20A8

	thumb_func_start ov58_021D20C8
ov58_021D20C8: @ 0x021D20C8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x30]
	adds r4, r1, #0
	bl ov58_021D2B0C
	cmp r0, #0
	beq _021D20E8
	movs r0, #0x31
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r5, r0]
	adds r0, r5, #0
	movs r1, #0xc
	bl ov58_021D2CB0
_021D20E8:
	adds r0, r5, #0
	bl ov58_021D1D40
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov58_021D20C8

	thumb_func_start ov58_021D20F4
ov58_021D20F4: @ 0x021D20F4
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #0x31
	lsls r0, r0, #4
	adds r4, r1, #0
	ldr r1, [r5, r0]
	adds r1, r1, #1
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	cmp r0, #0x3c
	ble _021D2124
	movs r1, #0x10
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x27
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r4, #3
_021D2124:
	adds r0, r5, #0
	bl ov58_021D1D40
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov58_021D20F4

	thumb_func_start ov58_021D2130
ov58_021D2130: @ 0x021D2130
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, [r5, #0x30]
	adds r4, r1, #0
	bl ov58_021D2B0C
	cmp r0, #0
	beq _021D2174
	ldr r0, [r5]
	movs r1, #0x19
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0xb4
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	add r0, sp, #0
	strb r1, [r0, #0x10]
	movs r1, #6
	strb r1, [r0, #0x11]
	adds r0, r5, #0
	add r1, sp, #0
	bl ov58_021D2CEC
	cmp r0, #0
	bne _021D216C
	bl FUN_02022974
_021D216C:
	adds r0, r5, #0
	movs r1, #0xe
	bl ov58_021D2CB0
_021D2174:
	adds r0, r5, #0
	bl ov58_021D1D40
	adds r0, r4, #0
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov58_021D2130

	thumb_func_start ov58_021D2180
ov58_021D2180: @ 0x021D2180
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _021D2230 @ =0x000093F0
	adds r6, r1, #0
	ldr r0, [r5, r0]
	bl FUN_020159FC
	adds r4, r0, #0
	bl ov58_021D2A30
	movs r1, #0xc6
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	cmp r1, r0
	bne _021D21A6
	ldr r0, _021D2234 @ =0x000093B4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D21B0
_021D21A6:
	adds r0, r5, #0
	bl ov58_021D1D40
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
_021D21B0:
	cmp r4, #1
	beq _021D21BA
	cmp r4, #2
	beq _021D21E6
	b _021D2224
_021D21BA:
	adds r0, r5, #0
	movs r1, #0xf
	bl ov58_021D2CB0
	movs r1, #0
	movs r0, #0x7f
	adds r2, r1, #0
	bl FUN_02035AC4
	movs r0, #0
	bl FUN_02032EE8
	adds r2, r0, #0
	ldr r0, [r5, #0xc]
	movs r1, #0
	bl FUN_0200B498
	adds r0, r5, #0
	movs r6, #2
	bl ov58_021D2D10
	b _021D2224
_021D21E6:
	adds r0, r5, #0
	movs r1, #4
	bl ov58_021D2CB0
	movs r0, #0x92
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl ov58_021D1CDC
	movs r0, #0xb6
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #1
	bl FUN_0200E084
	adds r0, r5, #0
	bl ov58_021D2D10
	bl FUN_0203608C
	cmp r0, #0
	bne _021D2224
	bl FUN_02035E18
	adds r0, r0, #1
	bl FUN_02037B58
	ldr r0, _021D2238 @ =0x000093F4
	movs r1, #1
	str r1, [r5, r0]
_021D2224:
	adds r0, r5, #0
	bl ov58_021D1D40
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_021D2230: .4byte 0x000093F0
_021D2234: .4byte 0x000093B4
_021D2238: .4byte 0x000093F4
	thumb_func_end ov58_021D2180

	thumb_func_start ov58_021D223C
ov58_021D223C: @ 0x021D223C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0
	adds r4, r1, #0
	bl FUN_02032EE8
	adds r2, r0, #0
	ldr r0, [r5, #0xc]
	movs r1, #0
	bl FUN_0200B498
	adds r0, r5, #0
	movs r1, #3
	movs r2, #1
	bl ov58_021D2A98
	adds r0, r5, #0
	movs r1, #0x10
	bl ov58_021D2CB0
	adds r0, r5, #0
	bl ov58_021D1D40
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov58_021D223C

	thumb_func_start ov58_021D2270
ov58_021D2270: @ 0x021D2270
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x30]
	adds r4, r1, #0
	bl ov58_021D2B0C
	cmp r0, #0
	beq _021D228E
	adds r0, r5, #0
	movs r1, #0x11
	bl ov58_021D2CB0
	movs r0, #0xc8
	bl FUN_020364F0
_021D228E:
	adds r0, r5, #0
	bl ov58_021D1D40
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov58_021D2270

	thumb_func_start ov58_021D2298
ov58_021D2298: @ 0x021D2298
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #0xc8
	adds r5, r1, #0
	bl FUN_02036540
	cmp r0, #0
	bne _021D22B2
	bl FUN_02035E18
	cmp r0, #1
	bne _021D22CA
_021D22B2:
	movs r1, #0x10
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x27
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r5, #3
_021D22CA:
	adds r0, r4, #0
	bl ov58_021D1D40
	adds r0, r5, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov58_021D2298

	thumb_func_start ov58_021D22D8
ov58_021D22D8: @ 0x021D22D8
	adds r0, r1, #0
	bx lr
	thumb_func_end ov58_021D22D8

	thumb_func_start ov58_021D22DC
ov58_021D22DC: @ 0x021D22DC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	movs r1, #5
	movs r2, #1
	bl ov58_021D2A98
	adds r0, r5, #0
	movs r1, #0x14
	bl ov58_021D2CB0
	adds r0, r5, #0
	bl ov58_021D1D40
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov58_021D22DC

	thumb_func_start ov58_021D22FC
ov58_021D22FC: @ 0x021D22FC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x30]
	adds r4, r1, #0
	bl ov58_021D2B0C
	cmp r0, #0
	beq _021D2314
	adds r0, r5, #0
	movs r1, #0xc
	bl ov58_021D2CB0
_021D2314:
	adds r0, r5, #0
	bl ov58_021D1D40
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov58_021D22FC

	thumb_func_start ov58_021D2320
ov58_021D2320: @ 0x021D2320
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x30]
	adds r4, r1, #0
	cmp r0, #0xff
	beq _021D233E
	bl ov58_021D2B0C
	cmp r0, #0
	bne _021D233E
	ldr r0, [r5, #0x30]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D730
_021D233E:
	adds r0, r5, #0
	movs r1, #2
	movs r2, #1
	bl ov58_021D2A98
	adds r0, r5, #0
	movs r1, #0x16
	bl ov58_021D2CB0
	ldr r0, _021D2378 @ =0x000005E4
	bl FUN_02005748
	bl FUN_0203608C
	cmp r0, #0
	bne _021D2366
	adds r0, r5, #0
	movs r1, #0
	bl ov58_021D2B3C
_021D2366:
	bl FUN_02035E18
	ldr r1, _021D237C @ =0x000093B0
	str r0, [r5, r1]
	adds r0, r5, #0
	bl ov58_021D1D40
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D2378: .4byte 0x000005E4
_021D237C: .4byte 0x000093B0
	thumb_func_end ov58_021D2320

	thumb_func_start ov58_021D2380
ov58_021D2380: @ 0x021D2380
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _021D23C4 @ =0x000093B0
	adds r4, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D239E
	bl FUN_02035E18
	ldr r1, _021D23C4 @ =0x000093B0
	ldr r2, [r5, r1]
	cmp r2, r0
	beq _021D239E
	movs r0, #0
	str r0, [r5, r1]
_021D239E:
	ldr r0, [r5, #0x30]
	bl ov58_021D2B0C
	cmp r0, #0
	beq _021D23B8
	adds r0, r5, #0
	movs r1, #0x17
	bl ov58_021D2CB0
	movs r0, #0x31
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r5, r0]
_021D23B8:
	adds r0, r5, #0
	bl ov58_021D1D40
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D23C4: .4byte 0x000093B0
	thumb_func_end ov58_021D2380

	thumb_func_start ov58_021D23C8
ov58_021D23C8: @ 0x021D23C8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _021D242C @ =0x000093B0
	adds r4, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D23E6
	bl FUN_02035E18
	ldr r1, _021D242C @ =0x000093B0
	ldr r2, [r5, r1]
	cmp r2, r0
	beq _021D23E6
	movs r0, #0
	str r0, [r5, r1]
_021D23E6:
	movs r0, #0x31
	lsls r0, r0, #4
	ldr r1, [r5, r0]
	adds r1, r1, #1
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	cmp r0, #0x3c
	ble _021D2420
	ldr r0, _021D242C @ =0x000093B0
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021D2420
	adds r0, r5, #0
	bl ov58_021D2B2C
	adds r0, r5, #0
	movs r1, #4
	bl ov58_021D2CB0
	bl FUN_0203608C
	cmp r0, #0
	bne _021D2420
	ldr r0, _021D2430 @ =0x000093F4
	movs r1, #1
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov58_021D2B3C
_021D2420:
	adds r0, r5, #0
	bl ov58_021D1D40
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D242C: .4byte 0x000093B0
_021D2430: .4byte 0x000093F4
	thumb_func_end ov58_021D23C8

	thumb_func_start ov58_021D2434
ov58_021D2434: @ 0x021D2434
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	adds r6, r2, #0
	cmp r5, #0xf
	bgt _021D2466
	bge _021D2512
	cmp r5, #9
	bhi _021D251A
	adds r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D2452: @ jump table
	.2byte _021D2510 - _021D2452 - 2 @ case 0
	.2byte _021D246C - _021D2452 - 2 @ case 1
	.2byte _021D2510 - _021D2452 - 2 @ case 2
	.2byte _021D24AA - _021D2452 - 2 @ case 3
	.2byte _021D2510 - _021D2452 - 2 @ case 4
	.2byte _021D2510 - _021D2452 - 2 @ case 5
	.2byte _021D2510 - _021D2452 - 2 @ case 6
	.2byte _021D2510 - _021D2452 - 2 @ case 7
	.2byte _021D2512 - _021D2452 - 2 @ case 8
	.2byte _021D2512 - _021D2452 - 2 @ case 9
_021D2466:
	cmp r5, #0x15
	beq _021D24B0
	pop {r4, r5, r6, pc}
_021D246C:
	movs r0, #0xc1
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #6
	beq _021D247A
	cmp r0, #0xe
	bne _021D2480
_021D247A:
	adds r0, r4, #0
	bl ov58_021D2D10
_021D2480:
	movs r0, #0x92
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	bl ov58_021D1CDC
	adds r0, r6, #0
	bl FUN_02032EE8
	adds r2, r0, #0
	ldr r0, [r4, #0xc]
	movs r1, #0
	bl FUN_0200B498
	movs r0, #0x32
	lsls r0, r0, #4
	str r6, [r4, r0]
	ldr r0, _021D251C @ =0x000093B4
	movs r1, #0
	str r1, [r4, r0]
	b _021D2512
_021D24AA:
	bl ov58_021D2B2C
	b _021D2512
_021D24B0:
	ldr r0, _021D2520 @ =0x000093BC
	ldrb r0, [r4, r0]
	cmp r0, #1
	beq _021D251A
	adds r0, r6, #0
	bl FUN_02032EE8
	adds r2, r0, #0
	ldr r0, [r4, #0xc]
	movs r1, #0
	bl FUN_0200B498
	bl FUN_0203608C
	cmp r6, r0
	beq _021D251A
	bl FUN_0203608C
	cmp r0, #0
	bne _021D24E4
	ldr r1, _021D251C @ =0x000093B4
	ldr r0, _021D2524 @ =0x0000FFFF
	ldr r2, [r4, r1]
	eors r0, r6
	ands r0, r2
	str r0, [r4, r1]
_021D24E4:
	movs r0, #0xc1
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #6
	beq _021D24F2
	cmp r0, #0xe
	bne _021D2502
_021D24F2:
	adds r0, r4, #0
	bl ov58_021D2D10
	movs r0, #0xb2
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A954
_021D2502:
	movs r0, #0x92
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	bl ov58_021D1CDC
	b _021D2512
_021D2510:
	pop {r4, r5, r6, pc}
_021D2512:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov58_021D2CB0
_021D251A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D251C: .4byte 0x000093B4
_021D2520: .4byte 0x000093BC
_021D2524: .4byte 0x0000FFFF
	thumb_func_end ov58_021D2434

	thumb_func_start ov58_021D2528
ov58_021D2528: @ 0x021D2528
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r4, [sp, #0x38]
	mov ip, r1
	adds r6, r2, #0
	adds r7, r3, #0
	str r0, [sp, #0x18]
	ldr r3, [sp, #0x3c]
	ldr r2, [sp, #0x40]
	ldr r1, [sp, #0x44]
	cmp r4, #0
	bge _021D2554
	rsbs r0, r4, #0
	cmp r0, r2
	ble _021D2548
	adds r0, r2, #0
_021D2548:
	ldr r5, [sp, #0x30]
	movs r4, #0
	subs r5, r5, r0
	adds r6, r6, r0
	str r5, [sp, #0x30]
	subs r2, r2, r0
_021D2554:
	cmp r3, #0
	bge _021D256C
	rsbs r0, r3, #0
	cmp r0, r1
	ble _021D2560
	adds r0, r1, #0
_021D2560:
	ldr r5, [sp, #0x34]
	movs r3, #0
	subs r5, r5, r0
	adds r7, r7, r0
	str r5, [sp, #0x34]
	subs r1, r1, r0
_021D256C:
	ldr r0, [sp, #0x30]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x34]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	lsls r2, r6, #0x10
	lsls r3, r7, #0x10
	ldr r0, [sp, #0x18]
	mov r1, ip
	lsrs r2, r2, #0x10
	lsrs r3, r3, #0x10
	bl FUN_0201ADDC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov58_021D2528

	thumb_func_start ov58_021D25A8
ov58_021D25A8: @ 0x021D25A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x50]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x54]
	str r2, [sp, #0x20]
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x50]
	str r3, [sp, #0x24]
	ldr r4, [r0]
	ldr r0, [sp, #0x54]
	ldr r5, [r0]
	adds r0, r2, #0
	str r0, [sp, #0x38]
	adds r0, r3, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x58]
	cmp r0, #0
	bne _021D25E8
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	bne _021D25E8
	ldr r0, [sp, #0x50]
	adds r1, r2, #0
	str r1, [r0]
	ldr r0, [sp, #0x54]
	adds r1, r3, #0
	str r1, [r0]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
_021D25E8:
	ldr r0, [sp, #0x20]
	subs r0, r0, r4
	str r0, [sp, #0x34]
	bpl _021D25F4
	rsbs r0, r0, #0
	str r0, [sp, #0x34]
_021D25F4:
	ldr r0, [sp, #0x24]
	subs r7, r0, r5
	bpl _021D25FC
	rsbs r7, r7, #0
_021D25FC:
	ldr r0, [sp, #0x34]
	cmp r0, r7
	ble _021D268A
	ldr r0, [sp, #0x20]
	cmp r4, r0
	ble _021D2622
	ldr r0, [sp, #0x24]
	cmp r5, r0
	ble _021D2614
	movs r0, #1
	str r0, [sp, #0x2c]
	b _021D261A
_021D2614:
	movs r0, #0
	mvns r0, r0
	str r0, [sp, #0x2c]
_021D261A:
	str r4, [sp, #0x38]
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	b _021D2634
_021D2622:
	ldr r0, [sp, #0x24]
	cmp r5, r0
	bge _021D262E
	movs r0, #1
	str r0, [sp, #0x2c]
	b _021D2634
_021D262E:
	movs r0, #0
	mvns r0, r0
	str r0, [sp, #0x2c]
_021D2634:
	movs r0, #6
	str r0, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	movs r2, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	adds r3, r2, #0
	bl ov58_021D2528
	ldr r0, [sp, #0x34]
	adds r4, r4, #1
	asrs r6, r0, #1
	ldr r0, [sp, #0x38]
	cmp r4, r0
	bgt _021D270E
_021D265A:
	subs r6, r6, r7
	bpl _021D2666
	ldr r0, [sp, #0x34]
	adds r6, r6, r0
	ldr r0, [sp, #0x2c]
	adds r5, r5, r0
_021D2666:
	movs r0, #6
	str r0, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	movs r2, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	adds r3, r2, #0
	bl ov58_021D2528
	ldr r0, [sp, #0x38]
	adds r4, r4, #1
	cmp r4, r0
	ble _021D265A
	b _021D270E
_021D268A:
	ldr r0, [sp, #0x24]
	cmp r5, r0
	ble _021D26AA
	ldr r0, [sp, #0x20]
	cmp r4, r0
	ble _021D269C
	movs r0, #1
	str r0, [sp, #0x28]
	b _021D26A2
_021D269C:
	movs r0, #0
	mvns r0, r0
	str r0, [sp, #0x28]
_021D26A2:
	str r5, [sp, #0x30]
	ldr r5, [sp, #0x24]
	ldr r4, [sp, #0x20]
	b _021D26BC
_021D26AA:
	ldr r0, [sp, #0x20]
	cmp r4, r0
	bge _021D26B6
	movs r0, #1
	str r0, [sp, #0x28]
	b _021D26BC
_021D26B6:
	movs r0, #0
	mvns r0, r0
	str r0, [sp, #0x28]
_021D26BC:
	movs r0, #6
	str r0, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	movs r2, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	adds r3, r2, #0
	bl ov58_021D2528
	ldr r0, [sp, #0x30]
	adds r5, r5, #1
	asrs r6, r7, #1
	cmp r5, r0
	bgt _021D270E
_021D26E0:
	ldr r0, [sp, #0x34]
	subs r6, r6, r0
	bpl _021D26EC
	ldr r0, [sp, #0x28]
	adds r6, r6, r7
	adds r4, r4, r0
_021D26EC:
	movs r0, #6
	str r0, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	movs r2, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	adds r3, r2, #0
	bl ov58_021D2528
	ldr r0, [sp, #0x30]
	adds r5, r5, #1
	cmp r5, r0
	ble _021D26E0
_021D270E:
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x50]
	str r1, [r0]
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x54]
	str r1, [r0]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov58_021D25A8

	thumb_func_start ov58_021D2720
ov58_021D2720: @ 0x021D2720
	movs r2, #0
_021D2722:
	ldrb r3, [r0, #8]
	lsls r3, r3, #0x1a
	lsrs r3, r3, #0x1d
	strh r3, [r1, #2]
	ldrb r3, [r0, #8]
	lsls r3, r3, #0x1a
	lsrs r3, r3, #0x1d
	beq _021D2746
	adds r3, r0, r3
	subs r3, r3, #1
	ldrb r3, [r3]
	strb r3, [r1]
	ldrb r3, [r0, #8]
	lsls r3, r3, #0x1a
	lsrs r3, r3, #0x1d
	adds r3, r0, r3
	ldrb r3, [r3, #3]
	strb r3, [r1, #1]
_021D2746:
	adds r2, r2, #1
	adds r0, #0xa
	adds r1, r1, #4
	cmp r2, #5
	blt _021D2722
	bx lr
	.align 2, 0
	thumb_func_end ov58_021D2720

	thumb_func_start ov58_021D2754
ov58_021D2754: @ 0x021D2754
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #0x10]
	movs r0, #0
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	adds r5, r1, #0
	adds r7, r2, #0
_021D276A:
	ldrb r0, [r5, #8]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	beq _021D27DA
	ldrh r0, [r7, #2]
	cmp r0, #0
	beq _021D2784
	ldrb r0, [r7]
	subs r0, #9
	str r0, [sp, #0x2c]
	ldrb r0, [r7, #1]
	subs r0, #0x11
	str r0, [sp, #0x28]
_021D2784:
	ldrb r0, [r5, #8]
	movs r4, #0
	lsls r0, r0, #0x1a
	lsrs r1, r0, #0x1d
	cmp r1, #0
	ble _021D27DA
	movs r0, #1
	str r0, [sp, #0x20]
	cmp r1, #0
	ble _021D27DA
_021D2798:
	add r0, sp, #0x2c
	str r0, [sp]
	add r0, sp, #0x28
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldrh r0, [r7, #2]
	movs r6, #0xc0
	adds r3, r5, r4
	str r0, [sp, #0xc]
	ldrb r1, [r5, #8]
	ldrb r3, [r3, #4]
	ldr r0, [sp, #0x10]
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x1e
	muls r6, r2, r6
	ldr r2, _021D281C @ =0x021D2F34
	lsls r1, r1, #0x1d
	adds r2, r2, r6
	lsrs r6, r1, #0x1d
	movs r1, #0x18
	muls r1, r6, r1
	adds r1, r2, r1
	ldrb r2, [r5, r4]
	subs r3, #0x11
	subs r2, #9
	bl ov58_021D25A8
	ldrb r0, [r5, #8]
	adds r4, r4, #1
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	cmp r4, r0
	blt _021D2798
_021D27DA:
	ldr r0, [sp, #0x24]
	adds r5, #0xa
	adds r0, r0, #1
	adds r7, r7, #4
	str r0, [sp, #0x24]
	cmp r0, #5
	blt _021D276A
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _021D27FA
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _021D27FA
	ldr r0, [sp, #0x10]
	bl FUN_0201A954
_021D27FA:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	bl ov58_021D2720
	movs r3, #0
	movs r1, #0x38
_021D2806:
	ldr r0, [sp, #0x14]
	adds r3, r3, #1
	ldrb r2, [r0, #8]
	bics r2, r1
	strb r2, [r0, #8]
	adds r0, #0xa
	str r0, [sp, #0x14]
	cmp r3, #5
	blt _021D2806
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D281C: .4byte 0x021D2F34
	thumb_func_end ov58_021D2754

	thumb_func_start ov58_021D2820
ov58_021D2820: @ 0x021D2820
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _021D2884 @ =0x00004382
	movs r7, #0x76
	movs r6, #0
	adds r4, r5, r0
	lsls r7, r7, #2
_021D282E:
	bl FUN_0203608C
	cmp r6, r0
	beq _021D2876
	ldrb r0, [r4, #8]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	beq _021D286A
	adds r0, r6, #0
	bl FUN_02032EE8
	cmp r0, #0
	beq _021D286A
	movs r0, #0x76
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CAC
	ldrb r0, [r4, #8]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	adds r2, r4, r0
	subs r1, r2, #1
	ldrb r1, [r1]
	ldrb r2, [r2, #3]
	ldr r0, [r5, r7]
	bl ov58_021D1A10
	b _021D2876
_021D286A:
	movs r0, #0x76
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
_021D2876:
	adds r6, r6, #1
	adds r4, #0xa
	adds r5, r5, #4
	cmp r6, #5
	blt _021D282E
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2884: .4byte 0x00004382
	thumb_func_end ov58_021D2820

	thumb_func_start ov58_021D2888
ov58_021D2888: @ 0x021D2888
	push {r3, lr}
	ldrh r1, [r0]
	adds r1, #0x14
	strh r1, [r0]
	ldrh r2, [r0]
	movs r1, #0x5a
	lsls r1, r1, #2
	cmp r2, r1
	bls _021D289E
	movs r1, #0
	strh r1, [r0]
_021D289E:
	ldrh r0, [r0]
	bl FUN_0201D250
	movs r1, #0xa
	muls r1, r0, r1
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r0, r0, #0xc
	adds r0, #0xf
	lsls r1, r0, #5
	movs r0, #0x1d
	orrs r1, r0
	add r0, sp, #0
	strh r1, [r0]
	add r0, sp, #0
	movs r1, #0x18
	movs r2, #2
	blx FUN_020C0160
	pop {r3, pc}
	thumb_func_end ov58_021D2888

	thumb_func_start ov58_021D28C8
ov58_021D28C8: @ 0x021D28C8
	push {r3, r4, r5, lr}
	movs r5, #0
	adds r4, r5, #0
_021D28CE:
	adds r0, r4, #0
	bl FUN_02032EE8
	cmp r0, #0
	beq _021D28DA
	adds r5, r5, #1
_021D28DA:
	adds r4, r4, #1
	cmp r4, #5
	blt _021D28CE
	adds r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov58_021D28C8

	thumb_func_start ov58_021D28E4
ov58_021D28E4: @ 0x021D28E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r7, r3, #0
	adds r5, r0, #0
	str r2, [sp, #0x10]
	bl FUN_0203608C
	str r0, [sp, #0x14]
	adds r0, r7, #0
	bl ov58_021D2A54
	cmp r0, #0
	beq _021D29BE
	movs r0, #0
	str r0, [sp, #0x18]
	adds r6, r7, #0
	adds r4, r7, #0
_021D2906:
	movs r0, #0xcd
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _021D291E
	movs r0, #0x21
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021CAC
	b _021D292A
_021D291E:
	movs r0, #0x21
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021CAC
_021D292A:
	ldr r0, [sp, #0x18]
	adds r6, #8
	adds r0, r0, #1
	adds r4, r4, #4
	str r0, [sp, #0x18]
	cmp r0, #5
	blt _021D2906
	movs r6, #0
	adds r4, r5, #0
_021D293C:
	movs r0, #0x50
	movs r1, #0
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201AE78
	adds r6, r6, #1
	adds r4, #0x10
	cmp r6, #5
	blt _021D293C
	movs r6, #0
	adds r4, r7, #0
_021D295C:
	movs r0, #0xcd
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _021D29AC
	ldr r1, [r4, #0x14]
	bl FUN_02025EF4
	ldr r0, [sp, #0x14]
	cmp r0, r6
	bne _021D2990
	movs r0, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D29C4 @ =0x0003040F
	movs r1, #1
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x14]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_0201D78C
	b _021D29AC
_021D2990:
	movs r0, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	movs r1, #1
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x14]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_0201D78C
_021D29AC:
	adds r0, r5, #0
	bl FUN_0201A954
	adds r6, r6, #1
	adds r7, #8
	adds r4, r4, #4
	adds r5, #0x10
	cmp r6, #5
	blt _021D295C
_021D29BE:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021D29C4: .4byte 0x0003040F
	thumb_func_end ov58_021D28E4

	thumb_func_start ov58_021D29C8
ov58_021D29C8: @ 0x021D29C8
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0203608C
	cmp r0, #0
	bne _021D2A08
	bl FUN_02036284
	cmp r0, #0
	beq _021D2A1C
	ldr r1, _021D2A20 @ =0x000093F4
	ldr r0, _021D2A24 @ =0x00004381
	ldr r2, [r4, r1]
	subs r1, #0x37
	strb r2, [r4, r0]
	subs r0, #9
	adds r2, r4, r1
	adds r3, r4, r0
	movs r1, #0xa
_021D29EE:
	ldrb r0, [r3]
	adds r3, r3, #1
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _021D29EE
	ldr r1, _021D2A28 @ =0x000093BD
	movs r0, #0x78
	adds r1, r4, r1
	movs r2, #0x32
	bl FUN_02035AC4
	pop {r4, pc}
_021D2A08:
	bl FUN_0203629C
	cmp r0, #0
	beq _021D2A1C
	ldr r1, _021D2A2C @ =0x00004378
	movs r0, #0x77
	adds r1, r4, r1
	movs r2, #0xa
	bl FUN_020359DC
_021D2A1C:
	pop {r4, pc}
	nop
_021D2A20: .4byte 0x000093F4
_021D2A24: .4byte 0x00004381
_021D2A28: .4byte 0x000093BD
_021D2A2C: .4byte 0x00004378
	thumb_func_end ov58_021D29C8

	thumb_func_start ov58_021D2A30
ov58_021D2A30: @ 0x021D2A30
	push {r3, r4, r5, lr}
	movs r5, #0
	adds r4, r5, #0
_021D2A36:
	adds r0, r4, #0
	bl FUN_02032EE8
	cmp r0, #0
	beq _021D2A42
	adds r5, r5, #1
_021D2A42:
	adds r4, r4, #1
	cmp r4, #5
	blt _021D2A36
	adds r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov58_021D2A30

	thumb_func_start ov58_021D2A4C
ov58_021D2A4C: @ 0x021D2A4C
	ldr r3, _021D2A50 @ =ov58_021D2A30
	bx r3
	.align 2, 0
_021D2A50: .4byte ov58_021D2A30
	thumb_func_end ov58_021D2A4C

	thumb_func_start ov58_021D2A54
ov58_021D2A54: @ 0x021D2A54
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r7, #0
	adds r6, r7, #0
	adds r4, r5, #0
_021D2A5E:
	movs r0, #0xcd
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r0, r0, #4
	str r1, [r4, r0]
	adds r0, r6, #0
	bl FUN_02032EE8
	movs r1, #0xcd
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r6, r6, #1
	adds r4, #8
	cmp r6, #5
	blt _021D2A5E
	movs r6, #0
	movs r2, #1
	adds r0, r1, #4
_021D2A82:
	ldr r4, [r5, r0]
	ldr r3, [r5, r1]
	cmp r4, r3
	beq _021D2A8C
	adds r7, r2, #0
_021D2A8C:
	adds r6, r6, #1
	adds r5, #8
	cmp r6, #5
	blt _021D2A82
	adds r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov58_021D2A54

	thumb_func_start ov58_021D2A98
ov58_021D2A98: @ 0x021D2A98
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r7, r1, #0
	movs r0, #0x50
	movs r1, #0x27
	adds r4, r2, #0
	bl FUN_02023790
	adds r6, r0, #0
	ldr r0, [r5, #0x10]
	adds r1, r7, #0
	adds r2, r6, #0
	bl FUN_0200B1B8
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x2c]
	adds r2, r6, #0
	bl FUN_0200C388
	adds r0, r6, #0
	bl FUN_020237BC
	movs r0, #0xb6
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #0xb6
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	movs r2, #1
	movs r3, #0xa
	bl FUN_0200E060
	cmp r4, #0
	bne _021D2AE8
	movs r4, #0
_021D2AE8:
	movs r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	movs r0, #0xb6
	lsls r0, r0, #2
	ldr r2, [r5, #0x2c]
	adds r0, r5, r0
	movs r1, #1
	bl FUN_0201D738
	str r0, [r5, #0x30]
	cmp r4, #0
	bne _021D2B08
	movs r0, #0xff
	str r0, [r5, #0x30]
_021D2B08:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov58_021D2A98

	thumb_func_start ov58_021D2B0C
ov58_021D2B0C: @ 0x021D2B0C
	push {r3, lr}
	cmp r0, #0xff
	bne _021D2B16
	movs r0, #1
	pop {r3, pc}
_021D2B16:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _021D2B26
	movs r0, #1
	pop {r3, pc}
_021D2B26:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov58_021D2B0C

	thumb_func_start ov58_021D2B2C
ov58_021D2B2C: @ 0x021D2B2C
	movs r1, #0xb6
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r3, _021D2B38 @ =FUN_0200E084
	movs r1, #0
	bx r3
	.align 2, 0
_021D2B38: .4byte FUN_0200E084
	thumb_func_end ov58_021D2B2C

	thumb_func_start ov58_021D2B3C
ov58_021D2B3C: @ 0x021D2B3C
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_0203608C
	cmp r0, #0
	bne _021D2B58
	bl FUN_02035E18
	adds r0, r4, r0
	cmp r0, #5
	ble _021D2B54
	movs r0, #5
_021D2B54:
	bl FUN_02037B58
_021D2B58:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov58_021D2B3C

	thumb_func_start ov58_021D2B5C
ov58_021D2B5C: @ 0x021D2B5C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl ov58_021D2A30
	adds r5, r0, #0
	cmp r5, #5
	bhi _021D2BFA
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D2B76: @ jump table
	.2byte _021D2BFA - _021D2B76 - 2 @ case 0
	.2byte _021D2B82 - _021D2B76 - 2 @ case 1
	.2byte _021D2BC8 - _021D2B76 - 2 @ case 2
	.2byte _021D2BC8 - _021D2B76 - 2 @ case 3
	.2byte _021D2BC8 - _021D2B76 - 2 @ case 4
	.2byte _021D2BF4 - _021D2B76 - 2 @ case 5
_021D2B82:
	movs r0, #0xc1
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0xe
	bgt _021D2BFA
	bl FUN_020318EC
	cmp r0, #1
	beq _021D2B9C
	movs r0, #0x25
	movs r1, #1
	lsls r0, r0, #0xa
	str r1, [r4, r0]
_021D2B9C:
	movs r0, #0xc2
	movs r1, #0x13
	lsls r0, r0, #2
	str r1, [r4, r0]
	movs r0, #1
	bl FUN_02037B58
	ldr r0, _021D2C9C @ =0x000093F8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D2BC4
	adds r0, r4, #0
	bl ov58_021D2D10
	movs r0, #0x9a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x15
	bl FUN_02021D6C
_021D2BC4:
	movs r0, #2
	pop {r3, r4, r5, pc}
_021D2BC8:
	movs r0, #1
	bl FUN_0205BEA8
	movs r0, #0xc5
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r5, r0
	bge _021D2BFA
	ldr r0, _021D2CA0 @ =0x000093F4
	ldr r0, [r4, r0]
	cmp r0, #2
	bne _021D2BEA
	adds r0, r4, #0
	movs r1, #0
	bl ov58_021D2B3C
	b _021D2BFA
_021D2BEA:
	adds r0, r4, #0
	movs r1, #1
	bl ov58_021D2B3C
	b _021D2BFA
_021D2BF4:
	movs r0, #8
	bl FUN_0205BEA8
_021D2BFA:
	movs r0, #0xc5
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r5, r0
	bge _021D2C44
	bl FUN_02035E18
	movs r1, #0xc6
	lsls r1, r1, #2
	str r0, [r4, r1]
	bl FUN_020318EC
	movs r1, #0xc7
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, _021D2CA4 @ =0x00009404
	ldr r2, [r4, r0]
	cmp r2, #0
	beq _021D2C44
	adds r0, r0, #4
	ldr r1, [r4, r1]
	ldr r0, [r4, r0]
	tst r0, r1
	bne _021D2C44
	adds r0, r4, #0
	movs r1, #1
	bl ov58_021D2B3C
	ldr r1, _021D2CA0 @ =0x000093F4
	movs r0, #1
	str r0, [r4, r1]
	adds r0, r1, #0
	movs r2, #0
	adds r0, #0x10
	str r2, [r4, r0]
	adds r1, #0x14
	str r2, [r4, r1]
_021D2C44:
	bl ov58_021D2A30
	movs r1, #0xc5
	lsls r1, r1, #2
	str r0, [r4, r1]
	bl FUN_02035E18
	movs r1, #0xc6
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, r0
	bge _021D2C98
	ldr r0, _021D2CA0 @ =0x000093F4
	movs r1, #2
	str r1, [r4, r0]
	movs r1, #1
	adds r0, #0x10
	str r1, [r4, r0]
	bl FUN_020318EC
	movs r1, #0xc7
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	eors r0, r1
	ldr r1, _021D2CA8 @ =0x00009408
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	movs r0, #0
	subs r1, r1, #2
	cmp r1, #0xe
	bhi _021D2C90
	movs r2, #1
	adds r3, r2, #0
	lsls r3, r1
	ldr r1, _021D2CAC @ =0x00004045
	tst r1, r3
	beq _021D2C90
	adds r0, r2, #0
_021D2C90:
	cmp r0, #0
	bne _021D2C98
	bl FUN_02022974
_021D2C98:
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D2C9C: .4byte 0x000093F8
_021D2CA0: .4byte 0x000093F4
_021D2CA4: .4byte 0x00009404
_021D2CA8: .4byte 0x00009408
_021D2CAC: .4byte 0x00004045
	thumb_func_end ov58_021D2B5C

	thumb_func_start ov58_021D2CB0
ov58_021D2CB0: @ 0x021D2CB0
	movs r2, #0xc2
	lsls r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov58_021D2CB0

	thumb_func_start ov58_021D2CB8
ov58_021D2CB8: @ 0x021D2CB8
	push {r3, r4}
	movs r3, #0xc2
	lsls r3, r3, #2
	subs r4, r3, #4
	ldr r2, [r0, r3]
	ldr r4, [r0, r4]
	cmp r4, r2
	beq _021D2CE2
	cmp r1, #2
	beq _021D2CD4
	subs r1, r3, #4
	str r2, [r0, r1]
	pop {r3, r4}
	bx lr
_021D2CD4:
	ldr r1, _021D2CE8 @ =0x021D3184
	lsls r4, r2, #3
	ldr r1, [r1, r4]
	cmp r1, #0
	beq _021D2CE2
	subs r1, r3, #4
	str r2, [r0, r1]
_021D2CE2:
	pop {r3, r4}
	bx lr
	nop
_021D2CE8: .4byte 0x021D3184
	thumb_func_end ov58_021D2CB8

	thumb_func_start ov58_021D2CEC
ov58_021D2CEC: @ 0x021D2CEC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D2D0C @ =0x000093F8
	ldr r2, [r4, r0]
	cmp r2, #0
	bne _021D2D08
	subs r0, #8
	ldr r0, [r4, r0]
	bl FUN_02015958
	ldr r1, _021D2D0C @ =0x000093F8
	movs r0, #1
	str r0, [r4, r1]
	pop {r4, pc}
_021D2D08:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_021D2D0C: .4byte 0x000093F8
	thumb_func_end ov58_021D2CEC

	thumb_func_start ov58_021D2D10
ov58_021D2D10: @ 0x021D2D10
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D2D2C @ =0x000093F8
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021D2D2A
	subs r0, #8
	ldr r0, [r4, r0]
	bl FUN_02015A54
	ldr r0, _021D2D2C @ =0x000093F8
	movs r1, #0
	str r1, [r4, r0]
_021D2D2A:
	pop {r4, pc}
	.align 2, 0
_021D2D2C: .4byte 0x000093F8
	thumb_func_end ov58_021D2D10

	thumb_func_start ov58_021D2D30
ov58_021D2D30: @ 0x021D2D30
	push {r3, lr}
	ldr r0, _021D2D48 @ =0x021D2DD4
	bl FUN_02022664
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _021D2D44
	movs r0, #1
	pop {r3, pc}
_021D2D44:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_021D2D48: .4byte 0x021D2DD4
	thumb_func_end ov58_021D2D30

	thumb_func_start ov58_021D2D4C
ov58_021D2D4C: @ 0x021D2D4C
	push {r4, r5, r6, r7}
	adds r5, r1, #0
	ldrh r1, [r5]
	adds r4, r2, #0
	adds r2, r3, #0
	cmp r1, #0
	beq _021D2D88
	ldrh r1, [r5, #2]
	strb r1, [r0]
	ldrh r1, [r5, #4]
	strb r1, [r0, #4]
	ldrh r1, [r5]
	subs r1, r1, #1
	lsls r1, r1, #3
	adds r3, r5, r1
	ldrh r1, [r3, #2]
	strb r1, [r0, #1]
	ldrh r1, [r3, #4]
	strb r1, [r0, #5]
	movs r1, #0
	adds r3, r1, #0
_021D2D76:
	adds r6, r0, r1
	ldrb r7, [r0, r1]
	ldrb r6, [r6, #4]
	adds r6, r7, r6
	bne _021D2D82
	strh r3, [r5]
_021D2D82:
	adds r1, r1, #1
	cmp r1, #2
	blt _021D2D76
_021D2D88:
	ldrh r5, [r5]
	cmp r5, #2
	blo _021D2D98
	ldrb r3, [r0, #8]
	movs r1, #0x38
	bics r3, r1
	movs r1, #0x10
	b _021D2DA6
_021D2D98:
	ldrb r1, [r0, #8]
	movs r3, #0x38
	bics r1, r3
	lsls r3, r5, #0x18
	lsrs r3, r3, #0x18
	lsls r3, r3, #0x1d
	lsrs r3, r3, #0x1a
_021D2DA6:
	orrs r1, r3
	strb r1, [r0, #8]
	ldrb r1, [r0, #8]
	movs r3, #7
	bics r1, r3
	lsls r3, r4, #0x18
	lsrs r4, r3, #0x18
	movs r3, #7
	ands r3, r4
	orrs r1, r3
	strb r1, [r0, #8]
	ldrb r3, [r0, #8]
	movs r1, #0xc0
	bics r3, r1
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x18
	orrs r1, r3
	strb r1, [r0, #8]
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end ov58_021D2D4C
	@ 0x021D2DD4
