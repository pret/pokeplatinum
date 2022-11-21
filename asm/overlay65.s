
	thumb_func_start ov65_0222DCE0
ov65_0222DCE0: @ 0x0222DCE0
	push {r3, lr}
	movs r1, #0x16
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	bl FUN_020507E4
	movs r1, #2
	movs r2, #0x35
	bl FUN_0206AF3C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov65_0222DCE0

	thumb_func_start ov65_0222DCF8
ov65_0222DCF8: @ 0x0222DCF8
	push {r3, lr}
	movs r1, #0x16
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	bl FUN_0207D990
	ldr r1, _0222DD18 @ =0x000001C1
	movs r2, #0x36
	bl FUN_0207D730
	cmp r0, #0
	beq _0222DD14
	movs r0, #1
	pop {r3, pc}
_0222DD14:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_0222DD18: .4byte 0x000001C1
	thumb_func_end ov65_0222DCF8

	thumb_func_start ov65_0222DD1C
ov65_0222DD1C: @ 0x0222DD1C
	movs r0, #1
	bx lr
	thumb_func_end ov65_0222DD1C

	thumb_func_start ov65_0222DD20
ov65_0222DD20: @ 0x0222DD20
	push {r3, r4, r5, lr}
	ldrb r4, [r1, #0x1b]
	adds r5, r0, #0
	adds r1, r4, #0
	subs r1, #0x14
	cmp r1, #1
	bhi _0222DD38
	bl ov65_0222DCE0
	cmp r0, #0
	bne _0222DD38
	movs r4, #0x1d
_0222DD38:
	adds r0, r4, #0
	subs r0, #0x16
	cmp r0, #5
	bhi _0222DD4C
	adds r0, r5, #0
	bl ov65_0222DD1C
	cmp r0, #0
	bne _0222DD4C
	movs r4, #0x1d
_0222DD4C:
	adds r0, r4, #0
	subs r0, #0x12
	cmp r0, #1
	bhi _0222DD60
	adds r0, r5, #0
	bl ov65_0222DCF8
	cmp r0, #0
	bne _0222DD60
	movs r4, #0x1d
_0222DD60:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_0222DD20

	thumb_func_start ov65_0222DD64
ov65_0222DD64: @ 0x0222DD64
	subs r0, #0x12
	cmp r0, #9
	bhi _0222DD8E
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222DD76: @ jump table
	.2byte _0222DD8A - _0222DD76 - 2 @ case 0
	.2byte _0222DD8A - _0222DD76 - 2 @ case 1
	.2byte _0222DD8E - _0222DD76 - 2 @ case 2
	.2byte _0222DD8E - _0222DD76 - 2 @ case 3
	.2byte _0222DD8A - _0222DD76 - 2 @ case 4
	.2byte _0222DD8A - _0222DD76 - 2 @ case 5
	.2byte _0222DD8A - _0222DD76 - 2 @ case 6
	.2byte _0222DD8A - _0222DD76 - 2 @ case 7
	.2byte _0222DD8A - _0222DD76 - 2 @ case 8
	.2byte _0222DD8A - _0222DD76 - 2 @ case 9
_0222DD8A:
	movs r0, #1
	bx lr
_0222DD8E:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov65_0222DD64

	thumb_func_start ov65_0222DD94
ov65_0222DD94: @ 0x0222DD94
	push {r3, lr}
	subs r0, #0x12
	cmp r0, #9
	bhi _0222DDCC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222DDA8: @ jump table
	.2byte _0222DDBC - _0222DDA8 - 2 @ case 0
	.2byte _0222DDBC - _0222DDA8 - 2 @ case 1
	.2byte _0222DDCC - _0222DDA8 - 2 @ case 2
	.2byte _0222DDCC - _0222DDA8 - 2 @ case 3
	.2byte _0222DDC0 - _0222DDA8 - 2 @ case 4
	.2byte _0222DDC0 - _0222DDA8 - 2 @ case 5
	.2byte _0222DDC8 - _0222DDA8 - 2 @ case 6
	.2byte _0222DDC8 - _0222DDA8 - 2 @ case 7
	.2byte _0222DDC4 - _0222DDA8 - 2 @ case 8
	.2byte _0222DDC4 - _0222DDA8 - 2 @ case 9
_0222DDBC:
	movs r0, #0xb
	pop {r3, pc}
_0222DDC0:
	movs r0, #0xd
	pop {r3, pc}
_0222DDC4:
	movs r0, #0xf
	pop {r3, pc}
_0222DDC8:
	movs r0, #0xe
	pop {r3, pc}
_0222DDCC:
	bl FUN_02022974
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov65_0222DD94

	thumb_func_start ov65_0222DDD4
ov65_0222DDD4: @ 0x0222DDD4
	subs r0, #9
	cmp r0, #5
	bhi _0222DDF6
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222DDE6: @ jump table
	.2byte _0222DDF2 - _0222DDE6 - 2 @ case 0
	.2byte _0222DDF2 - _0222DDE6 - 2 @ case 1
	.2byte _0222DDF2 - _0222DDE6 - 2 @ case 2
	.2byte _0222DDF2 - _0222DDE6 - 2 @ case 3
	.2byte _0222DDF2 - _0222DDE6 - 2 @ case 4
	.2byte _0222DDF2 - _0222DDE6 - 2 @ case 5
_0222DDF2:
	movs r0, #1
	bx lr
_0222DDF6:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov65_0222DDD4

	thumb_func_start ov65_0222DDFC
ov65_0222DDFC: @ 0x0222DDFC
	push {r4, lr}
	adds r4, r0, #0
	bl ov65_0222DDD4
	cmp r0, #0
	beq _0222DE0C
	movs r0, #1
	pop {r4, pc}
_0222DE0C:
	subs r4, #0xf
	cmp r4, #0xc
	bhi _0222DE3C
	adds r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222DE1E: @ jump table
	.2byte _0222DE38 - _0222DE1E - 2 @ case 0
	.2byte _0222DE3C - _0222DE1E - 2 @ case 1
	.2byte _0222DE3C - _0222DE1E - 2 @ case 2
	.2byte _0222DE3C - _0222DE1E - 2 @ case 3
	.2byte _0222DE38 - _0222DE1E - 2 @ case 4
	.2byte _0222DE3C - _0222DE1E - 2 @ case 5
	.2byte _0222DE38 - _0222DE1E - 2 @ case 6
	.2byte _0222DE3C - _0222DE1E - 2 @ case 7
	.2byte _0222DE38 - _0222DE1E - 2 @ case 8
	.2byte _0222DE3C - _0222DE1E - 2 @ case 9
	.2byte _0222DE38 - _0222DE1E - 2 @ case 10
	.2byte _0222DE3C - _0222DE1E - 2 @ case 11
	.2byte _0222DE38 - _0222DE1E - 2 @ case 12
_0222DE38:
	movs r0, #1
	pop {r4, pc}
_0222DE3C:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov65_0222DDFC

	thumb_func_start ov65_0222DE40
ov65_0222DE40: @ 0x0222DE40
	cmp r0, #7
	bhi _0222DE64
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222DE50: @ jump table
	.2byte _0222DE64 - _0222DE50 - 2 @ case 0
	.2byte _0222DE64 - _0222DE50 - 2 @ case 1
	.2byte _0222DE60 - _0222DE50 - 2 @ case 2
	.2byte _0222DE60 - _0222DE50 - 2 @ case 3
	.2byte _0222DE60 - _0222DE50 - 2 @ case 4
	.2byte _0222DE60 - _0222DE50 - 2 @ case 5
	.2byte _0222DE60 - _0222DE50 - 2 @ case 6
	.2byte _0222DE60 - _0222DE50 - 2 @ case 7
_0222DE60:
	movs r0, #1
	bx lr
_0222DE64:
	movs r0, #0
	bx lr
	thumb_func_end ov65_0222DE40

	thumb_func_start ov65_0222DE68
ov65_0222DE68: @ 0x0222DE68
	push {r4, lr}
	adds r4, r0, #0
	bl ov65_0222DE40
	cmp r0, #0
	beq _0222DE78
	movs r0, #1
	pop {r4, pc}
_0222DE78:
	cmp r4, #8
	bgt _0222DE84
	bge _0222DEA8
	cmp r4, #1
	beq _0222DEA8
	b _0222DEAC
_0222DE84:
	subs r4, #0x12
	cmp r4, #8
	bhi _0222DEAC
	adds r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222DE96: @ jump table
	.2byte _0222DEA8 - _0222DE96 - 2 @ case 0
	.2byte _0222DEAC - _0222DE96 - 2 @ case 1
	.2byte _0222DEA8 - _0222DE96 - 2 @ case 2
	.2byte _0222DEAC - _0222DE96 - 2 @ case 3
	.2byte _0222DEA8 - _0222DE96 - 2 @ case 4
	.2byte _0222DEAC - _0222DE96 - 2 @ case 5
	.2byte _0222DEA8 - _0222DE96 - 2 @ case 6
	.2byte _0222DEAC - _0222DE96 - 2 @ case 7
	.2byte _0222DEA8 - _0222DE96 - 2 @ case 8
_0222DEA8:
	movs r0, #1
	pop {r4, pc}
_0222DEAC:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov65_0222DE68

	thumb_func_start ov65_0222DEB0
ov65_0222DEB0: @ 0x0222DEB0
	subs r0, #0xc
	cmp r0, #3
	bhi _0222DECE
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222DEC2: @ jump table
	.2byte _0222DECA - _0222DEC2 - 2 @ case 0
	.2byte _0222DECA - _0222DEC2 - 2 @ case 1
	.2byte _0222DECA - _0222DEC2 - 2 @ case 2
	.2byte _0222DECA - _0222DEC2 - 2 @ case 3
_0222DECA:
	movs r0, #1
	bx lr
_0222DECE:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov65_0222DEB0

	thumb_func_start ov65_0222DED4
ov65_0222DED4: @ 0x0222DED4
	movs r1, #0x1d
	cmp r0, #0x1b
	bhi _0222DF84
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222DEE6: @ jump table
	.2byte _0222DF84 - _0222DEE6 - 2 @ case 0
	.2byte _0222DF82 - _0222DEE6 - 2 @ case 1
	.2byte _0222DF6A - _0222DEE6 - 2 @ case 2
	.2byte _0222DF6E - _0222DEE6 - 2 @ case 3
	.2byte _0222DF72 - _0222DEE6 - 2 @ case 4
	.2byte _0222DF76 - _0222DEE6 - 2 @ case 5
	.2byte _0222DF7A - _0222DEE6 - 2 @ case 6
	.2byte _0222DF7E - _0222DEE6 - 2 @ case 7
	.2byte _0222DF66 - _0222DEE6 - 2 @ case 8
	.2byte _0222DF36 - _0222DEE6 - 2 @ case 9
	.2byte _0222DF3A - _0222DEE6 - 2 @ case 10
	.2byte _0222DF3E - _0222DEE6 - 2 @ case 11
	.2byte _0222DF42 - _0222DEE6 - 2 @ case 12
	.2byte _0222DF46 - _0222DEE6 - 2 @ case 13
	.2byte _0222DF4A - _0222DEE6 - 2 @ case 14
	.2byte _0222DF32 - _0222DEE6 - 2 @ case 15
	.2byte _0222DF4E - _0222DEE6 - 2 @ case 16
	.2byte _0222DF84 - _0222DEE6 - 2 @ case 17
	.2byte _0222DF52 - _0222DEE6 - 2 @ case 18
	.2byte _0222DF1E - _0222DEE6 - 2 @ case 19
	.2byte _0222DF56 - _0222DEE6 - 2 @ case 20
	.2byte _0222DF22 - _0222DEE6 - 2 @ case 21
	.2byte _0222DF5A - _0222DEE6 - 2 @ case 22
	.2byte _0222DF26 - _0222DEE6 - 2 @ case 23
	.2byte _0222DF62 - _0222DEE6 - 2 @ case 24
	.2byte _0222DF2E - _0222DEE6 - 2 @ case 25
	.2byte _0222DF5E - _0222DEE6 - 2 @ case 26
	.2byte _0222DF2A - _0222DEE6 - 2 @ case 27
_0222DF1E:
	movs r1, #0x12
	b _0222DF84
_0222DF22:
	movs r1, #0x14
	b _0222DF84
_0222DF26:
	movs r1, #0x16
	b _0222DF84
_0222DF2A:
	movs r1, #0x1a
	b _0222DF84
_0222DF2E:
	movs r1, #0x18
	b _0222DF84
_0222DF32:
	movs r1, #8
	b _0222DF84
_0222DF36:
	movs r1, #2
	b _0222DF84
_0222DF3A:
	movs r1, #3
	b _0222DF84
_0222DF3E:
	movs r1, #4
	b _0222DF84
_0222DF42:
	movs r1, #5
	b _0222DF84
_0222DF46:
	movs r1, #6
	b _0222DF84
_0222DF4A:
	movs r1, #7
	b _0222DF84
_0222DF4E:
	movs r1, #1
	b _0222DF84
_0222DF52:
	movs r1, #0x13
	b _0222DF84
_0222DF56:
	movs r1, #0x15
	b _0222DF84
_0222DF5A:
	movs r1, #0x17
	b _0222DF84
_0222DF5E:
	movs r1, #0x1b
	b _0222DF84
_0222DF62:
	movs r1, #0x19
	b _0222DF84
_0222DF66:
	movs r1, #0xf
	b _0222DF84
_0222DF6A:
	movs r1, #9
	b _0222DF84
_0222DF6E:
	movs r1, #0xa
	b _0222DF84
_0222DF72:
	movs r1, #0xb
	b _0222DF84
_0222DF76:
	movs r1, #0xc
	b _0222DF84
_0222DF7A:
	movs r1, #0xd
	b _0222DF84
_0222DF7E:
	movs r1, #0xe
	b _0222DF84
_0222DF82:
	movs r1, #0x10
_0222DF84:
	adds r0, r1, #0
	bx lr
	thumb_func_end ov65_0222DED4

	thumb_func_start ov65_0222DF88
ov65_0222DF88: @ 0x0222DF88
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0x16
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	bl FUN_0207A268
	str r0, [sp]
	bl FUN_0207A0F8
	movs r5, #0
	adds r7, r0, #0
	adds r4, r5, #0
	cmp r7, #0
	ble _0222DFD0
_0222DFA4:
	ldr r0, [sp]
	adds r1, r4, #0
	bl FUN_0207A0FC
	movs r1, #0xa3
	movs r2, #0
	adds r6, r0, #0
	bl FUN_02074470
	cmp r0, #0
	beq _0222DFCA
	adds r0, r6, #0
	movs r1, #0x4c
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	bne _0222DFCA
	adds r5, r5, #1
_0222DFCA:
	adds r4, r4, #1
	cmp r4, r7
	blt _0222DFA4
_0222DFD0:
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_0222DF88

	thumb_func_start ov65_0222DFD4
ov65_0222DFD4: @ 0x0222DFD4
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	subs r1, #0x12
	cmp r1, #1
	bhi _0222DFE6
	bl FUN_02038B00
	pop {r4, pc}
_0222DFE6:
	bl ov65_0222DD64
	cmp r0, #0
	beq _0222DFF4
	bl FUN_02038B20
	pop {r4, pc}
_0222DFF4:
	cmp r4, #0x10
	bne _0222DFFE
	bl FUN_02038B60
	pop {r4, pc}
_0222DFFE:
	subs r4, #0x14
	cmp r4, #1
	bhi _0222E010
	movs r0, #0
	bl FUN_0203632C
	bl FUN_02038EA4
	pop {r4, pc}
_0222E010:
	movs r0, #1
	bl FUN_0203632C
	bl FUN_02038B84
	pop {r4, pc}
	thumb_func_end ov65_0222DFD4

	thumb_func_start ov65_0222E01C
ov65_0222E01C: @ 0x0222E01C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #4]
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _0222E1EC @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _0222E1F0 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	movs r0, #0x5c
	movs r1, #0x36
	bl FUN_02006C24
	str r0, [sp, #0x20]
	movs r0, #0x36
	bl FUN_02018340
	movs r2, #0x57
	ldr r1, [sp, #4]
	lsls r2, r2, #2
	str r0, [r1, r2]
	movs r0, #0x36
	bl FUN_0200B358
	movs r2, #0x59
	ldr r1, [sp, #4]
	lsls r2, r2, #2
	str r0, [r1, r2]
	ldr r2, _0222E1F4 @ =0x000002A2
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0x36
	bl FUN_0200B144
	movs r2, #0x5a
	ldr r1, [sp, #4]
	lsls r2, r2, #2
	str r0, [r1, r2]
	ldr r2, _0222E1F8 @ =0x000002B7
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0x36
	bl FUN_0200B144
	movs r2, #0x5b
	ldr r1, [sp, #4]
	lsls r2, r2, #2
	str r0, [r1, r2]
	bl ov65_0222E618
	movs r1, #0x57
	ldr r0, [sp, #4]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bl ov65_0222E638
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x20]
	bl ov65_0222ECA8
	movs r2, #0xcb
	ldr r1, _0222E1FC @ =0x00000D64
	ldr r0, [sp, #4]
	lsls r2, r2, #2
	adds r0, r0, r1
	movs r1, #0
	blx FUN_020C4CF4
	ldr r0, [sp, #0x20]
	movs r1, #4
	add r2, sp, #0x2c
	movs r3, #0x36
	bl FUN_020071EC
	adds r4, r0, #0
	ldr r0, [sp, #0x2c]
	ldr r2, _0222E200 @ =0x00000D6C
	ldr r1, [sp, #4]
	ldr r0, [r0, #0xc]
	adds r1, r1, r2
	movs r2, #0x80
	blx FUN_020C4B18
	ldr r0, [sp, #0x2c]
	ldr r2, _0222E204 @ =0x00000DEC
	ldr r1, [sp, #4]
	ldr r0, [r0, #0xc]
	adds r1, r1, r2
	movs r2, #0x80
	blx FUN_020C4B18
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r1, _0222E204 @ =0x00000DEC
	ldr r0, [sp, #4]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	subs r1, #0x80
	adds r0, r0, r1
	str r0, [sp, #8]
_0222E112:
	movs r0, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	adds r0, r0, #1
	lsls r1, r0, #5
	ldr r0, [sp, #4]
	adds r0, r0, r1
	str r0, [sp, #0x24]
_0222E124:
	ldr r0, [sp, #0x18]
	cmp r0, #0x15
	blt _0222E12E
	bl FUN_02022974
_0222E12E:
	ldr r0, [sp, #0x24]
	movs r7, #1
	adds r4, r0, #2
	ldr r0, [sp, #0xc]
	adds r6, r0, #2
	ldr r0, [sp, #8]
	adds r5, r0, #2
	ldr r0, [sp, #0x14]
	asrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x28]
_0222E146:
	ldr r0, _0222E200 @ =0x00000D6C
	ldr r3, [sp, #0x28]
	ldrh r0, [r4, r0]
	adds r1, r6, #0
	movs r2, #1
	str r0, [sp]
	adds r0, r5, #0
	bl FUN_0200393C
	adds r7, r7, #1
	adds r4, r4, #2
	adds r6, r6, #2
	adds r5, r5, #2
	cmp r7, #0x10
	blt _0222E146
	ldr r0, [sp, #0xc]
	adds r0, #0x20
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	adds r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	cmp r0, #1
	beq _0222E190
	movs r0, #3
	ldr r1, [sp, #0x14]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #1
	lsls r0, r0, #0xc
	str r1, [sp, #0x14]
	cmp r1, r0
	blt _0222E124
	str r0, [sp, #0x14]
	movs r0, #1
	str r0, [sp, #0x10]
	b _0222E124
_0222E190:
	ldr r0, [sp, #8]
	adds r0, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	adds r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #3
	blt _0222E112
	ldr r1, _0222E204 @ =0x00000DEC
	ldr r0, [sp, #4]
	adds r0, r0, r1
	movs r1, #0x2a
	lsls r1, r1, #4
	blx FUN_020C2C54
	ldr r1, _0222E208 @ =0x00000D68
	ldr r0, [sp, #4]
	movs r2, #1
	str r2, [r0, r1]
	subs r2, r1, #4
	ldr r1, [sp, #4]
	ldr r0, _0222E20C @ =ov65_0222E214
	adds r1, r1, r2
	movs r2, #0x14
	bl FUN_0200DA04
	ldr r2, _0222E1FC @ =0x00000D64
	ldr r1, [sp, #4]
	str r0, [r1, r2]
	ldr r0, _0222E210 @ =ov65_0222E5E0
	bl FUN_02017798
	bl ov65_0222EDD0
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x20]
	bl ov65_0222EE18
	ldr r0, [sp, #4]
	bl ov65_0222EE8C
	ldr r0, [sp, #0x20]
	bl FUN_02006CA8
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222E1EC: .4byte 0xFFFFE0FF
_0222E1F0: .4byte 0x04001000
_0222E1F4: .4byte 0x000002A2
_0222E1F8: .4byte 0x000002B7
_0222E1FC: .4byte 0x00000D64
_0222E200: .4byte 0x00000D6C
_0222E204: .4byte 0x00000DEC
_0222E208: .4byte 0x00000D68
_0222E20C: .4byte ov65_0222E214
_0222E210: .4byte ov65_0222E5E0
	thumb_func_end ov65_0222E01C

	thumb_func_start ov65_0222E214
ov65_0222E214: @ 0x0222E214
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0222E29C
	ldr r0, _0222E2A0 @ =0x0000032B
	movs r1, #1
	ldrb r2, [r4, r0]
	eors r2, r1
	strb r2, [r4, r0]
	ldrb r2, [r4, r0]
	tst r1, r2
	bne _0222E29C
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
	ldr r0, _0222E2A4 @ =0x0000032A
	ldrsb r1, [r4, r0]
	cmp r1, #0
	bne _0222E280
	subs r1, r0, #2
	ldrsh r1, [r4, r1]
	adds r2, r1, #1
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0x15
	blt _0222E29C
	movs r2, #0x13
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r2, [r4, r0]
	movs r1, #1
	eors r1, r2
	strb r1, [r4, r0]
	pop {r4, pc}
_0222E280:
	subs r1, r0, #2
	ldrsh r1, [r4, r1]
	subs r2, r1, #1
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0
	bge _0222E29C
	movs r2, #1
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r1, [r4, r0]
	eors r1, r2
	strb r1, [r4, r0]
_0222E29C:
	pop {r4, pc}
	nop
_0222E2A0: .4byte 0x0000032B
_0222E2A4: .4byte 0x0000032A
	thumb_func_end ov65_0222E214

	thumb_func_start ov65_0222E2A8
ov65_0222E2A8: @ 0x0222E2A8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r1, #0
	ldr r1, [r6]
	adds r5, r0, #0
	cmp r1, #0
	beq _0222E2BE
	cmp r1, #1
	bne _0222E2BC
	b _0222E3E0
_0222E2BC:
	b _0222E3EE
_0222E2BE:
	bl FUN_02006840
	adds r4, r0, #0
	bl FUN_020389B8
	cmp r0, #0
	beq _0222E306
	ldr r0, [r4, #4]
	cmp r0, #0xc
	bhi _0222E312
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222E2DE: @ jump table
	.2byte _0222E312 - _0222E2DE - 2 @ case 0
	.2byte _0222E2F8 - _0222E2DE - 2 @ case 1
	.2byte _0222E2F8 - _0222E2DE - 2 @ case 2
	.2byte _0222E2F8 - _0222E2DE - 2 @ case 3
	.2byte _0222E2F8 - _0222E2DE - 2 @ case 4
	.2byte _0222E2F8 - _0222E2DE - 2 @ case 5
	.2byte _0222E2F8 - _0222E2DE - 2 @ case 6
	.2byte _0222E2F8 - _0222E2DE - 2 @ case 7
	.2byte _0222E2F8 - _0222E2DE - 2 @ case 8
	.2byte _0222E2F8 - _0222E2DE - 2 @ case 9
	.2byte _0222E2F8 - _0222E2DE - 2 @ case 10
	.2byte _0222E312 - _0222E2DE - 2 @ case 11
	.2byte _0222E2F8 - _0222E2DE - 2 @ case 12
_0222E2F8:
	movs r2, #1
	movs r0, #3
	movs r1, #0x79
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	b _0222E312
_0222E306:
	movs r2, #1
	movs r0, #3
	movs r1, #0x79
	lsls r2, r2, #0x10
	bl FUN_02017FC8
_0222E312:
	ldr r0, _0222E3F4 @ =0x0000003F
	movs r1, #2
	bl FUN_02006590
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _0222E32E
	movs r2, #7
	movs r0, #3
	movs r1, #0x36
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	b _0222E33A
_0222E32E:
	movs r2, #0xa
	movs r0, #3
	movs r1, #0x36
	lsls r2, r2, #0x10
	bl FUN_02017FC8
_0222E33A:
	ldr r1, _0222E3F8 @ =0x00001094
	adds r0, r5, #0
	movs r2, #0x36
	bl FUN_0200681C
	ldr r2, _0222E3F8 @ =0x00001094
	movs r1, #0
	adds r5, r0, #0
	blx FUN_020C4CF4
	movs r0, #0x20
	movs r1, #0x36
	bl FUN_0201DBEC
	movs r1, #6
	movs r0, #8
	lsls r1, r1, #6
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r2, [r4]
	subs r0, #0x20
	subs r1, #0x20
	str r2, [r5, r0]
	ldr r0, [r5, r1]
	bl FUN_0202B370
	str r0, [r5]
	movs r1, #0x35
	ldr r0, [r4, #4]
	lsls r1, r1, #4
	str r0, [r5, r1]
	adds r0, r1, #0
	movs r2, #8
	subs r0, #8
	str r2, [r5, r0]
	subs r2, #9
	adds r1, #0x1c
	str r2, [r5, r1]
	movs r0, #0xf
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0xf
	movs r1, #0
	bl FUN_0201FF74
	adds r0, r5, #0
	bl ov65_0222EBE0
	adds r0, r5, #0
	bl ov65_0222E01C
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x36
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	bl FUN_020389B8
	cmp r0, #0
	beq _0222E3C6
	bl FUN_02039734
	b _0222E3CA
_0222E3C6:
	bl FUN_02099550
_0222E3CA:
	movs r0, #4
	bl FUN_0201E450
	cmp r0, #1
	beq _0222E3D8
	bl FUN_02022974
_0222E3D8:
	ldr r0, [r6]
	adds r0, r0, #1
	str r0, [r6]
	b _0222E3EE
_0222E3E0:
	bl FUN_0200682C
	movs r0, #0
	str r0, [r6]
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_0222E3EE:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0222E3F4: .4byte 0x0000003F
_0222E3F8: .4byte 0x00001094
	thumb_func_end ov65_0222E2A8

	thumb_func_start ov65_0222E3FC
ov65_0222E3FC: @ 0x0222E3FC
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	bl FUN_0200682C
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #0
	beq _0222E416
	cmp r1, #1
	beq _0222E424
	cmp r1, #2
	beq _0222E43E
	b _0222E44A
_0222E416:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0222E44A
	movs r0, #1
	str r0, [r5]
	b _0222E44A
_0222E424:
	movs r2, #0xd1
	lsls r2, r2, #2
	ldr r2, [r4, r2]
	ldr r3, _0222E474 @ =0x02239D2C
	lsls r6, r2, #2
	ldr r6, [r3, r6]
	cmp r6, #0
	beq _0222E44A
	ldr r3, _0222E478 @ =0x02239E60
	str r2, [r3]
	blx r6
	str r0, [r5]
	b _0222E44A
_0222E43E:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0222E44A
	movs r0, #1
	pop {r4, r5, r6, pc}
_0222E44A:
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222E458
	bl FUN_020219F8
_0222E458:
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov65_02235194
	cmp r0, #1
	bne _0222E470
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov65_02235244
_0222E470:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222E474: .4byte 0x02239D2C
_0222E478: .4byte 0x02239E60
	thumb_func_end ov65_0222E3FC

	thumb_func_start ov65_0222E47C
ov65_0222E47C: @ 0x0222E47C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	ldr r0, _0222E53C @ =0x00000D64
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0222E49E
	bl FUN_0200DA58
	ldr r0, _0222E53C @ =0x00000D64
	movs r1, #0
	str r1, [r5, r0]
	adds r0, r0, #4
	str r1, [r5, r0]
_0222E49E:
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov65_02235194
	cmp r0, #1
	bne _0222E4B6
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov65_02235130
_0222E4B6:
	adds r0, r5, #0
	bl ov65_02232FCC
	cmp r0, #1
	bne _0222E4C6
	adds r0, r5, #0
	bl ov65_02233068
_0222E4C6:
	ldr r0, _0222E540 @ =0x00000B08
	adds r0, r5, r0
	bl ov65_0222E99C
	movs r0, #0xb2
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_020127BC
	movs r7, #0xae
	movs r6, #0
	adds r4, r5, #0
	lsls r7, r7, #2
_0222E4E0:
	ldr r0, [r4, r7]
	bl FUN_02009754
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #4
	blt _0222E4E0
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02021964
	bl FUN_0200A878
	bl FUN_0201E958
	bl FUN_0201F8B4
	adds r0, r5, #0
	bl ov65_0222EF4C
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov65_0222EC5C
	movs r0, #0x5b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200B190
	movs r0, #0x5a
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200B190
	movs r0, #0x59
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200B3F0
	ldr r0, _0222E544 @ =0x0000003F
	bl FUN_02006514
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222E53C: .4byte 0x00000D64
_0222E540: .4byte 0x00000B08
_0222E544: .4byte 0x0000003F
	thumb_func_end ov65_0222E47C

	thumb_func_start ov65_0222E548
ov65_0222E548: @ 0x0222E548
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	bl ov65_0222E47C
	adds r0, r5, #0
	bl FUN_02006840
	adds r6, r0, #0
	movs r0, #0xd2
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	str r1, [r6, #4]
	ldr r0, [r4, r0]
	cmp r0, #8
	beq _0222E570
	cmp r0, #0xa
	bne _0222E576
_0222E570:
	bl FUN_02099560
	b _0222E57C
_0222E576:
	bl FUN_021D2388
	str r0, [r6, #8]
_0222E57C:
	adds r0, r4, #0
	bl ov65_0222EC2C
	adds r0, r5, #0
	bl FUN_02006830
	bl FUN_0201E530
	bl FUN_0201DC3C
	movs r0, #0x36
	bl FUN_0201807C
	movs r0, #0xd2
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0xc
	bhi _0222E5CC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222E5AC: @ jump table
	.2byte _0222E5CC - _0222E5AC - 2 @ case 0
	.2byte _0222E5C6 - _0222E5AC - 2 @ case 1
	.2byte _0222E5C6 - _0222E5AC - 2 @ case 2
	.2byte _0222E5C6 - _0222E5AC - 2 @ case 3
	.2byte _0222E5C6 - _0222E5AC - 2 @ case 4
	.2byte _0222E5C6 - _0222E5AC - 2 @ case 5
	.2byte _0222E5C6 - _0222E5AC - 2 @ case 6
	.2byte _0222E5C6 - _0222E5AC - 2 @ case 7
	.2byte _0222E5C6 - _0222E5AC - 2 @ case 8
	.2byte _0222E5C6 - _0222E5AC - 2 @ case 9
	.2byte _0222E5C6 - _0222E5AC - 2 @ case 10
	.2byte _0222E5CC - _0222E5AC - 2 @ case 11
	.2byte _0222E5C6 - _0222E5AC - 2 @ case 12
_0222E5C6:
	movs r0, #0x79
	bl FUN_0201807C
_0222E5CC:
	bl ov65_02231A54
	cmp r0, #1
	bne _0222E5DC
	movs r0, #0
	movs r1, #0x78
	bl FUN_02004A68
_0222E5DC:
	movs r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ov65_0222E548

	thumb_func_start ov65_0222E5E0
ov65_0222E5E0: @ 0x0222E5E0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0201C2B8
	bl FUN_0201DCAC
	bl FUN_0200A858
	ldr r0, _0222E614 @ =0x00001090
	ldrh r0, [r4, r0]
	cmp r0, #1
	bne _0222E610
	movs r0, #0
	bl FUN_0200F338
	movs r0, #1
	bl FUN_0200F338
	ldr r0, _0222E614 @ =0x00001090
	movs r1, #0
	strh r1, [r4, r0]
_0222E610:
	pop {r4, pc}
	nop
_0222E614: .4byte 0x00001090
	thumb_func_end ov65_0222E5E0

	thumb_func_start ov65_0222E618
ov65_0222E618: @ 0x0222E618
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0222E634 @ =0x02238B10
	add r3, sp, #0
	movs r2, #5
_0222E622:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0222E622
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_0222E634: .4byte 0x02238B10
	thumb_func_end ov65_0222E618

	thumb_func_start ov65_0222E638
ov65_0222E638: @ 0x0222E638
	push {r3, r4, r5, lr}
	sub sp, #0xf0
	ldr r5, _0222E850 @ =0x02238988
	add r3, sp, #0xe0
	adds r4, r0, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _0222E854 @ =0x022389B0
	add r3, sp, #0xc4
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
	movs r3, #0x36
	bl FUN_02019690
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02019EBC
	ldr r5, _0222E858 @ =0x022389CC
	add r3, sp, #0xa8
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
	movs r0, #1
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x36
	bl FUN_02019690
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019EBC
	ldr r5, _0222E85C @ =0x02238A74
	add r3, sp, #0x8c
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
	movs r3, #0x36
	bl FUN_02019690
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019EBC
	ldr r5, _0222E860 @ =0x022389E8
	add r3, sp, #0x70
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
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	movs r0, #3
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x36
	bl FUN_02019690
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02019EBC
	ldr r5, _0222E864 @ =0x02238A04
	add r3, sp, #0x54
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
	ldr r5, _0222E868 @ =0x02238A20
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
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #5
	bl FUN_02019EBC
	ldr r5, _0222E86C @ =0x02238A3C
	add r3, sp, #0x1c
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
	adds r0, r4, #0
	movs r1, #6
	bl FUN_02019EBC
	ldr r5, _0222E870 @ =0x02238A58
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
	movs r0, #0
	movs r1, #0x20
	adds r2, r0, #0
	movs r3, #0x36
	bl FUN_02019690
	movs r0, #1
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x36
	bl FUN_02019690
	movs r0, #2
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x36
	bl FUN_02019690
	movs r0, #3
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x36
	bl FUN_02019690
	movs r0, #4
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x36
	bl FUN_02019690
	movs r0, #5
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x36
	bl FUN_02019690
	movs r0, #6
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x36
	bl FUN_02019690
	movs r0, #7
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x36
	bl FUN_02019690
	movs r0, #0
	movs r1, #3
	bl FUN_02019060
	movs r0, #1
	adds r1, r0, #0
	bl FUN_02019060
	movs r0, #3
	movs r1, #0
	bl FUN_02019060
	movs r0, #2
	movs r1, #0
	bl FUN_02019060
	ldr r0, _0222E874 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0222E878 @ =0x04001050
	strh r1, [r0]
	add sp, #0xf0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222E850: .4byte 0x02238988
_0222E854: .4byte 0x022389B0
_0222E858: .4byte 0x022389CC
_0222E85C: .4byte 0x02238A74
_0222E860: .4byte 0x022389E8
_0222E864: .4byte 0x02238A04
_0222E868: .4byte 0x02238A20
_0222E86C: .4byte 0x02238A3C
_0222E870: .4byte 0x02238A58
_0222E874: .4byte 0x04000050
_0222E878: .4byte 0x04001050
	thumb_func_end ov65_0222E638

	thumb_func_start ov65_0222E87C
ov65_0222E87C: @ 0x0222E87C
	push {r3, r4, r5, lr}
	ldr r2, _0222E8A4 @ =0x00000A84
	movs r4, #0
	adds r5, r0, #0
_0222E884:
	ldr r3, [r5, r2]
	cmp r3, #0
	bne _0222E894
	lsls r2, r4, #2
	adds r2, r0, r2
	ldr r0, _0222E8A4 @ =0x00000A84
	str r1, [r2, r0]
	pop {r3, r4, r5, pc}
_0222E894:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0x21
	blt _0222E884
	bl FUN_02022974
	pop {r3, r4, r5, pc}
	nop
_0222E8A4: .4byte 0x00000A84
	thumb_func_end ov65_0222E87C

	thumb_func_start ov65_0222E8A8
ov65_0222E8A8: @ 0x0222E8A8
	push {r3, r4, r5, lr}
	ldr r2, _0222E8D0 @ =0x00000A84
	movs r4, #0
	adds r5, r0, #0
_0222E8B0:
	ldr r3, [r5, r2]
	cmp r3, r1
	bne _0222E8C2
	lsls r1, r4, #2
	adds r1, r0, r1
	ldr r0, _0222E8D0 @ =0x00000A84
	movs r2, #0
	str r2, [r1, r0]
	pop {r3, r4, r5, pc}
_0222E8C2:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0x21
	blt _0222E8B0
	bl FUN_02022974
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222E8D0: .4byte 0x00000A84
	thumb_func_end ov65_0222E8A8

	thumb_func_start ov65_0222E8D4
ov65_0222E8D4: @ 0x0222E8D4
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0222E908 @ =0x00000A84
	str r0, [sp]
	adds r6, r1, #0
	movs r4, #0
	adds r5, r0, #0
_0222E8E0:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0222E8FA
	bl ov65_022354D8
	cmp r6, r0
	bne _0222E8FA
	ldr r0, [sp]
	lsls r1, r4, #2
	adds r1, r0, r1
	ldr r0, _0222E908 @ =0x00000A84
	ldr r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0222E8FA:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0x21
	blt _0222E8E0
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222E908: .4byte 0x00000A84
	thumb_func_end ov65_0222E8D4

	thumb_func_start ov65_0222E90C
ov65_0222E90C: @ 0x0222E90C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	adds r6, r2, #0
	adds r4, r3, #0
	movs r0, #0x40
	str r0, [sp]
	movs r3, #0xd
	adds r5, r1, #0
	adds r1, r3, #0
	adds r0, r6, #0
	movs r2, #0
	adds r3, #0xf3
	str r4, [sp, #4]
	bl FUN_02007130
	movs r0, #0x40
	str r0, [sp]
	movs r1, #0xd
	adds r0, r6, #0
	movs r2, #4
	lsls r3, r1, #5
	str r4, [sp, #4]
	bl FUN_02007130
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r6, #0
	movs r1, #0xc
	adds r2, r7, #0
	movs r3, #1
	str r4, [sp, #0xc]
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #0xc
	adds r2, r7, #0
	movs r3, #6
	bl FUN_020070E8
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0222E982
	adds r3, r5, #0
	adds r0, r6, #0
	movs r1, #0xc
	movs r2, #0
	adds r3, #0xc
	str r4, [sp]
	bl FUN_020071B4
	str r0, [r5, #8]
_0222E982:
	ldr r0, [r5]
	cmp r0, #0
	bne _0222E998
	adds r0, r6, #0
	movs r1, #0xe
	movs r2, #0
	adds r3, r5, #4
	str r4, [sp]
	bl FUN_020071D0
	str r0, [r5]
_0222E998:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_0222E90C

	thumb_func_start ov65_0222E99C
ov65_0222E99C: @ 0x0222E99C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0222E9AE
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4]
_0222E9AE:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0222E9BC
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #8]
_0222E9BC:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_0222E99C

	thumb_func_start ov65_0222E9C0
ov65_0222E9C0: @ 0x0222E9C0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	ldr r1, [r1, #4]
	adds r4, r2, #0
	movs r2, #2
	str r2, [sp]
	str r2, [sp, #4]
	adds r2, r1, #0
	adds r2, #0xc
	str r2, [sp, #8]
	ldr r2, [sp, #0x34]
	adds r6, r3, #0
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x18
	str r2, [sp, #0xc]
	movs r2, #0
	str r2, [sp, #0x10]
	ldrh r2, [r1]
	add r3, sp, #0x20
	adds r5, r0, #0
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x18
	str r2, [sp, #0x14]
	ldrh r1, [r1, #2]
	adds r2, r6, #0
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x18]
	lsls r1, r4, #0x18
	ldrb r3, [r3, #0x10]
	lsrs r1, r1, #0x18
	bl FUN_020198E8
	adds r0, r4, #0
	bl ov65_0222EBAC
	movs r1, #2
	str r1, [sp]
	str r1, [sp, #4]
	ldr r1, [sp, #0x38]
	add r3, sp, #0x20
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	lsls r1, r4, #0x18
	ldrb r3, [r3, #0x10]
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	adds r2, r6, #0
	bl FUN_02019E2C
	lsls r1, r4, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	bl FUN_0201C3C0
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov65_0222E9C0

	thumb_func_start ov65_0222EA38
ov65_0222EA38: @ 0x0222EA38
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r5, [sp, #0x24]
	movs r4, #0
	cmp r5, #0x1d
	bhi _0222EABA
	adds r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	add pc, r5
_0222EA50: @ jump table
	.2byte _0222EAB2 - _0222EA50 - 2 @ case 0
	.2byte _0222EA8C - _0222EA50 - 2 @ case 1
	.2byte _0222EA92 - _0222EA50 - 2 @ case 2
	.2byte _0222EA92 - _0222EA50 - 2 @ case 3
	.2byte _0222EA92 - _0222EA50 - 2 @ case 4
	.2byte _0222EA92 - _0222EA50 - 2 @ case 5
	.2byte _0222EA92 - _0222EA50 - 2 @ case 6
	.2byte _0222EA92 - _0222EA50 - 2 @ case 7
	.2byte _0222EA98 - _0222EA50 - 2 @ case 8
	.2byte _0222EA90 - _0222EA50 - 2 @ case 9
	.2byte _0222EA90 - _0222EA50 - 2 @ case 10
	.2byte _0222EA90 - _0222EA50 - 2 @ case 11
	.2byte _0222EA90 - _0222EA50 - 2 @ case 12
	.2byte _0222EA90 - _0222EA50 - 2 @ case 13
	.2byte _0222EA90 - _0222EA50 - 2 @ case 14
	.2byte _0222EA96 - _0222EA50 - 2 @ case 15
	.2byte _0222EAAE - _0222EA50 - 2 @ case 16
	.2byte _0222EABA - _0222EA50 - 2 @ case 17
	.2byte _0222EAA4 - _0222EA50 - 2 @ case 18
	.2byte _0222EAA2 - _0222EA50 - 2 @ case 19
	.2byte _0222EAAA - _0222EA50 - 2 @ case 20
	.2byte _0222EAA8 - _0222EA50 - 2 @ case 21
	.2byte _0222EA9E - _0222EA50 - 2 @ case 22
	.2byte _0222EA9C - _0222EA50 - 2 @ case 23
	.2byte _0222EA9E - _0222EA50 - 2 @ case 24
	.2byte _0222EA9C - _0222EA50 - 2 @ case 25
	.2byte _0222EA9E - _0222EA50 - 2 @ case 26
	.2byte _0222EA9C - _0222EA50 - 2 @ case 27
	.2byte _0222EAB6 - _0222EA50 - 2 @ case 28
	.2byte _0222EAB6 - _0222EA50 - 2 @ case 29
_0222EA8C:
	movs r5, #3
	b _0222EABC
_0222EA90:
	movs r4, #1
_0222EA92:
	movs r5, #6
	b _0222EABC
_0222EA96:
	movs r4, #1
_0222EA98:
	movs r5, #7
	b _0222EABC
_0222EA9C:
	movs r4, #1
_0222EA9E:
	movs r5, #0xa
	b _0222EABC
_0222EAA2:
	movs r4, #1
_0222EAA4:
	movs r5, #9
	b _0222EABC
_0222EAA8:
	movs r4, #1
_0222EAAA:
	movs r5, #0xb
	b _0222EABC
_0222EAAE:
	movs r5, #4
	b _0222EABC
_0222EAB2:
	movs r5, #8
	b _0222EABC
_0222EAB6:
	movs r5, #5
	b _0222EABC
_0222EABA:
	movs r5, #5
_0222EABC:
	add r6, sp, #0x10
	ldrb r6, [r6, #0x10]
	str r6, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	bl ov65_0222E9C0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov65_0222EA38

	thumb_func_start ov65_0222EAD0
ov65_0222EAD0: @ 0x0222EAD0
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r1, [r1, #0xc]
	adds r4, r0, #0
	ldrh r5, [r1, #2]
	lsls r5, r5, #0x13
	lsrs r5, r5, #0x10
	str r5, [sp]
	ldrh r5, [r1]
	lsls r5, r5, #0x13
	lsrs r5, r5, #0x10
	str r5, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	movs r2, #0x10
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r2, [sp, #0x28]
	ldr r1, [r1, #0x14]
	lsls r2, r2, #0x14
	lsrs r2, r2, #0x10
	movs r3, #0
	bl FUN_0201ADDC
	ldrb r0, [r4, #4]
	bl ov65_0222EBAC
	adds r2, r0, #0
	ldr r1, [sp, #0x2c]
	adds r0, r4, #0
	adds r1, r2, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_0201C2B4
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_0222EAD0

	thumb_func_start ov65_0222EB1C
ov65_0222EB1C: @ 0x0222EB1C
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r5, [sp, #0x18]
	movs r4, #0
	cmp r5, #0x1d
	bhi _0222EB9E
	adds r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	add pc, r5
_0222EB34: @ jump table
	.2byte _0222EB96 - _0222EB34 - 2 @ case 0
	.2byte _0222EB70 - _0222EB34 - 2 @ case 1
	.2byte _0222EB76 - _0222EB34 - 2 @ case 2
	.2byte _0222EB76 - _0222EB34 - 2 @ case 3
	.2byte _0222EB76 - _0222EB34 - 2 @ case 4
	.2byte _0222EB76 - _0222EB34 - 2 @ case 5
	.2byte _0222EB76 - _0222EB34 - 2 @ case 6
	.2byte _0222EB76 - _0222EB34 - 2 @ case 7
	.2byte _0222EB7C - _0222EB34 - 2 @ case 8
	.2byte _0222EB74 - _0222EB34 - 2 @ case 9
	.2byte _0222EB74 - _0222EB34 - 2 @ case 10
	.2byte _0222EB74 - _0222EB34 - 2 @ case 11
	.2byte _0222EB74 - _0222EB34 - 2 @ case 12
	.2byte _0222EB74 - _0222EB34 - 2 @ case 13
	.2byte _0222EB74 - _0222EB34 - 2 @ case 14
	.2byte _0222EB7A - _0222EB34 - 2 @ case 15
	.2byte _0222EB92 - _0222EB34 - 2 @ case 16
	.2byte _0222EB9E - _0222EB34 - 2 @ case 17
	.2byte _0222EB88 - _0222EB34 - 2 @ case 18
	.2byte _0222EB86 - _0222EB34 - 2 @ case 19
	.2byte _0222EB8E - _0222EB34 - 2 @ case 20
	.2byte _0222EB8C - _0222EB34 - 2 @ case 21
	.2byte _0222EB82 - _0222EB34 - 2 @ case 22
	.2byte _0222EB80 - _0222EB34 - 2 @ case 23
	.2byte _0222EB82 - _0222EB34 - 2 @ case 24
	.2byte _0222EB80 - _0222EB34 - 2 @ case 25
	.2byte _0222EB82 - _0222EB34 - 2 @ case 26
	.2byte _0222EB80 - _0222EB34 - 2 @ case 27
	.2byte _0222EB9A - _0222EB34 - 2 @ case 28
	.2byte _0222EB9A - _0222EB34 - 2 @ case 29
_0222EB70:
	movs r5, #3
	b _0222EBA0
_0222EB74:
	movs r4, #1
_0222EB76:
	movs r5, #6
	b _0222EBA0
_0222EB7A:
	movs r4, #1
_0222EB7C:
	movs r5, #7
	b _0222EBA0
_0222EB80:
	movs r4, #1
_0222EB82:
	movs r5, #0xa
	b _0222EBA0
_0222EB86:
	movs r4, #1
_0222EB88:
	movs r5, #9
	b _0222EBA0
_0222EB8C:
	movs r4, #1
_0222EB8E:
	movs r5, #0xb
	b _0222EBA0
_0222EB92:
	movs r5, #4
	b _0222EBA0
_0222EB96:
	movs r5, #8
	b _0222EBA0
_0222EB9A:
	movs r5, #5
	b _0222EBA0
_0222EB9E:
	movs r5, #5
_0222EBA0:
	str r5, [sp]
	str r4, [sp, #4]
	bl ov65_0222EAD0
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_0222EB1C

	thumb_func_start ov65_0222EBAC
ov65_0222EBAC: @ 0x0222EBAC
	cmp r0, #4
	bhs _0222EBB4
	movs r0, #8
	bx lr
_0222EBB4:
	movs r0, #0xd
	bx lr
	thumb_func_end ov65_0222EBAC

	thumb_func_start ov65_0222EBB8
ov65_0222EBB8: @ 0x0222EBB8
	push {lr}
	sub sp, #0xc
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x36
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	bl ov65_02231A0C
	movs r0, #0x12
	add sp, #0xc
	pop {pc}
	.align 2, 0
	thumb_func_end ov65_0222EBB8

	thumb_func_start ov65_0222EBE0
ov65_0222EBE0: @ 0x0222EBE0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x5f
	lsls r0, r0, #2
	movs r1, #0x36
	bl FUN_02023790
	movs r1, #0x5d
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r1, #8
	adds r0, r1, #0
	movs r1, #0x36
	bl FUN_02023790
	movs r1, #0x5f
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r1, #0
	movs r1, #0x36
	bl FUN_02023790
	movs r1, #0x17
	lsls r1, r1, #4
	str r0, [r4, r1]
	movs r0, #0xb4
	movs r1, #0x36
	bl FUN_02023790
	movs r1, #0x5e
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0xd1
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_0222EBE0

	thumb_func_start ov65_0222EC2C
ov65_0222EC2C: @ 0x0222EC2C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x5e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020237BC
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020237BC
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020237BC
	movs r0, #0x17
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_020237BC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_0222EC2C

	thumb_func_start ov65_0222EC5C
ov65_0222EC5C: @ 0x0222EC5C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #7
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #6
	bl FUN_02019044
	adds r0, r4, #0
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
	thumb_func_end ov65_0222EC5C

	thumb_func_start ov65_0222ECA8
ov65_0222ECA8: @ 0x0222ECA8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r0, #0
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r4, [r6, r0]
	movs r0, #1
	adds r5, r1, #0
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
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF74
	movs r2, #0
	str r2, [sp]
	movs r0, #0x36
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #3
	adds r3, r2, #0
	bl FUN_02007130
	movs r3, #0
	str r3, [sp]
	movs r0, #0x36
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #4
	bl FUN_02007130
	movs r1, #0x1a
	movs r0, #0
	lsls r1, r1, #4
	movs r2, #0x36
	bl FUN_02002E98
	movs r1, #6
	movs r0, #0
	lsls r1, r1, #6
	movs r2, #0x36
	bl FUN_02002E98
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	movs r0, #0x36
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #2
	adds r2, r4, #0
	bl FUN_020070E8
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	movs r0, #0x36
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #5
	adds r2, r4, #0
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x36
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #0xa
	adds r2, r4, #0
	movs r3, #4
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x36
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #0xb
	adds r2, r4, #0
	movs r3, #4
	bl FUN_0200710C
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	bl FUN_02025E44
	bl FUN_02027B50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x36
	str r0, [sp, #4]
	ldr r2, _0222EDC8 @ =0x000001E2
	adds r0, r4, #0
	movs r1, #2
	movs r3, #0xa
	bl FUN_0200DD0C
	movs r0, #0
	str r0, [sp]
	movs r0, #0x36
	str r0, [sp, #4]
	ldr r2, _0222EDCC @ =0x000001D9
	adds r0, r4, #0
	movs r1, #2
	movs r3, #0xb
	bl FUN_0200DAA4
	movs r0, #0
	str r0, [sp]
	movs r0, #0x36
	str r0, [sp, #4]
	ldr r2, _0222EDCC @ =0x000001D9
	adds r0, r4, #0
	movs r1, #1
	movs r3, #0xb
	bl FUN_0200DAA4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0222EDC8: .4byte 0x000001E2
_0222EDCC: .4byte 0x000001D9
	thumb_func_end ov65_0222ECA8

	thumb_func_start ov65_0222EDD0
ov65_0222EDD0: @ 0x0222EDD0
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _0222EE10 @ =0x02238978
	add r3, sp, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	ldr r1, _0222EE14 @ =0x00200010
	movs r2, #0x10
	bl FUN_0201E88C
	movs r0, #0x14
	movs r1, #0x36
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	ldr r1, _0222EE14 @ =0x00200010
	movs r0, #1
	bl FUN_0200966C
	movs r0, #1
	bl FUN_02009704
	add sp, #0x10
	pop {r4, pc}
	nop
_0222EE10: .4byte 0x02238978
_0222EE14: .4byte 0x00200010
	thumb_func_end ov65_0222EDD0

	thumb_func_start ov65_0222EE18
ov65_0222EE18: @ 0x0222EE18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x20
	str r3, [sp, #0xc]
	movs r2, #0x36
	str r2, [sp, #0x10]
	adds r2, r0, #0
	bl FUN_0200A784
	movs r1, #0x19
	lsls r1, r1, #4
	movs r0, #8
	adds r1, r6, r1
	movs r2, #0x36
	bl FUN_020095C4
	movs r1, #0x63
	lsls r1, r1, #2
	str r0, [r6, r1]
	adds r0, r1, #4
	movs r2, #1
	adds r0, r6, r0
	movs r1, #0
	lsls r2, r2, #0x14
	bl FUN_0200964C
	movs r7, #0xae
	movs r4, #0
	adds r5, r6, #0
	lsls r7, r7, #2
_0222EE64:
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0x36
	bl FUN_02009714
	str r0, [r5, r7]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _0222EE64
	movs r0, #1
	movs r1, #0x36
	bl FUN_02012744
	movs r1, #0xb2
	lsls r1, r1, #2
	str r0, [r6, r1]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov65_0222EE18

	thumb_func_start ov65_0222EE8C
ov65_0222EE8C: @ 0x0222EE8C
	ldr r3, _0222EE94 @ =FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bx r3
	.align 2, 0
_0222EE94: .4byte FUN_0201FF0C
	thumb_func_end ov65_0222EE8C

	thumb_func_start ov65_0222EE98
ov65_0222EE98: @ 0x0222EE98
	push {r3, r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	movs r0, #0xbb
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A7CC
	cmp r0, #0
	beq _0222EEC2
	movs r0, #0xbb
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	bl FUN_0200DC9C
	movs r0, #0xbb
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A8FC
_0222EEC2:
	movs r0, #1
	str r0, [sp]
	movs r0, #0x16
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0222EF44 @ =0x000001CA
	movs r1, #0xbb
	str r0, [sp, #0x10]
	subs r0, #0x6e
	lsls r1, r1, #2
	ldr r0, [r4, r0]
	adds r1, r4, r1
	movs r2, #3
	movs r3, #5
	bl FUN_0201A7E8
	movs r0, #0xbb
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	bl FUN_0201ADA4
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r4, r2]
	adds r2, #0x10
	ldr r2, [r4, r2]
	movs r1, #0x15
	bl FUN_0200B1B8
	movs r1, #0x5e
	lsls r1, r1, #2
	movs r0, #0
	ldr r1, [r4, r1]
	adds r2, r0, #0
	movs r3, #0xb0
	bl FUN_02002EEC
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _0222EF48 @ =0x000F0E00
	adds r2, #0x79
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	movs r0, #0xbb
	lsls r0, r0, #2
	ldr r2, [r4, r2]
	adds r0, r4, r0
	movs r1, #1
	bl FUN_0201D78C
	movs r0, #0xbb
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A9A4
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_0222EF44: .4byte 0x000001CA
_0222EF48: .4byte 0x000F0E00
	thumb_func_end ov65_0222EE98

	thumb_func_start ov65_0222EF4C
ov65_0222EF4C: @ 0x0222EF4C
	push {r4, lr}
	adds r4, r0, #0
	bl ov65_02232DFC
	movs r0, #0xbb
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A7CC
	cmp r0, #0
	beq _0222EF6C
	movs r0, #0xbb
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A8FC
_0222EF6C:
	movs r0, #0xb3
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A7CC
	cmp r0, #0
	beq _0222EF84
	movs r0, #0xb3
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A8FC
_0222EF84:
	movs r0, #0xcb
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A7CC
	cmp r0, #0
	beq _0222EF9C
	movs r0, #0xcb
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A8FC
_0222EF9C:
	movs r0, #0xb7
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A7CC
	cmp r0, #0
	beq _0222EFB4
	movs r0, #0xb7
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A8FC
_0222EFB4:
	movs r0, #0xc3
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A7CC
	cmp r0, #0
	beq _0222EFCC
	movs r0, #0xc3
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A8FC
_0222EFCC:
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222EFDE
	movs r1, #0
	adds r2, r1, #0
	bl FUN_02001384
_0222EFDE:
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222EFF4
	bl FUN_02013A3C
	movs r0, #0x53
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
_0222EFF4:
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A7CC
	cmp r0, #0
	beq _0222F00C
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A8FC
_0222F00C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_0222EF4C

	thumb_func_start ov65_0222F010
ov65_0222F010: @ 0x0222F010
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_020389B8
	cmp r0, #0
	beq _0222F0BC
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_02232DC0
	bl FUN_020388E8
	adds r1, r0, #0
	str r0, [r5, #4]
	adds r1, #0x22
	ldrb r1, [r1]
	adds r0, #0x21
	strb r1, [r0]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl ov65_0222DD20
	cmp r0, #8
	beq _0222F06A
	cmp r0, #0x12
	beq _0222F06A
	cmp r0, #0x14
	beq _0222F06A
	cmp r0, #0x16
	beq _0222F06A
	cmp r0, #0x17
	beq _0222F06A
	cmp r0, #0x18
	beq _0222F06A
	cmp r0, #0x19
	beq _0222F06A
	cmp r0, #0x1a
	beq _0222F06A
	cmp r0, #0x1b
	beq _0222F06A
	cmp r0, #0x13
	bne _0222F09A
_0222F06A:
	adds r0, r5, #0
	movs r1, #0x10
	bl ov65_02232E58
	bl FUN_02032A70
	bl FUN_02038398
	bl FUN_020388E8
	adds r1, r0, #0
	str r0, [r5, #4]
	adds r1, #0x22
	ldrb r1, [r1]
	adds r0, #0x21
	strb r1, [r0]
	movs r0, #0xd6
	movs r1, #0x14
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r1, #0x41
	subs r0, #0x14
	str r1, [r5, r0]
	b _0222F158
_0222F09A:
	adds r0, r5, #0
	movs r1, #0x4d
	movs r2, #0
	bl ov65_02232B58
	movs r0, #1
	adds r1, r0, #0
	bl FUN_020388F4
	movs r0, #0x10
	bl FUN_020364F0
	movs r0, #0xd1
	movs r1, #0x3d
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _0222F158
_0222F0BC:
	ldr r1, _0222F15C @ =0x00000497
	movs r0, #0xb
	movs r2, #1
	bl FUN_02004550
	adds r0, r5, #0
	bl ov65_0222EE98
	ldr r0, [r5]
	bl FUN_0202AD28
	blx FUN_020A450C
	cmp r0, #0
	bne _0222F126
	movs r0, #0
	movs r1, #3
	bl FUN_02019060
	movs r0, #1
	movs r1, #0
	bl FUN_02019060
	movs r0, #3
	movs r1, #0
	bl FUN_02019060
	movs r0, #2
	movs r1, #1
	bl FUN_02019060
	adds r0, r5, #0
	movs r1, #0x12
	bl ov65_02232CA8
	movs r2, #0x57
	movs r0, #0x36
	lsls r2, r2, #2
	str r0, [sp]
	ldr r0, [r5, r2]
	ldr r1, _0222F160 @ =0x02238954
	adds r2, #0x7d
	movs r3, #0xb
	bl FUN_02002100
	movs r1, #0x61
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0xd1
	movs r1, #6
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _0222F158
_0222F126:
	ldr r0, [r5]
	bl FUN_0202AD28
	blx FUN_020A453C
	cmp r0, #0
	bne _0222F146
	adds r0, r5, #0
	movs r1, #0x14
	bl ov65_02232CA8
	movs r0, #0xd1
	movs r1, #3
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _0222F158
_0222F146:
	adds r0, r5, #0
	movs r1, #0x11
	movs r2, #1
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #1
	lsls r0, r0, #2
	str r1, [r5, r0]
_0222F158:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222F15C: .4byte 0x00000497
_0222F160: .4byte 0x02238954
	thumb_func_end ov65_0222F010

	thumb_func_start ov65_0222F164
ov65_0222F164: @ 0x0222F164
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _0222F19E
	movs r2, #0x57
	movs r0, #0x36
	lsls r2, r2, #2
	str r0, [sp]
	ldr r0, [r5, r2]
	ldr r1, _0222F1A4 @ =0x02238944
	adds r2, #0x7d
	movs r3, #0xb
	bl FUN_02002100
	movs r1, #0x61
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0xd1
	movs r1, #2
	lsls r0, r0, #2
	str r1, [r5, r0]
_0222F19E:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0222F1A4: .4byte 0x02238944
	thumb_func_end ov65_0222F164

	thumb_func_start ov65_0222F1A8
ov65_0222F1A8: @ 0x0222F1A8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x61
	lsls r0, r0, #2
	adds r4, r1, #0
	ldr r0, [r5, r0]
	movs r1, #0x36
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _0222F1C6
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_0222F1C6:
	cmp r0, #0
	bne _0222F20C
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, _0222F218 @ =0x000004A4
	bl FUN_0203871C
	str r0, [r5, #4]
	adds r0, r5, #0
	movs r1, #0x17
	movs r2, #1
	bl ov65_02232B58
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0222F1F0
	bl FUN_02022974
_0222F1F0:
	movs r1, #0xb3
	lsls r1, r1, #2
	adds r0, r5, r1
	subs r1, #0xea
	bl FUN_0200E7FC
	movs r1, #0x62
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0xd1
	movs r1, #0xe
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _0222F214
_0222F20C:
	movs r0, #0xd1
	movs r1, #0x22
	lsls r0, r0, #2
	str r1, [r5, r0]
_0222F214:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222F218: .4byte 0x000004A4
	thumb_func_end ov65_0222F1A8

	thumb_func_start ov65_0222F21C
ov65_0222F21C: @ 0x0222F21C
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	ldr r1, _0222F280 @ =0x021BF67C
	adds r5, r0, #0
	ldr r2, [r1, #0x48]
	movs r1, #3
	tst r1, r2
	beq _0222F27A
	movs r1, #0x15
	bl ov65_02232CA8
	movs r0, #3
	movs r1, #0
	bl FUN_02019060
	movs r0, #2
	movs r1, #1
	bl FUN_02019060
	movs r0, #1
	movs r1, #0
	bl FUN_02019060
	movs r0, #0
	movs r1, #3
	bl FUN_02019060
	movs r0, #1
	movs r2, #0x57
	str r0, [sp]
	movs r0, #0x36
	lsls r2, r2, #2
	str r0, [sp, #4]
	ldr r0, [r5, r2]
	ldr r1, _0222F284 @ =0x02238954
	adds r2, #0x7d
	movs r3, #0xb
	bl FUN_02002054
	movs r1, #0x61
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0xd1
	movs r1, #4
	lsls r0, r0, #2
	str r1, [r5, r0]
_0222F27A:
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222F280: .4byte 0x021BF67C
_0222F284: .4byte 0x02238954
	thumb_func_end ov65_0222F21C

	thumb_func_start ov65_0222F288
ov65_0222F288: @ 0x0222F288
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0x61
	lsls r0, r0, #2
	adds r4, r1, #0
	ldr r0, [r5, r0]
	movs r1, #0x36
	bl FUN_02002114
	adds r6, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r6, r0
	bne _0222F2AC
	add sp, #8
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
_0222F2AC:
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200E084
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
	cmp r6, #0
	bne _0222F2F0
	adds r0, r5, #0
	movs r1, #0x16
	bl ov65_02232CA8
	movs r0, #1
	movs r2, #0x57
	str r0, [sp]
	movs r0, #0x36
	lsls r2, r2, #2
	str r0, [sp, #4]
	ldr r0, [r5, r2]
	ldr r1, _0222F300 @ =0x02238954
	adds r2, #0x7d
	movs r3, #0xb
	bl FUN_02002054
	movs r1, #0x61
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r1, #5
	b _0222F2F2
_0222F2F0:
	movs r1, #0x22
_0222F2F2:
	movs r0, #0xd1
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0222F300: .4byte 0x02238954
	thumb_func_end ov65_0222F288

	thumb_func_start ov65_0222F304
ov65_0222F304: @ 0x0222F304
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x61
	lsls r0, r0, #2
	adds r4, r1, #0
	ldr r0, [r5, r0]
	movs r1, #0x36
	bl FUN_02002114
	adds r6, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r6, r0
	bne _0222F324
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
_0222F324:
	movs r0, #3
	movs r1, #0
	bl FUN_02019060
	movs r0, #2
	movs r1, #0
	bl FUN_02019060
	movs r0, #1
	adds r1, r0, #0
	bl FUN_02019060
	movs r0, #0
	movs r1, #3
	bl FUN_02019060
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200E084
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
	cmp r6, #0
	bne _0222F3CC
	ldr r0, [r5]
	bl FUN_0202ACE8
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0x23
	bl FUN_020245BC
	bl FUN_02030CEC
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_0203068C
	bl FUN_02030764
	movs r0, #0xd1
	movs r1, #0xe
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, _0222F3D8 @ =0x000004A4
	bl FUN_0203871C
	str r0, [r5, #4]
	adds r0, r5, #0
	movs r1, #0x17
	movs r2, #1
	bl ov65_02232B58
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0222F3B0
	bl FUN_02022974
_0222F3B0:
	movs r1, #0xb3
	lsls r1, r1, #2
	adds r0, r5, r1
	subs r1, #0xea
	bl FUN_0200E7FC
	movs r1, #0x62
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0xd9
	movs r1, #1
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _0222F3D4
_0222F3CC:
	movs r0, #0xd1
	movs r1, #0x22
	lsls r0, r0, #2
	str r1, [r5, r0]
_0222F3D4:
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222F3D8: .4byte 0x000004A4
	thumb_func_end ov65_0222F304

	thumb_func_start ov65_0222F3DC
ov65_0222F3DC: @ 0x0222F3DC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x61
	lsls r0, r0, #2
	adds r4, r1, #0
	ldr r0, [r5, r0]
	movs r1, #0x36
	bl FUN_02002114
	adds r6, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r6, r0
	bne _0222F3FC
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
_0222F3FC:
	movs r0, #0
	movs r1, #3
	bl FUN_02019060
	movs r0, #1
	adds r1, r0, #0
	bl FUN_02019060
	movs r0, #3
	movs r1, #0
	bl FUN_02019060
	movs r0, #2
	movs r1, #0
	bl FUN_02019060
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200E084
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
	cmp r6, #0
	bne _0222F480
	movs r0, #0xd1
	movs r1, #0xe
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, _0222F48C @ =0x000004A4
	bl FUN_0203871C
	str r0, [r5, #4]
	adds r0, r5, #0
	movs r1, #0x17
	movs r2, #1
	bl ov65_02232B58
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0222F464
	bl FUN_02022974
_0222F464:
	movs r1, #0xb3
	lsls r1, r1, #2
	adds r0, r5, r1
	subs r1, #0xea
	bl FUN_0200E7FC
	movs r1, #0x62
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0xd9
	movs r1, #1
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _0222F488
_0222F480:
	movs r0, #0xd1
	movs r1, #0x22
	lsls r0, r0, #2
	str r1, [r5, r0]
_0222F488:
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222F48C: .4byte 0x000004A4
	thumb_func_end ov65_0222F3DC

	thumb_func_start ov65_0222F490
ov65_0222F490: @ 0x0222F490
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0
	movs r1, #3
	bl FUN_02019060
	movs r0, #1
	adds r1, r0, #0
	bl FUN_02019060
	movs r0, #3
	movs r1, #0
	bl FUN_02019060
	movs r0, #2
	movs r1, #0
	bl FUN_02019060
	movs r0, #0xd1
	movs r1, #0xf
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_0222F490

	thumb_func_start ov65_0222F4C4
ov65_0222F4C4: @ 0x0222F4C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	str r1, [sp]
	bl FUN_02025E38
	str r0, [sp, #0x14]
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02027560
	str r0, [sp, #0x10]
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_0207A268
	str r0, [sp, #0xc]
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_0202C878
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	bl FUN_0207A0F8
	movs r6, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _0222F53C
	adds r4, r6, #0
_0222F50C:
	ldr r0, [sp, #0xc]
	adds r1, r6, #0
	bl FUN_0207A0FC
	movs r1, #5
	movs r2, #0
	adds r7, r0, #0
	bl FUN_02074470
	ldr r1, [r5, #4]
	movs r2, #0
	strh r0, [r1, r4]
	adds r0, r7, #0
	movs r1, #6
	bl FUN_02074470
	ldr r1, [r5, #4]
	adds r6, r6, #1
	adds r1, r1, r4
	strh r0, [r1, #0xc]
	ldr r0, [sp, #4]
	adds r4, r4, #2
	cmp r6, r0
	blt _0222F50C
_0222F53C:
	ldr r0, [sp, #0x14]
	bl FUN_02025FCC
	ldr r1, [r5, #4]
	strb r0, [r1, #0x18]
	ldr r0, [sp, #0x14]
	bl FUN_02025FD8
	ldr r1, [r5, #4]
	strb r0, [r1, #0x19]
	ldr r0, [sp, #0x10]
	bl FUN_02027474
	ldr r1, [r5, #4]
	strb r0, [r1, #0x1a]
	ldr r0, [r5, #4]
	movs r1, #0x1d
	strb r1, [r0, #0x1b]
	ldr r1, [sp]
	adds r0, r5, #0
	bl ov65_02232E70
	ldr r0, [r5, #4]
	movs r1, #0
	strb r1, [r0, #0x1c]
	ldr r0, [sp, #0x14]
	bl FUN_02025F8C
	ldr r1, [r5, #4]
	strb r0, [r1, #0x1d]
	ldr r0, [sp, #0x14]
	bl FUN_02025F30
	ldr r1, [r5, #4]
	strb r0, [r1, #0x1e]
	ldr r0, [sp, #8]
	bl FUN_0202C8C0
	ldr r1, [r5, #4]
	strb r0, [r1, #0x1f]
	ldr r0, [sp, #8]
	bl FUN_0202C8C4
	ldr r1, [r5, #4]
	adds r1, #0x20
	strb r0, [r1]
	ldr r0, [r5, #4]
	movs r1, #1
	adds r0, #0x21
	strb r1, [r0]
	ldr r0, [r5, #4]
	adds r0, #0x22
	strb r1, [r0]
	ldr r0, [r5, #4]
	movs r1, #0x24
	bl FUN_021D222C
	ldr r0, [r5, #4]
	movs r1, #0x24
	adds r0, #0x24
	bl FUN_021D2198
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_0222F4C4

	thumb_func_start ov65_0222F5BC
ov65_0222F5BC: @ 0x0222F5BC
	push {r3, r4, r5, r6, r7, lr}
	movs r6, #0
	adds r5, r0, #0
	adds r4, r6, #0
_0222F5C4:
	adds r1, r5, r4
	movs r0, #0
	strb r0, [r1, #0xc]
	ldr r0, _0222F628 @ =0x00001092
	ldrh r0, [r5, r0]
	cmp r0, r4
	ble _0222F61E
	adds r0, r4, #0
	bl ov65_02234FC4
	cmp r0, #0
	beq _0222F61E
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_02234FA8
	adds r7, r0, #0
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov65_0222DD20
	cmp r0, #0
	beq _0222F606
	cmp r0, #0x1c
	beq _0222F606
	ldrb r1, [r7, #0x1d]
	cmp r1, #0
	beq _0222F606
	adds r0, r5, r6
	adds r1, r4, #1
	strb r1, [r0, #0xc]
	adds r6, r6, #1
	b _0222F61E
_0222F606:
	cmp r0, #0x1c
	bne _0222F61E
	adds r0, r5, #0
	adds r1, r4, #1
	bl ov65_0223368C
	cmp r0, #0
	beq _0222F61E
	adds r0, r5, #0
	adds r1, r4, #1
	bl ov65_0223366C
_0222F61E:
	adds r4, r4, #1
	cmp r4, #0x20
	blt _0222F5C4
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222F628: .4byte 0x00001092
	thumb_func_end ov65_0222F5BC

	thumb_func_start ov65_0222F62C
ov65_0222F62C: @ 0x0222F62C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r4, #0
	str r4, [sp, #0xc]
	adds r6, r5, #0
_0222F638:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_02234FA8
	adds r7, r0, #0
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov65_0222DD20
	ldr r1, [r6, #0x4c]
	str r0, [sp]
	cmp r0, r1
	bne _0222F662
	adds r0, r7, #0
	adds r0, #0x21
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0xcc
	ldr r0, [r0]
	cmp r1, r0
	beq _0222F6DE
_0222F662:
	adds r0, r5, #0
	adds r1, r4, #1
	bl ov65_0222E8D4
	str r0, [sp, #4]
	cmp r0, #0
	beq _0222F6DE
	ldr r0, [r6, #0x4c]
	bl ov65_0222DDFC
	str r0, [sp, #8]
	ldr r0, [sp]
	bl ov65_0222DDFC
	ldr r1, [sp, #8]
	cmp r1, #1
	bne _0222F698
	cmp r0, #0
	bne _0222F698
	movs r0, #0xe2
	lsls r0, r0, #2
	ldr r1, [sp, #4]
	adds r0, r5, r0
	movs r2, #0
	bl ov65_0223558C
	b _0222F6B0
_0222F698:
	ldr r1, [sp, #8]
	cmp r1, #0
	bne _0222F6B0
	cmp r0, #1
	bne _0222F6B0
	movs r0, #0xe2
	lsls r0, r0, #2
	ldr r1, [sp, #4]
	adds r0, r5, r0
	movs r2, #1
	bl ov65_0223558C
_0222F6B0:
	ldr r0, [sp]
	movs r2, #7
	str r0, [r6, #0x4c]
	adds r0, r7, #0
	adds r0, #0x21
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0xcc
	str r1, [r0]
	ldrb r3, [r7, #0x1d]
	ldr r0, [r5]
	adds r1, r4, #0
	bl FUN_0202AE2C
	ldrb r3, [r7, #0x1e]
	ldr r0, [r5]
	adds r1, r4, #0
	movs r2, #8
	bl FUN_0202AE2C
	ldr r0, [sp, #0xc]
	adds r0, r0, #1
	str r0, [sp, #0xc]
_0222F6DE:
	adds r4, r4, #1
	adds r6, r6, #4
	cmp r4, #0x20
	blt _0222F638
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_0222F62C

	thumb_func_start ov65_0222F6EC
ov65_0222F6EC: @ 0x0222F6EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	bl FUN_020382F8
	adds r1, r0, #0
	ldr r6, [r1]
	ldr r1, [r1, #4]
	adds r0, r6, #0
	bl FUN_021D1F3C
	adds r5, r0, #0
	cmp r5, #0xb
	beq _0222F70C
	cmp r6, #0x19
	bne _0222F712
_0222F70C:
	movs r7, #0xe
	movs r5, #0xb
	b _0222F726
_0222F712:
	cmp r6, #0x1a
	bne _0222F71C
	movs r7, #0xd
	movs r5, #0xc
	b _0222F726
_0222F71C:
	cmp r5, #0
	blt _0222F724
	adds r7, r5, #0
	b _0222F726
_0222F724:
	movs r7, #0xb
_0222F726:
	adds r0, r4, #0
	bl ov65_02232DFC
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x59
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	adds r2, r6, #0
	movs r3, #5
	bl FUN_0200B60C
	movs r0, #0xd6
	movs r1, #0x1e
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov65_02232CA8
	cmp r5, #0xb
	bhi _0222F7A0
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222F764: @ jump table
	.2byte _0222F7A0 - _0222F764 - 2 @ case 0
	.2byte _0222F77C - _0222F764 - 2 @ case 1
	.2byte _0222F7A0 - _0222F764 - 2 @ case 2
	.2byte _0222F7A0 - _0222F764 - 2 @ case 3
	.2byte _0222F77C - _0222F764 - 2 @ case 4
	.2byte _0222F77C - _0222F764 - 2 @ case 5
	.2byte _0222F788 - _0222F764 - 2 @ case 6
	.2byte _0222F788 - _0222F764 - 2 @ case 7
	.2byte _0222F788 - _0222F764 - 2 @ case 8
	.2byte _0222F788 - _0222F764 - 2 @ case 9
	.2byte _0222F794 - _0222F764 - 2 @ case 10
	.2byte _0222F77C - _0222F764 - 2 @ case 11
_0222F77C:
	movs r0, #0xd1
	movs r1, #0xa
	lsls r0, r0, #2
	add sp, #8
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0222F788:
	movs r0, #0xd1
	movs r1, #0xa
	lsls r0, r0, #2
	add sp, #8
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0222F794:
	movs r0, #0xd1
	movs r1, #0xa
	lsls r0, r0, #2
	add sp, #8
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0222F7A0:
	movs r0, #0xd1
	movs r1, #0x23
	lsls r0, r0, #2
	str r1, [r4, r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_0222F6EC

	thumb_func_start ov65_0222F7AC
ov65_0222F7AC: @ 0x0222F7AC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0222F7EC @ =0x021BF67C
	adds r4, r1, #0
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _0222F7E8
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A7CC
	cmp r0, #0
	beq _0222F7E0
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200E084
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
_0222F7E0:
	movs r0, #0xd1
	movs r1, #8
	lsls r0, r0, #2
	str r1, [r5, r0]
_0222F7E8:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222F7EC: .4byte 0x021BF67C
	thumb_func_end ov65_0222F7AC

	thumb_func_start ov65_0222F7F0
ov65_0222F7F0: @ 0x0222F7F0
	movs r2, #0xd1
	movs r3, #9
	lsls r2, r2, #2
	str r3, [r0, r2]
	adds r0, r1, #0
	bx lr
	thumb_func_end ov65_0222F7F0

	thumb_func_start ov65_0222F7FC
ov65_0222F7FC: @ 0x0222F7FC
	movs r2, #0xd1
	movs r3, #0xb
	lsls r2, r2, #2
	str r3, [r0, r2]
	adds r0, r1, #0
	bx lr
	thumb_func_end ov65_0222F7FC

	thumb_func_start ov65_0222F808
ov65_0222F808: @ 0x0222F808
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	movs r1, #0xd6
	adds r5, r0, #0
	lsls r1, r1, #2
	ldr r0, [r5, r1]
	cmp r0, #0
	ble _0222F820
	subs r0, r0, #1
	str r0, [r5, r1]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_0222F820:
	ldr r0, _0222F864 @ =0x021BF67C
	ldr r2, [r0, #0x48]
	movs r0, #3
	tst r0, r2
	beq _0222F85E
	subs r1, #0x5c
	adds r0, r5, r1
	bl FUN_0201A7CC
	cmp r0, #0
	beq _0222F84C
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200E084
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
_0222F84C:
	adds r0, r5, #0
	movs r1, #0x58
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0xb
	lsls r0, r0, #2
	str r1, [r5, r0]
_0222F85E:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0222F864: .4byte 0x021BF67C
	thumb_func_end ov65_0222F808

	thumb_func_start ov65_0222F868
ov65_0222F868: @ 0x0222F868
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _0222F8A2
	movs r2, #0x57
	movs r0, #0x36
	lsls r2, r2, #2
	str r0, [sp]
	ldr r0, [r5, r2]
	ldr r1, _0222F8A8 @ =0x0223894C
	adds r2, #0x7d
	movs r3, #0xb
	bl FUN_02002100
	movs r1, #0x61
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0xd1
	movs r1, #0xc
	lsls r0, r0, #2
	str r1, [r5, r0]
_0222F8A2:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0222F8A8: .4byte 0x0223894C
	thumb_func_end ov65_0222F868

	thumb_func_start ov65_0222F8AC
ov65_0222F8AC: @ 0x0222F8AC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x61
	lsls r0, r0, #2
	adds r4, r1, #0
	ldr r0, [r5, r0]
	movs r1, #0x36
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _0222F8CA
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_0222F8CA:
	cmp r0, #0
	bne _0222F8E2
	bl FUN_02038350
	adds r0, r5, #0
	movs r1, #0x10
	bl ov65_02232E58
	movs r0, #0xd1
	movs r1, #0xd
	lsls r0, r0, #2
	b _0222F8FE
_0222F8E2:
	adds r0, r5, #0
	movs r1, #0x10
	bl ov65_02232E58
	bl FUN_02038350
	bl FUN_02032A70
	movs r0, #0xd2
	movs r1, #8
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r1, #0x22
	subs r0, r0, #4
_0222F8FE:
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov65_02232DFC
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_0222F8AC

	thumb_func_start ov65_0222F90C
ov65_0222F90C: @ 0x0222F90C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_020334A4
	cmp r0, #0
	beq _0222F91C
	b _0222FA8C
_0222F91C:
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov65_02235194
	cmp r0, #1
	bne _0222F962
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0200F344
	movs r0, #1
	movs r1, #0
	bl FUN_0200F344
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov65_02235130
	movs r2, #0
	ldr r0, _0222FA90 @ =0x00000A84
	adds r3, r5, #0
	adds r1, r2, #0
_0222F94C:
	adds r2, r2, #1
	str r1, [r3, r0]
	adds r3, r3, #4
	cmp r2, #0x21
	blt _0222F94C
	movs r0, #0x36
	bl FUN_0200A93C
	movs r0, #0x36
	bl FUN_0200A944
_0222F962:
	adds r0, r5, #0
	bl ov65_02232FCC
	cmp r0, #1
	bne _0222F972
	adds r0, r5, #0
	bl ov65_02233068
_0222F972:
	movs r0, #0xbb
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A7CC
	cmp r0, #0
	beq _0222F996
	movs r0, #0xbb
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200DC9C
	movs r0, #0xbb
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
_0222F996:
	movs r0, #0xb7
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A7CC
	cmp r0, #0
	beq _0222F9AE
	movs r0, #0xb7
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
_0222F9AE:
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #3
	bl FUN_02019EBC
	movs r0, #0x5c
	movs r1, #0x36
	bl FUN_02006C24
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov65_0222ECA8
	adds r0, r6, #0
	bl FUN_02006CA8
	ldr r0, _0222FA94 @ =0x00000D68
	movs r1, #1
	str r1, [r5, r0]
	ldr r0, _0222FA98 @ =0x00001090
	strh r1, [r5, r0]
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0222FA16
	movs r0, #0xc3
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
	movs r0, #0x15
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r5, r0]
	adds r2, r1, #0
	bl FUN_02001384
	movs r0, #0x15
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r5, r0]
	subs r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02013A3C
	movs r0, #0x53
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
_0222FA16:
	adds r0, r5, #0
	adds r0, #0xc
	movs r1, #0
	movs r2, #0x20
	blx FUN_020C4CF4
	adds r0, r5, #0
	adds r0, #0x2c
	movs r1, #0
	movs r2, #0x20
	blx FUN_020C4CF4
	adds r0, r5, #0
	adds r0, #0x4c
	movs r1, #0
	movs r2, #0x80
	blx FUN_020C4CF4
	adds r0, r5, #0
	adds r0, #0xcc
	movs r1, #0
	movs r2, #0x80
	blx FUN_020C4CF4
	adds r0, r5, #0
	bl ov65_0222EE98
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, _0222FA9C @ =0x000004A4
	bl FUN_0203871C
	str r0, [r5, #4]
	adds r0, r5, #0
	movs r1, #0x17
	movs r2, #1
	bl ov65_02232B58
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0222FA72
	bl FUN_02022974
_0222FA72:
	movs r1, #0xb3
	lsls r1, r1, #2
	adds r0, r5, r1
	subs r1, #0xea
	bl FUN_0200E7FC
	movs r1, #0x62
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0xd1
	movs r1, #0xe
	lsls r0, r0, #2
	str r1, [r5, r0]
_0222FA8C:
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222FA90: .4byte 0x00000A84
_0222FA94: .4byte 0x00000D68
_0222FA98: .4byte 0x00001090
_0222FA9C: .4byte 0x000004A4
	thumb_func_end ov65_0222F90C

	thumb_func_start ov65_0222FAA0
ov65_0222FAA0: @ 0x0222FAA0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _0222FABC
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_0222FABC:
	bl FUN_021D27E0
	cmp r0, #0
	beq _0222FAF6
	movs r0, #0xd1
	movs r1, #0x45
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	movs r1, #0x1e
	movs r2, #1
	bl ov65_02232B58
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0222FAE4
	bl FUN_02022974
_0222FAE4:
	movs r1, #0xb3
	lsls r1, r1, #2
	adds r0, r5, r1
	subs r1, #0xea
	bl FUN_0200E7FC
	movs r1, #0x62
	lsls r1, r1, #2
	str r0, [r5, r1]
_0222FAF6:
	bl FUN_02038294
	cmp r0, #0
	beq _0222FB2A
	movs r0, #0xd9
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _0222FB10
	movs r1, #0x10
	subs r0, #0x20
	str r1, [r5, r0]
	b _0222FB40
_0222FB10:
	adds r0, r5, #0
	movs r1, #0x10
	bl ov65_0222F4C4
	adds r0, r5, #0
	bl ov65_0222F5BC
	bl ov65_0222EBB8
	movs r1, #0xd1
	lsls r1, r1, #2
	str r0, [r5, r1]
	b _0222FB40
_0222FB2A:
	bl FUN_020383E8
	cmp r0, #0
	bne _0222FB3A
	bl FUN_020380E4
	cmp r0, #3
	bne _0222FB40
_0222FB3A:
	adds r0, r5, #0
	bl ov65_0222F6EC
_0222FB40:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_0222FAA0

	thumb_func_start ov65_0222FB44
ov65_0222FB44: @ 0x0222FB44
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _0222FB60
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_0222FB60:
	bl FUN_021D27E0
	cmp r0, #0
	beq _0222FB80
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02024814
	movs r0, #0xd1
	movs r1, #0x47
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_0222FB80:
	bl FUN_02038294
	cmp r0, #0
	beq _0222FBB4
	movs r0, #0xd9
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _0222FB9A
	movs r1, #0x10
	subs r0, #0x20
	str r1, [r5, r0]
	b _0222FBCA
_0222FB9A:
	adds r0, r5, #0
	movs r1, #0x10
	bl ov65_0222F4C4
	adds r0, r5, #0
	bl ov65_0222F5BC
	bl ov65_0222EBB8
	movs r1, #0xd1
	lsls r1, r1, #2
	str r0, [r5, r1]
	b _0222FBCA
_0222FBB4:
	bl FUN_020383E8
	cmp r0, #0
	bne _0222FBC4
	bl FUN_020380E4
	cmp r0, #3
	bne _0222FBCA
_0222FBC4:
	adds r0, r5, #0
	bl ov65_0222F6EC
_0222FBCA:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_0222FB44

	thumb_func_start ov65_0222FBD0
ov65_0222FBD0: @ 0x0222FBD0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_021D27E0
	cmp r0, #0
	beq _0222FBFA
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02024828
	cmp r0, #0
	beq _0222FBF6
	cmp r0, #1
	beq _0222FBF6
	bl FUN_021D27F4
	b _0222FBFA
_0222FBF6:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_0222FBFA:
	bl FUN_02038294
	cmp r0, #0
	beq _0222FC2E
	movs r0, #0xd9
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _0222FC14
	movs r1, #0x10
	subs r0, #0x20
	str r1, [r5, r0]
	b _0222FC44
_0222FC14:
	adds r0, r5, #0
	movs r1, #0x10
	bl ov65_0222F4C4
	adds r0, r5, #0
	bl ov65_0222F5BC
	bl ov65_0222EBB8
	movs r1, #0xd1
	lsls r1, r1, #2
	str r0, [r5, r1]
	b _0222FC44
_0222FC2E:
	bl FUN_020383E8
	cmp r0, #0
	bne _0222FC3E
	bl FUN_020380E4
	cmp r0, #3
	bne _0222FC44
_0222FC3E:
	adds r0, r5, #0
	bl ov65_0222F6EC
_0222FC44:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_0222FBD0

	thumb_func_start ov65_0222FC48
ov65_0222FC48: @ 0x0222FC48
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xd6
	lsls r0, r0, #2
	adds r4, r1, #0
	ldr r1, [r5, r0]
	cmp r1, #0
	ble _0222FC60
	subs r1, r1, #1
	str r1, [r5, r0]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_0222FC60:
	bl FUN_020382C0
	cmp r0, #0
	beq _0222FC74
	bl ov65_0222EBB8
	movs r1, #0xd1
	lsls r1, r1, #2
	str r0, [r5, r1]
	b _0222FCB4
_0222FC74:
	bl FUN_020383E8
	cmp r0, #0
	bne _0222FC84
	bl FUN_020380E4
	cmp r0, #3
	bne _0222FC8C
_0222FC84:
	adds r0, r5, #0
	bl ov65_0222F6EC
	b _0222FCB4
_0222FC8C:
	bl FUN_020380E4
	cmp r0, #4
	bge _0222FCA6
	bl FUN_02038284
	cmp r0, #0
	bne _0222FCA6
	movs r0, #0
	bl FUN_02035D78
	cmp r0, #0
	bne _0222FCB4
_0222FCA6:
	bl FUN_02038378
	bl ov65_0222EBB8
	movs r1, #0xd1
	lsls r1, r1, #2
	str r0, [r5, r1]
_0222FCB4:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_0222FC48

	thumb_func_start ov65_0222FCB8
ov65_0222FCB8: @ 0x0222FCB8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov65_02232DFC
	adds r0, r5, #0
	movs r1, #0x13
	bl ov65_02232CA8
	movs r0, #0xd1
	movs r1, #0x11
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r1, #0
	adds r0, #0x20
	str r1, [r5, r0]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_0222FCB8

	thumb_func_start ov65_0222FCDC
ov65_0222FCDC: @ 0x0222FCDC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0222FD6C @ =0x021BF67C
	adds r4, r1, #0
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _0222FD68
	movs r1, #0x35
	lsls r1, r1, #4
	ldr r0, [r5, r1]
	cmp r0, #1
	bne _0222FD0A
	adds r0, r1, #0
	movs r2, #0xa
	subs r0, #8
	str r2, [r5, r0]
	movs r0, #0x22
	subs r1, #0xc
	str r0, [r5, r1]
	bl FUN_02038350
	b _0222FD68
_0222FD0A:
	ldr r0, [r5]
	bl FUN_0202AF94
	cmp r0, #0
	bne _0222FD2E
	adds r0, r5, #0
	movs r1, #0x1a
	movs r2, #1
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x3b
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r1, #1
	adds r0, #0x14
	str r1, [r5, r0]
	b _0222FD68
_0222FD2E:
	adds r0, r5, #0
	movs r1, #0x10
	bl ov65_0222F4C4
	adds r0, r5, #0
	bl ov65_0222F5BC
	bl ov65_0222EBB8
	movs r1, #0xd1
	lsls r1, r1, #2
	str r0, [r5, r1]
	subs r1, #0x48
	adds r0, r5, r1
	bl FUN_0201A7CC
	cmp r0, #0
	beq _0222FD68
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200E084
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
_0222FD68:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222FD6C: .4byte 0x021BF67C
	thumb_func_end ov65_0222FCDC

	thumb_func_start ov65_0222FD70
ov65_0222FD70: @ 0x0222FD70
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02025E38
	movs r1, #0x36
	adds r6, r0, #0
	bl FUN_02025F04
	adds r4, r0, #0
	movs r0, #0xb7
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A7CC
	cmp r0, #0
	bne _0222FDA2
	adds r0, r4, #0
	bl FUN_020237BC
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
_0222FDA2:
	movs r0, #0xb7
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r6, #0
	bl FUN_02025F30
	cmp r0, #0
	bne _0222FDBC
	ldr r0, _0222FED0 @ =0x00050600
	b _0222FDC0
_0222FDBC:
	movs r0, #0xc1
	lsls r0, r0, #0xa
_0222FDC0:
	str r0, [sp, #0x10]
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	adds r2, r4, #0
	str r0, [sp, #8]
	movs r0, #0xb7
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r3, #0x20
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl ov65_0222DD20
	add r1, sp, #0x10
	adds r4, r0, #0
	bl ov65_0223484C
	adds r6, r0, #0
	cmp r4, #1
	bne _0222FE54
	bl FUN_021D2388
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _0222FE18
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #8
	ldr r2, [r5, r2]
	adds r1, r6, #0
	bl FUN_0200B1B8
	b _0222FE64
_0222FE18:
	bl FUN_021D2388
	adds r1, r0, #0
	ldr r0, [r5]
	movs r2, #8
	bl FUN_0202AD2C
	cmp r0, #0
	bne _0222FE30
	ldr r0, _0222FED0 @ =0x00050600
	str r0, [sp, #0x10]
	b _0222FE3A
_0222FE30:
	cmp r0, #1
	bne _0222FE3A
	movs r0, #0xc1
	lsls r0, r0, #0xa
	str r0, [sp, #0x10]
_0222FE3A:
	bl FUN_021D2388
	adds r1, r0, #0
	ldr r0, [r5]
	bl FUN_0202AEF0
	adds r1, r0, #0
	movs r0, #0x17
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02023D28
	b _0222FE64
_0222FE54:
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #8
	ldr r2, [r5, r2]
	adds r1, r6, #0
	bl FUN_0200B1B8
_0222FE64:
	movs r1, #0
	str r1, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, [sp, #0x10]
	adds r2, #0x71
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	movs r0, #0xb7
	lsls r0, r0, #2
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #0x66
	bl FUN_0201D78C
	movs r2, #1
	str r2, [sp]
	movs r0, #0x57
	ldr r1, _0222FED4 @ =0x00000B08
	str r4, [sp, #4]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r5, r1
	movs r3, #2
	bl ov65_0222EA38
	ldr r0, [r5, #4]
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _0222FEA6
	movs r0, #8
	b _0222FEA8
_0222FEA6:
	movs r0, #1
_0222FEA8:
	movs r2, #1
	str r2, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r1, _0222FED4 @ =0x00000B08
	ldr r0, [r5, r0]
	adds r1, r5, r1
	movs r3, #0x1a
	bl ov65_0222E9C0
	movs r0, #0xb7
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A9A4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0222FED0: .4byte 0x00050600
_0222FED4: .4byte 0x00000B08
	thumb_func_end ov65_0222FD70

	thumb_func_start ov65_0222FED8
ov65_0222FED8: @ 0x0222FED8
	push {r3, lr}
	cmp r2, #0
	bne _0222FEE4
	ldr r0, _0222FEE8 @ =0x000005DC
	bl FUN_02005748
_0222FEE4:
	pop {r3, pc}
	nop
_0222FEE8: .4byte 0x000005DC
	thumb_func_end ov65_0222FED8

	thumb_func_start ov65_0222FEEC
ov65_0222FEEC: @ 0x0222FEEC
	push {r3, r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	movs r0, #0xb7
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A7CC
	cmp r0, #0
	beq _0222FF0A
	movs r0, #0xb7
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A8FC
_0222FF0A:
	movs r0, #0xbb
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A7CC
	cmp r0, #0
	beq _0222FF2E
	movs r0, #0xbb
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	bl FUN_0200DC9C
	movs r0, #0xbb
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A8FC
_0222FF2E:
	movs r3, #1
	str r3, [sp]
	movs r0, #0x1c
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0222FFA0 @ =0x00000192
	movs r1, #0xb7
	str r0, [sp, #0x10]
	subs r0, #0x36
	lsls r1, r1, #2
	ldr r0, [r4, r0]
	adds r1, r4, r1
	movs r2, #3
	bl FUN_0201A7E8
	movs r2, #1
	movs r1, #0xbb
	lsls r1, r1, #2
	str r2, [sp]
	movs r0, #0x1c
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0222FFA4 @ =0x000001A1
	adds r1, r4, r1
	str r0, [sp, #0x10]
	subs r0, #0x45
	ldr r0, [r4, r0]
	adds r3, r2, #0
	bl FUN_0201A7E8
	movs r0, #0xbb
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #0xbb
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A9A4
	movs r0, #0xbb
	lsls r0, r0, #2
	ldr r2, _0222FFA8 @ =0x000001D9
	adds r0, r4, r0
	movs r1, #0
	movs r3, #0xb
	bl FUN_0200DC48
	add sp, #0x14
	pop {r3, r4, pc}
	.align 2, 0
_0222FFA0: .4byte 0x00000192
_0222FFA4: .4byte 0x000001A1
_0222FFA8: .4byte 0x000001D9
	thumb_func_end ov65_0222FEEC

	thumb_func_start ov65_0222FFAC
ov65_0222FFAC: @ 0x0222FFAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r7, r1, #0
	bl FUN_0200F2AC
	cmp r0, #0
	bne _0222FFC2
	add sp, #0xc
	adds r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_0222FFC2:
	bl FUN_020383E8
	cmp r0, #0
	bne _0222FFD8
	bl FUN_020382C0
	cmp r0, #0
	bne _0222FFD8
	add sp, #0xc
	adds r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_0222FFD8:
	ldr r0, _0223011C @ =0x0207DFAD
	bl FUN_021D113C
	ldr r0, _02230120 @ =0x00000D68
	movs r1, #0
	str r1, [r5, r0]
	movs r0, #0x5c
	movs r1, #0x36
	bl FUN_02006C24
	adds r6, r0, #0
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r1, _02230124 @ =0x00000B08
	ldr r0, [r5, r0]
	adds r1, r5, r1
	adds r2, r6, #0
	movs r3, #0x36
	bl ov65_0222E90C
	adds r0, r5, #0
	bl ov65_02232F30
	adds r0, r5, #0
	bl ov65_02232DFC
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #3
	bl FUN_02019EBC
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02230052
	movs r0, #0xc3
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
	movs r0, #0x15
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r5, r0]
	adds r2, r1, #0
	bl FUN_02001384
	movs r0, #0x15
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r5, r0]
	subs r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02013A3C
	movs r0, #0x53
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
_02230052:
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov65_02235194
	cmp r0, #0
	bne _022300A6
	ldr r0, [r5, #4]
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	bne _0223006C
	movs r4, #0
	b _0223006E
_0223006C:
	movs r4, #0x61
_0223006E:
	ldr r0, [r5]
	bl FUN_0202AFB4
	ldr r1, _02230128 @ =0x00001092
	movs r3, #0x57
	strh r0, [r5, r1]
	str r4, [sp]
	ldrh r0, [r5, r1]
	lsls r3, r3, #2
	movs r1, #0x36
	str r0, [sp, #4]
	movs r0, #0xe2
	lsls r0, r0, #2
	ldr r3, [r5, r3]
	adds r0, r5, r0
	adds r2, r6, #0
	bl ov65_02235060
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov65_02235380
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_0222E87C
_022300A6:
	adds r0, r5, #0
	bl ov65_02232FCC
	cmp r0, #0
	bne _022300BA
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0x36
	bl ov65_02232FE0
_022300BA:
	adds r0, r5, #0
	movs r1, #0x36
	bl ov65_022336A4
	adds r0, r5, #0
	bl ov65_02232DFC
	adds r0, r5, #0
	bl ov65_0222F5BC
	adds r0, r5, #0
	bl ov65_0222FEEC
	adds r0, r5, #0
	movs r1, #0x10
	bl ov65_02232E58
	bl FUN_02038B60
	movs r1, #0
	movs r0, #0xdb
	mvns r1, r1
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r6, #0
	bl FUN_02006CA8
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x36
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #0xd1
	movs r1, #0x13
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r0, #0
	adds r1, r0, #0
	bl FUN_020388F4
	adds r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223011C: .4byte 0x0207DFAD
_02230120: .4byte 0x00000D68
_02230124: .4byte 0x00000B08
_02230128: .4byte 0x00001092
	thumb_func_end ov65_0222FFAC

	thumb_func_start ov65_0223012C
ov65_0223012C: @ 0x0223012C
	push {r3, lr}
	bl FUN_020380E4
	cmp r0, #1
	bne _0223013A
	movs r0, #1
	pop {r3, pc}
_0223013A:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov65_0223012C

	thumb_func_start ov65_02230140
ov65_02230140: @ 0x02230140
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_021D2568
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _0223015E
	ldr r0, [r4, #4]
	adds r0, #0x21
	ldrb r0, [r0]
	bl FUN_021D2584
	movs r0, #1
	pop {r4, pc}
_0223015E:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_02230140

	thumb_func_start ov65_02230164
ov65_02230164: @ 0x02230164
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	bl ov65_0222F5BC
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r5, #0
	str r0, [sp, #4]
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0xc
	adds r1, #0x2c
	movs r2, #0x20
	blx FUN_020D5190
	cmp r0, #0
	bne _0223018A
	b _0223028C
_0223018A:
	movs r4, #0
_0223018C:
	adds r7, r5, r4
	adds r1, r7, #0
	adds r1, #0x2c
	ldrb r1, [r1]
	movs r2, #0
	adds r0, r2, #0
_02230198:
	adds r3, r5, r0
	ldrb r3, [r3, #0xc]
	cmp r3, r1
	bne _022301A4
	movs r2, #1
	b _022301AA
_022301A4:
	adds r0, r0, #1
	cmp r0, #0x20
	blt _02230198
_022301AA:
	cmp r2, #0
	bne _022301EE
	cmp r1, #0
	beq _022301EE
	adds r0, r5, #0
	bl ov65_0222E8D4
	adds r6, r0, #0
	beq _022301EE
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r6, #0
	bl ov65_02235478
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov65_0222E8A8
	adds r1, r5, r4
	adds r1, #0x2c
	ldrb r1, [r1]
	adds r0, r5, #0
	bl ov65_0223366C
	adds r1, r5, r4
	adds r1, #0x2c
	ldrb r1, [r1]
	adds r0, r5, #0
	movs r2, #0x36
	bl ov65_02232FB0
	movs r0, #1
	str r0, [sp]
_022301EE:
	ldrb r0, [r7, #0xc]
	movs r1, #0
	adds r2, r1, #0
_022301F4:
	adds r3, r5, r2
	adds r3, #0x2c
	ldrb r3, [r3]
	cmp r0, r3
	bne _02230202
	movs r1, #1
	b _02230208
_02230202:
	adds r2, r2, #1
	cmp r2, #0x20
	blt _022301F4
_02230208:
	cmp r1, #0
	bne _02230258
	ldrb r1, [r7, #0xc]
	cmp r1, #0
	beq _02230258
	adds r0, r5, #0
	subs r1, r1, #1
	bl ov65_02234FA8
	adds r1, r0, #0
	adds r6, r5, r4
	movs r0, #0xe2
	lsls r0, r0, #2
	ldrb r1, [r1, #0x1d]
	ldrb r2, [r6, #0xc]
	adds r0, r5, r0
	bl ov65_022353EC
	str r0, [sp, #0xc]
	cmp r0, #0
	beq _0223024A
	ldrb r1, [r7, #0xc]
	adds r0, r5, #0
	movs r2, #2
	bl ov65_02233638
	ldr r1, [sp, #0xc]
	adds r0, r5, #0
	bl ov65_0222E87C
	movs r0, #1
	str r0, [sp, #4]
	b _02230258
_0223024A:
	ldrb r1, [r6, #0xc]
	adds r0, r5, #0
	movs r2, #1
	bl ov65_02233638
	movs r0, #0
	strb r0, [r6, #0xc]
_02230258:
	adds r4, r4, #1
	cmp r4, #0x20
	blt _0223018C
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0x2c
	adds r1, #0xc
	movs r2, #0x20
	blx FUN_020D50B8
	adds r0, r5, #0
	bl ov65_022336C4
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02230280
	ldr r0, _02230294 @ =0x0000064F
	bl FUN_02005748
	b _0223028C
_02230280:
	ldr r0, [sp]
	cmp r0, #1
	bne _0223028C
	ldr r0, _02230294 @ =0x0000064F
	bl FUN_02005748
_0223028C:
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02230294: .4byte 0x0000064F
	thumb_func_end ov65_02230164

	thumb_func_start ov65_02230298
ov65_02230298: @ 0x02230298
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov65_0222F62C
	cmp r0, #0
	ble _022302AE
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_022336A4
_022302AE:
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_02230298

	thumb_func_start ov65_022302B0
ov65_022302B0: @ 0x022302B0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov65_02230164
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_02230298
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_022302B0

	thumb_func_start ov65_022302C4
ov65_022302C4: @ 0x022302C4
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r7, #0
	bl FUN_0200F2AC
	cmp r0, #0
	bne _022302D8
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_022302D8:
	bl FUN_020383E8
	cmp r0, #0
	beq _022302EA
	adds r0, r4, #0
	bl ov65_0222F6EC
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_022302EA:
	bl FUN_020380E4
	cmp r0, #4
	bne _02230320
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov65_02232DC0
	adds r0, r4, #0
	movs r1, #0x12
	adds r2, r7, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1d
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, r4, #0
	movs r1, #0x10
	bl ov65_02232E58
	bl FUN_02038378
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02230320:
	adds r0, r4, #0
	movs r1, #0x36
	bl ov65_022302B0
	adds r0, r4, #0
	bl ov65_022331E0
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov65_022355EC
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov65_0223537C
	cmp r0, #0
	bne _022303DA
	bl FUN_021D2568
	subs r1, r7, #1
	cmp r0, r1
	bne _0223039C
	ldr r0, _022305E0 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	lsls r0, r0, #0xa
	tst r0, r1
	beq _0223039C
	adds r0, r4, #0
	bl ov65_02232F00
	cmp r0, #0
	beq _02230372
	adds r0, r4, #0
	movs r1, #0x5a
	adds r2, r7, #0
	bl ov65_02232B58
	b _0223037C
_02230372:
	adds r0, r4, #0
	movs r1, #0x5b
	adds r2, r7, #0
	bl ov65_02232B58
_0223037C:
	ldr r0, _022305E4 @ =0x000005DD
	bl FUN_02005748
	adds r0, r4, #0
	bl ov65_0222FD70
	movs r0, #0xd1
	movs r1, #0x14
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, r4, #0
	movs r1, #0x36
	bl ov65_02232F90
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223039C:
	adds r0, r4, #0
	movs r1, #0x36
	bl ov65_022330C0
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov65_0222E8D4
	adds r1, r0, #0
	cmp r6, #0
	beq _022303D0
	cmp r1, #0
	beq _022303C4
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov65_0223532C
	b _022303DA
_022303C4:
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov65_02235370
	b _022303DA
_022303D0:
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov65_02235370
_022303DA:
	adds r0, r4, #0
	bl ov65_0223012C
	cmp r0, #0
	beq _02230404
	movs r0, #0xdb
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	movs r0, #0
	mvns r0, r0
	cmp r1, r0
	beq _02230404
	ldr r0, _022305E8 @ =0x00000624
	bl FUN_02005748
	movs r0, #0xd1
	movs r1, #0x30
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02230404:
	movs r0, #0xdb
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	movs r0, #0
	mvns r0, r0
	cmp r1, r0
	bne _0223044E
	bl FUN_021D2568
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _0223044E
	bl FUN_021D2568
	movs r1, #0xdb
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	adds r0, r4, #0
	bl ov65_02232DC0
	adds r0, r4, #0
	movs r1, #0x4c
	movs r2, #0
	bl ov65_02232B58
	ldr r0, [r4, #4]
	adds r0, #0x21
	ldrb r0, [r0]
	bl FUN_021D2584
	movs r0, #0xd
	movs r1, #0
	lsls r0, r0, #6
	str r1, [r4, r0]
	b _02230494
_0223044E:
	movs r0, #0xdb
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	movs r0, #0
	mvns r0, r0
	cmp r1, r0
	beq _02230494
	bl FUN_021D2568
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _02230494
	movs r0, #0
	bl FUN_021D2584
	movs r1, #0xdb
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	adds r0, r4, #0
	bl ov65_02232DC0
	adds r0, r4, #0
	movs r1, #0x12
	movs r2, #0
	bl ov65_02232B58
	bl FUN_02038378
	movs r0, #0xd1
	movs r1, #0x1b
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02230494:
	bl FUN_021D254C
	cmp r0, #1
	bne _022304AE
	bl FUN_021D2568
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _022304AE
	movs r0, #0
	bl FUN_021D2584
_022304AE:
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl ov65_0222DD20
	movs r1, #0xdb
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	movs r1, #0
	mvns r1, r1
	adds r6, r0, #0
	cmp r2, r1
	bne _02230508
	ldr r1, _022305E0 @ =0x021BF67C
	ldr r2, [r1, #0x48]
	movs r1, #2
	tst r1, r2
	beq _022304F2
	bl ov65_0222DDFC
	cmp r0, #0
	beq _022304F2
	ldr r0, _022305E4 @ =0x000005DD
	bl FUN_02005748
	movs r0, #0xd1
	movs r1, #0x27
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, r4, #0
	movs r1, #0x36
	bl ov65_02232F90
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_022304F2:
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov65_02235198
	adds r7, r0, #0
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov65_022355FC
_02230508:
	cmp r7, #3
	bhi _022305D8
	adds r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02230518: @ jump table
	.2byte _02230520 - _02230518 - 2 @ case 0
	.2byte _02230524 - _02230518 - 2 @ case 1
	.2byte _022305B0 - _02230518 - 2 @ case 2
	.2byte _02230562 - _02230518 - 2 @ case 3
_02230520:
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02230524:
	ldr r0, _022305E4 @ =0x000005DD
	bl FUN_02005748
	adds r0, r6, #0
	bl ov65_0222DDFC
	cmp r0, #0
	beq _0223053E
	movs r0, #0xd1
	movs r1, #0x27
	lsls r0, r0, #2
	str r1, [r4, r0]
	b _02230556
_0223053E:
	movs r0, #0xd2
	movs r1, #8
	lsls r0, r0, #2
	str r1, [r4, r0]
	movs r1, #0x39
	subs r0, r0, #4
	str r1, [r4, r0]
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #1
	bl ov65_02232B58
_02230556:
	adds r0, r4, #0
	movs r1, #0x36
	bl ov65_02232F90
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02230562:
	ldr r0, _022305E4 @ =0x000005DD
	bl FUN_02005748
	adds r0, r6, #0
	bl ov65_0222DDFC
	cmp r0, #0
	beq _02230586
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov65_022355B0
	movs r0, #0xd1
	movs r1, #0x27
	lsls r0, r0, #2
	str r1, [r4, r0]
	b _022305A4
_02230586:
	cmp r6, #0x10
	bne _022305A4
	bl FUN_020382C0
	cmp r0, #1
	bne _022305A4
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov65_022355B0
	movs r0, #0xd1
	movs r1, #0x24
	lsls r0, r0, #2
	str r1, [r4, r0]
_022305A4:
	adds r0, r4, #0
	movs r1, #0x36
	bl ov65_02232F90
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_022305B0:
	ldr r0, _022305E4 @ =0x000005DD
	bl FUN_02005748
	adds r0, r6, #0
	bl ov65_0222DDFC
	cmp r0, #0
	beq _022305C4
	movs r1, #0x27
	b _022305C6
_022305C4:
	movs r1, #0x2a
_022305C6:
	movs r0, #0xd1
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, r4, #0
	movs r1, #0x36
	bl ov65_02232F90
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_022305D8:
	bl FUN_02022974
	adds r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022305E0: .4byte 0x021BF67C
_022305E4: .4byte 0x000005DD
_022305E8: .4byte 0x00000624
	thumb_func_end ov65_022302C4

	thumb_func_start ov65_022305EC
ov65_022305EC: @ 0x022305EC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov65_02230140
	cmp r0, #0
	beq _0223060A
	movs r0, #0xd1
	movs r1, #0x13
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov65_0223503C
	b _02230630
_0223060A:
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _02230630
	movs r0, #0xd1
	movs r1, #0x13
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov65_0223503C
	adds r0, r5, #0
	bl ov65_02232DFC
_02230630:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_022305EC

	thumb_func_start ov65_02230634
ov65_02230634: @ 0x02230634
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	ldr r1, _02230770 @ =0x0000037E
	adds r5, r0, #0
	ldrh r1, [r5, r1]
	subs r1, r1, #1
	bl ov65_02234FA8
	adds r1, r0, #0
	adds r0, #0x21
	ldrb r4, [r0]
	adds r0, r5, #0
	bl ov65_0222DD20
	adds r6, r0, #0
	movs r0, #0xcf
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	subs r1, r1, #1
	str r1, [r5, r0]
	ldr r1, [r5, r0]
	cmp r1, #0
	bge _0223066A
	movs r1, #0x46
	adds r0, #8
	str r1, [r5, r0]
	b _0223076C
_0223066A:
	bl FUN_020380E4
	cmp r0, #5
	bne _02230692
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0xf
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1b
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _0223076C
_02230692:
	bl FUN_020380E4
	cmp r0, #3
	bne _022306BA
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x12
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1b
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _0223076C
_022306BA:
	bl FUN_020380E4
	cmp r0, #4
	beq _022306CA
	bl FUN_02038284
	cmp r0, #0
	beq _022306EA
_022306CA:
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x13
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1b
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _0223076C
_022306EA:
	bl FUN_020383E8
	cmp r0, #0
	beq _022306FA
	adds r0, r5, #0
	bl ov65_0222F6EC
	b _0223076C
_022306FA:
	cmp r4, #0
	bne _0223071E
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1b
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _0223076C
_0223071E:
	cmp r6, #0x10
	beq _02230742
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1b
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _0223076C
_02230742:
	bl FUN_020380E4
	cmp r0, #1
	bne _0223076C
	adds r0, r5, #0
	bl ov65_02232DFC
	adds r0, r5, #0
	movs r1, #1
	bl ov65_02232E58
	movs r1, #0xd1
	movs r0, #0x18
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r1, #0x3a
	ldrh r1, [r5, r1]
	ldr r0, [r5]
	subs r1, r1, #1
	bl FUN_0202B13C
_0223076C:
	adds r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02230770: .4byte 0x0000037E
	thumb_func_end ov65_02230634

	thumb_func_start ov65_02230774
ov65_02230774: @ 0x02230774
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0xe
	movs r2, #0
	bl ov65_02232B58
	adds r0, r5, #0
	movs r1, #1
	bl ov65_02232E58
	movs r0, #0xd1
	movs r1, #0x17
	lsls r0, r0, #2
	str r1, [r5, r0]
	bl FUN_021D2388
	adds r1, r0, #0
	ldr r0, [r5]
	bl FUN_0202B13C
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_02230774

	thumb_func_start ov65_022307B0
ov65_022307B0: @ 0x022307B0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_020383E8
	cmp r0, #0
	beq _022307C8
	adds r0, r5, #0
	bl ov65_0222F6EC
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_022307C8:
	bl FUN_021D2388
	cmp r0, #0
	bge _022307E6
	adds r0, r5, #0
	movs r1, #0x13
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1b
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_022307E6:
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_02234FA8
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_0222DD20
	cmp r0, #0x10
	beq _02230824
	cmp r0, #1
	beq _02230824
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1b
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_02230824:
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _02230858
	ldr r0, _0223085C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _02230850
	adds r0, r5, #0
	bl ov65_02232DFC
	movs r0, #0xd1
	movs r1, #0x18
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02230858
_02230850:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_02230860
_02230858:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223085C: .4byte 0x021BF67C
	thumb_func_end ov65_022307B0

	thumb_func_start ov65_02230860
ov65_02230860: @ 0x02230860
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	bl FUN_021D2388
	cmp r0, #0
	bge _02230888
	adds r0, r5, #0
	movs r1, #0x13
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1b
	lsls r0, r0, #2
	str r1, [r5, r0]
	add sp, #0xc
	adds r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_02230888:
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_02234FA8
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_0222DD20
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0x36
	bl ov65_022302B0
	adds r0, r5, #0
	bl ov65_022331E0
	bl FUN_020380E4
	cmp r0, #5
	bne _022308D4
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0xf
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1b
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _022309C0
_022308D4:
	bl FUN_020380E4
	cmp r0, #3
	bne _022308FC
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x12
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1b
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _022309C0
_022308FC:
	bl FUN_020380E4
	cmp r0, #4
	beq _0223090C
	bl FUN_02038284
	cmp r0, #0
	beq _0223092C
_0223090C:
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x13
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1b
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _022309C0
_0223092C:
	bl FUN_020383E8
	cmp r0, #0
	beq _0223093C
	adds r0, r5, #0
	bl ov65_0222F6EC
	b _022309C0
_0223093C:
	cmp r4, #0x10
	beq _02230964
	cmp r4, #1
	beq _02230964
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1b
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _022309C0
_02230964:
	ldr r0, _022309C8 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _02230982
	adds r0, r5, #0
	movs r1, #0x14
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x19
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _022309C0
_02230982:
	bl FUN_021D2544
	cmp r0, #0
	ldr r1, _022309CC @ =0x00000B08
	beq _022309A6
	movs r2, #1
	str r2, [sp]
	movs r3, #2
	str r3, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r5, r1
	bl ov65_0222E9C0
	b _022309C0
_022309A6:
	movs r2, #1
	str r2, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r5, r1
	movs r3, #2
	bl ov65_0222E9C0
_022309C0:
	adds r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_022309C8: .4byte 0x021BF67C
_022309CC: .4byte 0x00000B08
	thumb_func_end ov65_02230860

	thumb_func_start ov65_022309D0
ov65_022309D0: @ 0x022309D0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_020383E8
	cmp r0, #0
	beq _022309E8
	adds r0, r5, #0
	bl ov65_0222F6EC
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_022309E8:
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _02230A28
	bl FUN_021D2388
	adds r1, r0, #0
	ldr r0, [r5]
	bl FUN_0202B13C
	movs r2, #0x57
	movs r0, #0x36
	lsls r2, r2, #2
	str r0, [sp]
	ldr r0, [r5, r2]
	ldr r1, _02230A2C @ =0x0223894C
	adds r2, #0x7d
	movs r3, #0xb
	bl FUN_02002100
	movs r1, #0x61
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0xd1
	movs r1, #0x1a
	lsls r0, r0, #2
	str r1, [r5, r0]
_02230A28:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02230A2C: .4byte 0x0223894C
	thumb_func_end ov65_022309D0

	thumb_func_start ov65_02230A30
ov65_02230A30: @ 0x02230A30
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x61
	lsls r0, r0, #2
	adds r4, r1, #0
	ldr r0, [r5, r0]
	movs r1, #0x36
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _02230AAA
	bl FUN_020380E4
	cmp r0, #4
	bge _02230A64
	bl FUN_02038284
	cmp r0, #0
	bne _02230A64
	movs r0, #0
	bl FUN_02035D78
	cmp r0, #0
	bne _02230A98
_02230A64:
	adds r0, r5, #0
	bl ov65_02232DFC
	adds r0, r5, #0
	movs r1, #0x10
	bl ov65_02232E58
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x36
	bl FUN_02002154
	movs r0, #0
	movs r1, #0xdb
	mvns r0, r0
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r1, #0
	movs r2, #0x14
	subs r0, #0x14
	str r2, [r5, r0]
	movs r0, #0x41
	subs r1, #0x28
	str r0, [r5, r1]
	b _02230AA6
_02230A98:
	bl FUN_020383E8
	cmp r0, #0
	beq _02230AA6
	adds r0, r5, #0
	bl ov65_0222F6EC
_02230AA6:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_02230AAA:
	cmp r0, #0
	bne _02230AE4
	bl FUN_020383E8
	cmp r0, #0
	bne _02230ADC
	adds r0, r5, #0
	movs r1, #0x10
	bl ov65_02232E58
	bl FUN_020383D4
	movs r0, #0
	movs r1, #0xdb
	mvns r0, r0
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r1, #0
	movs r2, #0x14
	subs r0, #0x14
	str r2, [r5, r0]
	movs r0, #0x41
	subs r1, #0x28
	str r0, [r5, r1]
	b _02230AEC
_02230ADC:
	adds r0, r5, #0
	bl ov65_0222F6EC
	b _02230AEC
_02230AE4:
	movs r0, #0xd1
	movs r1, #0x18
	lsls r0, r0, #2
	str r1, [r5, r0]
_02230AEC:
	adds r0, r5, #0
	bl ov65_02232DFC
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_02230A30

	thumb_func_start ov65_02230AF8
ov65_02230AF8: @ 0x02230AF8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_020383E8
	cmp r0, #0
	beq _02230B10
	adds r0, r5, #0
	bl ov65_0222F6EC
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_02230B10:
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl ov65_0222DD20
	cmp r0, #0x10
	beq _02230B24
	adds r0, r5, #0
	movs r1, #0x10
	bl ov65_02232E58
_02230B24:
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _02230B42
	movs r0, #0xd6
	movs r1, #0x1e
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_02230B42:
	movs r0, #0xd6
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	subs r1, r1, #1
	str r1, [r5, r0]
	ldr r1, _02230BB0 @ =0x021BF67C
	ldr r2, [r1, #0x48]
	movs r1, #3
	tst r1, r2
	bne _02230B5C
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02230BAA
_02230B5C:
	adds r0, r5, #0
	bl ov65_02232DFC
	bl FUN_02038378
	bl FUN_02038B60
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov65_02235194
	cmp r0, #0
	bne _02230B88
	movs r0, #0xd6
	movs r1, #0x14
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r1, #0x41
	subs r0, #0x14
	str r1, [r5, r0]
	b _02230BAA
_02230B88:
	adds r0, r5, #0
	bl ov65_02232F30
	adds r0, r5, #0
	bl ov65_0222FD70
	movs r1, #0
	movs r0, #0xdb
	mvns r1, r1
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r1, #0x13
	subs r0, #0x28
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov65_0223503C
_02230BAA:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02230BB0: .4byte 0x021BF67C
	thumb_func_end ov65_02230AF8

	thumb_func_start ov65_02230BB4
ov65_02230BB4: @ 0x02230BB4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _02230BD0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_02230BD0:
	ldr r0, _02230C00 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _02230BFA
	adds r0, r5, #0
	bl ov65_02232DFC
	adds r0, r5, #0
	movs r1, #0x10
	bl ov65_02232E58
	bl FUN_02038378
	movs r0, #0xd6
	movs r1, #0x14
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r1, #0x41
	subs r0, #0x14
	str r1, [r5, r0]
_02230BFA:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02230C00: .4byte 0x021BF67C
	thumb_func_end ov65_02230BB4

	thumb_func_start ov65_02230C04
ov65_02230C04: @ 0x02230C04
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_020383E8
	cmp r0, #0
	beq _02230C1C
	adds r0, r5, #0
	bl ov65_0222F6EC
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_02230C1C:
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _02230C3A
	movs r0, #0xd6
	movs r1, #0x1e
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_02230C3A:
	movs r0, #0xd6
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	subs r1, r1, #1
	str r1, [r5, r0]
	ldr r1, _02230CA8 @ =0x021BF67C
	ldr r2, [r1, #0x48]
	movs r1, #3
	tst r1, r2
	bne _02230C54
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02230CA2
_02230C54:
	adds r0, r5, #0
	bl ov65_02232DFC
	adds r0, r5, #0
	movs r1, #0x10
	bl ov65_02232E58
	bl FUN_02038B60
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov65_02235194
	cmp r0, #0
	bne _02230C80
	bl ov65_0222EBB8
	movs r1, #0xd1
	lsls r1, r1, #2
	str r0, [r5, r1]
	b _02230CA2
_02230C80:
	adds r0, r5, #0
	bl ov65_02232F30
	adds r0, r5, #0
	bl ov65_0222FD70
	movs r1, #0
	movs r0, #0xdb
	mvns r1, r1
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r1, #0x13
	subs r0, #0x28
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov65_0223503C
_02230CA2:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02230CA8: .4byte 0x021BF67C
	thumb_func_end ov65_02230C04

	thumb_func_start ov65_02230CAC
ov65_02230CAC: @ 0x02230CAC
	adds r0, r1, #0
	bx lr
	thumb_func_end ov65_02230CAC

	thumb_func_start ov65_02230CB0
ov65_02230CB0: @ 0x02230CB0
	adds r0, r1, #0
	bx lr
	thumb_func_end ov65_02230CB0

	thumb_func_start ov65_02230CB4
ov65_02230CB4: @ 0x02230CB4
	adds r0, r1, #0
	bx lr
	thumb_func_end ov65_02230CB4

	thumb_func_start ov65_02230CB8
ov65_02230CB8: @ 0x02230CB8
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	movs r1, #0xd6
	adds r5, r0, #0
	lsls r1, r1, #2
	ldr r2, [r5, r1]
	cmp r2, #0
	ble _02230CD0
	subs r0, r2, #1
	str r0, [r5, r1]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_02230CD0:
	ldr r1, _02230CF4 @ =0x021BF67C
	ldr r2, [r1, #0x48]
	movs r1, #3
	tst r1, r2
	beq _02230CF0
	movs r1, #0x1a
	movs r2, #1
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x3b
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r1, #1
	adds r0, #0x14
	str r1, [r5, r0]
_02230CF0:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02230CF4: .4byte 0x021BF67C
	thumb_func_end ov65_02230CB8

	thumb_func_start ov65_02230CF8
ov65_02230CF8: @ 0x02230CF8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r4, r1, #0
	bl ov65_022355FC
	adds r0, r5, #0
	movs r1, #0xa
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x28
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_02230CF8

	thumb_func_start ov65_02230D20
ov65_02230D20: @ 0x02230D20
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r4, r1, #0
	bl ov65_022355FC
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _02230D64
	movs r2, #0x57
	movs r0, #0x36
	lsls r2, r2, #2
	str r0, [sp]
	ldr r0, [r5, r2]
	ldr r1, _02230D68 @ =0x0223894C
	adds r2, #0x7d
	movs r3, #0xb
	bl FUN_02002100
	movs r1, #0x61
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0xd1
	movs r1, #0x29
	lsls r0, r0, #2
	str r1, [r5, r0]
_02230D64:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02230D68: .4byte 0x0223894C
	thumb_func_end ov65_02230D20

	thumb_func_start ov65_02230D6C
ov65_02230D6C: @ 0x02230D6C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x61
	lsls r0, r0, #2
	adds r6, r1, #0
	ldr r0, [r5, r0]
	movs r1, #0x36
	bl FUN_02002114
	adds r4, r0, #0
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov65_022355FC
	movs r0, #0xdb
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	movs r0, #0
	mvns r0, r0
	cmp r1, r0
	bne _02230DC4
	bl FUN_021D2568
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _02230DC4
	ldr r0, [r5, #4]
	adds r0, #0x21
	ldrb r0, [r0]
	bl FUN_021D2584
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	bne _02230DC2
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x36
	bl FUN_02002154
_02230DC2:
	movs r4, #1
_02230DC4:
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	bne _02230DD0
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
_02230DD0:
	cmp r4, #0
	bne _02230DE8
	adds r0, r5, #0
	movs r1, #0x10
	bl ov65_02232E58
	bl FUN_02038B60
	adds r0, r5, #0
	bl ov65_0223503C
	b _02230DF6
_02230DE8:
	adds r0, r5, #0
	bl ov65_0223503C
	adds r0, r5, #0
	movs r1, #1
	bl ov65_0223500C
_02230DF6:
	movs r0, #0xd1
	movs r1, #0x13
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov65_02230D6C

	thumb_func_start ov65_02230E04
ov65_02230E04: @ 0x02230E04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	ldr r3, _02230FAC @ =0x02239CBC
	add r2, sp, #0x1c
	adds r5, r0, #0
	str r1, [sp, #0x14]
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	adds r0, r5, #0
	movs r7, #3
	ldr r4, _02230FB0 @ =0x02239CDC
	bl ov65_0222DCF8
	cmp r0, #1
	bne _02230E4E
	add r0, sp, #0x1c
	ldrh r1, [r0, #0x10]
	adds r7, r7, #1
	ldr r2, _02230FB4 @ =0x02239C20
	adds r1, r1, #1
	strh r1, [r0, #0x10]
	ldrh r1, [r0, #0x12]
	adds r1, r1, #1
	strh r1, [r0, #0x12]
	subs r0, r7, #1
	lsls r1, r0, #3
	ldr r0, [r2, #8]
	ldr r2, [r2, #0xc]
	adds r3, r4, r1
	str r0, [r4, r1]
	str r2, [r3, #4]
_02230E4E:
	adds r0, r5, #0
	bl ov65_0222DCE0
	cmp r0, #1
	bne _02230E78
	add r0, sp, #0x1c
	ldrh r1, [r0, #0x10]
	adds r7, r7, #1
	ldr r2, _02230FB4 @ =0x02239C20
	adds r1, r1, #1
	strh r1, [r0, #0x10]
	ldrh r1, [r0, #0x12]
	adds r1, r1, #1
	strh r1, [r0, #0x12]
	subs r0, r7, #1
	lsls r1, r0, #3
	ldr r0, [r2, #0x10]
	ldr r2, [r2, #0x14]
	adds r3, r4, r1
	str r0, [r4, r1]
	str r2, [r3, #4]
_02230E78:
	adds r0, r5, #0
	bl ov65_0222DD1C
	cmp r0, #1
	bne _02230EA2
	add r0, sp, #0x1c
	ldrh r1, [r0, #0x10]
	adds r7, r7, #1
	ldr r2, _02230FB4 @ =0x02239C20
	adds r1, r1, #1
	strh r1, [r0, #0x10]
	ldrh r1, [r0, #0x12]
	adds r1, r1, #1
	strh r1, [r0, #0x12]
	subs r0, r7, #1
	lsls r1, r0, #3
	ldr r0, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	adds r3, r4, r1
	str r0, [r4, r1]
	str r2, [r3, #4]
_02230EA2:
	add r0, sp, #0x1c
	ldrh r1, [r0, #0x10]
	ldr r2, _02230FB4 @ =0x02239C20
	adds r1, r1, #1
	strh r1, [r0, #0x10]
	ldrh r1, [r0, #0x12]
	adds r1, r1, #1
	strh r1, [r0, #0x12]
	lsls r1, r7, #3
	ldm r2, {r0, r2}
	str r0, [r4, r1]
	adds r3, r4, r1
	adds r0, r7, #1
	movs r1, #0x36
	str r2, [r3, #4]
	bl FUN_02013A04
	movs r1, #0x55
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r7, #1
	movs r6, #0
	str r0, [sp, #0x18]
	cmp r0, #0
	ble _02230EF2
_02230ED4:
	movs r0, #0x55
	movs r1, #0x5a
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r4]
	ldr r3, [r4, #4]
	bl FUN_02013A4C
	ldr r0, [sp, #0x18]
	adds r6, r6, #1
	adds r4, #8
	cmp r6, r0
	blt _02230ED4
_02230EF2:
	movs r0, #0xc7
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A7CC
	cmp r0, #0
	beq _02230F16
	movs r0, #0xc7
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200DC9C
	movs r0, #0xc7
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
_02230F16:
	adds r0, r7, #1
	movs r1, #3
	str r1, [sp]
	movs r1, #0xf
	lsls r0, r0, #1
	str r1, [sp, #4]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #8]
	movs r1, #0xd
	str r1, [sp, #0xc]
	movs r1, #0x3b
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	movs r0, #0x57
	lsls r0, r0, #2
	movs r1, #0xc7
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	adds r1, r5, r1
	movs r2, #2
	movs r3, #0x10
	bl FUN_0201A7E8
	movs r0, #0xc7
	lsls r0, r0, #2
	ldr r2, _02230FB8 @ =0x000001D9
	adds r0, r5, r0
	movs r1, #1
	movs r3, #0xb
	bl FUN_0200DC48
	movs r0, #0x55
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r2, #0xc7
	lsls r2, r2, #2
	str r0, [sp, #0x1c]
	adds r0, r5, r2
	str r0, [sp, #0x28]
	adds r2, #0x54
	ldrh r2, [r5, r2]
	add r0, sp, #0x1c
	movs r1, #0
	movs r3, #0x36
	bl FUN_0200112C
	movs r1, #0x56
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0xc7
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A9A4
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov65_022355FC
	movs r0, #0xd1
	movs r1, #0x25
	lsls r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [sp, #0x14]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_02230FAC: .4byte 0x02239CBC
_02230FB0: .4byte 0x02239CDC
_02230FB4: .4byte 0x02239C20
_02230FB8: .4byte 0x000001D9
	thumb_func_end ov65_02230E04

	thumb_func_start ov65_02230FBC
ov65_02230FBC: @ 0x02230FBC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	bl ov65_0222DF88
	str r0, [sp]
	adds r0, r5, #0
	bl ov65_022319B8
	adds r6, r0, #0
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov65_022355FC
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _02231038
	adds r0, r5, #0
	bl ov65_02230140
	cmp r0, #0
	beq _02231034
	movs r0, #0xd1
	movs r1, #0x13
	lsls r0, r0, #2
	str r1, [r5, r0]
	subs r0, #0x28
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200DC9C
	movs r0, #0xc7
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
	movs r0, #0x56
	lsls r0, r0, #2
	movs r2, #0x37
	lsls r2, r2, #4
	ldr r0, [r5, r0]
	movs r1, #0
	adds r2, r5, r2
	bl FUN_02001384
	movs r0, #0x55
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02013A3C
	adds r0, r5, #0
	bl ov65_02232DFC
_02231034:
	adds r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_02231038:
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02001288
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov65_02230140
	cmp r0, #0
	beq _02231052
	movs r4, #1
	mvns r4, r4
_02231052:
	movs r0, #1
	mvns r0, r0
	cmp r4, r0
	beq _02231064
	adds r0, r0, #1
	cmp r4, r0
	bne _0223107A
	adds r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_02231064:
	movs r0, #0xd1
	movs r1, #0x13
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov65_02232DFC
	ldr r0, _022311FC @ =0x000005DD
	bl FUN_02005748
	b _022311C6
_0223107A:
	ldr r0, _022311FC @ =0x000005DD
	bl FUN_02005748
	cmp r4, #0x13
	bne _022310BC
	cmp r6, #0
	beq _022310BC
	cmp r6, #1
	bne _02231098
	adds r0, r5, #0
	movs r1, #0x68
	movs r2, #0
	bl ov65_02232B58
	b _022310B2
_02231098:
	cmp r6, #3
	bne _022310A8
	adds r0, r5, #0
	movs r1, #0x6a
	movs r2, #0
	bl ov65_02232B58
	b _022310B2
_022310A8:
	adds r0, r5, #0
	movs r1, #0x69
	movs r2, #0
	bl ov65_02232B58
_022310B2:
	movs r0, #0xd1
	movs r1, #0x1d
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02231160
_022310BC:
	cmp r4, #0xf
	bne _022310DA
	ldr r0, [sp]
	cmp r0, #2
	bge _022310DA
	adds r0, r5, #0
	movs r1, #0x59
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1d
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02231160
_022310DA:
	cmp r4, #1
	bne _022310F8
	ldr r0, [sp]
	cmp r0, #2
	bge _022310F8
	adds r0, r5, #0
	movs r1, #0x67
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1d
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02231160
_022310F8:
	cmp r4, #0
	beq _02231104
	cmp r4, #1
	beq _02231104
	cmp r4, #0x1d
	bne _0223114A
_02231104:
	movs r0, #0xc7
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200DC9C
	movs r0, #0xc7
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
	movs r0, #0x56
	lsls r0, r0, #2
	movs r2, #0x37
	lsls r2, r2, #4
	ldr r0, [r5, r0]
	movs r1, #0
	adds r2, r5, r2
	bl FUN_02001384
	movs r0, #0x55
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02013A3C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_0223128C
	movs r0, #0xd1
	movs r1, #0x26
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223114A:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_02232E58
	movs r0, #0xd1
	movs r1, #0x13
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov65_02232DFC
_02231160:
	adds r0, r4, #0
	movs r6, #1
	bl ov65_0222DD64
	cmp r0, #0
	beq _022311A2
	movs r0, #0xd1
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0x13
	bne _022311A2
	movs r1, #0x44
	str r1, [r5, r0]
	adds r0, r5, #0
	subs r1, #0x45
	adds r2, r4, #0
	bl ov65_02234FCC
	adds r0, r4, #0
	bl ov65_0222DFD4
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_02232E58
	adds r0, r4, #0
	bl ov65_0222DD94
	movs r1, #0xd2
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r6, #0
	b _022311B4
_022311A2:
	movs r1, #0
	adds r0, r5, #0
	mvns r1, r1
	adds r2, r4, #0
	bl ov65_02234FCC
	adds r0, r4, #0
	bl ov65_0222DFD4
_022311B4:
	movs r0, #0xd1
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0x13
	bne _022311C6
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov65_0223500C
_022311C6:
	movs r0, #0xc7
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200DC9C
	movs r0, #0xc7
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
	movs r0, #0x56
	lsls r0, r0, #2
	movs r2, #0x37
	lsls r2, r2, #4
	ldr r0, [r5, r0]
	movs r1, #0
	adds r2, r5, r2
	bl FUN_02001384
	movs r0, #0x55
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02013A3C
	adds r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022311FC: .4byte 0x000005DD
	thumb_func_end ov65_02230FBC

	thumb_func_start ov65_02231200
ov65_02231200: @ 0x02231200
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_020383E8
	cmp r0, #0
	beq _0223121C
	adds r0, r5, #0
	bl ov65_0222F6EC
	add sp, #0xc
	adds r0, r4, #0
	pop {r4, r5, pc}
_0223121C:
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov65_022355FC
	adds r0, r5, #0
	bl ov65_02230140
	cmp r0, #0
	beq _02231238
	movs r0, #0xd1
	movs r1, #0x13
	lsls r0, r0, #2
	str r1, [r5, r0]
_02231238:
	bl FUN_020382C0
	cmp r0, #0
	beq _02231286
	movs r0, #0
	movs r1, #1
	bl FUN_020388F4
	movs r0, #0
	bl FUN_0203632C
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x36
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #0xe
	movs r1, #0
	lsls r0, r0, #6
	str r1, [r5, r0]
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_020329E0
	bl FUN_02032AC0
	bl FUN_0203608C
	bl FUN_02032E1C
	movs r4, #2
_02231286:
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov65_02231200

	thumb_func_start ov65_0223128C
ov65_0223128C: @ 0x0223128C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r5, r0, #0
	cmp r1, #0
	beq _022312A0
	cmp r1, #1
	beq _022312C2
	cmp r1, #0x1d
	beq _022312E4
	b _02231304
_022312A0:
	movs r0, #0xde
	movs r1, #1
	lsls r0, r0, #2
	ldr r3, _02231428 @ =0x02238AD0
	strh r1, [r5, r0]
	add r2, sp, #0x14
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	ldr r4, _0223142C @ =0x02239C7C
	movs r7, #4
	stm r2!, {r0, r1}
	b _02231304
_022312C2:
	movs r0, #0xde
	movs r1, #0
	lsls r0, r0, #2
	ldr r3, _02231428 @ =0x02238AD0
	strh r1, [r5, r0]
	add r2, sp, #0x14
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	ldr r4, _02231430 @ =0x02239C9C
	movs r7, #4
	stm r2!, {r0, r1}
	b _02231304
_022312E4:
	ldr r3, _02231434 @ =0x02238AF0
	add r2, sp, #0x14
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	movs r0, #0xde
	ldr r4, _02231438 @ =0x02239C5C
	movs r1, #2
	lsls r0, r0, #2
	movs r7, #4
	strh r1, [r5, r0]
_02231304:
	adds r0, r7, #0
	movs r1, #0x36
	bl FUN_02013A04
	movs r1, #0x55
	lsls r1, r1, #2
	movs r6, #0
	str r0, [r5, r1]
	cmp r7, #0
	ble _02231382
_02231318:
	ldr r2, [r4]
	cmp r2, #0x47
	beq _02231332
	movs r0, #0x55
	movs r1, #0x5a
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r3, [r4, #4]
	bl FUN_02013A4C
	b _0223137A
_02231332:
	movs r0, #0x59
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	adds r2, r6, #0
	bl FUN_0200C0B0
	movs r0, #0x5a
	movs r2, #0x17
	lsls r0, r0, #2
	lsls r2, r2, #4
	ldr r0, [r5, r0]
	ldr r1, [r4]
	ldr r2, [r5, r2]
	bl FUN_0200B1B8
	movs r0, #0x59
	movs r1, #0x5e
	movs r2, #0x17
	lsls r0, r0, #2
	lsls r1, r1, #2
	lsls r2, r2, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl FUN_0200C388
	movs r0, #0x55
	movs r1, #0x5e
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r4, #4]
	bl FUN_02013A6C
_0223137A:
	adds r6, r6, #1
	adds r4, #8
	cmp r6, r7
	blt _02231318
_02231382:
	movs r0, #0xc7
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A7CC
	cmp r0, #0
	beq _022313A6
	movs r0, #0xc7
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200DC9C
	movs r0, #0xc7
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
_022313A6:
	movs r1, #9
	str r1, [sp]
	movs r1, #0xf
	lsls r0, r7, #1
	str r1, [sp, #4]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #8]
	movs r1, #0xd
	str r1, [sp, #0xc]
	movs r1, #0x3b
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	movs r0, #0x57
	lsls r0, r0, #2
	movs r1, #0xc7
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	adds r1, r5, r1
	movs r2, #2
	movs r3, #0x10
	bl FUN_0201A7E8
	movs r0, #0xc7
	lsls r0, r0, #2
	ldr r2, _0223143C @ =0x000001D9
	adds r0, r5, r0
	movs r1, #1
	movs r3, #0xb
	bl FUN_0200DC48
	movs r0, #0x55
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r3, #0xc7
	lsls r3, r3, #2
	str r0, [sp, #0x14]
	adds r0, r5, r3
	adds r2, r3, #0
	str r0, [sp, #0x20]
	adds r2, #0x5c
	ldrh r2, [r5, r2]
	adds r3, #0x56
	add r0, sp, #0x14
	lsls r2, r2, #1
	adds r2, r5, r2
	ldrh r2, [r2, r3]
	movs r1, #0
	movs r3, #0x36
	bl FUN_0200112C
	movs r1, #0x56
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0xc7
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A9A4
	movs r0, #1
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_02231428: .4byte 0x02238AD0
_0223142C: .4byte 0x02239C7C
_02231430: .4byte 0x02239C9C
_02231434: .4byte 0x02238AF0
_02231438: .4byte 0x02239C5C
_0223143C: .4byte 0x000001D9
	thumb_func_end ov65_0223128C

	thumb_func_start ov65_02231440
ov65_02231440: @ 0x02231440
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r6, r1, #0
	bl ov65_022355FC
	adds r0, r5, #0
	bl ov65_02230140
	cmp r0, #0
	beq _022314A2
	movs r0, #0xd1
	movs r1, #0x13
	lsls r0, r0, #2
	str r1, [r5, r0]
	subs r0, #0x28
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200DC9C
	movs r0, #0xc7
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
	ldr r3, _0223159C @ =0x00000372
	movs r0, #0x56
	adds r2, r5, r3
	adds r3, r3, #6
	ldrh r3, [r5, r3]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	lsls r3, r3, #1
	movs r1, #0
	adds r2, r2, r3
	bl FUN_02001384
	movs r0, #0x55
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02013A3C
	adds r0, r5, #0
	bl ov65_02232DFC
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_022314A2:
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _022314B8
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_022314B8:
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02001288
	adds r4, r0, #0
	movs r0, #1
	mvns r0, r0
	cmp r4, r0
	beq _022314D6
	adds r0, r0, #1
	cmp r4, r0
	bne _022314E6
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_022314D6:
	ldr r0, _022315A0 @ =0x000005DD
	bl FUN_02005748
	movs r0, #0xd1
	movs r1, #0x24
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02231502
_022314E6:
	ldr r0, _022315A0 @ =0x000005DD
	bl FUN_02005748
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_02232E58
	movs r0, #0xd1
	movs r1, #0x13
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov65_02232DFC
_02231502:
	movs r0, #0xd1
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0x13
	bne _0223155E
	adds r0, r4, #0
	movs r7, #1
	bl ov65_0222DD64
	cmp r0, #0
	beq _02231548
	movs r0, #0xd1
	movs r1, #0x44
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	subs r1, #0x45
	adds r2, r4, #0
	bl ov65_02234FCC
	adds r0, r4, #0
	bl ov65_0222DFD4
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_02232E58
	adds r0, r4, #0
	bl ov65_0222DD94
	movs r1, #0xd2
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r7, #0
	b _02231556
_02231548:
	adds r0, r5, #0
	subs r1, r7, #2
	adds r2, r4, #0
	bl ov65_02234FCC
	bl FUN_02038B84
_02231556:
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov65_0223500C
_0223155E:
	movs r0, #0xc7
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200DC9C
	movs r0, #0xc7
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
	ldr r3, _0223159C @ =0x00000372
	movs r0, #0x56
	adds r2, r5, r3
	adds r3, r3, #6
	ldrh r3, [r5, r3]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	lsls r3, r3, #1
	movs r1, #0
	adds r2, r2, r3
	bl FUN_02001384
	movs r0, #0x55
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02013A3C
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223159C: .4byte 0x00000372
_022315A0: .4byte 0x000005DD
	thumb_func_end ov65_02231440

	thumb_func_start ov65_022315A4
ov65_022315A4: @ 0x022315A4
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r6, r1, #0
	bl ov65_02235254
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl ov65_0222E8D4
	adds r7, r0, #0
	bne _022315C6
	bl FUN_02022974
_022315C6:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov65_0222E8D4
	str r0, [sp]
	cmp r0, #0
	bne _022315F2
	adds r0, r4, #0
	subs r1, r5, #1
	bl ov65_02232DC0
	adds r0, r4, #0
	movs r1, #0x10
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1d
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_022315F2:
	adds r0, r7, #0
	bl ov65_022354E8
	adds r2, r0, #0
	movs r0, #0xe2
	lsls r0, r0, #2
	ldr r1, [sp]
	adds r0, r4, r0
	bl ov65_022354F8
	subs r7, r5, #1
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov65_02234FA8
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov65_0222DD20
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _022316EC @ =0x0000037A
	adds r1, r7, #0
	strh r5, [r4, r0]
	adds r0, r4, #0
	bl ov65_02232DC0
	cmp r5, #0xf
	bne _02231630
	movs r1, #3
	b _022316D8
_02231630:
	cmp r5, #0x13
	bne _02231638
	movs r1, #4
	b _022316D8
_02231638:
	cmp r5, #0x12
	bne _02231640
	movs r1, #0x53
	b _022316D8
_02231640:
	cmp r5, #0x15
	bne _02231648
	movs r1, #5
	b _022316D8
_02231648:
	cmp r5, #0x14
	bne _02231650
	movs r1, #0x54
	b _022316D8
_02231650:
	cmp r5, #0x17
	bne _02231666
	movs r0, #0x59
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	movs r2, #0
	bl FUN_0200C0B0
	movs r1, #6
	b _022316D8
_02231666:
	cmp r5, #0x16
	bne _0223166E
	movs r1, #0x55
	b _022316D8
_0223166E:
	cmp r5, #0x19
	bne _02231684
	movs r0, #0x59
	lsls r0, r0, #2
	movs r1, #1
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0200C0B0
	movs r1, #6
	b _022316D8
_02231684:
	cmp r5, #0x18
	bne _0223168C
	movs r1, #0x55
	b _022316D8
_0223168C:
	cmp r5, #0x1b
	bne _022316A2
	movs r0, #0x59
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	movs r2, #2
	bl FUN_0200C0B0
	movs r1, #6
	b _022316D8
_022316A2:
	cmp r5, #0x1a
	bne _022316AA
	movs r1, #0x55
	b _022316D8
_022316AA:
	adds r0, r5, #0
	bl ov65_0222DDD4
	cmp r0, #0
	beq _022316B8
	movs r1, #2
	b _022316D8
_022316B8:
	cmp r5, #8
	bne _022316C0
	movs r1, #0x52
	b _022316D8
_022316C0:
	adds r0, r5, #0
	bl ov65_0222DE40
	cmp r0, #0
	beq _022316CE
	movs r1, #0x51
	b _022316D8
_022316CE:
	cmp r5, #1
	bne _022316D6
	movs r1, #0x56
	b _022316D8
_022316D6:
	movs r1, #7
_022316D8:
	adds r0, r4, #0
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x2b
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022316EC: .4byte 0x0000037A
	thumb_func_end ov65_022315A4

	thumb_func_start ov65_022316F0
ov65_022316F0: @ 0x022316F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	adds r5, r0, #0
	str r1, [sp, #0x14]
	bl FUN_020383E8
	cmp r0, #0
	beq _0223170C
	adds r0, r5, #0
	bl ov65_0222F6EC
	ldr r0, [sp, #0x14]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0223170C:
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov65_02235254
	adds r4, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_0222E8D4
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov65_02230140
	cmp r0, #0
	beq _0223174C
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r6, #0
	bl ov65_0223556C
	adds r0, r5, #0
	bl ov65_02232DFC
	movs r0, #0xd1
	movs r1, #0x13
	lsls r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [sp, #0x14]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0223174C:
	cmp r6, #0
	bne _0223178A
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r6, #0
	bl ov65_0223556C
	movs r0, #0x56
	lsls r0, r0, #2
	movs r1, #0
	ldr r0, [r5, r0]
	adds r2, r1, #0
	bl FUN_02001384
	adds r0, r5, #0
	subs r1, r4, #1
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1d
	lsls r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [sp, #0x14]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_0223178A:
	adds r0, r5, #0
	subs r1, r4, #1
	bl ov65_02234FA8
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_0222DD20
	ldr r1, _02231968 @ =0x0000037A
	ldrh r2, [r5, r1]
	cmp r2, r0
	beq _022317CC
	adds r1, #0xe
	adds r0, r5, r1
	adds r1, r6, #0
	bl ov65_0223556C
	adds r0, r5, #0
	subs r1, r4, #1
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1d
	lsls r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [sp, #0x14]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_022317CC:
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _022317E4
	ldr r0, [sp, #0x14]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_022317E4:
	ldr r3, _0223196C @ =0x02238A90
	movs r0, #2
	str r0, [sp, #0x1c]
	add r2, sp, #0x24
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov65_02235254
	adds r1, r0, #0
	adds r0, r5, #0
	subs r1, r1, #1
	bl ov65_02234FA8
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov65_0222DD20
	adds r6, #0x21
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0xdf
	ldrb r1, [r6]
	lsls r0, r0, #2
	strh r1, [r5, r0]
	ldr r0, [r5, #4]
	adds r0, #0x21
	ldrb r0, [r0]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	movs r0, #2
	movs r1, #0x36
	bl FUN_02013A04
	movs r1, #0x55
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0
	ldr r6, _02231970 @ =0x02238968
	str r0, [sp, #0x20]
	add r7, sp, #0x24
_0223184C:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _022318C6
	adds r0, r4, #0
	bl ov65_0222DE68
	cmp r0, #0
	bne _02231868
	cmp r4, #0
	beq _02231868
	cmp r4, #0x1c
	beq _02231868
	cmp r4, #0x1d
	blo _0223187C
_02231868:
	ldrh r0, [r7, #0x12]
	subs r0, r0, #1
	strh r0, [r7, #0x12]
	ldrh r0, [r7, #0x10]
	subs r0, r0, #1
	strh r0, [r7, #0x10]
	ldr r0, [sp, #0x1c]
	subs r0, r0, #1
	str r0, [sp, #0x1c]
	b _022318DA
_0223187C:
	cmp r4, #0x10
	bne _022318B0
	ldr r0, [sp, #0x18]
	cmp r0, #2
	bne _0223189C
	movs r0, #0x55
	movs r1, #0x5a
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r3, [r6, #4]
	movs r2, #0x24
	bl FUN_02013A4C
	b _022318DA
_0223189C:
	ldrh r0, [r7, #0x12]
	subs r0, r0, #1
	strh r0, [r7, #0x12]
	ldrh r0, [r7, #0x10]
	subs r0, r0, #1
	strh r0, [r7, #0x10]
	ldr r0, [sp, #0x1c]
	subs r0, r0, #1
	str r0, [sp, #0x1c]
	b _022318DA
_022318B0:
	movs r0, #0x55
	movs r1, #0x5a
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r6]
	ldr r3, [r6, #4]
	bl FUN_02013A4C
	b _022318DA
_022318C6:
	movs r0, #0x55
	movs r1, #0x5a
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r6]
	ldr r3, [r6, #4]
	bl FUN_02013A4C
_022318DA:
	ldr r0, [sp, #0x20]
	adds r6, #8
	adds r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #2
	blo _0223184C
	ldr r0, [sp, #0x1c]
	movs r1, #3
	subs r0, r1, r0
	lsls r0, r0, #1
	adds r0, #0xb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	movs r1, #0xc7
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x3b
	str r0, [sp, #0x10]
	movs r0, #0x57
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	adds r1, r5, r1
	movs r2, #2
	movs r3, #0x10
	bl FUN_0201A7E8
	movs r0, #0xc7
	lsls r0, r0, #2
	ldr r2, _02231974 @ =0x000001D9
	adds r0, r5, r0
	movs r1, #1
	movs r3, #0xb
	bl FUN_0200DC48
	movs r0, #0x55
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	str r0, [sp, #0x24]
	movs r0, #0xc7
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [sp, #0x30]
	add r0, sp, #0x24
	adds r2, r1, #0
	movs r3, #0x36
	bl FUN_0200112C
	movs r1, #0x56
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0xc7
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A9A4
	movs r0, #0xd1
	movs r1, #0x2c
	lsls r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [sp, #0x14]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02231968: .4byte 0x0000037A
_0223196C: .4byte 0x02238A90
_02231970: .4byte 0x02238968
_02231974: .4byte 0x000001D9
	thumb_func_end ov65_022316F0

	thumb_func_start ov65_02231978
ov65_02231978: @ 0x02231978
	push {r4, r5}
	ldr r2, _022319B4 @ =0x000001EF
	movs r5, #0
	adds r1, r2, #0
	subs r1, #0x1c
	adds r3, r2, #0
_02231984:
	ldrh r4, [r0]
	cmp r4, r3
	bne _02231990
	movs r0, #0
	pop {r4, r5}
	bx lr
_02231990:
	cmp r4, r2
	bls _0223199A
	movs r0, #0
	pop {r4, r5}
	bx lr
_0223199A:
	ldrh r4, [r0, #0xc]
	cmp r4, r1
	bls _022319A6
	movs r0, #0
	pop {r4, r5}
	bx lr
_022319A6:
	adds r5, r5, #1
	adds r0, r0, #2
	cmp r5, #6
	blt _02231984
	movs r0, #1
	pop {r4, r5}
	bx lr
	.align 2, 0
_022319B4: .4byte 0x000001EF
	thumb_func_end ov65_02231978

	thumb_func_start ov65_022319B8
ov65_022319B8: @ 0x022319B8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0207D990
	movs r1, #4
	bl FUN_0207D69C
	cmp r0, #0
	bne _022319D4
	movs r0, #1
	pop {r4, pc}
_022319D4:
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0207D990
	ldr r1, _02231A08 @ =0x000001C1
	movs r2, #0x36
	bl FUN_0207D730
	cmp r0, #0
	bne _022319EE
	movs r0, #3
	pop {r4, pc}
_022319EE:
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0202AB28
	bl FUN_0202AC98
	cmp r0, #0x64
	blo _02231A04
	movs r0, #2
	pop {r4, pc}
_02231A04:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_02231A08: .4byte 0x000001C1
	thumb_func_end ov65_022319B8

	thumb_func_start ov65_02231A0C
ov65_02231A0C: @ 0x02231A0C
	push {r4, lr}
	movs r0, #0
	bl FUN_021D2584
	bl ov65_02231A54
	cmp r0, #0
	bne _02231A3E
	bl FUN_02013948
	cmp r0, #0
	bne _02231A28
	ldr r4, _02231A4C @ =0x0000043D
	b _02231A2A
_02231A28:
	ldr r4, _02231A50 @ =0x0000043E
_02231A2A:
	movs r0, #0
	bl FUN_02004234
	lsls r1, r4, #0x10
	movs r0, #0xb
	lsrs r1, r1, #0x10
	movs r2, #1
	bl FUN_02004550
	pop {r4, pc}
_02231A3E:
	bl FUN_020041FC
	movs r1, #0x78
	bl FUN_02004AD4
	pop {r4, pc}
	nop
_02231A4C: .4byte 0x0000043D
_02231A50: .4byte 0x0000043E
	thumb_func_end ov65_02231A0C

	thumb_func_start ov65_02231A54
ov65_02231A54: @ 0x02231A54
	push {r3, lr}
	bl FUN_020041FC
	ldr r1, _02231A70 @ =0x0000043D
	cmp r0, r1
	beq _02231A6A
	adds r1, r1, #1
	cmp r0, r1
	beq _02231A6A
	movs r0, #0
	pop {r3, pc}
_02231A6A:
	movs r0, #1
	pop {r3, pc}
	nop
_02231A70: .4byte 0x0000043D
	thumb_func_end ov65_02231A54

	thumb_func_start ov65_02231A74
ov65_02231A74: @ 0x02231A74
	push {r4, lr}
	movs r1, #0x16
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	bl FUN_0202B628
	adds r4, r0, #0
	movs r0, #0x36
	movs r1, #0x1d
	bl FUN_0202C244
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #4
	bl FUN_0202B758
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_02231A74

	thumb_func_start ov65_02231A98
ov65_02231A98: @ 0x02231A98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	str r1, [sp]
	movs r6, #0
	bl FUN_02001288
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov65_02230140
	cmp r0, #0
	beq _02231ABA
	subs r7, r6, #2
_02231ABA:
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov65_02235254
	adds r4, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_0222E8D4
	str r0, [sp, #0x14]
	bl FUN_020383E8
	cmp r0, #0
	beq _02231B24
	movs r0, #0xc7
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200DC9C
	movs r0, #0xc7
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
	movs r0, #0x56
	lsls r0, r0, #2
	movs r1, #0
	ldr r0, [r5, r0]
	adds r2, r1, #0
	bl FUN_02001384
	movs r0, #0x55
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02013A3C
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02231B18
	movs r0, #0xe2
	lsls r0, r0, #2
	ldr r1, [sp, #0x14]
	adds r0, r5, r0
	bl ov65_0223556C
_02231B18:
	adds r0, r5, #0
	bl ov65_0222F6EC
	ldr r0, [sp]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02231B24:
	movs r0, #1
	mvns r0, r0
	cmp r7, r0
	beq _02231BB8
	adds r0, r0, #1
	cmp r7, r0
	bne _02231BC8
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _02231B64
	movs r0, #0x56
	lsls r0, r0, #2
	movs r1, #0
	ldr r0, [r5, r0]
	adds r2, r1, #0
	bl FUN_02001384
	adds r0, r5, #0
	subs r1, r4, #1
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1d
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r6, #1
	b _02231E06
_02231B64:
	adds r0, r5, #0
	subs r1, r4, #1
	bl ov65_02234FA8
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov65_0222DD20
	ldr r1, _02231E58 @ =0x0000037A
	adds r6, #0x21
	ldrh r1, [r5, r1]
	ldrb r6, [r6]
	cmp r1, r0
	bne _02231B94
	bl ov65_0222DD64
	cmp r0, #0
	bne _02231BB2
	movs r0, #0xdf
	lsls r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r0, r6
	beq _02231BB2
_02231B94:
	adds r0, r5, #0
	subs r1, r4, #1
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1d
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r6, #1
	b _02231E06
_02231BB2:
	ldr r0, [sp]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02231BB8:
	ldr r0, _02231E5C @ =0x000005DD
	bl FUN_02005748
	movs r0, #0xd1
	movs r1, #0x13
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02231E06
_02231BC8:
	ldr r0, _02231E5C @ =0x000005DD
	bl FUN_02005748
	cmp r7, #1
	beq _02231BD4
	b _02231DFA
_02231BD4:
	movs r0, #0xd1
	movs r1, #0x13
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, #0x3a
	strh r4, [r5, r0]
	cmp r4, #0
	bne _02231BE6
	b _02231E06
_02231BE6:
	adds r0, r5, #0
	bl ov65_0222DF88
	str r0, [sp, #0x10]
	adds r0, r5, #0
	bl ov65_022319B8
	str r0, [sp, #0xc]
	adds r0, r5, #0
	subs r1, r4, #1
	bl ov65_02234FA8
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	adds r0, r5, #0
	bl ov65_0222DD20
	ldr r1, [sp, #8]
	adds r7, r0, #0
	adds r1, #0x21
	ldrb r1, [r1]
	str r1, [sp, #4]
	ldr r1, _02231E58 @ =0x0000037A
	ldrh r1, [r5, r1]
	cmp r1, r7
	bne _02231C2E
	bl ov65_0222DD64
	cmp r0, #0
	bne _02231C4C
	movs r0, #0xdf
	lsls r0, r0, #2
	ldrh r1, [r5, r0]
	ldr r0, [sp, #4]
	cmp r1, r0
	beq _02231C4C
_02231C2E:
	adds r0, r5, #0
	subs r1, r4, #1
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1d
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r6, #1
	b _02231E06
_02231C4C:
	ldr r0, [sp, #8]
	bl ov65_02231978
	cmp r0, #0
	bne _02231C74
	adds r0, r5, #0
	subs r1, r4, #1
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1d
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r6, #1
	b _02231E06
_02231C74:
	adds r0, r7, #0
	bl ov65_0222DEB0
	cmp r0, #0
	beq _02231CAA
	ldr r0, [sp, #0x10]
	cmp r0, #2
	bge _02231CAA
	cmp r7, #0xf
	bne _02231C94
	adds r0, r5, #0
	movs r1, #0x59
	movs r2, #0
	bl ov65_02232B58
	b _02231C9E
_02231C94:
	adds r0, r5, #0
	movs r1, #0x67
	movs r2, #0
	bl ov65_02232B58
_02231C9E:
	movs r0, #0xd1
	movs r1, #0x1d
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r6, #1
	b _02231E06
_02231CAA:
	cmp r7, #0x13
	bne _02231CEA
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _02231CEA
	cmp r0, #1
	bne _02231CC4
	adds r0, r5, #0
	movs r1, #0x68
	movs r2, #0
	bl ov65_02232B58
	b _02231CDE
_02231CC4:
	cmp r0, #3
	bne _02231CD4
	adds r0, r5, #0
	movs r1, #0x6a
	movs r2, #0
	bl ov65_02232B58
	b _02231CDE
_02231CD4:
	adds r0, r5, #0
	movs r1, #0x69
	movs r2, #0
	bl ov65_02232B58
_02231CDE:
	movs r0, #0xd1
	movs r1, #0x1d
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r6, #1
	b _02231E06
_02231CEA:
	adds r0, r7, #0
	bl ov65_0222DD64
	cmp r0, #0
	bne _02231D34
	ldr r0, [r5, #4]
	adds r0, #0x21
	ldrb r1, [r0]
	ldr r0, [sp, #4]
	cmp r0, r1
	beq _02231D34
	cmp r0, #0
	beq _02231D10
	adds r0, r5, #0
	movs r1, #0x86
	movs r2, #0
	bl ov65_02232B58
	b _02231D1A
_02231D10:
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #0
	bl ov65_02232B58
_02231D1A:
	adds r0, r7, #0
	bl ov65_0222DED4
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_02232E58
	movs r0, #0xd1
	movs r1, #0x3f
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r6, #1
	b _02231E06
_02231D34:
	adds r0, r7, #0
	bl ov65_0222DED4
	adds r7, r0, #0
	cmp r7, #0x1d
	beq _02231E06
	subs r0, r4, #1
	bl ov65_02234FC4
	cmp r0, #6
	bne _02231DDC
	adds r0, r5, #0
	subs r1, r4, #1
	adds r2, r7, #0
	bl ov65_02234FCC
	cmp r0, #0
	beq _02231DBE
	movs r0, #0xcf
	ldr r1, _02231E60 @ =0x00000708
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r7, #0
	bl ov65_0222DFD4
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov65_02232E58
	adds r0, r5, #0
	subs r1, r4, #1
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x11
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02231D8E
	bl FUN_02022974
_02231D8E:
	movs r1, #0xb3
	lsls r1, r1, #2
	adds r0, r5, r1
	subs r1, #0xea
	bl FUN_0200E7FC
	movs r1, #0x62
	lsls r1, r1, #2
	str r0, [r5, r1]
	cmp r7, #1
	beq _02231DAC
	movs r0, #0xd1
	movs r1, #0x2d
	lsls r0, r0, #2
	b _02231DB8
_02231DAC:
	movs r0, #0xcf
	ldr r1, _02231E60 @ =0x00000708
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r1, #0x15
	adds r0, #8
_02231DB8:
	str r1, [r5, r0]
	movs r6, #1
	b _02231E06
_02231DBE:
	adds r0, r5, #0
	subs r1, r4, #1
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1d
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r6, #1
	b _02231E06
_02231DDC:
	adds r0, r5, #0
	subs r1, r4, #1
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1d
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r6, #1
	b _02231E06
_02231DFA:
	cmp r7, #2
	bne _02231E06
	movs r0, #0xd1
	movs r1, #0x36
	lsls r0, r0, #2
	str r1, [r5, r0]
_02231E06:
	cmp r6, #0
	bne _02231E10
	adds r0, r5, #0
	bl ov65_02232DFC
_02231E10:
	movs r0, #0xc7
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200DC9C
	movs r0, #0xc7
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
	movs r0, #0x56
	lsls r0, r0, #2
	movs r1, #0
	ldr r0, [r5, r0]
	adds r2, r1, #0
	bl FUN_02001384
	movs r0, #0x55
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02013A3C
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02231E50
	movs r0, #0xe2
	lsls r0, r0, #2
	ldr r1, [sp, #0x14]
	adds r0, r5, r0
	bl ov65_0223556C
_02231E50:
	ldr r0, [sp]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02231E58: .4byte 0x0000037A
_02231E5C: .4byte 0x000005DD
_02231E60: .4byte 0x00000708
	thumb_func_end ov65_02231A98

	thumb_func_start ov65_02231E64
ov65_02231E64: @ 0x02231E64
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #0xcf
	lsls r0, r0, #2
	adds r4, r1, #0
	ldr r1, [r5, r0]
	subs r1, r1, #1
	str r1, [r5, r0]
	ldr r1, [r5, r0]
	cmp r1, #0
	bge _02231E84
	movs r1, #0x46
	adds r0, #8
	str r1, [r5, r0]
	b _02231FD8
_02231E84:
	bl FUN_020380E4
	cmp r0, #3
	bne _02231EAC
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x12
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1b
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02231FD8
_02231EAC:
	bl FUN_020380E4
	cmp r0, #5
	bne _02231ED4
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0xf
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1b
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02231FD8
_02231ED4:
	bl FUN_020380E4
	cmp r0, #4
	beq _02231EE4
	bl FUN_02038284
	cmp r0, #0
	beq _02231F04
_02231EE4:
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x12
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1b
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02231FD8
_02231F04:
	bl FUN_020383E8
	cmp r0, #0
	beq _02231F14
	adds r0, r5, #0
	bl ov65_0222F6EC
	b _02231FD8
_02231F14:
	bl FUN_020380E4
	cmp r0, #1
	bne _02231FD8
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl ov65_0222DD20
	adds r6, r0, #0
	bl ov65_0222DD64
	cmp r0, #0
	bne _02231F52
	movs r0, #0xd1
	movs r1, #0x31
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov65_02232DFC
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_020329E0
	movs r0, #0xd6
	movs r1, #0x1e
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02231FD8
_02231F52:
	movs r0, #0
	bl FUN_02035D78
	cmp r0, #1
	bne _02231FB2
	adds r0, r5, #0
	bl ov65_02232DFC
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_020329E0
	movs r0, #0
	movs r1, #1
	bl FUN_020388F4
	adds r0, r6, #0
	bl ov65_0222DFD4
	adds r0, r6, #0
	bl ov65_0222DD94
	movs r1, #0xd2
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0
	bl FUN_0203632C
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x36
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #0xe
	movs r1, #0
	lsls r0, r0, #6
	str r1, [r5, r0]
	movs r4, #2
	b _02231FD8
_02231FB2:
	bl FUN_020362C8
	cmp r0, #1
	bne _02231FD8
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x12
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1b
	lsls r0, r0, #2
	str r1, [r5, r0]
_02231FD8:
	adds r0, r4, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov65_02231E64

	thumb_func_start ov65_02231FE0
ov65_02231FE0: @ 0x02231FE0
	adds r0, r1, #0
	bx lr
	thumb_func_end ov65_02231FE0

	thumb_func_start ov65_02231FE4
ov65_02231FE4: @ 0x02231FE4
	adds r0, r1, #0
	bx lr
	thumb_func_end ov65_02231FE4

	thumb_func_start ov65_02231FE8
ov65_02231FE8: @ 0x02231FE8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov65_02232F30
	adds r0, r5, #0
	movs r1, #0x10
	bl ov65_02232E58
	bl FUN_02038378
	movs r1, #0
	movs r0, #0xdb
	mvns r1, r1
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r1, #0x13
	subs r0, #0x28
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov65_0223503C
	adds r0, r5, #0
	bl ov65_02232DFC
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_02231FE8

	thumb_func_start ov65_02232020
ov65_02232020: @ 0x02232020
	adds r0, r1, #0
	bx lr
	thumb_func_end ov65_02232020

	thumb_func_start ov65_02232024
ov65_02232024: @ 0x02232024
	adds r0, r1, #0
	bx lr
	thumb_func_end ov65_02232024

	thumb_func_start ov65_02232028
ov65_02232028: @ 0x02232028
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_02234FA8
	adds r7, r0, #0
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl ov65_0222DD20
	adds r4, r0, #0
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov65_0222DD20
	ldr r1, [r5, #4]
	adds r1, #0x21
	ldrb r1, [r1]
	cmp r4, #0xc
	bne _02232066
	cmp r0, #5
	bne _02232066
	movs r0, #0xd1
	movs r1, #0x31
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02232172
_02232066:
	cmp r4, #0xd
	bne _02232078
	cmp r0, #6
	bne _02232078
	movs r0, #0xd1
	movs r1, #0x31
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02232172
_02232078:
	cmp r4, #0xe
	bne _0223208A
	cmp r0, #7
	bne _0223208A
	movs r0, #0xd1
	movs r1, #0x31
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02232172
_0223208A:
	cmp r4, #9
	bne _0223209C
	cmp r0, #2
	bne _0223209C
	movs r0, #0xd1
	movs r1, #0x31
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02232172
_0223209C:
	cmp r4, #0xa
	bne _022320AE
	cmp r0, #3
	bne _022320AE
	movs r0, #0xd1
	movs r1, #0x31
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02232172
_022320AE:
	cmp r4, #0xb
	bne _022320C0
	cmp r0, #4
	bne _022320C0
	movs r0, #0xd1
	movs r1, #0x31
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02232172
_022320C0:
	cmp r4, #0xf
	bne _022320D2
	cmp r0, #8
	bne _022320D2
	movs r0, #0xd1
	movs r1, #0x31
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02232172
_022320D2:
	cmp r4, #0x13
	bne _022320E4
	cmp r0, #0x12
	bne _022320E4
	movs r0, #0xd1
	movs r1, #0x31
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02232172
_022320E4:
	cmp r4, #0x15
	bne _022320F6
	cmp r0, #0x14
	bne _022320F6
	movs r0, #0xd1
	movs r1, #0x31
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02232172
_022320F6:
	cmp r4, #0x17
	bne _02232108
	cmp r0, #0x16
	bne _02232108
	movs r0, #0xd1
	movs r1, #0x31
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02232172
_02232108:
	cmp r4, #0x19
	bne _0223211A
	cmp r0, #0x18
	bne _0223211A
	movs r0, #0xd1
	movs r1, #0x31
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02232172
_0223211A:
	cmp r4, #0x1b
	bne _0223212C
	cmp r0, #0x1a
	bne _0223212C
	movs r0, #0xd1
	movs r1, #0x31
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02232172
_0223212C:
	cmp r4, #0x10
	bne _02232144
	cmp r0, #1
	bne _02232144
	cmp r1, #0
	ble _02232144
	movs r0, #0xd1
	movs r1, #0x16
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232144:
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x12
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1d
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	movs r1, #0x10
	bl ov65_02232E58
	bl FUN_02038378
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232172:
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0xb
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_020329E0
	movs r0, #0xd1
	movs r1, #0x31
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r1, #0x1e
	adds r0, #0x14
	str r1, [r5, r0]
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov65_02232028

	thumb_func_start ov65_022321A8
ov65_022321A8: @ 0x022321A8
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_020380E4
	cmp r0, #3
	blt _022321D4
	movs r1, #0xdb
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	adds r0, r4, #0
	bl ov65_02232DC0
	adds r0, r4, #0
	movs r1, #0x12
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1b
	lsls r0, r0, #2
	str r1, [r4, r0]
	b _022321E8
_022321D4:
	bl FUN_020383E8
	cmp r0, #0
	beq _022321E4
	adds r0, r4, #0
	bl ov65_0222F6EC
	b _022321E8
_022321E4:
	movs r0, #0
	pop {r4, pc}
_022321E8:
	movs r0, #0xe
	movs r1, #0
	lsls r0, r0, #6
	str r1, [r4, r0]
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov65_022321A8

	thumb_func_start ov65_022321F4
ov65_022321F4: @ 0x022321F4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_020380E4
	cmp r0, #4
	bge _02232214
	bl FUN_02038284
	cmp r0, #0
	bne _02232214
	movs r0, #0
	bl FUN_02035D78
	cmp r0, #0
	bne _0223224E
_02232214:
	movs r1, #0xe
	lsls r1, r1, #6
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _0223222A
	adds r0, r5, #0
	movs r1, #0x65
	movs r2, #0
	bl ov65_02232B58
	b _0223223E
_0223222A:
	subs r1, #0x14
	ldr r1, [r5, r1]
	adds r0, r5, #0
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x12
	movs r2, #0
	bl ov65_02232B58
_0223223E:
	movs r0, #0xe
	movs r1, #0
	lsls r0, r0, #6
	str r1, [r5, r0]
	movs r1, #0x1b
	subs r0, #0x3c
	str r1, [r5, r0]
	b _02232296
_0223224E:
	adds r0, r5, #0
	bl ov65_022321A8
	cmp r0, #0
	bne _02232296
	movs r0, #0xd6
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02232286
	movs r0, #0xd
	bl FUN_02036540
	cmp r0, #0
	beq _02232296
	bl FUN_020365F4
	movs r0, #0xe
	bl FUN_020364F0
	movs r0, #0xe
	movs r1, #0
	lsls r0, r0, #6
	str r1, [r5, r0]
	movs r1, #0x32
	subs r0, #0x3c
	str r1, [r5, r0]
	b _02232296
_02232286:
	subs r1, r1, #1
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02232296
	movs r0, #0xd
	bl FUN_020364F0
_02232296:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_022321F4

	thumb_func_start ov65_0223229C
ov65_0223229C: @ 0x0223229C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov65_022321A8
	cmp r0, #0
	bne _022322D6
	movs r0, #0xe
	bl FUN_02036540
	cmp r0, #0
	beq _022322D6
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl ov65_0222DD20
	add r1, sp, #0
	strh r0, [r1]
	bl FUN_0203608C
	add r1, sp, #0
	bl FUN_02036614
	cmp r0, #0
	beq _022322D6
	movs r0, #0xd1
	movs r1, #0x33
	lsls r0, r0, #2
	str r1, [r5, r0]
_022322D6:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_0223229C

	thumb_func_start ov65_022322DC
ov65_022322DC: @ 0x022322DC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	bl FUN_0203608C
	cmp r0, #0
	bne _022322EE
	movs r0, #1
	b _022322F0
_022322EE:
	movs r0, #0
_022322F0:
	bl FUN_0203664C
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov65_022321A8
	cmp r0, #0
	bne _02232352
	cmp r4, #0
	beq _02232352
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl ov65_0222DD20
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r6, #0
	bl ov65_0222DED4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r4]
	cmp r0, r1
	beq _02232324
	cmp r0, r6
	bne _02232334
_02232324:
	movs r0, #0xf
	bl FUN_020364F0
	movs r0, #0xd1
	movs r1, #0x34
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02232352
_02232334:
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1b
	lsls r0, r0, #2
	str r1, [r5, r0]
_02232352:
	adds r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov65_022322DC

	thumb_func_start ov65_02232358
ov65_02232358: @ 0x02232358
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov65_022321A8
	cmp r0, #0
	bne _0223238A
	movs r0, #0xf
	bl FUN_02036540
	cmp r0, #0
	beq _0223238A
	bl FUN_02032AC0
	movs r0, #1
	adds r1, r0, #0
	bl FUN_020388F4
	movs r0, #0x12
	bl FUN_020364F0
	movs r0, #0xd1
	movs r1, #0x35
	lsls r0, r0, #2
	str r1, [r5, r0]
_0223238A:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_02232358

	thumb_func_start ov65_02232390
ov65_02232390: @ 0x02232390
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _022323AA
	movs r0, #1
	pop {r4, pc}
_022323AA:
	movs r0, #0xb3
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A7CC
	cmp r0, #0
	bne _022323BC
	movs r0, #1
	pop {r4, pc}
_022323BC:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov65_02232390

	thumb_func_start ov65_022323C0
ov65_022323C0: @ 0x022323C0
	push {r4, r5, lr}
	sub sp, #0x2c
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov65_022321A8
	cmp r0, #0
	bne _022323E4
	movs r0, #0x12
	bl FUN_02036540
	cmp r0, #0
	beq _022323E4
	adds r0, r5, #0
	bl ov65_02232390
	cmp r0, #1
	beq _022323E6
_022323E4:
	b _0223252A
_022323E6:
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	add r1, sp, #0xc
	movs r2, #0x36
	bl FUN_020391DC
	adds r0, r5, #0
	bl ov65_02232DFC
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_02234FA8
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_0222DD20
	adds r4, r0, #0
	cmp r4, #0xf
	beq _02232418
	cmp r4, #8
	bne _02232424
_02232418:
	movs r0, #0xd2
	movs r1, #7
	lsls r0, r0, #2
	movs r4, #8
	str r1, [r5, r0]
	b _022324FC
_02232424:
	subs r0, #0x12
	cmp r0, #1
	bhi _02232436
	movs r0, #0xd2
	movs r1, #0xb
	lsls r0, r0, #2
	movs r4, #0x12
	str r1, [r5, r0]
	b _022324FC
_02232436:
	adds r0, r4, #0
	subs r0, #0x14
	cmp r0, #1
	bhi _0223244A
	movs r0, #0xd2
	movs r1, #0xc
	lsls r0, r0, #2
	movs r4, #0x14
	str r1, [r5, r0]
	b _022324FC
_0223244A:
	adds r0, r4, #0
	subs r0, #0x16
	cmp r0, #1
	bhi _0223245E
	movs r0, #0xd2
	movs r1, #0xd
	lsls r0, r0, #2
	movs r4, #0x16
	str r1, [r5, r0]
	b _022324FC
_0223245E:
	adds r0, r4, #0
	subs r0, #0x18
	cmp r0, #1
	bhi _02232472
	movs r0, #0xd2
	movs r1, #0xe
	lsls r0, r0, #2
	movs r4, #0x18
	str r1, [r5, r0]
	b _022324FC
_02232472:
	adds r0, r4, #0
	subs r0, #0x1a
	cmp r0, #1
	bhi _02232486
	movs r0, #0xd2
	movs r1, #0xf
	lsls r0, r0, #2
	movs r4, #0x1a
	str r1, [r5, r0]
	b _022324FC
_02232486:
	cmp r4, #9
	beq _0223248E
	cmp r4, #2
	bne _0223249A
_0223248E:
	movs r0, #0xd2
	movs r1, #1
	lsls r0, r0, #2
	movs r4, #2
	str r1, [r5, r0]
	b _022324FC
_0223249A:
	cmp r4, #0xa
	beq _022324A2
	cmp r4, #3
	bne _022324AE
_022324A2:
	movs r0, #0xd2
	movs r1, #2
	lsls r0, r0, #2
	movs r4, #3
	str r1, [r5, r0]
	b _022324FC
_022324AE:
	cmp r4, #0xb
	beq _022324B6
	cmp r4, #4
	bne _022324C2
_022324B6:
	movs r0, #0xd2
	movs r1, #3
	lsls r0, r0, #2
	movs r4, #4
	str r1, [r5, r0]
	b _022324FC
_022324C2:
	cmp r4, #0xc
	beq _022324CA
	cmp r4, #5
	bne _022324D6
_022324CA:
	movs r0, #0xd2
	movs r1, #4
	lsls r0, r0, #2
	movs r4, #5
	str r1, [r5, r0]
	b _022324FC
_022324D6:
	cmp r4, #0xd
	beq _022324DE
	cmp r4, #6
	bne _022324EA
_022324DE:
	movs r0, #0xd2
	movs r1, #5
	lsls r0, r0, #2
	movs r4, #6
	str r1, [r5, r0]
	b _022324FC
_022324EA:
	cmp r4, #0xe
	beq _022324F2
	cmp r4, #7
	bne _022324FC
_022324F2:
	movs r0, #0xd2
	movs r1, #6
	lsls r0, r0, #2
	movs r4, #7
	str r1, [r5, r0]
_022324FC:
	bl FUN_021D2388
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov65_02231A74
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_02232E58
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x36
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r4, #2
_0223252A:
	adds r0, r4, #0
	add sp, #0x2c
	pop {r4, r5, pc}
	thumb_func_end ov65_022323C0

	thumb_func_start ov65_02232530
ov65_02232530: @ 0x02232530
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x57
	lsls r0, r0, #2
	adds r4, r1, #0
	ldr r0, [r5, r0]
	movs r1, #3
	bl FUN_02019EBC
	movs r0, #0x36
	movs r1, #0
	lsls r0, r0, #4
	strb r1, [r5, r0]
	bl ov65_0222EBB8
	movs r1, #0xd1
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_02232530

	thumb_func_start ov65_02232558
ov65_02232558: @ 0x02232558
	movs r2, #0xd1
	movs r3, #0x37
	lsls r2, r2, #2
	str r3, [r0, r2]
	adds r0, r1, #0
	bx lr
	thumb_func_end ov65_02232558

	thumb_func_start ov65_02232564
ov65_02232564: @ 0x02232564
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _02232580
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_02232580:
	adds r0, r5, #0
	bl ov65_0223012C
	cmp r0, #0
	beq _02232592
	movs r0, #0xd1
	movs r1, #0x38
	lsls r0, r0, #2
	str r1, [r5, r0]
_02232592:
	ldr r0, _022325A8 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _022325A4
	movs r0, #0xd1
	movs r1, #0x38
	lsls r0, r0, #2
	str r1, [r5, r0]
_022325A4:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022325A8: .4byte 0x021BF67C
	thumb_func_end ov65_02232564

	thumb_func_start ov65_022325AC
ov65_022325AC: @ 0x022325AC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov65_02232DFC
	movs r0, #0xd1
	movs r1, #0x13
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_022325AC

	thumb_func_start ov65_022325C4
ov65_022325C4: @ 0x022325C4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _022325FE
	movs r2, #0x57
	movs r0, #0x36
	lsls r2, r2, #2
	str r0, [sp]
	ldr r0, [r5, r2]
	ldr r1, _02232604 @ =0x0223894C
	adds r2, #0x7d
	movs r3, #0xb
	bl FUN_02002100
	movs r1, #0x61
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0xd1
	movs r1, #0x3a
	lsls r0, r0, #2
	str r1, [r5, r0]
_022325FE:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02232604: .4byte 0x0223894C
	thumb_func_end ov65_022325C4

	thumb_func_start ov65_02232608
ov65_02232608: @ 0x02232608
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x61
	lsls r0, r0, #2
	adds r6, r1, #0
	ldr r0, [r5, r0]
	movs r1, #0x36
	bl FUN_02002114
	adds r4, r0, #0
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _02232632
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
_02232632:
	adds r0, r5, #0
	bl ov65_02230140
	cmp r0, #0
	beq _02232654
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	bne _02232650
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x36
	bl FUN_02002154
_02232650:
	movs r4, #1
	mvns r4, r4
_02232654:
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	bne _02232660
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
_02232660:
	cmp r4, #0
	bne _0223267E
	adds r0, r5, #0
	movs r1, #0x1a
	movs r2, #1
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x3b
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r1, #1
	adds r0, #0x14
	str r1, [r5, r0]
	b _02232692
_0223267E:
	adds r0, r5, #0
	bl ov65_02232DFC
	movs r0, #0xd1
	movs r1, #0x13
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov65_0223503C
_02232692:
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov65_02232608

	thumb_func_start ov65_02232698
ov65_02232698: @ 0x02232698
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _022326B4
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_022326B4:
	movs r0, #0xd6
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #1
	bne _022326C6
	movs r1, #0
	str r1, [r5, r0]
	bl FUN_02038350
_022326C6:
	bl FUN_02036780
	cmp r0, #0
	bne _022326EC
	ldr r0, [r5]
	bl FUN_0202B0F8
	adds r0, r5, #0
	movs r1, #0x1b
	movs r2, #1
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x3c
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r1, #0x1e
	adds r0, #0x14
	str r1, [r5, r0]
_022326EC:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_02232698

	thumb_func_start ov65_022326F0
ov65_022326F0: @ 0x022326F0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _0223270C
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_0223270C:
	movs r1, #0xd6
	lsls r1, r1, #2
	ldr r0, [r5, r1]
	subs r0, r0, #1
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _02232730
	adds r0, r1, #0
	movs r2, #8
	subs r0, #0x10
	str r2, [r5, r0]
	movs r0, #0x22
	subs r1, #0x14
	str r0, [r5, r1]
	adds r0, r5, #0
	bl ov65_02232DFC
_02232730:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_022326F0

	thumb_func_start ov65_02232734
ov65_02232734: @ 0x02232734
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x10
	adds r4, r1, #0
	bl FUN_02036540
	cmp r0, #0
	bne _02232748
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_02232748:
	movs r0, #0
	movs r1, #1
	bl FUN_020388F4
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _02232784
	movs r2, #0x57
	movs r0, #0x36
	lsls r2, r2, #2
	str r0, [sp]
	ldr r0, [r5, r2]
	ldr r1, _02232788 @ =0x0223894C
	adds r2, #0x7d
	movs r3, #0xb
	bl FUN_02002100
	movs r1, #0x61
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0xd1
	movs r1, #0x3e
	lsls r0, r0, #2
	str r1, [r5, r0]
_02232784:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02232788: .4byte 0x0223894C
	thumb_func_end ov65_02232734

	thumb_func_start ov65_0223278C
ov65_0223278C: @ 0x0223278C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _022327A8
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_022327A8:
	bl FUN_02038294
	cmp r0, #0
	bne _022327C0
	bl FUN_02038284
	cmp r0, #0
	bne _022327C0
	bl FUN_020380E4
	cmp r0, #3
	blt _022327E0
_022327C0:
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x36
	bl FUN_02002154
	adds r0, r5, #0
	movs r1, #0x65
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1c
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02232886
_022327E0:
	bl FUN_020383E8
	cmp r0, #0
	beq _022327FC
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x36
	bl FUN_02002154
	adds r0, r5, #0
	bl ov65_0222F6EC
	b _02232886
_022327FC:
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x36
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _02232814
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_02232814:
	cmp r0, #0
	bne _0223285A
	adds r0, r5, #0
	movs r1, #0x8a
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02232830
	bl FUN_02022974
_02232830:
	movs r1, #0xb3
	lsls r1, r1, #2
	adds r0, r5, r1
	subs r1, #0xea
	bl FUN_0200E7FC
	movs r1, #0x62
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r1, #0xe
	movs r0, #1
	lsls r1, r1, #6
	str r0, [r5, r1]
	adds r0, r1, #0
	movs r2, #0x31
	subs r0, #0x3c
	str r2, [r5, r0]
	movs r0, #0x1e
	subs r1, #0x28
	str r0, [r5, r1]
	b _02232876
_0223285A:
	adds r0, r5, #0
	bl ov65_02232DFC
	bl FUN_02032A70
	bl FUN_020383D4
	movs r0, #0xd6
	movs r1, #0x14
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r1, #0x41
	subs r0, #0x14
	str r1, [r5, r0]
_02232876:
	bl FUN_020388E8
	adds r1, r0, #0
	str r0, [r5, #4]
	adds r1, #0x22
	ldrb r1, [r1]
	adds r0, #0x21
	strb r1, [r0]
_02232886:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_0223278C

	thumb_func_start ov65_0223288C
ov65_0223288C: @ 0x0223288C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r6, r1, #0
	bl ov65_02235254
	adds r4, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_0222E8D4
	cmp r0, #0
	bne _022328C8
	adds r0, r5, #0
	subs r1, r4, #1
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1d
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_022328C8:
	adds r0, r5, #0
	subs r1, r4, #1
	bl ov65_02234FA8
	adds r7, r0, #0
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov65_0222DD20
	ldr r2, _02232944 @ =0x0000037A
	adds r7, #0x21
	ldrh r3, [r5, r2]
	ldrb r1, [r7]
	cmp r3, r0
	bne _022328EE
	adds r0, r2, #2
	ldrh r0, [r5, r0]
	cmp r0, r1
	beq _0223290C
_022328EE:
	adds r0, r5, #0
	subs r1, r4, #1
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1d
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223290C:
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _02232940
	movs r2, #0x57
	movs r0, #0x36
	lsls r2, r2, #2
	str r0, [sp]
	ldr r0, [r5, r2]
	ldr r1, _02232948 @ =0x0223894C
	adds r2, #0x7d
	movs r3, #0xb
	bl FUN_02002100
	movs r1, #0x61
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0xd1
	movs r1, #0x40
	lsls r0, r0, #2
	str r1, [r5, r0]
_02232940:
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02232944: .4byte 0x0000037A
_02232948: .4byte 0x0223894C
	thumb_func_end ov65_0223288C

	thumb_func_start ov65_0223294C
ov65_0223294C: @ 0x0223294C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r4, r1, #0
	bl ov65_02235254
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov65_0222E8D4
	cmp r0, #0
	bne _02232994
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x36
	bl FUN_02002154
	adds r0, r5, #0
	subs r1, r6, #1
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1d
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232994:
	adds r0, r5, #0
	subs r1, r6, #1
	bl ov65_02234FA8
	adds r7, r0, #0
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov65_0222DD20
	ldr r2, _02232B1C @ =0x0000037A
	adds r7, #0x21
	ldrh r3, [r5, r2]
	ldrb r1, [r7]
	cmp r3, r0
	bne _022329BA
	adds r0, r2, #2
	ldrh r0, [r5, r0]
	cmp r0, r1
	beq _022329E4
_022329BA:
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x36
	bl FUN_02002154
	adds r0, r5, #0
	subs r1, r6, #1
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0xd1
	movs r1, #0x1d
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_022329E4:
	bl FUN_020380E4
	cmp r0, #3
	blt _02232A12
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x36
	bl FUN_02002154
	adds r0, r5, #0
	movs r1, #0x12
	movs r2, #0
	bl ov65_02232B58
	bl FUN_02038378
	movs r0, #0xd1
	movs r1, #0x1d
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232A12:
	bl FUN_020383E8
	cmp r0, #0
	beq _02232A2E
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x36
	bl FUN_02002154
	adds r0, r5, #0
	bl ov65_0222F6EC
	b _02232B18
_02232A2E:
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x36
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _02232A46
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232A46:
	cmp r0, #0
	bne _02232AF2
	ldr r0, _02232B1C @ =0x0000037A
	ldrh r0, [r5, r0]
	bl ov65_0222DED4
	adds r6, r0, #0
	cmp r6, #0x1d
	beq _02232AF2
	ldr r0, _02232B20 @ =0x0000037E
	ldrh r0, [r5, r0]
	subs r0, r0, #1
	bl ov65_02234FC4
	cmp r0, #6
	bne _02232AF2
	adds r0, r5, #0
	bl ov65_02232EDC
	ldr r1, _02232B20 @ =0x0000037E
	adds r0, r5, #0
	ldrh r1, [r5, r1]
	adds r2, r6, #0
	subs r1, r1, #1
	bl ov65_02234FCC
	cmp r0, #0
	beq _02232AF2
	movs r0, #0xcf
	ldr r1, _02232B24 @ =0x00000708
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r6, #0
	bl ov65_0222DFD4
	movs r0, #0
	bl FUN_0203632C
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov65_02232E58
	ldr r1, _02232B20 @ =0x0000037E
	adds r0, r5, #0
	ldrh r1, [r5, r1]
	subs r1, r1, #1
	bl ov65_02232DC0
	adds r0, r5, #0
	movs r1, #0x11
	movs r2, #0
	bl ov65_02232B58
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02232ABE
	bl FUN_02022974
_02232ABE:
	movs r1, #0xb3
	lsls r1, r1, #2
	adds r0, r5, r1
	subs r1, #0xea
	bl FUN_0200E7FC
	movs r1, #0x62
	lsls r1, r1, #2
	str r0, [r5, r1]
	cmp r6, #1
	beq _02232AE0
	movs r0, #0xd1
	movs r1, #0x2d
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232AE0:
	movs r0, #0xcf
	ldr r1, _02232B24 @ =0x00000708
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r1, #0x15
	adds r0, #8
	str r1, [r5, r0]
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232AF2:
	adds r0, r5, #0
	bl ov65_02232DFC
	adds r0, r5, #0
	movs r1, #0x10
	bl ov65_02232E58
	adds r0, r5, #0
	bl ov65_02232F30
	adds r0, r5, #0
	bl ov65_0222FD70
	movs r0, #0xd1
	movs r1, #0x13
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232B18:
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02232B1C: .4byte 0x0000037A
_02232B20: .4byte 0x0000037E
_02232B24: .4byte 0x00000708
	thumb_func_end ov65_0223294C

	thumb_func_start ov65_02232B28
ov65_02232B28: @ 0x02232B28
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r1, #0
	bl FUN_02036780
	cmp r0, #0
	bne _02232B50
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x36
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r4, #2
_02232B50:
	adds r0, r4, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov65_02232B28

	thumb_func_start ov65_02232B58
ov65_02232B58: @ 0x02232B58
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_02025E44
	bl FUN_02027AC0
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov65_02232F50
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A7CC
	cmp r0, #0
	beq _02232B9C
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200E084
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
_02232B9C:
	movs r0, #0xb3
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A7CC
	cmp r0, #0
	beq _02232BC0
	movs r0, #0xb3
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200E084
	movs r0, #0xb3
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
_02232BC0:
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	cmp r0, #8
	beq _02232BEC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _02232BEC
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D730
	movs r0, #6
	movs r1, #8
	lsls r0, r0, #6
	str r1, [r5, r0]
_02232BEC:
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, _02232CA4 @ =0x0000012D
	movs r1, #0xb3
	str r0, [sp, #0x10]
	adds r0, #0x2f
	lsls r1, r1, #2
	movs r2, #2
	ldr r0, [r5, r0]
	adds r1, r5, r1
	adds r3, r2, #0
	bl FUN_0201A7E8
	cmp r6, #0
	beq _02232C28
	movs r2, #0x5b
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, r2, #4
	ldr r2, [r5, r2]
	adds r1, r4, #0
	bl FUN_0200B1B8
	b _02232C38
_02232C28:
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #8
	ldr r2, [r5, r2]
	adds r1, r4, #0
	bl FUN_0200B1B8
_02232C38:
	movs r2, #0x59
	lsls r2, r2, #2
	adds r1, r2, #0
	ldr r0, [r5, r2]
	adds r1, #0x10
	adds r2, #0xc
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl FUN_0200C388
	movs r0, #0xb3
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r2, #0xb3
	lsls r2, r2, #2
	adds r0, r5, r2
	movs r1, #1
	subs r2, #0xea
	movs r3, #0xa
	bl FUN_0200E060
	movs r0, #1
	bl FUN_02002AC8
	movs r0, #0
	bl FUN_02002AE4
	movs r3, #0
	str r3, [sp]
	str r7, [sp, #4]
	movs r2, #0x5d
	movs r0, #0xb3
	lsls r0, r0, #2
	str r3, [sp, #8]
	lsls r2, r2, #2
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r1, #1
	bl FUN_0201D738
	movs r1, #6
	lsls r1, r1, #6
	str r0, [r5, r1]
	movs r0, #0xb3
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02232CA4: .4byte 0x0000012D
	thumb_func_end ov65_02232B58

	thumb_func_start ov65_02232CA8
ov65_02232CA8: @ 0x02232CA8
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov65_02232F50
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A7CC
	cmp r0, #0
	beq _02232CD8
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200E084
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
_02232CD8:
	movs r0, #0xb3
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A7CC
	cmp r0, #0
	beq _02232CFC
	movs r0, #0xb3
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200E084
	movs r0, #0xb3
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
_02232CFC:
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	cmp r0, #8
	beq _02232D28
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _02232D28
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D730
	movs r0, #6
	movs r1, #8
	lsls r0, r0, #6
	str r1, [r5, r0]
_02232D28:
	movs r3, #4
	str r3, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	movs r0, #0xc
	str r0, [sp, #0xc]
	movs r0, #0x69
	str r0, [sp, #0x10]
	adds r0, #0xf3
	movs r1, #0xbf
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	adds r1, r5, r1
	movs r2, #2
	bl FUN_0201A7E8
	movs r2, #0x5b
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, r2, #4
	ldr r2, [r5, r2]
	adds r1, r4, #0
	bl FUN_0200B1B8
	movs r2, #0x59
	lsls r2, r2, #2
	adds r1, r2, #0
	ldr r0, [r5, r2]
	adds r1, #0x10
	adds r2, #0xc
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl FUN_0200C388
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #0xbf
	lsls r0, r0, #2
	ldr r2, _02232DBC @ =0x000001D9
	adds r0, r5, r0
	movs r1, #1
	movs r3, #0xb
	bl FUN_0200DC48
	movs r3, #0
	movs r0, #0xbf
	lsls r0, r0, #2
	str r3, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	str r3, [sp, #8]
	adds r2, #0x75
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r1, #1
	bl FUN_0201D738
	movs r1, #6
	lsls r1, r1, #6
	str r0, [r5, r1]
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A9A4
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02232DBC: .4byte 0x000001D9
	thumb_func_end ov65_02232CA8

	thumb_func_start ov65_02232DC0
ov65_02232DC0: @ 0x02232DC0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0
	adds r6, r1, #0
	mvns r0, r0
	cmp r6, r0
	beq _02232DFA
	movs r0, #0x36
	bl FUN_02025E6C
	adds r4, r0, #0
	ldr r0, [r5]
	adds r1, r6, #0
	bl FUN_0202AEF0
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_02025EC0
	movs r0, #0x59
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	adds r2, r4, #0
	bl FUN_0200B498
	adds r0, r4, #0
	bl FUN_020181C4
_02232DFA:
	pop {r4, r5, r6, pc}
	thumb_func_end ov65_02232DC0

	thumb_func_start ov65_02232DFC
ov65_02232DFC: @ 0x02232DFC
	push {r4, lr}
	adds r4, r0, #0
	bl ov65_02232F50
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #8
	beq _02232E30
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _02232E30
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D730
	movs r0, #6
	movs r1, #8
	lsls r0, r0, #6
	str r1, [r4, r0]
_02232E30:
	movs r0, #0xb3
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A7CC
	cmp r0, #0
	beq _02232E54
	movs r0, #0xb3
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	bl FUN_0200E084
	movs r0, #0xb3
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A8FC
_02232E54:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_02232DFC

	thumb_func_start ov65_02232E58
ov65_02232E58: @ 0x02232E58
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #4]
	cmp r2, #0
	beq _02232E6E
	bl ov65_02232E70
	ldr r0, [r4, #4]
	movs r1, #0x24
	bl FUN_021D222C
_02232E6E:
	pop {r4, pc}
	thumb_func_end ov65_02232E58

	thumb_func_start ov65_02232E70
ov65_02232E70: @ 0x02232E70
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #4]
	cmp r1, #0
	beq _02232EDA
	bl ov65_0222DD20
	cmp r0, r4
	beq _02232ED4
	ldr r0, [r5, #4]
	strb r4, [r0, #0x1b]
	adds r0, r4, #0
	bl ov65_0222DE40
	cmp r0, #0
	bne _02232ED4
	cmp r4, #8
	beq _02232ED4
	cmp r4, #0x14
	beq _02232ED4
	cmp r4, #0x16
	beq _02232ED4
	cmp r4, #0x18
	beq _02232ED4
	cmp r4, #0x1a
	beq _02232ED4
	cmp r4, #0x12
	beq _02232ED4
	cmp r4, #1
	bne _02232EB8
	movs r0, #0
	movs r1, #0x1e
	bl FUN_0200564C
	b _02232ED4
_02232EB8:
	cmp r4, #0x10
	bne _02232ED4
	movs r0, #0
	bl FUN_021D2584
	bl ov65_02231A54
	cmp r0, #1
	bne _02232ED4
	movs r0, #0x78
	movs r1, #0x1e
	movs r2, #1
	bl FUN_0200560C
_02232ED4:
	adds r0, r5, #0
	bl ov65_0222FD70
_02232EDA:
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_02232E70

	thumb_func_start ov65_02232EDC
ov65_02232EDC: @ 0x02232EDC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #4]
	adds r0, r2, #0
	adds r0, #0x21
	ldrb r1, [r0]
	movs r0, #1
	adds r2, #0x21
	subs r0, r0, r1
	strb r0, [r2]
	ldr r0, [r4, #4]
	movs r1, #0x24
	bl FUN_021D222C
	ldr r0, [r4, #4]
	adds r0, #0x21
	ldrb r0, [r0]
	pop {r4, pc}
	thumb_func_end ov65_02232EDC

	thumb_func_start ov65_02232F00
ov65_02232F00: @ 0x02232F00
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #4]
	adds r0, r2, #0
	adds r0, #0x22
	ldrb r1, [r0]
	movs r0, #1
	adds r2, #0x22
	subs r0, r0, r1
	strb r0, [r2]
	ldr r1, [r4, #4]
	adds r0, r1, #0
	adds r0, #0x22
	ldrb r0, [r0]
	adds r1, #0x21
	strb r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #0x24
	bl FUN_021D222C
	ldr r0, [r4, #4]
	adds r0, #0x22
	ldrb r0, [r0]
	pop {r4, pc}
	thumb_func_end ov65_02232F00

	thumb_func_start ov65_02232F30
ov65_02232F30: @ 0x02232F30
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	adds r0, r1, #0
	adds r0, #0x22
	ldrb r0, [r0]
	adds r1, #0x21
	strb r0, [r1]
	ldr r0, [r4, #4]
	movs r1, #0x24
	bl FUN_021D222C
	ldr r0, [r4, #4]
	adds r0, #0x22
	ldrb r0, [r0]
	pop {r4, pc}
	thumb_func_end ov65_02232F30

	thumb_func_start ov65_02232F50
ov65_02232F50: @ 0x02232F50
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02232F8E
	bl FUN_0200EBC8
	movs r0, #0x62
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	movs r0, #0xb3
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A7CC
	cmp r0, #0
	beq _02232F8E
	movs r0, #0xb3
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	bl FUN_0200E084
	movs r0, #0xb3
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A8FC
_02232F8E:
	pop {r4, pc}
	thumb_func_end ov65_02232F50

	thumb_func_start ov65_02232F90
ov65_02232F90: @ 0x02232F90
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov65_0223324C
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov65_02235370
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_022336A4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_02232F90

	thumb_func_start ov65_02232FB0
ov65_02232FB0: @ 0x02232FB0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl ov65_02233240
	cmp r4, r0
	bne _02232FC8
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov65_02232F90
_02232FC8:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov65_02232FB0

	thumb_func_start ov65_02232FCC
ov65_02232FCC: @ 0x02232FCC
	ldr r1, _02232FDC @ =0x00000B64
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02232FD8
	movs r0, #1
	bx lr
_02232FD8:
	movs r0, #0
	bx lr
	.align 2, 0
_02232FDC: .4byte 0x00000B64
	thumb_func_end ov65_02232FCC

	thumb_func_start ov65_02232FE0
ov65_02232FE0: @ 0x02232FE0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _02233058 @ =0x00000B18
	adds r4, r2, #0
	movs r2, #0x92
	adds r6, r1, #0
	adds r0, r5, r0
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020D5124
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF74
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, _0223305C @ =0x02238AB0
	ldr r2, _02233060 @ =ov65_022332C4
	movs r1, #8
	adds r3, r5, #0
	str r4, [sp]
	bl FUN_02023FCC
	ldr r1, _02233064 @ =0x00000B64
	str r0, [r5, r1]
	adds r0, r4, #0
	bl FUN_0200B358
	ldr r1, _02233058 @ =0x00000B18
	adds r2, r4, #0
	str r0, [r5, r1]
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov65_022332FC
	movs r0, #0xb9
	movs r1, #1
	lsls r0, r0, #4
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov65_022336D4
	adds r0, r5, #0
	bl ov65_0223370C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02233058: .4byte 0x00000B18
_0223305C: .4byte 0x02238AB0
_02233060: .4byte ov65_022332C4
_02233064: .4byte 0x00000B64
	thumb_func_end ov65_02232FE0

	thumb_func_start ov65_02233068
ov65_02233068: @ 0x02233068
	push {r4, lr}
	adds r4, r0, #0
	bl ov65_02232FCC
	cmp r0, #0
	beq _022330B6
	adds r0, r4, #0
	bl ov65_02233570
	ldr r0, _022330B8 @ =0x00000B64
	ldr r0, [r4, r0]
	bl FUN_02024034
	ldr r0, _022330B8 @ =0x00000B64
	movs r1, #0
	str r1, [r4, r0]
	subs r0, #0x4c
	ldr r0, [r4, r0]
	bl FUN_0200B3F0
	ldr r0, _022330BC @ =0x00000B18
	movs r1, #0
	str r1, [r4, r0]
	movs r0, #1
	adds r1, r0, #0
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
_022330B6:
	pop {r4, pc}
	.align 2, 0
_022330B8: .4byte 0x00000B64
_022330BC: .4byte 0x00000B18
	thumb_func_end ov65_02233068

	thumb_func_start ov65_022330C0
ov65_022330C0: @ 0x022330C0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r6, r1, #0
	bl ov65_02235270
	adds r5, r0, #0
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov65_022352CC
	cmp r0, #3
	blo _022330E6
	cmp r0, #6
	bhi _022330E6
	adds r5, r0, #0
_022330E6:
	cmp r5, #3
	blo _02233110
	cmp r5, #6
	bhi _02233110
	ldr r0, _022331C8 @ =0x00000B88
	subs r1, r5, #3
	ldrb r2, [r4, r0]
	cmp r2, r1
	beq _02233110
	strb r1, [r4, r0]
	ldr r0, _022331CC @ =0x000005E1
	bl FUN_02005748
	adds r0, r4, #0
	bl ov65_022336D4
	ldr r0, _022331D0 @ =0x00000B8D
	movs r1, #1
	strb r1, [r4, r0]
	adds r0, r0, #3
	str r1, [r4, r0]
_02233110:
	ldr r0, _022331D4 @ =0x00000B8B
	ldrb r1, [r4, r0]
	cmp r1, #1
	bne _02233130
	movs r1, #2
	strb r1, [r4, r0]
	movs r1, #0
	adds r0, r0, #1
	strb r1, [r4, r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov65_02233874
	adds r0, r4, #0
	bl ov65_02234D6C
_02233130:
	ldr r0, _022331D4 @ =0x00000B8B
	ldrb r1, [r4, r0]
	cmp r1, #0
	bne _0223315A
	subs r0, #0x27
	ldr r0, [r4, r0]
	bl FUN_0202404C
	adds r0, r4, #0
	bl ov65_02234A10
	ldr r0, _022331D0 @ =0x00000B8D
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0223315A
	adds r0, r4, #0
	bl ov65_0223370C
	ldr r0, _022331D0 @ =0x00000B8D
	movs r1, #0
	strb r1, [r4, r0]
_0223315A:
	ldr r0, _022331D4 @ =0x00000B8B
	ldrb r0, [r4, r0]
	adds r0, #0xfe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _022331C2
	adds r0, r4, #0
	bl ov65_02234DD8
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov65_02233208
	cmp r0, #1
	bne _022331A8
	ldr r1, _022331D8 @ =0x00000B89
	movs r3, #1
	ldrb r2, [r4, r1]
	adds r0, r1, #6
	strb r2, [r4, r0]
	movs r0, #0
	strb r0, [r4, r1]
	adds r2, r1, #1
	strb r0, [r4, r2]
	adds r2, r1, #4
	strb r3, [r4, r2]
	adds r2, r1, #7
	str r3, [r4, r2]
	adds r1, r1, #2
	strb r0, [r4, r1]
	adds r0, r4, #0
	bl ov65_02234DA0
	ldr r0, _022331DC @ =0x000005DD
	bl FUN_02005748
	b _022331C2
_022331A8:
	cmp r5, #0
	beq _022331C2
	ldr r0, _022331DC @ =0x000005DD
	bl FUN_02005748
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov65_0223327C
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov65_02233874
_022331C2:
	ldr r0, _022331D8 @ =0x00000B89
	ldrb r0, [r4, r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
_022331C8: .4byte 0x00000B88
_022331CC: .4byte 0x000005E1
_022331D0: .4byte 0x00000B8D
_022331D4: .4byte 0x00000B8B
_022331D8: .4byte 0x00000B89
_022331DC: .4byte 0x000005DD
	thumb_func_end ov65_022330C0

	thumb_func_start ov65_022331E0
ov65_022331E0: @ 0x022331E0
	push {r4, lr}
	ldr r1, _02233200 @ =0x00000B8B
	adds r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #0
	bne _022331FE
	adds r1, r1, #2
	ldrb r1, [r4, r1]
	cmp r1, #1
	bne _022331FE
	bl ov65_0223370C
	ldr r0, _02233204 @ =0x00000B8D
	movs r1, #0
	strb r1, [r4, r0]
_022331FE:
	pop {r4, pc}
	.align 2, 0
_02233200: .4byte 0x00000B8B
_02233204: .4byte 0x00000B8D
	thumb_func_end ov65_022331E0

	thumb_func_start ov65_02233208
ov65_02233208: @ 0x02233208
	ldr r2, _02233234 @ =0x00000B8B
	ldrb r0, [r0, r2]
	cmp r0, #3
	bne _02233214
	movs r0, #0
	bx lr
_02233214:
	ldr r2, _02233238 @ =0x021BF67C
	movs r0, #0xf0
	ldr r3, [r2, #0x44]
	tst r0, r3
	bne _0223322A
	ldr r2, [r2, #0x48]
	ldr r0, _0223323C @ =0x00000403
	tst r0, r2
	bne _0223322A
	cmp r1, #2
	bne _0223322E
_0223322A:
	movs r0, #1
	bx lr
_0223322E:
	movs r0, #0
	bx lr
	nop
_02233234: .4byte 0x00000B8B
_02233238: .4byte 0x021BF67C
_0223323C: .4byte 0x00000403
	thumb_func_end ov65_02233208

	thumb_func_start ov65_02233240
ov65_02233240: @ 0x02233240
	ldr r1, _02233248 @ =0x00000B89
	ldrb r0, [r0, r1]
	bx lr
	nop
_02233248: .4byte 0x00000B89
	thumb_func_end ov65_02233240

	thumb_func_start ov65_0223324C
ov65_0223324C: @ 0x0223324C
	push {r4, lr}
	adds r4, r0, #0
	bl ov65_02232FCC
	cmp r0, #1
	bne _02233276
	ldr r0, _02233278 @ =0x00000B89
	movs r2, #0
	strb r2, [r4, r0]
	adds r1, r0, #1
	strb r2, [r4, r1]
	adds r1, r0, #2
	strb r2, [r4, r1]
	adds r1, r0, #4
	movs r2, #1
	strb r2, [r4, r1]
	adds r0, r0, #7
	str r2, [r4, r0]
	adds r0, r4, #0
	bl ov65_02234DA0
_02233276:
	pop {r4, pc}
	.align 2, 0
_02233278: .4byte 0x00000B89
	thumb_func_end ov65_0223324C

	thumb_func_start ov65_0223327C
ov65_0223327C: @ 0x0223327C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl ov65_0222DCE0
	cmp r0, #1
	bne _0223328E
	movs r1, #7
	b _02233290
_0223328E:
	movs r1, #2
_02233290:
	cmp r5, #3
	bne _022332A4
	ldr r0, _022332C0 @ =0x00000B8C
	ldrsb r0, [r4, r0]
	adds r0, r0, #1
	blx FUN_020E2178
	ldr r0, _022332C0 @ =0x00000B8C
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_022332A4:
	ldr r2, _022332C0 @ =0x00000B8C
	ldrsb r3, [r4, r2]
	adds r0, r4, r2
	subs r3, r3, #1
	strb r3, [r0]
	ldrsb r2, [r4, r2]
	cmp r2, #0
	bge _022332BC
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r1, r2, r1
	strb r1, [r0]
_022332BC:
	pop {r3, r4, r5, pc}
	nop
_022332C0: .4byte 0x00000B8C
	thumb_func_end ov65_0223327C

	thumb_func_start ov65_022332C4
ov65_022332C4: @ 0x022332C4
	push {r3, r4, r5, lr}
	ldr r4, _022332F4 @ =0x00000B88
	ldrb r3, [r2, r4]
	lsls r3, r3, #3
	adds r0, r0, r3
	adds r3, r4, #0
	adds r5, r2, r0
	subs r3, #0x20
	ldrb r3, [r5, r3]
	cmp r3, #2
	bne _022332F2
	adds r3, r4, #1
	ldrb r3, [r2, r3]
	cmp r3, #0
	bne _022332F2
	cmp r1, #0
	bne _022332F2
	adds r1, r0, #1
	adds r0, r4, #1
	strb r1, [r2, r0]
	ldr r0, _022332F8 @ =0x000005DD
	bl FUN_02005748
_022332F2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_022332F4: .4byte 0x00000B88
_022332F8: .4byte 0x000005DD
	thumb_func_end ov65_022332C4

	thumb_func_start ov65_022332FC
ov65_022332FC: @ 0x022332FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	adds r7, r0, #0
	movs r0, #0x57
	lsls r0, r0, #2
	str r1, [sp, #0x14]
	ldr r0, [r7, r0]
	movs r1, #4
	str r2, [sp, #0x18]
	bl FUN_02019EBC
	movs r0, #0x80
	str r0, [sp]
	ldr r0, [sp, #0x18]
	movs r1, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	movs r2, #4
	movs r3, #0
	bl FUN_02007130
	movs r0, #0xa0
	str r0, [sp]
	ldr r0, [sp, #0x18]
	movs r1, #0x13
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	movs r2, #4
	movs r3, #0x80
	bl FUN_02007130
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	movs r2, #0x57
	str r0, [sp, #0xc]
	lsls r2, r2, #2
	ldr r0, [sp, #0x14]
	ldr r2, [r7, r2]
	movs r1, #0xf
	movs r3, #4
	bl FUN_020070E8
	movs r0, #0x30
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	movs r2, #0x57
	str r0, [sp, #0xc]
	lsls r2, r2, #2
	ldr r0, [sp, #0x14]
	ldr r2, [r7, r2]
	movs r1, #0x12
	movs r3, #6
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	movs r2, #0x57
	str r0, [sp, #0xc]
	lsls r2, r2, #2
	ldr r0, [sp, #0x14]
	ldr r2, [r7, r2]
	movs r1, #0x11
	movs r3, #4
	bl FUN_0200710C
	ldr r0, [sp, #0x18]
	movs r3, #0xb2
	str r0, [sp]
	lsls r3, r3, #4
	ldr r0, [sp, #0x14]
	movs r1, #0x14
	movs r2, #0
	adds r3, r7, r3
	bl FUN_020071D0
	ldr r1, _0223355C @ =0x00000B1C
	str r0, [r7, r1]
	adds r0, r1, #4
	ldr r0, [r7, r0]
	movs r1, #0x30
	bl ov65_022335F8
	movs r0, #0x2d
	lsls r0, r0, #6
	movs r6, #0
	adds r5, r7, r0
	adds r4, r7, #0
_022333BC:
	ldr r0, [sp, #0x18]
	adds r1, r6, #0
	str r0, [sp]
	ldr r0, [sp, #0x14]
	adds r1, #0x15
	movs r2, #0
	adds r3, r5, #0
	bl FUN_020071D0
	ldr r1, _02233560 @ =0x00000B24
	str r0, [r4, r1]
	adds r0, r1, #0
	adds r0, #0x1c
	ldr r0, [r4, r0]
	movs r1, #0x30
	bl ov65_022335F8
	adds r6, r6, #1
	adds r5, r5, #4
	adds r4, r4, #4
	cmp r6, #7
	blt _022333BC
	ldr r0, [sp, #0x18]
	movs r3, #0xb6
	str r0, [sp]
	lsls r3, r3, #4
	ldr r0, [sp, #0x14]
	movs r1, #0x1c
	movs r2, #0
	adds r3, r7, r3
	bl FUN_020071D0
	ldr r1, _02233564 @ =0x00000B5C
	str r0, [r7, r1]
	adds r0, r1, #4
	ldr r0, [r7, r0]
	movs r1, #0x30
	bl ov65_022335F8
	movs r1, #0x1e
	ldr r2, [sp, #0x18]
	movs r0, #4
	lsls r1, r1, #4
	bl FUN_02002E98
	movs r0, #0
	ldr r1, _02233568 @ =0x00000B94
	str r0, [sp, #0x1c]
	adds r0, r7, r1
	str r0, [sp, #0x30]
	movs r0, #1
	adds r1, #0x80
	str r0, [sp, #0x2c]
	adds r0, r7, r1
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x24]
_0223342E:
	ldr r0, [sp, #0x30]
	bl FUN_0201A7A0
	ldr r0, [sp, #0x1c]
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1e
	subs r1, r1, r2
	movs r0, #0x1e
	rors r1, r0
	adds r1, r2, r1
	movs r0, #6
	muls r0, r1, r0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	movs r2, #5
	asrs r0, r0, #1
	lsrs r1, r0, #0x1e
	ldr r0, [sp, #0x1c]
	adds r1, r0, r1
	asrs r0, r1, #2
	lsls r5, r0, #4
	ldr r0, [sp, #0x20]
	adds r3, r5, #4
	adds r0, r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #9
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	movs r0, #0xf
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	lsls r3, r3, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x30]
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
	ldr r0, [sp, #0x30]
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [sp, #0x30]
	bl FUN_0201A9A4
	ldr r0, [sp, #0x20]
	ldr r4, [sp, #0x28]
	adds r0, r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r6, #0
	adds r5, r5, #1
	str r0, [sp, #0x34]
_022334A6:
	adds r0, r4, #0
	bl FUN_0201A7A0
	ldr r0, [sp, #0x34]
	lsls r3, r5, #0x18
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	movs r2, #5
	adds r1, r6, r0
	movs r0, #6
	muls r0, r1, r0
	adds r0, #0xda
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	adds r1, r4, #0
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r4, #0
	bl FUN_0201A9A4
	adds r6, r6, #1
	adds r4, #0x10
	adds r5, #0xc
	cmp r6, #2
	blt _022334A6
	ldr r0, [sp, #0x30]
	adds r0, #0x10
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	adds r0, #0x1b
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	adds r0, #0x20
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	adds r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	adds r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #8
	blt _0223342E
	movs r3, #1
	str r3, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #0x15
	str r0, [sp, #8]
	movs r0, #0xf
	str r0, [sp, #0xc]
	movs r0, #0x57
	ldr r1, _0223356C @ =0x00000D14
	str r3, [sp, #0x10]
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	adds r1, r7, r1
	movs r2, #7
	bl FUN_0201A7E8
	ldr r0, _0223356C @ =0x00000D14
	movs r1, #0
	adds r0, r7, r0
	bl FUN_0201ADA4
	ldr r0, _0223356C @ =0x00000D14
	adds r0, r7, r0
	bl FUN_0201A9A4
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	adds r0, r7, #0
	bl ov65_02234A68
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223355C: .4byte 0x00000B1C
_02233560: .4byte 0x00000B24
_02233564: .4byte 0x00000B5C
_02233568: .4byte 0x00000B94
_0223356C: .4byte 0x00000D14
	thumb_func_end ov65_022332FC

	thumb_func_start ov65_02233570
ov65_02233570: @ 0x02233570
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	bl ov65_02234CFC
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, _022335E4 @ =0x00000B94
	ldr r0, [sp]
	adds r7, r0, r1
	adds r1, #0x80
	adds r6, r0, r1
_02233588:
	adds r0, r7, #0
	bl FUN_0201A8FC
	movs r4, #0
	adds r5, r6, #0
_02233592:
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #2
	blt _02233592
	ldr r0, [sp, #4]
	adds r7, #0x10
	adds r0, r0, #1
	adds r6, #0x20
	str r0, [sp, #4]
	cmp r0, #8
	blt _02233588
	ldr r1, _022335E8 @ =0x00000D14
	ldr r0, [sp]
	adds r0, r0, r1
	bl FUN_0201A8FC
	ldr r1, _022335EC @ =0x00000B1C
	ldr r0, [sp]
	ldr r0, [r0, r1]
	bl FUN_020181C4
	ldr r4, [sp]
	ldr r6, _022335F0 @ =0x00000B24
	movs r5, #0
_022335C8:
	ldr r0, [r4, r6]
	bl FUN_020181C4
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #7
	blt _022335C8
	ldr r1, _022335F4 @ =0x00000B5C
	ldr r0, [sp]
	ldr r0, [r0, r1]
	bl FUN_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022335E4: .4byte 0x00000B94
_022335E8: .4byte 0x00000D14
_022335EC: .4byte 0x00000B1C
_022335F0: .4byte 0x00000B24
_022335F4: .4byte 0x00000B5C
	thumb_func_end ov65_02233570

	thumb_func_start ov65_022335F8
ov65_022335F8: @ 0x022335F8
	push {r4, r5, r6, r7}
	adds r5, r1, #0
	adds r1, r0, #0
	adds r1, #0xc
	mov ip, r1
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	lsrs r2, r1, #3
	lsrs r7, r0, #3
	movs r0, #0
	cmp r7, #0
	ble _02233634
	adds r3, r0, #0
_02233612:
	movs r1, #0
	cmp r2, #0
	ble _0223362C
	lsls r6, r3, #1
	mov r4, ip
	adds r4, r4, r6
_0223361E:
	ldrh r6, [r4]
	adds r1, r1, #1
	adds r6, r6, r5
	strh r6, [r4]
	adds r4, r4, #2
	cmp r1, r2
	blt _0223361E
_0223362C:
	adds r0, r0, #1
	adds r3, r3, r2
	cmp r0, r7
	blt _02233612
_02233634:
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ov65_022335F8

	thumb_func_start ov65_02233638
ov65_02233638: @ 0x02233638
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r6, #0
	bne _02233648
	bl FUN_02022974
_02233648:
	cmp r4, #0
	bne _02233650
	bl FUN_02022974
_02233650:
	cmp r4, #3
	blo _02233658
	bl FUN_02022974
_02233658:
	ldr r0, _02233668 @ =0x00000B67
	adds r1, r5, r6
	strb r4, [r1, r0]
	movs r1, #1
	adds r0, #0x26
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
	nop
_02233668: .4byte 0x00000B67
	thumb_func_end ov65_02233638

	thumb_func_start ov65_0223366C
ov65_0223366C: @ 0x0223366C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bne _02233678
	bl FUN_02022974
_02233678:
	ldr r0, _02233688 @ =0x00000B67
	movs r2, #0
	adds r1, r5, r4
	strb r2, [r1, r0]
	movs r1, #1
	adds r0, #0x26
	strb r1, [r5, r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_02233688: .4byte 0x00000B67
	thumb_func_end ov65_0223366C

	thumb_func_start ov65_0223368C
ov65_0223368C: @ 0x0223368C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bne _02233698
	bl FUN_02022974
_02233698:
	ldr r0, _022336A0 @ =0x00000B67
	adds r1, r5, r4
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022336A0: .4byte 0x00000B67
	thumb_func_end ov65_0223368C

	thumb_func_start ov65_022336A4
ov65_022336A4: @ 0x022336A4
	push {r3, lr}
	ldr r2, _022336C0 @ =0x00000B8B
	ldrb r3, [r0, r2]
	cmp r3, #0
	beq _022336B4
	bl ov65_02233874
	pop {r3, pc}
_022336B4:
	movs r3, #1
	adds r1, r2, #5
	str r3, [r0, r1]
	bl ov65_0223370C
	pop {r3, pc}
	.align 2, 0
_022336C0: .4byte 0x00000B8B
	thumb_func_end ov65_022336A4

	thumb_func_start ov65_022336C4
ov65_022336C4: @ 0x022336C4
	movs r1, #0xb9
	movs r2, #1
	lsls r1, r1, #4
	str r2, [r0, r1]
	subs r1, r1, #3
	strb r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end ov65_022336C4

	thumb_func_start ov65_022336D4
ov65_022336D4: @ 0x022336D4
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	ldr r0, _02233708 @ =0x00000B88
	movs r2, #0
	ldrb r0, [r4, r0]
	movs r1, #4
	adds r3, r2, #0
	str r0, [sp, #8]
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02019E2C
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #4
	bl FUN_0201C3C0
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_02233708: .4byte 0x00000B88
	thumb_func_end ov65_022336D4

	thumb_func_start ov65_0223370C
ov65_0223370C: @ 0x0223370C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r6, r0, #0
	movs r0, #0xb9
	lsls r0, r0, #4
	ldr r1, [r6, r0]
	cmp r1, #1
	bne _02233740
	movs r2, #0
	str r2, [r6, r0]
	movs r0, #1
	str r0, [sp, #0x18]
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x57
	str r2, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r1, #6
	adds r3, r2, #0
	bl FUN_02019CB8
	b _02233744
_02233740:
	movs r0, #0
	str r0, [sp, #0x18]
_02233744:
	ldr r1, _02233864 @ =0x00000B94
	movs r7, #0
	adds r0, r6, r1
	adds r1, #0x80
	str r0, [sp, #0x14]
	adds r0, r6, r1
	str r0, [sp, #0x10]
_02233752:
	ldr r0, _02233868 @ =0x00000B88
	ldrb r1, [r6, r0]
	subs r0, #0x21
	lsls r1, r1, #3
	adds r1, r7, r1
	adds r4, r1, #1
	adds r1, r6, r4
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02233780
	ldr r0, [r6]
	subs r1, r4, #1
	movs r2, #8
	bl FUN_0202AD2C
	cmp r0, #0
	bne _0223377A
	movs r0, #1
	str r0, [sp, #0x1c]
	b _02233784
_0223377A:
	movs r0, #0
	str r0, [sp, #0x1c]
	b _02233784
_02233780:
	movs r0, #2
	str r0, [sp, #0x1c]
_02233784:
	asrs r0, r7, #1
	lsrs r0, r0, #0x1e
	adds r0, r7, r0
	asrs r2, r0, #2
	lsrs r3, r7, #0x1f
	lsls r1, r7, #0x1e
	subs r1, r1, r3
	movs r0, #0x1e
	rors r1, r0
	adds r0, r3, r1
	ldr r1, _0223386C @ =0x00000B89
	mov ip, r0
	ldrb r0, [r6, r1]
	cmp r4, r0
	bne _022337A8
	adds r1, r1, #1
	ldrb r5, [r6, r1]
	b _022337AA
_022337A8:
	movs r5, #0
_022337AA:
	cmp r4, r0
	beq _022337B6
	ldr r0, _02233870 @ =0x00000B8F
	ldrb r0, [r6, r0]
	cmp r4, r0
	bne _022337BA
_022337B6:
	movs r1, #1
	b _022337BC
_022337BA:
	movs r1, #0
_022337BC:
	ldr r0, [sp, #0x18]
	cmp r0, #1
	beq _022337C6
	cmp r1, #1
	bne _02233832
_022337C6:
	lsls r1, r2, #0x1c
	movs r3, #6
	mov r2, ip
	muls r3, r2, r3
	lsls r2, r3, #0x18
	ldr r3, [sp, #0x1c]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r3, #0x18
	str r0, [sp]
	adds r0, r6, #0
	lsrs r1, r1, #0x18
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl ov65_02234788
	ldr r0, [sp, #0x1c]
	cmp r0, #2
	beq _0223380A
	ldr r1, [sp, #0x14]
	adds r0, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	str r7, [sp]
	bl ov65_02234900
	ldr r1, [sp, #0x10]
	adds r0, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	str r7, [sp]
	bl ov65_0223498C
	b _02233832
_0223380A:
	ldr r0, [sp, #0x14]
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [sp, #0x14]
	bl FUN_0201A9A4
	ldr r5, [sp, #0x10]
	movs r4, #0
_0223381C:
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, #0
	bl FUN_0201A9A4
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #2
	blt _0223381C
_02233832:
	ldr r0, [sp, #0x14]
	adds r7, r7, #1
	adds r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	adds r0, #0x20
	str r0, [sp, #0x10]
	cmp r7, #8
	blt _02233752
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r1, #6
	bl FUN_0201C3C0
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF74
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02233864: .4byte 0x00000B94
_02233868: .4byte 0x00000B88
_0223386C: .4byte 0x00000B89
_02233870: .4byte 0x00000B8F
	thumb_func_end ov65_0223370C

	thumb_func_start ov65_02233874
ov65_02233874: @ 0x02233874
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r1, #0
	adds r5, r0, #0
	ldr r1, _02233930 @ =0x00000B89
	ldr r0, [r5]
	ldrb r1, [r5, r1]
	movs r2, #8
	subs r1, r1, #1
	bl FUN_0202AD2C
	cmp r0, #1
	bne _02233892
	movs r4, #7
	b _02233894
_02233892:
	movs r4, #8
_02233894:
	ldr r0, _02233934 @ =0x00000B8C
	ldrsb r1, [r5, r0]
	subs r0, #0x4c
	lsls r1, r1, #2
	adds r1, r5, r1
	ldr r3, [r1, r0]
	movs r0, #0x57
	adds r2, r3, #0
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [r3, #8]
	movs r1, #6
	adds r2, #0xc
	bl FUN_02019574
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x57
	lsls r0, r0, #2
	movs r2, #0
	ldr r0, [r5, r0]
	movs r1, #6
	adds r3, r2, #0
	bl FUN_02019E2C
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #7
	bl FUN_02019EBC
	adds r0, r5, #0
	bl ov65_0222DCE0
	cmp r0, #0
	bne _022338EC
	adds r0, r5, #0
	bl ov65_02234628
_022338EC:
	ldr r0, _02233938 @ =0x00000D14
	movs r1, #0
	adds r0, r5, r0
	bl FUN_0201ADA4
	ldr r2, _02233934 @ =0x00000B8C
	adds r0, r5, #0
	ldrsb r2, [r5, r2]
	adds r1, r6, #0
	lsls r3, r2, #2
	ldr r2, _0223393C @ =0x02239C40
	ldr r2, [r2, r3]
	blx r2
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #6
	bl FUN_0201C3C0
	ldr r0, _02233938 @ =0x00000D14
	adds r0, r5, r0
	bl FUN_0201A9A4
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02233930: .4byte 0x00000B89
_02233934: .4byte 0x00000B8C
_02233938: .4byte 0x00000D14
_0223393C: .4byte 0x02239C40
	thumb_func_end ov65_02233874

	thumb_func_start ov65_02233940
ov65_02233940: @ 0x02233940
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r0, _02233CD4 @ =0x00000B89
	movs r2, #8
	ldrb r0, [r5, r0]
	subs r4, r0, #1
	ldr r0, [r5]
	adds r1, r4, #0
	bl FUN_0202AD2C
	cmp r0, #0
	bne _0223395E
	ldr r0, _02233CD8 @ =0x00050600
	b _02233962
_0223395E:
	movs r0, #0xc1
	lsls r0, r0, #0xa
_02233962:
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_02234F68
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #8
	ldr r2, [r5, r2]
	movs r1, #0x2a
	bl FUN_0200B1B8
	movs r2, #0x5e
	ldr r0, _02233CDC @ =0x00000B18
	lsls r2, r2, #2
	ldr r1, [r5, r2]
	subs r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl FUN_0200C388
	movs r0, #8
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, [sp, #0x14]
	adds r2, #0x79
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, _02233CE0 @ =0x00000D14
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r1, #1
	movs r3, #0x20
	bl FUN_0201D78C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_02234FA8
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	adds r0, r5, #0
	bl ov65_0222DD20
	add r1, sp, #0x14
	adds r7, r0, #0
	bl ov65_0223484C
	movs r2, #0x5a
	lsls r2, r2, #2
	adds r1, r0, #0
	ldr r0, [r5, r2]
	adds r2, #8
	ldr r2, [r5, r2]
	bl FUN_0200B1B8
	movs r0, #8
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, [sp, #0x14]
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _02233CE0 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x71
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #0x68
	bl FUN_0201D78C
	movs r0, #0x36
	bl FUN_02025E6C
	adds r6, r0, #0
	ldr r0, [r5]
	adds r1, r4, #0
	bl FUN_0202AF34
	adds r1, r0, #0
	adds r0, r6, #0
	bl FUN_02025EC0
	ldr r0, _02233CDC @ =0x00000B18
	movs r1, #0
	ldr r0, [r5, r0]
	adds r2, r6, #0
	bl FUN_0200B498
	adds r0, r6, #0
	bl FUN_020181C4
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	movs r1, #0x2b
	bl FUN_0200B1B8
	movs r0, #0x20
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233CE4 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _02233CE0 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	movs r1, #0x96
	movs r0, #0x5a
	adds r2, r1, #0
	lsls r0, r0, #2
	adds r2, #0xda
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl FUN_0200B1B8
	movs r2, #0x5e
	ldr r0, _02233CDC @ =0x00000B18
	lsls r2, r2, #2
	ldr r1, [r5, r2]
	subs r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl FUN_0200C388
	movs r1, #0x5e
	lsls r1, r1, #2
	movs r0, #0
	ldr r1, [r5, r1]
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0xe8
	subs r3, r1, r0
	movs r0, #0x20
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233CE4 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _02233CE0 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	bl FUN_0201D78C
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	movs r1, #0x2c
	bl FUN_0200B1B8
	movs r0, #0x38
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233CE4 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _02233CE0 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	ldr r0, [r5]
	adds r1, r4, #0
	movs r2, #1
	bl FUN_0202AD2C
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02233CDC @ =0x00000B18
	movs r1, #0
	ldr r0, [r5, r0]
	movs r3, #4
	bl FUN_0200B60C
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #8
	ldr r2, [r5, r2]
	movs r1, #0x2d
	bl FUN_0200B1B8
	movs r2, #0x5e
	ldr r0, _02233CDC @ =0x00000B18
	lsls r2, r2, #2
	ldr r1, [r5, r2]
	subs r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl FUN_0200C388
	movs r0, #0x38
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233CE4 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _02233CE0 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #0x78
	bl FUN_0201D78C
	ldr r0, [r5]
	adds r1, r4, #0
	movs r2, #2
	bl FUN_0202AD2C
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02233CDC @ =0x00000B18
	movs r1, #0
	ldr r0, [r5, r0]
	movs r3, #4
	bl FUN_0200B60C
	movs r0, #0x5a
	movs r1, #0x2e
	lsls r0, r0, #2
	lsls r2, r1, #3
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl FUN_0200B1B8
	movs r2, #0x5e
	ldr r0, _02233CDC @ =0x00000B18
	lsls r2, r2, #2
	ldr r1, [r5, r2]
	subs r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl FUN_0200C388
	movs r1, #0x5e
	lsls r1, r1, #2
	movs r0, #0
	ldr r1, [r5, r1]
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0xe8
	subs r3, r1, r0
	movs r0, #0x38
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233CE4 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _02233CE0 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	bl FUN_0201D78C
	movs r0, #0x5a
	movs r1, #0x2f
	lsls r0, r0, #2
	lsls r2, r1, #3
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl FUN_0200B1B8
	movs r0, #0x50
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233CE4 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _02233CE0 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	ldr r0, [r5]
	adds r1, r4, #0
	movs r2, #3
	bl FUN_0202AD2C
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02233CDC @ =0x00000B18
	movs r1, #0
	ldr r0, [r5, r0]
	movs r3, #4
	bl FUN_0200B60C
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #8
	ldr r2, [r5, r2]
	movs r1, #0x30
	bl FUN_0200B1B8
	movs r2, #0x5e
	ldr r0, _02233CDC @ =0x00000B18
	lsls r2, r2, #2
	ldr r1, [r5, r2]
	subs r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl FUN_0200C388
	movs r1, #0x5e
	lsls r1, r1, #2
	movs r0, #0
	ldr r1, [r5, r1]
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0xe8
	subs r3, r1, r0
	movs r0, #0x50
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233CE4 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _02233CE0 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	bl FUN_0201D78C
	adds r0, r5, #0
	bl ov65_0222DCF8
	cmp r0, #1
	bne _02233CF4
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	movs r1, #0x31
	bl FUN_0200B1B8
	movs r0, #0x68
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233CE4 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _02233CE0 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	ldr r0, [r5]
	adds r1, r4, #0
	movs r2, #9
	bl FUN_0202AD2C
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02233CDC @ =0x00000B18
	movs r1, #0
	ldr r0, [r5, r0]
	movs r3, #4
	bl FUN_0200B60C
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #8
	ldr r2, [r5, r2]
	movs r1, #0x32
	bl FUN_0200B1B8
	movs r2, #0x5e
	ldr r0, _02233CDC @ =0x00000B18
	lsls r2, r2, #2
	ldr r1, [r5, r2]
	subs r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl FUN_0200C388
	movs r1, #0x5e
	lsls r1, r1, #2
	movs r0, #0
	ldr r1, [r5, r1]
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0xe8
	subs r3, r1, r0
	movs r0, #0x68
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233CE4 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _02233CE0 @ =0x00000D14
	b _02233CE8
	nop
_02233CD4: .4byte 0x00000B89
_02233CD8: .4byte 0x00050600
_02233CDC: .4byte 0x00000B18
_02233CE0: .4byte 0x00000D14
_02233CE4: .4byte 0x00010200
_02233CE8:
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	bl FUN_0201D78C
_02233CF4:
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	movs r1, #0x33
	bl FUN_0200B1B8
	movs r0, #0x80
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233E10 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _02233E14 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	ldr r0, [r5]
	adds r1, r4, #0
	movs r2, #6
	bl FUN_0202AD2C
	adds r2, r0, #0
	beq _02233DC8
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _02233E18 @ =0x00000B18
	movs r1, #2
	ldr r0, [r5, r0]
	adds r3, r1, #0
	bl FUN_0200B60C
	ldr r0, [r5]
	adds r1, r4, #0
	movs r2, #4
	bl FUN_0202AD2C
	movs r1, #0
	adds r2, r0, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _02233E18 @ =0x00000B18
	movs r3, #4
	ldr r0, [r5, r0]
	bl FUN_0200B60C
	ldr r0, [r5]
	adds r1, r4, #0
	movs r2, #5
	bl FUN_0202AD2C
	adds r2, r0, #0
	ldr r0, _02233E18 @ =0x00000B18
	movs r1, #1
	ldr r0, [r5, r0]
	bl FUN_0200C2E0
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #8
	ldr r2, [r5, r2]
	movs r1, #0x4a
	bl FUN_0200B1B8
	movs r2, #0x5e
	ldr r0, _02233E18 @ =0x00000B18
	lsls r2, r2, #2
	ldr r1, [r5, r2]
	subs r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl FUN_0200C388
	movs r1, #0x5e
	lsls r1, r1, #2
	movs r0, #0
	ldr r1, [r5, r1]
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0xe8
	subs r3, r1, r0
	movs r0, #0x80
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233E10 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _02233E14 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	bl FUN_0201D78C
_02233DC8:
	movs r3, #2
	str r3, [sp]
	movs r0, #0x57
	ldr r1, _02233E1C @ =0x00000B08
	str r7, [sp, #4]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r5, r1
	movs r2, #6
	bl ov65_0222EA38
	ldr r0, [sp, #0x10]
	adds r0, #0x21
	str r0, [sp, #0x10]
	ldrb r0, [r0]
	cmp r0, #0
	beq _02233DEE
	movs r1, #8
	b _02233DF0
_02233DEE:
	movs r1, #1
_02233DF0:
	movs r0, #2
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r1, _02233E1C @ =0x00000B08
	ldr r0, [r5, r0]
	adds r1, r5, r1
	movs r2, #6
	movs r3, #0x1c
	bl ov65_0222E9C0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02233E10: .4byte 0x00010200
_02233E14: .4byte 0x00000D14
_02233E18: .4byte 0x00000B18
_02233E1C: .4byte 0x00000B08
	thumb_func_end ov65_02233940

	thumb_func_start ov65_02233E20
ov65_02233E20: @ 0x02233E20
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, _02233EE0 @ =0x00000B89
	movs r2, #0x5a
	ldrb r0, [r5, r0]
	lsls r2, r2, #2
	movs r1, #0x34
	subs r4, r0, #1
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	bl FUN_0200B1B8
	movs r1, #0
	str r1, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233EE4 @ =0x000F0E00
	adds r2, #0x79
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _02233EE8 @ =0x00000D14
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	movs r1, #0x5e
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	adds r0, r5, #0
	movs r2, #0
	adds r3, r4, #0
	bl ov65_022346C4
	movs r0, #0x18
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233EEC @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _02233EE8 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	movs r0, #0x78
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x41
	movs r2, #0x71
	adds r3, r4, #0
	bl ov65_02234694
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	movs r1, #0x3b
	bl FUN_0200B1B8
	movs r0, #0x30
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02233EEC @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _02233EE8 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	movs r0, #0x78
	str r0, [sp]
	movs r0, #0x30
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x41
	movs r2, #0x70
	adds r3, r4, #0
	bl ov65_02234694
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_02233EE0: .4byte 0x00000B89
_02233EE4: .4byte 0x000F0E00
_02233EE8: .4byte 0x00000D14
_02233EEC: .4byte 0x00010200
	thumb_func_end ov65_02233E20

	thumb_func_start ov65_02233EF0
ov65_02233EF0: @ 0x02233EF0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, _0223415C @ =0x00000B89
	movs r2, #0x5a
	ldrb r0, [r5, r0]
	lsls r2, r2, #2
	movs r1, #0x35
	subs r4, r0, #1
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	bl FUN_0200B1B8
	movs r1, #0
	str r1, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234160 @ =0x000F0E00
	adds r2, #0x79
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _02234164 @ =0x00000D14
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	movs r1, #0x3c
	bl FUN_0200B1B8
	movs r0, #0x18
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234168 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _02234164 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	movs r1, #0x3e
	bl FUN_0200B1B8
	movs r1, #0x5e
	lsls r1, r1, #2
	movs r0, #0
	ldr r1, [r5, r1]
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0xe8
	subs r3, r1, r0
	movs r0, #0x18
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234168 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _02234164 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	bl FUN_0201D78C
	movs r1, #0x5e
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	adds r0, r5, #0
	movs r2, #1
	adds r3, r4, #0
	bl ov65_022346C4
	movs r0, #0x30
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234168 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _02234164 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	movs r0, #0x68
	str r0, [sp]
	movs r0, #0x30
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x41
	movs r2, #0x73
	adds r3, r4, #0
	bl ov65_02234694
	movs r0, #0xd4
	str r0, [sp]
	movs r0, #0x30
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x42
	movs r2, #0x75
	adds r3, r4, #0
	bl ov65_02234694
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	movs r1, #0x3b
	bl FUN_0200B1B8
	movs r0, #0x40
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234168 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _02234164 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	movs r0, #0x68
	str r0, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x41
	movs r2, #0x72
	adds r3, r4, #0
	bl ov65_02234694
	movs r0, #0xd4
	str r0, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x42
	movs r2, #0x74
	adds r3, r4, #0
	bl ov65_02234694
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	movs r1, #0x3d
	bl FUN_0200B1B8
	movs r0, #0x58
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234168 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _02234164 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	movs r1, #0x3e
	bl FUN_0200B1B8
	movs r1, #0x5e
	lsls r1, r1, #2
	movs r0, #0
	ldr r1, [r5, r1]
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0xe8
	subs r3, r1, r0
	movs r0, #0x58
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234168 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _02234164 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	bl FUN_0201D78C
	movs r1, #0x5e
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	adds r0, r5, #0
	movs r2, #2
	adds r3, r4, #0
	bl ov65_022346C4
	movs r0, #0x70
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234168 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _02234164 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	movs r0, #0x68
	str r0, [sp]
	movs r0, #0x70
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x41
	movs r2, #0x77
	adds r3, r4, #0
	bl ov65_02234694
	movs r0, #0xd4
	str r0, [sp]
	movs r0, #0x70
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x42
	movs r2, #0x79
	adds r3, r4, #0
	bl ov65_02234694
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	movs r1, #0x3b
	bl FUN_0200B1B8
	movs r0, #0x80
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234168 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _02234164 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	movs r0, #0x68
	str r0, [sp]
	movs r0, #0x80
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x41
	movs r2, #0x76
	adds r3, r4, #0
	bl ov65_02234694
	movs r0, #0xd4
	str r0, [sp]
	movs r0, #0x80
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x42
	movs r2, #0x78
	adds r3, r4, #0
	bl ov65_02234694
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223415C: .4byte 0x00000B89
_02234160: .4byte 0x000F0E00
_02234164: .4byte 0x00000D14
_02234168: .4byte 0x00010200
	thumb_func_end ov65_02233EF0

	thumb_func_start ov65_0223416C
ov65_0223416C: @ 0x0223416C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, _02234298 @ =0x00000B89
	movs r2, #0x5a
	ldrb r0, [r5, r0]
	lsls r2, r2, #2
	movs r1, #0x36
	subs r4, r0, #1
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	bl FUN_0200B1B8
	movs r1, #0
	str r1, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _0223429C @ =0x000F0E00
	adds r2, #0x79
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _022342A0 @ =0x00000D14
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	movs r1, #0x3f
	bl FUN_0200B1B8
	movs r1, #0x5e
	lsls r1, r1, #2
	movs r0, #0
	ldr r1, [r5, r1]
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r0, r0, #1
	lsrs r1, r0, #1
	movs r0, #0xb4
	subs r3, r0, r1
	movs r0, #0x18
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _022342A4 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _022342A0 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	bl FUN_0201D78C
	movs r1, #0x5e
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	adds r0, r5, #0
	movs r2, #3
	adds r3, r4, #0
	bl ov65_022346C4
	movs r0, #0x30
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _022342A4 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _022342A0 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	movs r0, #0x68
	str r0, [sp]
	movs r0, #0x30
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x44
	movs r2, #0x87
	adds r3, r4, #0
	bl ov65_02234694
	movs r0, #0xd4
	str r0, [sp]
	movs r0, #0x30
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x43
	movs r2, #0x88
	adds r3, r4, #0
	bl ov65_02234694
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	movs r1, #0x3b
	bl FUN_0200B1B8
	movs r0, #0x50
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _022342A4 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _022342A0 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	movs r0, #0x68
	str r0, [sp]
	movs r0, #0x50
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x44
	movs r2, #0x86
	adds r3, r4, #0
	bl ov65_02234694
	movs r0, #0xd4
	str r0, [sp]
	movs r0, #0x50
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x43
	movs r2, #0x8a
	adds r3, r4, #0
	bl ov65_02234694
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02234298: .4byte 0x00000B89
_0223429C: .4byte 0x000F0E00
_022342A0: .4byte 0x00000D14
_022342A4: .4byte 0x00010200
	thumb_func_end ov65_0223416C

	thumb_func_start ov65_022342A8
ov65_022342A8: @ 0x022342A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r6, r1, #0
	bl FUN_0203068C
	adds r7, r0, #0
	ldr r0, _022343BC @ =0x00000B89
	movs r2, #0x5a
	ldrb r0, [r5, r0]
	lsls r2, r2, #2
	movs r1, #0x37
	subs r4, r0, #1
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	bl FUN_0200B1B8
	movs r1, #0
	str r1, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _022343C0 @ =0x000F0E00
	adds r2, #0x79
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _022343C4 @ =0x00000D14
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	adds r0, r7, #0
	movs r1, #0x7c
	adds r2, r4, #0
	bl FUN_02030698
	adds r1, r6, #0
	bl FUN_0200B32C
	adds r6, r0, #0
	movs r0, #0
	adds r1, r6, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r0, r0, #1
	lsrs r1, r0, #1
	movs r0, #0x21
	subs r3, r0, r1
	movs r0, #0x18
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022343C8 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _022343C4 @ =0x00000D14
	adds r2, r6, #0
	adds r0, r5, r0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r6, #0
	bl FUN_020237BC
	movs r1, #0x5e
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	adds r0, r5, #0
	movs r2, #4
	adds r3, r4, #0
	bl ov65_022346C4
	movs r0, #0x30
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _022343C8 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _022343C4 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	movs r0, #0x6c
	str r0, [sp]
	movs r0, #0x30
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x41
	movs r2, #0x7b
	adds r3, r4, #0
	bl ov65_02234694
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	movs r1, #0x3b
	bl FUN_0200B1B8
	movs r0, #0x50
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _022343C8 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _022343C4 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	movs r0, #0x6c
	str r0, [sp]
	movs r0, #0x50
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x41
	movs r2, #0x7a
	adds r3, r4, #0
	bl ov65_02234694
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022343BC: .4byte 0x00000B89
_022343C0: .4byte 0x000F0E00
_022343C4: .4byte 0x00000D14
_022343C8: .4byte 0x00010200
	thumb_func_end ov65_022342A8

	thumb_func_start ov65_022343CC
ov65_022343CC: @ 0x022343CC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, _0223448C @ =0x00000B89
	movs r2, #0x5a
	ldrb r0, [r5, r0]
	lsls r2, r2, #2
	movs r1, #0x38
	subs r4, r0, #1
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	bl FUN_0200B1B8
	movs r1, #0
	str r1, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234490 @ =0x000F0E00
	adds r2, #0x79
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _02234494 @ =0x00000D14
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	movs r1, #0x5e
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	adds r0, r5, #0
	movs r2, #5
	adds r3, r4, #0
	bl ov65_022346C4
	movs r0, #0x18
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234498 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _02234494 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	movs r0, #0x70
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x45
	movs r2, #0x8f
	adds r3, r4, #0
	bl ov65_02234694
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	movs r1, #0x3b
	bl FUN_0200B1B8
	movs r0, #0x30
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234498 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _02234494 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	movs r0, #0x70
	str r0, [sp]
	movs r0, #0x30
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x45
	movs r2, #0x8e
	adds r3, r4, #0
	bl ov65_02234694
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223448C: .4byte 0x00000B89
_02234490: .4byte 0x000F0E00
_02234494: .4byte 0x00000D14
_02234498: .4byte 0x00010200
	thumb_func_end ov65_022343CC

	thumb_func_start ov65_0223449C
ov65_0223449C: @ 0x0223449C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_0202B370
	adds r6, r0, #0
	ldr r0, _02234614 @ =0x00000B89
	movs r2, #0x5a
	ldrb r0, [r5, r0]
	lsls r2, r2, #2
	movs r1, #0x46
	subs r4, r0, #1
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	bl FUN_0200B1B8
	movs r1, #0
	str r1, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234618 @ =0x000F0E00
	adds r2, #0x79
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0223461C @ =0x00000D14
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	ldr r0, _02234620 @ =0x00000B18
	movs r1, #0
	ldr r0, [r5, r0]
	adds r2, r1, #0
	bl FUN_0200C0B0
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #8
	ldr r2, [r5, r2]
	movs r1, #0x47
	bl FUN_0200B1B8
	movs r2, #0x5e
	ldr r0, _02234620 @ =0x00000B18
	lsls r2, r2, #2
	ldr r1, [r5, r2]
	subs r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl FUN_0200C388
	movs r0, #0x18
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234624 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _0223461C @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0xa
	bl FUN_0202AD2C
	adds r2, r0, #0
	movs r0, #0x18
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x48
	movs r3, #0xa4
	bl ov65_02234708
	ldr r0, _02234620 @ =0x00000B18
	movs r1, #0
	ldr r0, [r5, r0]
	movs r2, #1
	bl FUN_0200C0B0
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #8
	ldr r2, [r5, r2]
	movs r1, #0x47
	bl FUN_0200B1B8
	movs r2, #0x5e
	ldr r0, _02234620 @ =0x00000B18
	lsls r2, r2, #2
	ldr r1, [r5, r2]
	subs r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl FUN_0200C388
	movs r0, #0x30
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234624 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _0223461C @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0xb
	bl FUN_0202AD2C
	adds r2, r0, #0
	movs r0, #0x30
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x48
	movs r3, #0xa4
	bl ov65_02234708
	ldr r0, _02234620 @ =0x00000B18
	movs r1, #0
	ldr r0, [r5, r0]
	movs r2, #2
	bl FUN_0200C0B0
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #8
	ldr r2, [r5, r2]
	movs r1, #0x47
	bl FUN_0200B1B8
	movs r2, #0x5e
	ldr r0, _02234620 @ =0x00000B18
	lsls r2, r2, #2
	ldr r1, [r5, r2]
	subs r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl FUN_0200C388
	movs r0, #0x48
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02234624 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _0223461C @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r3, #8
	bl FUN_0201D78C
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0xc
	bl FUN_0202AD2C
	adds r2, r0, #0
	movs r1, #0x48
	adds r0, r5, #0
	movs r3, #0xa4
	str r1, [sp]
	bl ov65_02234708
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_02234614: .4byte 0x00000B89
_02234618: .4byte 0x000F0E00
_0223461C: .4byte 0x00000D14
_02234620: .4byte 0x00000B18
_02234624: .4byte 0x00010200
	thumb_func_end ov65_0223449C

	thumb_func_start ov65_02234628
ov65_02234628: @ 0x02234628
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	movs r4, #0
	adds r5, r0, #0
	movs r7, #1
	adds r6, r4, #0
_02234634:
	movs r0, #0xb6
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r2, r4, #0
	str r7, [sp]
	adds r1, r0, #0
	str r7, [sp, #4]
	adds r1, #0xc
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	ldrh r1, [r0]
	adds r2, #0x1a
	lsls r2, r2, #0x18
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r1, #6
	lsrs r2, r2, #0x18
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r3, r6, #0
	bl FUN_020198E8
	adds r4, r4, #1
	cmp r4, #5
	blt _02234634
	movs r0, #5
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r1, #6
	movs r0, #0x57
	str r1, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r2, #0x1a
	movs r3, #0
	bl FUN_02019E2C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov65_02234628

	thumb_func_start ov65_02234694
ov65_02234694: @ 0x02234694
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r6, r2, #0
	adds r7, r3, #0
	adds r4, r1, #0
	bl FUN_0203068C
	adds r1, r6, #0
	adds r2, r7, #0
	bl FUN_02030698
	adds r2, r0, #0
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_02234708
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov65_02234694

	thumb_func_start ov65_022346C4
ov65_022346C4: @ 0x022346C4
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r2, #0
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r3, #0
	cmp r4, #6
	blo _022346D6
	bl FUN_02022974
_022346D6:
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_0203068C
	ldr r1, _02234704 @ =0x02238998
	lsls r2, r4, #2
	ldr r1, [r1, r2]
	adds r2, r7, #0
	bl FUN_02030698
	cmp r0, #0
	bne _022346F4
	movs r1, #0x39
	b _022346F6
_022346F4:
	movs r1, #0x3a
_022346F6:
	movs r0, #0x5a
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r2, r6, #0
	bl FUN_0200B1B8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02234704: .4byte 0x02238998
	thumb_func_end ov65_022346C4

	thumb_func_start ov65_02234708
ov65_02234708: @ 0x02234708
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223477C @ =0x00000B18
	adds r6, r1, #0
	adds r4, r3, #0
	ldr r0, [r5, r0]
	movs r1, #0
	movs r3, #4
	bl FUN_0200B60C
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #8
	ldr r2, [r5, r2]
	adds r1, r6, #0
	bl FUN_0200B1B8
	movs r2, #0x5e
	ldr r0, _0223477C @ =0x00000B18
	lsls r2, r2, #2
	ldr r1, [r5, r2]
	subs r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl FUN_0200C388
	movs r1, #0x5e
	lsls r1, r1, #2
	movs r0, #0
	ldr r1, [r5, r1]
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r0, r0, #1
	lsrs r0, r0, #1
	subs r3, r4, r0
	ldr r0, [sp, #0x20]
	movs r2, #0xff
	str r0, [sp]
	str r2, [sp, #4]
	ldr r0, _02234780 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	ldr r0, _02234784 @ =0x00000D14
	str r1, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r5, r0
	bl FUN_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223477C: .4byte 0x00000B18
_02234780: .4byte 0x00010200
_02234784: .4byte 0x00000D14
	thumb_func_end ov65_02234708

	thumb_func_start ov65_02234788
ov65_02234788: @ 0x02234788
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r2, [sp, #0x1c]
	ldr r4, [sp, #0x38]
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r3, #0
	cmp r4, #4
	blo _0223479E
	bl FUN_02022974
_0223479E:
	cmp r4, #3
	bne _022347A4
	movs r4, #1
_022347A4:
	cmp r4, #2
	bhs _022347EA
	movs r0, #0x10
	str r0, [sp]
	movs r1, #6
	movs r0, #0xb2
	str r1, [sp, #4]
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r2, r7, #0
	adds r0, #0xc
	str r0, [sp, #8]
	lsls r0, r4, #0x14
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	adds r0, r6, #0
	muls r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	movs r0, #0x20
	str r0, [sp, #0x14]
	movs r0, #0x12
	str r0, [sp, #0x18]
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [sp, #0x1c]
	bl FUN_020198E8
	b _02234828
_022347EA:
	movs r0, #0x10
	movs r2, #0xb2
	str r0, [sp]
	movs r1, #6
	str r1, [sp, #4]
	lsls r2, r2, #4
	ldr r3, [r5, r2]
	movs r2, #0x12
	adds r3, #0xc
	lsls r2, r2, #6
	adds r2, r3, r2
	str r2, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	adds r2, r6, #0
	muls r2, r1, r2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	movs r0, #0x12
	str r0, [sp, #0x18]
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [sp, #0x1c]
	adds r2, r7, #0
	bl FUN_020198E8
_02234828:
	movs r0, #0x10
	str r0, [sp]
	adds r0, r6, #4
	movs r1, #6
	lsls r0, r0, #0x18
	str r1, [sp, #4]
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [sp, #0x1c]
	adds r2, r7, #0
	bl FUN_02019E2C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov65_02234788

	thumb_func_start ov65_0223484C
ov65_0223484C: @ 0x0223484C
	ldr r2, _022348F8 @ =0x00010200
	cmp r0, #0x1b
	str r2, [r1]
	bhi _022348F4
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02234860: @ jump table
	.2byte _022348F4 - _02234860 - 2 @ case 0
	.2byte _02234898 - _02234860 - 2 @ case 1
	.2byte _022348A0 - _02234860 - 2 @ case 2
	.2byte _022348A0 - _02234860 - 2 @ case 3
	.2byte _022348A0 - _02234860 - 2 @ case 4
	.2byte _022348A0 - _02234860 - 2 @ case 5
	.2byte _022348A0 - _02234860 - 2 @ case 6
	.2byte _022348A0 - _02234860 - 2 @ case 7
	.2byte _022348C0 - _02234860 - 2 @ case 8
	.2byte _022348A8 - _02234860 - 2 @ case 9
	.2byte _022348AC - _02234860 - 2 @ case 10
	.2byte _022348B0 - _02234860 - 2 @ case 11
	.2byte _022348B4 - _02234860 - 2 @ case 12
	.2byte _022348B8 - _02234860 - 2 @ case 13
	.2byte _022348BC - _02234860 - 2 @ case 14
	.2byte _022348C8 - _02234860 - 2 @ case 15
	.2byte _022348F0 - _02234860 - 2 @ case 16
	.2byte _022348F4 - _02234860 - 2 @ case 17
	.2byte _022348CC - _02234860 - 2 @ case 18
	.2byte _022348D4 - _02234860 - 2 @ case 19
	.2byte _022348D8 - _02234860 - 2 @ case 20
	.2byte _022348E0 - _02234860 - 2 @ case 21
	.2byte _022348E4 - _02234860 - 2 @ case 22
	.2byte _022348EC - _02234860 - 2 @ case 23
	.2byte _022348E4 - _02234860 - 2 @ case 24
	.2byte _022348EC - _02234860 - 2 @ case 25
	.2byte _022348E4 - _02234860 - 2 @ case 26
	.2byte _022348EC - _02234860 - 2 @ case 27
_02234898:
	ldr r2, _022348FC @ =0x00020E00
	movs r0, #0x24
	str r2, [r1]
	bx lr
_022348A0:
	ldr r2, _022348FC @ =0x00020E00
	movs r0, #0x1b
	str r2, [r1]
	bx lr
_022348A8:
	movs r0, #0x60
	bx lr
_022348AC:
	movs r0, #0x61
	bx lr
_022348B0:
	movs r0, #0x5f
	bx lr
_022348B4:
	movs r0, #0x63
	bx lr
_022348B8:
	movs r0, #0x64
	bx lr
_022348BC:
	movs r0, #0x62
	bx lr
_022348C0:
	ldr r2, _022348FC @ =0x00020E00
	movs r0, #0x1d
	str r2, [r1]
	bx lr
_022348C8:
	movs r0, #0x1c
	bx lr
_022348CC:
	ldr r2, _022348FC @ =0x00020E00
	movs r0, #0x1f
	str r2, [r1]
	bx lr
_022348D4:
	movs r0, #0x1e
	bx lr
_022348D8:
	ldr r2, _022348FC @ =0x00020E00
	movs r0, #0x21
	str r2, [r1]
	bx lr
_022348E0:
	movs r0, #0x20
	bx lr
_022348E4:
	ldr r2, _022348FC @ =0x00020E00
	movs r0, #0x23
	str r2, [r1]
	bx lr
_022348EC:
	movs r0, #0x22
	bx lr
_022348F0:
	movs r0, #0x4f
	bx lr
_022348F4:
	movs r0, #0x5c
	bx lr
	.align 2, 0
_022348F8: .4byte 0x00010200
_022348FC: .4byte 0x00020E00
	thumb_func_end ov65_0223484C

	thumb_func_start ov65_02234900
ov65_02234900: @ 0x02234900
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r1, #0
	adds r5, r0, #0
	adds r0, r6, #0
	movs r1, #0
	str r2, [sp, #0x10]
	adds r4, r3, #0
	bl FUN_0201ADA4
	ldr r0, _02234980 @ =0x02238934
	movs r2, #8
	ldrb r7, [r0, r4]
	ldr r0, [sp, #0x10]
	subs r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, [r5]
	ldr r1, [sp, #0x14]
	bl FUN_0202AD2C
	cmp r0, #0
	bne _02234930
	ldr r4, _02234984 @ =0x00050600
	b _02234934
_02234930:
	movs r4, #0xc1
	lsls r4, r4, #0xa
_02234934:
	ldr r1, [sp, #0x14]
	adds r0, r5, #0
	bl ov65_02234F68
	movs r2, #0x5a
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #8
	ldr r2, [r5, r2]
	movs r1, #0x2a
	bl FUN_0200B1B8
	movs r2, #0x5e
	ldr r0, _02234988 @ =0x00000B18
	lsls r2, r2, #2
	ldr r1, [r5, r2]
	subs r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl FUN_0200C388
	str r7, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	str r4, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	adds r2, #0x79
	ldr r2, [r5, r2]
	adds r0, r6, #0
	movs r1, #1
	bl FUN_0201D78C
	adds r0, r6, #0
	bl FUN_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02234980: .4byte 0x02238934
_02234984: .4byte 0x00050600
_02234988: .4byte 0x00000B18
	thumb_func_end ov65_02234900

	thumb_func_start ov65_0223498C
ov65_0223498C: @ 0x0223498C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r1, #0
	subs r1, r2, #1
	adds r6, r0, #0
	adds r4, r3, #0
	bl ov65_02234FA8
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	adds r0, r6, #0
	bl ov65_0222DD20
	str r0, [sp, #8]
	ldr r0, _02234A08 @ =0x02238934
	ldrb r0, [r0, r4]
	movs r4, #0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_022349B2:
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	cmp r4, #0
	bne _022349D2
	ldr r0, [sp, #8]
	ldr r1, _02234A0C @ =0x00000B08
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, r1
	movs r2, #0
	adds r3, r7, #0
	bl ov65_0222EB1C
	b _022349F6
_022349D2:
	ldr r0, [sp, #0xc]
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _022349E0
	movs r0, #8
	b _022349E2
_022349E0:
	movs r0, #1
_022349E2:
	ldr r1, _02234A0C @ =0x00000B08
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, r1
	movs r2, #0
	adds r3, r7, #0
	bl ov65_0222EAD0
_022349F6:
	adds r0, r5, #0
	bl FUN_0201A9A4
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #2
	blt _022349B2
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02234A08: .4byte 0x02238934
_02234A0C: .4byte 0x00000B08
	thumb_func_end ov65_0223498C

	thumb_func_start ov65_02234A10
ov65_02234A10: @ 0x02234A10
	push {r3, r4}
	ldr r1, _02234A60 @ =0x00000B89
	ldrb r2, [r0, r1]
	cmp r2, #0
	beq _02234A5C
	adds r2, r1, #5
	ldrb r2, [r0, r2]
	adds r3, r2, #1
	adds r2, r1, #5
	strb r3, [r0, r2]
	ldrb r4, [r0, r2]
	adds r2, r1, #1
	ldrb r3, [r0, r2]
	ldr r2, _02234A64 @ =0x02238938
	ldrb r2, [r2, r3]
	cmp r4, r2
	blo _02234A5C
	movs r3, #0
	adds r2, r1, #5
	strb r3, [r0, r2]
	adds r2, r1, #1
	ldrb r2, [r0, r2]
	adds r4, r2, #1
	adds r2, r1, #1
	strb r4, [r0, r2]
	movs r2, #1
	adds r4, r1, #4
	strb r2, [r0, r4]
	adds r4, r1, #1
	ldrb r4, [r0, r4]
	cmp r4, #4
	blo _02234A5C
	adds r4, r1, #5
	strb r3, [r0, r4]
	adds r4, r1, #1
	strb r3, [r0, r4]
	adds r1, r1, #2
	strb r2, [r0, r1]
_02234A5C:
	pop {r3, r4}
	bx lr
	.align 2, 0
_02234A60: .4byte 0x00000B89
_02234A64: .4byte 0x02238938
	thumb_func_end ov65_02234A10

	thumb_func_start ov65_02234A68
ov65_02234A68: @ 0x02234A68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x12c
	ldr r6, _02234CCC @ =0x02238B38
	str r2, [sp, #0x2c]
	adds r5, r0, #0
	adds r4, r1, #0
	add r3, sp, #0x9c
	movs r2, #0x12
_02234A78:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02234A78
	movs r0, #0x10
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #0x1e
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	adds r1, r4, #0
	str r0, [sp, #8]
	movs r0, #0xae
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r2, #0x2a
	movs r3, #0
	bl FUN_02009A4C
	ldr r1, _02234CD0 @ =0x00000D24
	movs r2, #0x2b
	str r0, [r5, r1]
	movs r0, #0x1e
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	adds r1, r4, #0
	str r0, [sp, #0xc]
	movs r0, #0xaf
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r3, #0
	bl FUN_02009B04
	ldr r1, _02234CD4 @ =0x00000D28
	movs r2, #0x28
	str r0, [r5, r1]
	movs r0, #0x1e
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	adds r1, r4, #0
	str r0, [sp, #8]
	movs r0, #0xb
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	movs r3, #0
	bl FUN_02009BC4
	ldr r1, _02234CD8 @ =0x00000D2C
	movs r2, #0x29
	str r0, [r5, r1]
	movs r0, #0x1e
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	adds r1, r4, #0
	str r0, [sp, #8]
	movs r0, #0xb1
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r3, #0
	bl FUN_02009BC4
	movs r1, #0xd3
	lsls r1, r1, #4
	str r0, [r5, r1]
	subs r1, #0xc
	ldr r0, [r5, r1]
	bl FUN_0200A450
	cmp r0, #0
	bne _02234B1E
	bl FUN_02022974
_02234B1E:
	ldr r0, _02234CD4 @ =0x00000D28
	ldr r0, [r5, r0]
	bl FUN_0200A640
	cmp r0, #0
	bne _02234B2E
	bl FUN_02022974
_02234B2E:
	ldr r0, _02234CD0 @ =0x00000D24
	ldr r0, [r5, r0]
	bl FUN_02009D4C
	ldr r0, _02234CD4 @ =0x00000D28
	ldr r0, [r5, r0]
	bl FUN_02009D4C
	movs r1, #0x1e
	adds r0, r1, #0
	movs r3, #0xae
	str r1, [sp]
	subs r0, #0x1f
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsls r3, r3, #2
	ldr r2, [r5, r3]
	str r2, [sp, #0x14]
	adds r2, r3, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	adds r2, r3, #0
	adds r2, #8
	ldr r2, [r5, r2]
	adds r3, #0xc
	str r2, [sp, #0x1c]
	ldr r2, [r5, r3]
	adds r3, r1, #0
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x78
	adds r2, r1, #0
	bl FUN_020093B4
	movs r0, #0
	add r4, sp, #0x9c
	ldr r7, _02234CDC @ =0x02238930
	str r0, [sp, #0x34]
	str r4, [sp, #0x30]
	adds r6, r5, #0
_02234B86:
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [r4]
	add r0, sp, #0x78
	str r0, [r4, #4]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0x2c]
	ldr r0, [sp, #0x30]
	bl FUN_02021AA0
	ldr r1, _02234CE0 @ =0x00000D34
	str r0, [r6, r1]
	adds r0, r1, #0
	ldrb r1, [r7]
	ldr r0, [r6, r0]
	bl FUN_02021D6C
	ldr r0, [sp, #0x30]
	adds r4, #0x30
	adds r0, #0x30
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	adds r6, r6, #4
	adds r0, r0, #1
	adds r7, r7, #1
	str r0, [sp, #0x34]
	cmp r0, #3
	blt _02234B86
	ldr r1, [sp, #0x2c]
	movs r0, #2
	bl FUN_02002BB8
	add r0, sp, #0x68
	bl FUN_0201A7A0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0x68
	movs r2, #8
	movs r3, #2
	bl FUN_0201A870
	ldr r1, [sp, #0x2c]
	movs r0, #0x40
	bl FUN_02023790
	adds r6, r0, #0
	movs r0, #0x5a
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x49
	adds r2, r6, #0
	bl FUN_0200B1B8
	movs r1, #0x5e
	lsls r1, r1, #2
	movs r0, #0
	ldr r1, [r5, r1]
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r0, r0, #1
	lsrs r0, r0, #1
	movs r3, #0
	rsbs r4, r0, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02234CE4 @ =0x00010200
	movs r1, #2
	str r0, [sp, #8]
	add r0, sp, #0x68
	adds r2, r6, #0
	str r3, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r6, #0
	bl FUN_020237BC
	ldr r1, [sp, #0x2c]
	add r0, sp, #0x68
	bl FUN_02012B20
	movs r1, #2
	adds r6, r0, #0
	bl FUN_02012B58
	movs r3, #0x35
	lsls r3, r3, #6
	movs r1, #1
	movs r2, #2
	adds r3, r5, r3
	bl FUN_0201ED94
	cmp r0, #0
	bne _02234C54
	bl FUN_02022974
_02234C54:
	movs r0, #0xb2
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	str r0, [sp, #0x38]
	add r0, sp, #0x68
	str r0, [sp, #0x3c]
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp, #0x40]
	ldr r0, _02234CD4 @ =0x00000D28
	ldr r0, [r5, r0]
	bl FUN_0200A72C
	str r0, [sp, #0x44]
	ldr r0, _02234CE8 @ =0x00000D38
	ldr r1, [r5, r0]
	adds r0, #0xc
	str r1, [sp, #0x48]
	ldr r0, [r5, r0]
	adds r1, r6, #0
	str r0, [sp, #0x4c]
	movs r0, #7
	mvns r0, r0
	str r0, [sp, #0x54]
	movs r0, #0
	str r0, [sp, #0x58]
	str r0, [sp, #0x5c]
	movs r0, #2
	str r0, [sp, #0x60]
	ldr r0, [sp, #0x2c]
	str r4, [sp, #0x50]
	str r0, [sp, #0x64]
	add r0, sp, #0x38
	bl FUN_02012B60
	ldr r1, _02234CEC @ =0x00000D4C
	str r0, [r5, r1]
	adds r0, r6, #0
	bl FUN_02012B48
	add r0, sp, #0x68
	bl FUN_0201A8FC
	movs r0, #2
	bl FUN_02002C60
	ldr r0, [sp, #0x2c]
	ldr r2, _02234CF0 @ =ov65_02234E40
	str r0, [sp]
	ldr r0, _02234CF4 @ =0x0223895C
	movs r1, #3
	adds r3, r5, #0
	bl FUN_02023FCC
	ldr r1, _02234CF8 @ =0x00000D5C
	str r0, [r5, r1]
	add sp, #0x12c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02234CCC: .4byte 0x02238B38
_02234CD0: .4byte 0x00000D24
_02234CD4: .4byte 0x00000D28
_02234CD8: .4byte 0x00000D2C
_02234CDC: .4byte 0x02238930
_02234CE0: .4byte 0x00000D34
_02234CE4: .4byte 0x00010200
_02234CE8: .4byte 0x00000D38
_02234CEC: .4byte 0x00000D4C
_02234CF0: .4byte ov65_02234E40
_02234CF4: .4byte 0x0223895C
_02234CF8: .4byte 0x00000D5C
	thumb_func_end ov65_02234A68

	thumb_func_start ov65_02234CFC
ov65_02234CFC: @ 0x02234CFC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _02234D58 @ =0x00000D5C
	ldr r0, [r5, r0]
	bl FUN_02024034
	ldr r0, _02234D5C @ =0x00000D4C
	ldr r0, [r5, r0]
	bl FUN_02012BD8
	movs r0, #0x35
	lsls r0, r0, #6
	adds r0, r5, r0
	bl FUN_0201EE28
	ldr r7, _02234D60 @ =0x00000D34
	movs r6, #0
	adds r4, r5, #0
_02234D20:
	ldr r0, [r4, r7]
	bl FUN_02021BD4
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #3
	blt _02234D20
	ldr r0, _02234D64 @ =0x00000D24
	ldr r0, [r5, r0]
	bl FUN_0200A4E4
	ldr r0, _02234D68 @ =0x00000D28
	ldr r0, [r5, r0]
	bl FUN_0200A6DC
	movs r7, #0xae
	ldr r6, _02234D64 @ =0x00000D24
	movs r4, #0
	lsls r7, r7, #2
_02234D46:
	ldr r0, [r5, r7]
	ldr r1, [r5, r6]
	bl FUN_02009D68
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _02234D46
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02234D58: .4byte 0x00000D5C
_02234D5C: .4byte 0x00000D4C
_02234D60: .4byte 0x00000D34
_02234D64: .4byte 0x00000D24
_02234D68: .4byte 0x00000D28
	thumb_func_end ov65_02234CFC

	thumb_func_start ov65_02234D6C
ov65_02234D6C: @ 0x02234D6C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0xd5
	movs r1, #1
	lsls r0, r0, #4
	str r1, [r5, r0]
	movs r0, #0x10
	bl FUN_0201FF74
	ldr r0, _02234D98 @ =0x00000D54
	movs r4, #0
	ldr r6, _02234D9C @ =0x00000B18
	str r4, [r5, r0]
_02234D86:
	adds r0, r5, r6
	adds r1, r4, #0
	bl ov65_02234E50
	adds r4, r4, #1
	cmp r4, #3
	blt _02234D86
	pop {r4, r5, r6, pc}
	nop
_02234D98: .4byte 0x00000D54
_02234D9C: .4byte 0x00000B18
	thumb_func_end ov65_02234D6C

	thumb_func_start ov65_02234DA0
ov65_02234DA0: @ 0x02234DA0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xd5
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #2
	bne _02234DC2
	subs r0, #0x18
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021CAC
	ldr r0, _02234DD4 @ =0x00000D4C
	movs r1, #1
	ldr r0, [r4, r0]
	bl FUN_020129D0
_02234DC2:
	movs r0, #0xd5
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
	movs r0, #0x10
	bl FUN_0201FF74
	pop {r4, pc}
	nop
_02234DD4: .4byte 0x00000D4C
	thumb_func_end ov65_02234DA0

	thumb_func_start ov65_02234DD8
ov65_02234DD8: @ 0x02234DD8
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0xd5
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _02234DEA
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02234DEA:
	movs r2, #3
	adds r0, r1, #4
	str r2, [r5, r0]
	adds r0, r1, #0
	movs r2, #0xff
	adds r0, #8
	adds r1, #0xc
	str r2, [r5, r0]
	ldr r0, [r5, r1]
	bl FUN_0202404C
	movs r7, #0xd5
	ldr r6, _02234E34 @ =0x00000B18
	movs r4, #0
	lsls r7, r7, #4
_02234E08:
	ldr r0, [r5, r7]
	cmp r0, #2
	bne _02234E12
	cmp r4, #1
	beq _02234E2A
_02234E12:
	ldr r2, _02234E38 @ =0x00000D54
	ldr r3, _02234E3C @ =0x00000D58
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	adds r0, r5, r6
	adds r1, r4, #0
	bl ov65_02234E8C
	cmp r0, #1
	bne _02234E2A
	adds r0, r4, #1
	pop {r3, r4, r5, r6, r7, pc}
_02234E2A:
	adds r4, r4, #1
	cmp r4, #3
	blt _02234E08
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02234E34: .4byte 0x00000B18
_02234E38: .4byte 0x00000D54
_02234E3C: .4byte 0x00000D58
	thumb_func_end ov65_02234DD8

	thumb_func_start ov65_02234E40
ov65_02234E40: @ 0x02234E40
	ldr r3, _02234E4C @ =0x00000D54
	str r0, [r2, r3]
	adds r0, r3, #4
	str r1, [r2, r0]
	bx lr
	nop
_02234E4C: .4byte 0x00000D54
	thumb_func_end ov65_02234E40

	thumb_func_start ov65_02234E50
ov65_02234E50: @ 0x02234E50
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	movs r0, #0x87
	ldr r1, _02234E88 @ =0x02238930
	lsls r0, r0, #2
	adds r6, r5, r0
	lsls r7, r4, #2
	ldrb r1, [r1, r4]
	ldr r0, [r6, r7]
	bl FUN_02021D6C
	ldr r0, [r6, r7]
	movs r1, #4
	bl FUN_02021E50
	cmp r4, #1
	bne _02234E86
	movs r0, #0x8d
	movs r1, #0x11
	lsls r0, r0, #2
	mvns r1, r1
	adds r2, r1, #0
	ldr r0, [r5, r0]
	adds r2, #0xa
	bl FUN_020128C4
_02234E86:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02234E88: .4byte 0x02238930
	thumb_func_end ov65_02234E50

	thumb_func_start ov65_02234E8C
ov65_02234E8C: @ 0x02234E8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	movs r0, #0
	adds r5, r1, #0
	adds r6, r3, #0
	str r0, [sp, #8]
	cmp r2, r5
	bne _02234F0E
	movs r1, #0x87
	ldr r0, [sp]
	lsls r1, r1, #2
	lsls r4, r5, #2
	adds r7, r0, r1
	ldr r0, [r7, r4]
	bl FUN_02021E74
	str r0, [sp, #4]
	cmp r6, #0
	beq _02234EB8
	cmp r6, #2
	bne _02234F00
_02234EB8:
	cmp r6, #0
	bne _02234EC6
	ldr r1, _02234F5C @ =0x0223892C
	ldr r0, [r7, r4]
	ldrb r1, [r1, r5]
	bl FUN_02021D6C
_02234EC6:
	ldr r0, [sp, #4]
	cmp r0, #3
	bhs _02234F54
	movs r1, #2
	ldr r0, [r7, r4]
	lsls r1, r1, #0xc
	bl FUN_02021E2C
	ldr r0, [r7, r4]
	bl FUN_02021E74
	adds r4, r0, #0
	cmp r5, #1
	bne _02234EF6
	ldr r2, _02234F60 @ =0x0223893C
	movs r1, #0x8d
	ldr r0, [sp]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	movs r1, #0x11
	ldrsb r2, [r2, r4]
	mvns r1, r1
	bl FUN_020128C4
_02234EF6:
	cmp r4, #3
	blo _02234F54
	movs r0, #1
	str r0, [sp, #8]
	b _02234F54
_02234F00:
	cmp r6, #1
	bne _02234F54
	cmp r0, #3
	bhs _02234F54
	movs r0, #1
	str r0, [sp, #8]
	b _02234F54
_02234F0E:
	movs r1, #0x87
	ldr r0, [sp]
	lsls r1, r1, #2
	lsls r4, r5, #2
	adds r6, r0, r1
	ldr r0, [r6, r4]
	bl FUN_02021E24
	adds r7, r0, #0
	ldr r0, [r6, r4]
	bl FUN_02021E74
	str r0, [sp, #0xc]
	ldr r0, _02234F5C @ =0x0223892C
	ldrb r0, [r0, r5]
	cmp r7, r0
	bne _02234F4A
	ldr r1, _02234F64 @ =0x02238930
	ldr r0, [r6, r4]
	ldrb r1, [r1, r5]
	bl FUN_02021D6C
	ldr r1, [sp, #0xc]
	movs r2, #4
	subs r1, r2, r1
	lsls r1, r1, #0x10
	ldr r0, [r6, r4]
	lsrs r1, r1, #0x10
	bl FUN_02021E50
_02234F4A:
	movs r1, #2
	ldr r0, [r6, r4]
	lsls r1, r1, #0xc
	bl FUN_02021E2C
_02234F54:
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02234F5C: .4byte 0x0223892C
_02234F60: .4byte 0x0223893C
_02234F64: .4byte 0x02238930
	thumb_func_end ov65_02234E8C

	thumb_func_start ov65_02234F68
ov65_02234F68: @ 0x02234F68
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0
	adds r6, r1, #0
	mvns r0, r0
	cmp r6, r0
	beq _02234FA0
	movs r0, #0x36
	bl FUN_02025E6C
	adds r4, r0, #0
	ldr r0, [r5]
	adds r1, r6, #0
	bl FUN_0202AEF0
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_02025EC0
	ldr r0, _02234FA4 @ =0x00000B18
	movs r1, #0
	ldr r0, [r5, r0]
	adds r2, r4, #0
	bl FUN_0200B498
	adds r0, r4, #0
	bl FUN_020181C4
_02234FA0:
	pop {r4, r5, r6, pc}
	nop
_02234FA4: .4byte 0x00000B18
	thumb_func_end ov65_02234F68

	thumb_func_start ov65_02234FA8
ov65_02234FA8: @ 0x02234FA8
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r4, #0x20
	blo _02234FB6
	bl FUN_02022974
_02234FB6:
	ldr r1, [r5, #4]
	movs r0, #0x24
	adds r1, #0x24
	muls r0, r4, r0
	adds r0, r1, r0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_02234FA8

	thumb_func_start ov65_02234FC4
ov65_02234FC4: @ 0x02234FC4
	ldr r3, _02234FC8 @ =FUN_021D2234
	bx r3
	.align 2, 0
_02234FC8: .4byte FUN_021D2234
	thumb_func_end ov65_02234FC4

	thumb_func_start ov65_02234FCC
ov65_02234FCC: @ 0x02234FCC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0xf
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_020363E8
	ldr r0, [r5, #4]
	adds r0, #0x21
	ldrb r0, [r0]
	bl FUN_021D2584
	adds r0, r6, #0
	bl ov65_0222DD64
	cmp r0, #1
	bne _02234FF8
	movs r0, #1
	movs r1, #0x79
	bl FUN_021D2618
	b _02235000
_02234FF8:
	movs r0, #0
	movs r1, #0x79
	bl FUN_021D2618
_02235000:
	bl FUN_0209C3AC
	adds r0, r4, #0
	bl FUN_020380A0
	pop {r4, r5, r6, pc}
	thumb_func_end ov65_02234FCC

	thumb_func_start ov65_0223500C
ov65_0223500C: @ 0x0223500C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xd6
	lsls r0, r0, #4
	adds r4, r1, #0
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02235038
	movs r1, #1
	str r1, [r5, r0]
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov65_02235378
	cmp r4, #1
	bne _02235038
	adds r0, r5, #0
	movs r1, #9
	movs r2, #0
	bl ov65_02232B58
_02235038:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_0223500C

	thumb_func_start ov65_0223503C
ov65_0223503C: @ 0x0223503C
	push {r4, lr}
	movs r1, #0xd6
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r2, [r4, r1]
	cmp r2, #1
	bne _0223505E
	movs r2, #0
	str r2, [r4, r1]
	bl ov65_02232DFC
	movs r0, #0xe2
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	bl ov65_02235378
_0223505E:
	pop {r4, pc}
	thumb_func_end ov65_0223503C

	thumb_func_start ov65_02235060
ov65_02235060: @ 0x02235060
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r2, #0
	adds r4, r1, #0
	ldr r2, _02235120 @ =0x000006FC
	movs r1, #0
	adds r5, r0, #0
	str r3, [sp]
	blx FUN_020D5124
	ldr r0, [sp, #0x24]
	str r4, [r5, #4]
	subs r0, r0, #1
	lsrs r7, r0, #3
	ldr r0, [sp]
	adds r2, r6, #0
	str r0, [r5, #0x10]
	adds r0, r5, #0
	ldr r1, [r5, #4]
	adds r0, #0x14
	bl ov65_0223587C
	ldr r0, [r5, #0x10]
	adds r1, r4, #0
	bl ov65_02235918
	adds r0, r7, #0
	bl ov65_02236474
	add r2, sp, #4
	strh r0, [r2]
	lsrs r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	strh r0, [r2, #4]
	ldrh r1, [r2, #2]
	strh r1, [r2, #6]
	ldrh r0, [r2, #4]
	adds r2, r4, #0
	bl FUN_0222BCE8
	ldr r1, _02235124 @ =0x000006E4
	str r0, [r5, r1]
	adds r0, r7, #0
	bl ov65_02236480
	adds r1, r0, #0
	ldr r0, _02235124 @ =0x000006E4
	ldr r0, [r5, r0]
	bl FUN_0222BD50
	movs r0, #0x30
	adds r1, r4, #0
	bl FUN_0222BE18
	ldr r1, _02235128 @ =0x000006E8
	adds r2, r4, #0
	str r0, [r5, r1]
	ldr r1, [sp, #0x20]
	adds r0, r5, #0
	bl ov65_022357E8
	movs r0, #0x6f
	lsls r0, r0, #4
	adds r0, r5, r0
	bl FUN_0222D19C
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl ov65_0223582C
	ldr r0, [r5, #0x10]
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov65_02235920
	movs r1, #0x6d
	lsls r1, r1, #4
	adds r0, r5, #0
	adds r1, r5, r1
	adds r2, r6, #0
	bl ov65_022362B0
	movs r0, #0x80
	adds r1, r4, #0
	bl FUN_0222D848
	ldr r1, _0223512C @ =0x000006F8
	str r0, [r5, r1]
	movs r0, #1
	str r0, [r5]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02235120: .4byte 0x000006FC
_02235124: .4byte 0x000006E4
_02235128: .4byte 0x000006E8
_0223512C: .4byte 0x000006F8
	thumb_func_end ov65_02235060

	thumb_func_start ov65_02235130
ov65_02235130: @ 0x02235130
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02235184 @ =0x000006F8
	ldr r0, [r4, r0]
	bl FUN_0222D880
	adds r0, r4, #0
	bl ov65_0223586C
	movs r1, #0x6d
	lsls r1, r1, #4
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov65_022362EC
	adds r0, r4, #0
	bl ov65_0223560C
	adds r0, r4, #0
	bl ov65_0223581C
	ldr r0, _02235188 @ =0x000006E8
	ldr r0, [r4, r0]
	bl FUN_0222BE58
	ldr r0, _0223518C @ =0x000006E4
	ldr r0, [r4, r0]
	bl FUN_0222BD30
	adds r0, r4, #0
	adds r0, #0x14
	bl ov65_022358CC
	ldr r0, [r4, #0x10]
	bl ov65_0223591C
	ldr r2, _02235190 @ =0x000006FC
	adds r0, r4, #0
	movs r1, #0
	blx FUN_020D5124
	pop {r4, pc}
	.align 2, 0
_02235184: .4byte 0x000006F8
_02235188: .4byte 0x000006E8
_0223518C: .4byte 0x000006E4
_02235190: .4byte 0x000006FC
	thumb_func_end ov65_02235130

	thumb_func_start ov65_02235194
ov65_02235194: @ 0x02235194
	ldr r0, [r0]
	bx lr
	thumb_func_end ov65_02235194

	thumb_func_start ov65_02235198
ov65_02235198: @ 0x02235198
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02235234 @ =0x000006E8
	ldr r0, [r4, r0]
	bl FUN_0222BE84
	adds r0, r4, #0
	bl ov65_0223573C
	adds r0, r4, #0
	bl ov65_022356E8
	movs r1, #0x6f
	lsls r1, r1, #4
	adds r0, r4, r1
	subs r1, #0x24
	ldr r1, [r4, r1]
	ldr r1, [r1]
	bl FUN_0222D160
	ldr r1, _02235238 @ =0x000006F4
	ldr r0, [r4, r1]
	subs r1, r1, #4
	adds r1, r4, r1
	bl FUN_0222D228
	ldr r0, _0223523C @ =0x000006EC
	ldr r0, [r4, r0]
	bl FUN_0222CEE4
	adds r0, r4, #0
	bl ov65_02235778
	adds r0, r4, #0
	bl ov65_02235B78
	adds r0, r4, #0
	bl ov65_02235634
	cmp r0, #1
	bne _0223522E
	adds r0, r4, #0
	bl ov65_02235BE8
	cmp r0, #1
	bne _02235208
	adds r0, r4, #0
	bl ov65_02235B30
	ldr r0, _02235240 @ =0x021BF67C
	ldr r1, [r0, #0x44]
	movs r0, #0x80
	tst r0, r1
	beq _02235208
	movs r0, #1
	pop {r4, pc}
_02235208:
	ldr r0, _02235240 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _0223522E
	adds r0, r4, #0
	bl ov65_02235254
	cmp r0, #0
	beq _02235220
	movs r0, #2
	pop {r4, pc}
_02235220:
	adds r0, r4, #0
	bl ov65_02235654
	cmp r0, #1
	bne _0223522E
	movs r0, #3
	pop {r4, pc}
_0223522E:
	movs r0, #0
	pop {r4, pc}
	nop
_02235234: .4byte 0x000006E8
_02235238: .4byte 0x000006F4
_0223523C: .4byte 0x000006EC
_02235240: .4byte 0x021BF67C
	thumb_func_end ov65_02235198

	thumb_func_start ov65_02235244
ov65_02235244: @ 0x02235244
	push {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	beq _02235252
	ldr r0, [r0, #0x14]
	bl FUN_020219F8
_02235252:
	pop {r3, pc}
	thumb_func_end ov65_02235244

	thumb_func_start ov65_02235254
ov65_02235254: @ 0x02235254
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223526C @ =0x000006CC
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02235264
	bl FUN_02022974
_02235264:
	ldr r0, _0223526C @ =0x000006CC
	ldr r0, [r4, r0]
	ldrb r0, [r0, #0xa]
	pop {r4, pc}
	.align 2, 0
_0223526C: .4byte 0x000006CC
	thumb_func_end ov65_02235254

	thumb_func_start ov65_02235270
ov65_02235270: @ 0x02235270
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _022352C4 @ =0x000006CC
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02235282
	bl FUN_02022974
_02235282:
	ldr r0, _022352C4 @ =0x000006CC
	ldr r0, [r4, r0]
	ldr r0, [r0]
	bl FUN_0222C0E4
	add r2, sp, #0
	strh r0, [r2]
	lsrs r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	movs r1, #4
	strh r0, [r2, #4]
	ldrh r0, [r2, #2]
	strh r0, [r2, #6]
	ldrsh r3, [r2, r1]
	ldr r0, _022352C8 @ =0x000006E4
	asrs r1, r3, #3
	lsrs r1, r1, #0x1c
	adds r1, r3, r1
	movs r3, #6
	ldrsh r3, [r2, r3]
	lsls r1, r1, #0xc
	ldr r0, [r4, r0]
	asrs r2, r3, #3
	lsrs r2, r2, #0x1c
	adds r2, r3, r2
	lsls r2, r2, #0xc
	lsrs r1, r1, #0x10
	lsrs r2, r2, #0x10
	bl FUN_0222BDE4
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_022352C4: .4byte 0x000006CC
_022352C8: .4byte 0x000006E4
	thumb_func_end ov65_02235270

	thumb_func_start ov65_022352CC
ov65_022352CC: @ 0x022352CC
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _02235324 @ =0x000006CC
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _022352DE
	bl FUN_02022974
_022352DE:
	ldr r0, _02235324 @ =0x000006CC
	ldr r0, [r4, r0]
	ldr r0, [r0]
	bl FUN_0222C0E4
	add r2, sp, #0
	strh r0, [r2]
	lsrs r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	movs r1, #4
	strh r0, [r2, #4]
	ldrh r0, [r2, #2]
	strh r0, [r2, #6]
	ldrsh r3, [r2, r1]
	ldr r0, _02235328 @ =0x000006E4
	asrs r1, r3, #3
	lsrs r1, r1, #0x1c
	adds r1, r3, r1
	movs r3, #6
	ldrsh r3, [r2, r3]
	lsls r1, r1, #0xc
	ldr r0, [r4, r0]
	asrs r2, r3, #3
	lsrs r2, r2, #0x1c
	adds r2, r3, r2
	asrs r2, r2, #4
	adds r2, r2, #1
	lsls r2, r2, #0x10
	lsrs r1, r1, #0x10
	lsrs r2, r2, #0x10
	bl FUN_0222BDE4
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_02235324: .4byte 0x000006CC
_02235328: .4byte 0x000006E4
	thumb_func_end ov65_022352CC

	thumb_func_start ov65_0223532C
ov65_0223532C: @ 0x0223532C
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r5]
	bl FUN_0222C0E4
	add r1, sp, #0
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, [r5, #4]
	bl FUN_0222D014
	adds r2, r0, #0
	add r1, sp, #0
	adds r0, r4, #0
	mov r4, sp
	ldrh r3, [r1, #4]
	subs r4, r4, #4
	subs r2, r2, #2
	strh r3, [r4]
	ldrh r1, [r1, #6]
	strh r1, [r4, #2]
	ldr r1, [r4]
	bl ov65_02235B88
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_0223532C

	thumb_func_start ov65_02235370
ov65_02235370: @ 0x02235370
	ldr r3, _02235374 @ =ov65_02235BD8
	bx r3
	.align 2, 0
_02235374: .4byte ov65_02235BD8
	thumb_func_end ov65_02235370

	thumb_func_start ov65_02235378
ov65_02235378: @ 0x02235378
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov65_02235378

	thumb_func_start ov65_0223537C
ov65_0223537C: @ 0x0223537C
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov65_0223537C

	thumb_func_start ov65_02235380
ov65_02235380: @ 0x02235380
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r6, r1, #0
	bl ov65_02235D7C
	adds r4, r0, #0
	ldr r0, _022353E4 @ =0x000006CC
	add r1, sp, #0xc
	str r4, [r5, r0]
	adds r0, r5, #0
	bl ov65_02235D08
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r3, #0
	str r3, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	add r2, sp, #0xc
	str r3, [sp, #8]
	bl ov65_02235DE4
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_02235E48
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl ov65_02235DAC
	movs r1, #0x6f
	lsls r1, r1, #4
	adds r0, r5, r1
	subs r1, #0x24
	ldr r1, [r5, r1]
	ldr r1, [r1]
	bl FUN_0222D160
	ldr r1, _022353E8 @ =0x000006F4
	ldr r0, [r5, r1]
	subs r1, r1, #4
	adds r1, r5, r1
	bl FUN_0222D228
	adds r0, r4, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_022353E4: .4byte 0x000006CC
_022353E8: .4byte 0x000006F4
	thumb_func_end ov65_02235380

	thumb_func_start ov65_022353EC
ov65_022353EC: @ 0x022353EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	adds r6, r2, #0
	adds r7, r1, #0
	bl ov65_02235D7C
	adds r4, r0, #0
	adds r0, r5, #0
	add r1, sp, #0x14
	subs r2, r6, #1
	bl ov65_02235C64
	ldr r0, _02235474 @ =0x000006CC
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02235442
	ldr r0, [r0]
	bl FUN_0222C0E4
	add r1, sp, #0xc
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	movs r2, #8
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	movs r0, #4
	ldrsh r0, [r1, r0]
	ldrsh r2, [r1, r2]
	cmp r0, r2
	bne _02235442
	movs r0, #6
	movs r2, #0xa
	ldrsh r0, [r1, r0]
	ldrsh r1, [r1, r2]
	cmp r0, r1
	bne _02235442
	add sp, #0x18
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02235442:
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r1, r4, #0
	add r2, sp, #0x14
	adds r3, r6, #0
	bl ov65_02235DE4
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_02235E68
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl ov65_02235DAC
	adds r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02235474: .4byte 0x000006CC
	thumb_func_end ov65_022353EC

	thumb_func_start ov65_02235478
ov65_02235478: @ 0x02235478
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	movs r1, #6
	bl FUN_0222BF90
	ldr r0, _022354B0 @ =ov65_022361B0
	movs r1, #0
	str r0, [r4, #0x10]
	ldr r0, _022354B4 @ =ov65_02235EF8
	str r0, [r4, #0x18]
	movs r0, #2
	strh r0, [r4, #0xc]
	strh r1, [r4, #8]
	ldr r0, [r4, #4]
	bl FUN_0222CFA4
	ldr r0, [r4, #4]
	bl FUN_0222CFA8
	adds r0, r5, #0
	movs r1, #4
	adds r2, r4, #0
	bl ov65_02236250
	pop {r3, r4, r5, pc}
	nop
_022354B0: .4byte ov65_022361B0
_022354B4: .4byte ov65_02235EF8
	thumb_func_end ov65_02235478

	thumb_func_start ov65_022354B8
ov65_022354B8: @ 0x022354B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl FUN_0222CECC
	ldr r0, [r4]
	bl FUN_0222BF08
	movs r1, #0x1c
	movs r0, #0
_022354CC:
	strb r0, [r4]
	adds r4, r4, #1
	subs r1, r1, #1
	bne _022354CC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_022354B8

	thumb_func_start ov65_022354D8
ov65_022354D8: @ 0x022354D8
	push {r3, lr}
	ldr r0, [r0]
	movs r1, #4
	bl FUN_0222BF90
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r3, pc}
	thumb_func_end ov65_022354D8

	thumb_func_start ov65_022354E8
ov65_022354E8: @ 0x022354E8
	push {r3, lr}
	ldr r0, [r0]
	movs r1, #6
	bl FUN_0222BF90
	bl FUN_0222C0AC
	pop {r3, pc}
	thumb_func_end ov65_022354E8

	thumb_func_start ov65_022354F8
ov65_022354F8: @ 0x022354F8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r1, #0
	adds r6, r0, #0
	ldr r0, [r5, #0x10]
	adds r4, r2, #0
	str r0, [r5, #0x14]
	ldr r0, _02235568 @ =ov65_0223622C
	movs r1, #4
	str r0, [r5, #0x10]
	ldrh r0, [r5, #0xc]
	strh r0, [r5, #0xe]
	movs r0, #5
	strh r0, [r5, #0xc]
	ldr r0, [r5]
	bl FUN_0222BF90
	adds r3, r0, #0
	adds r0, r6, #0
	movs r1, #0
	adds r2, r4, #0
	bl ov65_02236230
	ldr r0, [r5, #4]
	movs r1, #0
	bl FUN_0222CFA4
	ldr r0, [r5, #4]
	adds r1, r4, #0
	bl FUN_0222D020
	ldr r0, [r5]
	movs r1, #0
	bl FUN_0222BF90
	add r1, sp, #0
	strh r0, [r1]
	ldr r0, [r5]
	movs r1, #1
	bl FUN_0222BF90
	add r1, sp, #0
	strh r0, [r1, #2]
	mov r3, sp
	ldrh r2, [r1]
	ldr r0, [r5, #4]
	subs r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl FUN_0222CFE0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02235568: .4byte ov65_0223622C
	thumb_func_end ov65_022354F8

	thumb_func_start ov65_0223556C
ov65_0223556C: @ 0x0223556C
	push {r3, lr}
	cmp r1, #0
	beq _0223558A
	ldr r0, [r1, #0x14]
	cmp r0, #0
	beq _0223558A
	str r0, [r1, #0x10]
	movs r0, #0
	str r0, [r1, #0x14]
	ldrh r0, [r1, #0xe]
	strh r0, [r1, #0xc]
	ldr r0, [r1, #4]
	movs r1, #1
	bl FUN_0222CFA4
_0223558A:
	pop {r3, pc}
	thumb_func_end ov65_0223556C

	thumb_func_start ov65_0223558C
ov65_0223558C: @ 0x0223558C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r0, #0
	adds r0, r5, #0
	adds r4, r2, #0
	bl ov65_02236278
	cmp r0, #0
	bne _022355A2
	strb r4, [r5, #0xb]
	pop {r4, r5, r6, pc}
_022355A2:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl ov65_0223628C
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov65_0223558C

	thumb_func_start ov65_022355B0
ov65_022355B0: @ 0x022355B0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov65_02235654
	cmp r0, #1
	bne _022355E6
	adds r0, r5, #0
	bl ov65_022352CC
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, #3
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	bmi _022355D2
	cmp r4, #4
	blt _022355D6
_022355D2:
	bl FUN_02022974
_022355D6:
	movs r0, #0x6d
	lsls r0, r0, #4
	lsls r1, r4, #0x18
	adds r0, r5, r0
	lsrs r1, r1, #0x18
	bl ov65_02236440
	pop {r3, r4, r5, pc}
_022355E6:
	bl FUN_02022974
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_022355B0

	thumb_func_start ov65_022355EC
ov65_022355EC: @ 0x022355EC
	movs r1, #0x6d
	lsls r1, r1, #4
	ldr r3, _022355F8 @ =ov65_02236464
	adds r0, r0, r1
	bx r3
	nop
_022355F8: .4byte ov65_02236464
	thumb_func_end ov65_022355EC

	thumb_func_start ov65_022355FC
ov65_022355FC: @ 0x022355FC
	movs r1, #0x6d
	lsls r1, r1, #4
	ldr r3, _02235608 @ =ov65_02236304
	adds r1, r0, r1
	bx r3
	nop
_02235608: .4byte ov65_02236304
	thumb_func_end ov65_022355FC

	thumb_func_start ov65_0223560C
ov65_0223560C: @ 0x0223560C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x63
	lsls r0, r0, #2
	movs r6, #0
	adds r4, r5, r0
	adds r7, r0, #0
_0223561A:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02235626
	adds r0, r4, #0
	bl ov65_022354B8
_02235626:
	adds r6, r6, #1
	adds r5, #0x1c
	adds r4, #0x1c
	cmp r6, #0x30
	blt _0223561A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov65_0223560C

	thumb_func_start ov65_02235634
ov65_02235634: @ 0x02235634
	push {r3, lr}
	ldr r1, _02235650 @ =0x000006CC
	ldr r0, [r0, r1]
	movs r1, #5
	ldr r0, [r0]
	bl FUN_0222BF90
	cmp r0, #0
	bne _0223564A
	movs r0, #1
	pop {r3, pc}
_0223564A:
	movs r0, #0
	pop {r3, pc}
	nop
_02235650: .4byte 0x000006CC
	thumb_func_end ov65_02235634

	thumb_func_start ov65_02235654
ov65_02235654: @ 0x02235654
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, _022356E0 @ =0x000006CC
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl FUN_0222C0E4
	add r1, sp, #0
	strh r0, [r1, #4]
	lsrs r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	ldr r0, _022356E0 @ =0x000006CC
	movs r1, #6
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl FUN_0222BF90
	adds r4, r0, #0
	add r0, sp, #0
	mov r2, sp
	ldrh r1, [r0, #0xc]
	subs r2, r2, #4
	strh r1, [r2]
	ldrh r0, [r0, #0xe]
	adds r1, r4, #0
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl FUN_0222C078
	add r2, sp, #0
	strh r0, [r2]
	lsrs r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	movs r1, #8
	strh r0, [r2, #8]
	ldrh r0, [r2, #2]
	strh r0, [r2, #0xa]
	ldrsh r3, [r2, r1]
	ldr r0, _022356E4 @ =0x000006E4
	asrs r1, r3, #3
	lsrs r1, r1, #0x1c
	adds r1, r3, r1
	movs r3, #0xa
	ldrsh r3, [r2, r3]
	lsls r1, r1, #0xc
	ldr r0, [r5, r0]
	asrs r2, r3, #3
	lsrs r2, r2, #0x1c
	adds r2, r3, r2
	lsls r2, r2, #0xc
	lsrs r1, r1, #0x10
	lsrs r2, r2, #0x10
	bl FUN_0222BDE4
	cmp r4, #0
	bne _022356DA
	cmp r0, #2
	bne _022356DA
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, pc}
_022356DA:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_022356E0: .4byte 0x000006CC
_022356E4: .4byte 0x000006E4
	thumb_func_end ov65_02235654

	thumb_func_start ov65_022356E8
ov65_022356E8: @ 0x022356E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _02235730 @ =0x000006F8
	add r1, sp, #8
	ldr r0, [r5, r0]
	bl FUN_0222D8D0
	cmp r0, #1
	bne _0223572C
	ldr r7, _02235734 @ =0x000006E8
	add r6, sp, #0
	add r4, sp, #8
_02235702:
	ldr r0, _02235738 @ =0x000006E4
	ldr r1, [r5, r7]
	ldr r0, [r5, r0]
	adds r2, r4, #0
	adds r3, r6, #0
	bl FUN_0222CA88
	cmp r0, #1
	bne _0223571E
	ldr r0, _02235734 @ =0x000006E8
	adds r1, r6, #0
	ldr r0, [r5, r0]
	bl FUN_0222BE70
_0223571E:
	ldr r0, _02235730 @ =0x000006F8
	adds r1, r4, #0
	ldr r0, [r5, r0]
	bl FUN_0222D8D0
	cmp r0, #1
	beq _02235702
_0223572C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02235730: .4byte 0x000006F8
_02235734: .4byte 0x000006E8
_02235738: .4byte 0x000006E4
	thumb_func_end ov65_022356E8

	thumb_func_start ov65_0223573C
ov65_0223573C: @ 0x0223573C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0x63
	lsls r0, r0, #2
	movs r6, #0
	adds r4, r7, #0
	adds r5, r7, r0
_0223574A:
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223576A
	movs r2, #0x67
	lsls r2, r2, #2
	ldr r2, [r4, r2]
	adds r0, r7, #0
	adds r1, r5, #0
	blx r2
	cmp r0, #1
	bne _0223576A
	adds r0, r5, #0
	bl ov65_022354B8
_0223576A:
	adds r6, r6, #1
	adds r4, #0x1c
	adds r5, #0x1c
	cmp r6, #0x30
	blt _0223574A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov65_0223573C

	thumb_func_start ov65_02235778
ov65_02235778: @ 0x02235778
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0x63
	lsls r0, r0, #2
	movs r6, #0
	adds r4, r7, #0
	adds r5, r7, r0
_02235786:
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223579C
	movs r2, #0x69
	lsls r2, r2, #2
	ldr r2, [r4, r2]
	adds r0, r7, #0
	adds r1, r5, #0
	blx r2
_0223579C:
	adds r6, r6, #1
	adds r4, #0x1c
	adds r5, #0x1c
	cmp r6, #0x30
	blt _02235786
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_02235778

	thumb_func_start ov65_022357A8
ov65_022357A8: @ 0x022357A8
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	ldr r1, _022357E4 @ =0x000006E8
	ldr r1, [r4, r1]
	bl FUN_0222C1C4
	cmp r0, #0
	beq _022357DE
	movs r2, #0x63
	movs r1, #0
	adds r5, r4, #0
	lsls r2, r2, #2
_022357C2:
	ldr r3, [r5, r2]
	cmp r3, r0
	bne _022357D6
	movs r0, #0x63
	lsls r0, r0, #2
	adds r2, r4, r0
	movs r0, #0x1c
	muls r0, r1, r0
	adds r0, r2, r0
	pop {r3, r4, r5, pc}
_022357D6:
	adds r1, r1, #1
	adds r5, #0x1c
	cmp r1, #0x30
	blt _022357C2
_022357DE:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_022357E4: .4byte 0x000006E8
	thumb_func_end ov65_022357A8

	thumb_func_start ov65_022357E8
ov65_022357E8: @ 0x022357E8
	push {r4, r5, lr}
	sub sp, #0xc
	adds r3, r1, #0
	movs r1, #0
	adds r5, r0, #0
	adds r4, r2, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r5, #0x14]
	movs r2, #0x30
	bl FUN_0222CD2C
	ldr r1, _02235818 @ =0x000006EC
	adds r2, r4, #0
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	movs r1, #2
	bl FUN_0222CE30
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02235818: .4byte 0x000006EC
	thumb_func_end ov65_022357E8

	thumb_func_start ov65_0223581C
ov65_0223581C: @ 0x0223581C
	ldr r1, _02235824 @ =0x000006EC
	ldr r3, _02235828 @ =FUN_0222CD9C
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_02235824: .4byte 0x000006EC
_02235828: .4byte FUN_0222CD9C
	thumb_func_end ov65_0223581C

	thumb_func_start ov65_0223582C
ov65_0223582C: @ 0x0223582C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r6, _02235864 @ =0x02238BCC
	adds r4, r1, #0
	adds r5, r0, #0
	add r2, sp, #0
	movs r1, #0xb
_0223583A:
	ldrb r0, [r6]
	adds r6, r6, #1
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _0223583A
	add r0, sp, #0
	ldrb r1, [r0, #9]
	add r2, sp, #0
	adds r1, r1, r3
	strb r1, [r0, #9]
	adds r0, r5, #0
	ldr r1, [r5, #0x10]
	adds r0, #0x18
	adds r3, r4, #0
	bl FUN_0222D1C0
	ldr r1, _02235868 @ =0x000006F4
	str r0, [r5, r1]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02235864: .4byte 0x02238BCC
_02235868: .4byte 0x000006F4
	thumb_func_end ov65_0223582C

	thumb_func_start ov65_0223586C
ov65_0223586C: @ 0x0223586C
	ldr r1, _02235874 @ =0x000006F4
	ldr r3, _02235878 @ =FUN_0222D214
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_02235874: .4byte 0x000006F4
_02235878: .4byte FUN_0222D214
	thumb_func_end ov65_0223586C

	thumb_func_start ov65_0223587C
ov65_0223587C: @ 0x0223587C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	str r2, [sp]
	movs r0, #0x60
	adds r1, r7, #4
	adds r2, r6, #0
	bl FUN_020095C4
	movs r2, #0x32
	str r0, [r7]
	adds r0, r7, #4
	movs r1, #0
	lsls r2, r2, #0x10
	bl FUN_0200964C
	movs r4, #0
	adds r5, r7, #0
_022358A0:
	movs r0, #0x10
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_02009714
	movs r1, #0x4b
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _022358A0
	ldr r2, [sp]
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov65_022358F8
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov65_02235908
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_0223587C

	thumb_func_start ov65_022358CC
ov65_022358CC: @ 0x022358CC
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	bl ov65_02235910
	adds r0, r7, #0
	bl ov65_02235900
	movs r6, #0x4b
	movs r4, #0
	adds r5, r7, #0
	lsls r6, r6, #2
_022358E2:
	ldr r0, [r5, r6]
	bl FUN_02009754
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _022358E2
	ldr r0, [r7]
	bl FUN_02021964
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_022358CC

	thumb_func_start ov65_022358F8
ov65_022358F8: @ 0x022358F8
	ldr r3, _022358FC @ =ov65_02235960
	bx r3
	.align 2, 0
_022358FC: .4byte ov65_02235960
	thumb_func_end ov65_022358F8

	thumb_func_start ov65_02235900
ov65_02235900: @ 0x02235900
	ldr r3, _02235904 @ =ov65_02235A60
	bx r3
	.align 2, 0
_02235904: .4byte ov65_02235A60
	thumb_func_end ov65_02235900

	thumb_func_start ov65_02235908
ov65_02235908: @ 0x02235908
	ldr r3, _0223590C @ =ov65_02235A94
	bx r3
	.align 2, 0
_0223590C: .4byte ov65_02235A94
	thumb_func_end ov65_02235908

	thumb_func_start ov65_02235910
ov65_02235910: @ 0x02235910
	ldr r3, _02235914 @ =ov65_02235B14
	bx r3
	.align 2, 0
_02235914: .4byte ov65_02235B14
	thumb_func_end ov65_02235910

	thumb_func_start ov65_02235918
ov65_02235918: @ 0x02235918
	bx lr
	.align 2, 0
	thumb_func_end ov65_02235918

	thumb_func_start ov65_0223591C
ov65_0223591C: @ 0x0223591C
	bx lr
	.align 2, 0
	thumb_func_end ov65_0223591C

	thumb_func_start ov65_02235920
ov65_02235920: @ 0x02235920
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r0, #0
	movs r0, #1
	adds r4, r2, #0
	lsls r0, r0, #8
	movs r2, #0
	adds r5, r1, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x1e
	adds r3, r2, #0
	str r5, [sp, #4]
	bl FUN_02007130
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0201975C
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x1d
	adds r2, r6, #0
	str r5, [sp, #0xc]
	bl FUN_020070E8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov65_02235920

	thumb_func_start ov65_02235960
ov65_02235960: @ 0x02235960
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	adds r4, r1, #0
	movs r1, #0x32
	adds r5, r0, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r6, r2, #0
	str r4, [sp, #8]
	adds r1, #0xfa
	ldr r0, [r5, r1]
	adds r1, r6, #0
	movs r2, #0x25
	movs r3, #0
	bl FUN_02009A4C
	movs r1, #0x4f
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r1, #0x32
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	adds r1, #0xfe
	ldr r0, [r5, r1]
	adds r1, r6, #0
	movs r2, #0x24
	movs r3, #0
	bl FUN_02009B04
	movs r1, #5
	lsls r1, r1, #6
	str r0, [r5, r1]
	movs r0, #0x32
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r4, [sp, #8]
	subs r1, #0xc
	ldr r0, [r5, r1]
	adds r1, r6, #0
	movs r2, #0x26
	movs r3, #0
	bl FUN_02009BC4
	movs r1, #0x51
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0x32
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	str r4, [sp, #8]
	subs r1, #0xc
	ldr r0, [r5, r1]
	adds r1, r6, #0
	movs r2, #0x27
	movs r3, #0
	bl FUN_02009BC4
	movs r1, #0x52
	lsls r1, r1, #2
	str r0, [r5, r1]
	subs r1, #0xc
	ldr r0, [r5, r1]
	bl FUN_0200A3DC
	cmp r0, #1
	beq _022359F4
	bl FUN_02022974
_022359F4:
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	bl FUN_0200A640
	cmp r0, #1
	beq _02235A06
	bl FUN_02022974
_02235A06:
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02009D4C
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	bl FUN_02009D4C
	movs r1, #0x32
	adds r0, r1, #0
	str r1, [sp]
	subs r0, #0x33
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	movs r3, #0x4d
	str r0, [sp, #0xc]
	movs r2, #2
	str r2, [sp, #0x10]
	adds r2, r1, #0
	adds r2, #0xfa
	ldr r2, [r5, r2]
	lsls r3, r3, #2
	str r2, [sp, #0x14]
	adds r2, r1, #0
	adds r2, #0xfe
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	ldr r2, [r5, r3]
	str r2, [sp, #0x1c]
	adds r2, r3, #4
	ldr r2, [r5, r2]
	adds r3, #0x18
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	adds r0, r5, r3
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_020093B4
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov65_02235960

	thumb_func_start ov65_02235A60
ov65_02235A60: @ 0x02235A60
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200A4E4
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	bl FUN_0200A6DC
	movs r7, #0x4b
	lsls r7, r7, #2
	adds r6, r7, #0
	movs r4, #0
	adds r6, #0x10
_02235A82:
	ldr r0, [r5, r7]
	ldr r1, [r5, r6]
	bl FUN_02009D68
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _02235A82
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_02235A60

	thumb_func_start ov65_02235A94
ov65_02235A94: @ 0x02235A94
	push {r3, r4, r5, lr}
	sub sp, #0x30
	adds r4, r0, #0
	add r2, sp, #0
	movs r0, #0
	adds r3, r1, #0
	adds r5, r2, #0
	adds r1, r0, #0
	stm r5!, {r0, r1}
	stm r5!, {r0, r1}
	stm r5!, {r0, r1}
	stm r5!, {r0, r1}
	stm r5!, {r0, r1}
	stm r5!, {r0, r1}
	ldr r1, [r4]
	str r1, [sp]
	movs r1, #0x53
	lsls r1, r1, #2
	adds r1, r4, r1
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #0x28]
	lsls r1, r1, #0xc
	str r0, [sp, #0x24]
	adds r0, r2, #0
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r3, [sp, #0x2c]
	bl FUN_02021AA0
	movs r1, #0x17
	lsls r1, r1, #4
	str r0, [r4, r1]
	add r0, sp, #0
	bl FUN_02021AA0
	movs r1, #0x5d
	lsls r1, r1, #2
	str r0, [r4, r1]
	subs r0, r1, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #0x17
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021D6C
	add sp, #0x30
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_02235A94

	thumb_func_start ov65_02235B14
ov65_02235B14: @ 0x02235B14
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x17
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02021BD4
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02021BD4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_02235B14

	thumb_func_start ov65_02235B30
ov65_02235B30: @ 0x02235B30
	push {r4, lr}
	sub sp, #0x10
	add r1, sp, #0
	adds r4, r0, #0
	bl ov65_02235D08
	add r2, sp, #0
	movs r0, #0
	ldrsh r1, [r2, r0]
	adds r1, #8
	strh r1, [r2]
	movs r1, #2
	ldrsh r3, [r2, r1]
	adds r3, #0x20
	strh r3, [r2, #2]
	ldrsh r0, [r2, r0]
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	ldrsh r0, [r2, r1]
	add r1, sp, #4
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02021C50
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021CAC
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_02235B30

	thumb_func_start ov65_02235B78
ov65_02235B78: @ 0x02235B78
	movs r1, #0x61
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _02235B84 @ =FUN_02021CAC
	movs r1, #0
	bx r3
	.align 2, 0
_02235B84: .4byte FUN_02021CAC
	thumb_func_end ov65_02235B78

	thumb_func_start ov65_02235B88
ov65_02235B88: @ 0x02235B88
	push {r0, r1, r2, r3}
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	add r1, sp, #0x18
	movs r0, #4
	ldrsh r0, [r1, r0]
	adds r4, r2, #0
	adds r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #4
	str r0, [sp]
	movs r0, #6
	ldrsh r0, [r1, r0]
	add r1, sp, #0
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02021C50
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl FUN_02021F58
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CAC
	add sp, #0xc
	pop {r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end ov65_02235B88

	thumb_func_start ov65_02235BD8
ov65_02235BD8: @ 0x02235BD8
	movs r1, #0x62
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _02235BE4 @ =FUN_02021CAC
	movs r1, #0
	bx r3
	.align 2, 0
_02235BE4: .4byte FUN_02021CAC
	thumb_func_end ov65_02235BD8

	thumb_func_start ov65_02235BE8
ov65_02235BE8: @ 0x02235BE8
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _02235C5C @ =0x000006CC
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02235BFC
	add sp, #8
	movs r0, #0
	pop {r3, r4, r5, pc}
_02235BFC:
	ldr r0, [r0]
	bl FUN_0222C0E4
	add r1, sp, #0
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	ldr r0, _02235C5C @ =0x000006CC
	movs r1, #6
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl FUN_0222BF90
	adds r4, r0, #0
	ldr r0, _02235C60 @ =0x000006E4
	add r2, sp, #0
	movs r1, #4
	ldrsh r3, [r2, r1]
	ldr r0, [r5, r0]
	asrs r1, r3, #3
	lsrs r1, r1, #0x1c
	adds r1, r3, r1
	movs r3, #6
	ldrsh r3, [r2, r3]
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x10
	asrs r2, r3, #3
	lsrs r2, r2, #0x1c
	adds r2, r3, r2
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x10
	bl FUN_0222BDE4
	cmp r0, #0xf
	bne _02235C54
	cmp r4, #1
	bne _02235C54
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, pc}
_02235C54:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02235C5C: .4byte 0x000006CC
_02235C60: .4byte 0x000006E4
	thumb_func_end ov65_02235BE8

	thumb_func_start ov65_02235C64
ov65_02235C64: @ 0x02235C64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	movs r0, #7
	adds r4, r2, #0
	ands r4, r0
	ldr r0, _02235D04 @ =0x000006E4
	str r1, [sp]
	ldr r0, [r5, r0]
	lsrs r7, r2, #3
	bl FUN_0222BD48
	adds r6, r0, #0
	ldr r0, _02235D04 @ =0x000006E4
	ldr r0, [r5, r0]
	bl FUN_0222BD4C
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	cmp r0, #0
	bls _02235CFC
	adds r0, r7, #3
	str r0, [sp, #0x14]
	adds r0, r4, #7
	str r0, [sp, #0xc]
_02235C9A:
	movs r4, #0
	cmp r6, #0
	bls _02235CF0
	ldr r0, [sp, #8]
	adds r0, r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_02235CB0:
	ldr r0, _02235D04 @ =0x000006E4
	lsls r1, r4, #0x10
	ldr r0, [r5, r0]
	lsrs r1, r1, #0x10
	adds r2, r7, #0
	bl FUN_0222BDE4
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bne _02235CEA
	ldr r0, _02235D04 @ =0x000006E4
	lsls r1, r4, #0x10
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x10]
	lsrs r1, r1, #0x10
	bl FUN_0222BDE4
	ldr r1, [sp, #0x14]
	cmp r0, r1
	bne _02235CEA
	ldr r0, [sp]
	lsls r1, r4, #4
	strh r1, [r0]
	ldr r0, [sp, #8]
	lsls r1, r0, #4
	ldr r0, [sp]
	add sp, #0x18
	strh r1, [r0, #2]
	pop {r3, r4, r5, r6, r7, pc}
_02235CEA:
	adds r4, r4, #1
	cmp r4, r6
	blo _02235CB0
_02235CF0:
	ldr r0, [sp, #8]
	adds r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	cmp r1, r0
	blo _02235C9A
_02235CFC:
	bl FUN_02022974
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02235D04: .4byte 0x000006E4
	thumb_func_end ov65_02235C64

	thumb_func_start ov65_02235D08
ov65_02235D08: @ 0x02235D08
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r0, _02235D78 @ =0x000006E4
	str r1, [sp]
	ldr r0, [r7, r0]
	bl FUN_0222BD48
	adds r5, r0, #0
	ldr r0, _02235D78 @ =0x000006E4
	ldr r0, [r7, r0]
	bl FUN_0222BD4C
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	cmp r0, #0
	bls _02235D70
_02235D2E:
	movs r4, #0
	cmp r5, #0
	bls _02235D64
	ldr r0, [sp, #8]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_02235D3A:
	ldr r0, _02235D78 @ =0x000006E4
	lsls r1, r4, #0x10
	ldr r0, [r7, r0]
	lsrs r1, r1, #0x10
	adds r2, r6, #0
	bl FUN_0222BDE4
	cmp r0, #0xf
	bne _02235D5E
	ldr r0, [sp]
	lsls r1, r4, #4
	strh r1, [r0]
	ldr r0, [sp, #8]
	lsls r1, r0, #4
	ldr r0, [sp]
	add sp, #0xc
	strh r1, [r0, #2]
	pop {r4, r5, r6, r7, pc}
_02235D5E:
	adds r4, r4, #1
	cmp r4, r5
	blo _02235D3A
_02235D64:
	ldr r0, [sp, #8]
	adds r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	cmp r1, r0
	blo _02235D2E
_02235D70:
	bl FUN_02022974
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02235D78: .4byte 0x000006E4
	thumb_func_end ov65_02235D08

	thumb_func_start ov65_02235D7C
ov65_02235D7C: @ 0x02235D7C
	push {r4, lr}
	movs r2, #0x63
	movs r1, #0
	adds r4, r0, #0
	lsls r2, r2, #2
_02235D86:
	ldr r3, [r4, r2]
	cmp r3, #0
	bne _02235D9A
	movs r2, #0x63
	lsls r2, r2, #2
	adds r2, r0, r2
	movs r0, #0x1c
	muls r0, r1, r0
	adds r0, r2, r0
	pop {r4, pc}
_02235D9A:
	adds r1, r1, #1
	adds r4, #0x1c
	cmp r1, #0x30
	blt _02235D86
	bl FUN_02022974
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_02235D7C

	thumb_func_start ov65_02235DAC
ov65_02235DAC: @ 0x02235DAC
	push {r3, r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _02235DE0 @ =0x000006EC
	adds r5, r1, #0
	ldr r0, [r3, r0]
	ldr r1, [r5]
	ldr r3, [r3, #4]
	adds r4, r2, #0
	bl FUN_0222CE44
	str r0, [r5, #4]
	cmp r4, #0
	bne _02235DDC
	ldr r0, [r5, #4]
	movs r1, #0
	bl FUN_0222CFA4
	ldr r0, [r5, #4]
	bl FUN_0222CFA8
	ldr r0, [r5, #4]
	movs r1, #0
	bl FUN_0222D008
_02235DDC:
	pop {r3, r4, r5, pc}
	nop
_02235DE0: .4byte 0x000006EC
	thumb_func_end ov65_02235DAC

	thumb_func_start ov65_02235DE4
ov65_02235DE4: @ 0x02235DE4
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	movs r1, #0
	ldrsh r1, [r2, r1]
	add r5, sp, #0
	strh r1, [r5]
	movs r1, #2
	ldrsh r1, [r2, r1]
	strh r1, [r5, #2]
	ldr r1, [sp, #0x20]
	strh r3, [r5, #4]
	strh r1, [r5, #6]
	add r1, sp, #8
	ldrb r2, [r1, #0x14]
	strh r2, [r5, #8]
	ldrh r1, [r1, #0x10]
	strh r1, [r5, #0xa]
	ldr r1, _02235E18 @ =0x000006E8
	ldr r0, [r0, r1]
	add r1, sp, #0
	bl FUN_0222BEC0
	str r0, [r4]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_02235E18: .4byte 0x000006E8
	thumb_func_end ov65_02235DE4

	thumb_func_start ov65_02235E1C
ov65_02235E1C: @ 0x02235E1C
	ldrh r0, [r0, #0xc]
	cmp r0, #5
	bhi _02235E42
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02235E2E: @ jump table
	.2byte _02235E3A - _02235E2E - 2 @ case 0
	.2byte _02235E3E - _02235E2E - 2 @ case 1
	.2byte _02235E3E - _02235E2E - 2 @ case 2
	.2byte _02235E3A - _02235E2E - 2 @ case 3
	.2byte _02235E3A - _02235E2E - 2 @ case 4
	.2byte _02235E3E - _02235E2E - 2 @ case 5
_02235E3A:
	movs r0, #1
	bx lr
_02235E3E:
	movs r0, #0
	bx lr
_02235E42:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov65_02235E1C

	thumb_func_start ov65_02235E48
ov65_02235E48: @ 0x02235E48
	adds r2, r1, #0
	ldr r1, _02235E5C @ =ov65_02236044
	ldr r3, _02235E60 @ =ov65_02236250
	str r1, [r2, #0x10]
	ldr r1, _02235E64 @ =ov65_02235EF4
	str r1, [r2, #0x18]
	movs r1, #0
	strh r1, [r2, #0xc]
	bx r3
	nop
_02235E5C: .4byte ov65_02236044
_02235E60: .4byte ov65_02236250
_02235E64: .4byte ov65_02235EF4
	thumb_func_end ov65_02235E48

	thumb_func_start ov65_02235E68
ov65_02235E68: @ 0x02235E68
	ldr r0, _02235E7C @ =ov65_02236158
	str r0, [r1, #0x10]
	ldr r0, _02235E80 @ =ov65_02235EF8
	str r0, [r1, #0x18]
	movs r0, #0x2d
	strh r0, [r1, #8]
	movs r0, #1
	strh r0, [r1, #0xc]
	bx lr
	nop
_02235E7C: .4byte ov65_02236158
_02235E80: .4byte ov65_02235EF8
	thumb_func_end ov65_02235E68

	thumb_func_start ov65_02235E84
ov65_02235E84: @ 0x02235E84
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _02235EBC @ =ov65_022361C8
	adds r4, r1, #0
	str r0, [r4, #0x10]
	ldr r0, _02235EC0 @ =ov65_02235EF4
	str r0, [r4, #0x18]
	bl FUN_0201D35C
	ldr r1, _02235EC4 @ =0x000003FF
	adds r2, r4, #0
	ands r1, r0
	movs r0, #1
	lsls r0, r0, #8
	adds r0, r1, r0
	strh r0, [r4, #8]
	movs r0, #3
	strh r0, [r4, #0xc]
	adds r0, r5, #0
	movs r1, #0
	bl ov65_02236250
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_0222CFA4
	pop {r3, r4, r5, pc}
	nop
_02235EBC: .4byte ov65_022361C8
_02235EC0: .4byte ov65_02235EF4
_02235EC4: .4byte 0x000003FF
	thumb_func_end ov65_02235E84

	thumb_func_start ov65_02235EC8
ov65_02235EC8: @ 0x02235EC8
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, _02235EEC @ =ov65_02236214
	adds r2, r4, #0
	str r1, [r4, #0x10]
	ldr r1, _02235EF0 @ =ov65_02235F94
	str r1, [r4, #0x18]
	movs r1, #0x1c
	strh r1, [r4, #8]
	movs r1, #4
	strh r1, [r4, #0xc]
	bl ov65_02236250
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_0222CFA4
	pop {r4, pc}
	.align 2, 0
_02235EEC: .4byte ov65_02236214
_02235EF0: .4byte ov65_02235F94
	thumb_func_end ov65_02235EC8

	thumb_func_start ov65_02235EF4
ov65_02235EF4: @ 0x02235EF4
	bx lr
	.align 2, 0
	thumb_func_end ov65_02235EF4

	thumb_func_start ov65_02235EF8
ov65_02235EF8: @ 0x02235EF8
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r1, #0
	ldr r0, [r4, #4]
	bl FUN_0222CFB4
	ldr r0, [r4, #4]
	bl FUN_0222CFFC
	cmp r0, #0
	bne _02235F16
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_0222D008
_02235F16:
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0222BF90
	add r1, sp, #0
	strh r0, [r1, #4]
	ldr r0, [r4]
	movs r1, #1
	bl FUN_0222BF90
	add r1, sp, #0
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	strh r0, [r1]
	ldrh r0, [r1, #6]
	strh r0, [r1, #2]
	ldrh r0, [r4, #8]
	bl FUN_0201D15C
	ldr r2, _02235F90 @ =0xFFF40000
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x14
	blx FUN_020E1F1C
	movs r5, #2
	movs r6, #0
	lsls r5, r5, #0xa
	movs r3, #6
	add r2, sp, #0
	adds r5, r0, r5
	adcs r1, r6
	lsls r0, r1, #0x14
	lsrs r1, r5, #0xc
	orrs r1, r0
	ldrsh r3, [r2, r3]
	asrs r0, r1, #0xc
	adds r0, r3, r0
	strh r0, [r2, #6]
	mov r3, sp
	ldrh r1, [r2, #4]
	ldr r0, [r4, #4]
	subs r3, r3, #4
	strh r1, [r3]
	ldrh r1, [r2, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl FUN_0222CFE0
	add r1, sp, #0
	mov r3, sp
	ldrh r2, [r1]
	ldr r0, [r4, #4]
	subs r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl FUN_0222D060
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_02235F90: .4byte 0xFFF40000
	thumb_func_end ov65_02235EF8

	thumb_func_start ov65_02235F94
ov65_02235F94: @ 0x02235F94
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r1, #0
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0222BF90
	add r1, sp, #0
	strh r0, [r1, #4]
	ldr r0, [r4]
	movs r1, #1
	bl FUN_0222BF90
	add r1, sp, #0
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	strh r0, [r1]
	ldrh r0, [r1, #6]
	strh r0, [r1, #2]
	movs r0, #8
	ldrsh r0, [r4, r0]
	subs r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _0223600A
	movs r1, #6
	blx FUN_020E1F6C
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r0, #0xb4
	muls r0, r1, r0
	movs r1, #6
	blx FUN_020E1F6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D15C
	add r1, sp, #0
	movs r2, #6
	ldrsh r3, [r1, r2]
	asrs r2, r0, #0x1f
	lsrs r5, r0, #0x12
	lsls r2, r2, #0xe
	lsls r6, r0, #0xe
	movs r0, #2
	orrs r2, r5
	movs r5, #0
	lsls r0, r0, #0xa
	adds r6, r6, r0
	adcs r2, r5
	lsls r0, r2, #0x14
	lsrs r2, r6, #0xc
	orrs r2, r0
	asrs r0, r2, #0xc
	subs r0, r3, r0
	strh r0, [r1, #6]
_0223600A:
	add r1, sp, #0
	ldrh r2, [r1, #4]
	mov r3, sp
	ldr r0, [r4, #4]
	subs r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl FUN_0222CFE0
	add r1, sp, #0
	mov r3, sp
	ldrh r2, [r1]
	ldr r0, [r4, #4]
	subs r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl FUN_0222D060
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_0222D020
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov65_02235F94

	thumb_func_start ov65_02236044
ov65_02236044: @ 0x02236044
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	ldr r0, [r6]
	movs r1, #6
	bl FUN_0222BF90
	adds r4, r0, #0
	ldr r0, [r6]
	movs r1, #4
	bl FUN_0222BF90
	adds r7, r0, #0
	ldr r0, [r6]
	movs r1, #5
	bl FUN_0222BF90
	cmp r0, #0
	beq _0223606E
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223606E:
	ldr r0, _02236154 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _022360A8
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov65_022357A8
	str r0, [sp]
	cmp r0, #0
	beq _022360A4
	bl ov65_02235E1C
	cmp r0, #1
	bne _0223609E
	ldr r0, [sp]
	movs r1, #4
	ldr r0, [r0]
	bl FUN_0222BF90
	strb r0, [r6, #0xa]
	b _022360A8
_0223609E:
	movs r0, #0
	strb r0, [r6, #0xa]
	b _022360A8
_022360A4:
	movs r0, #0
	strb r0, [r6, #0xa]
_022360A8:
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _022360B2
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022360B2:
	ldr r0, _02236154 @ =0x021BF67C
	movs r1, #2
	ldr r0, [r0, #0x44]
	adds r2, r0, #0
	tst r2, r1
	beq _022360C0
	movs r1, #3
_022360C0:
	movs r2, #0x40
	tst r2, r0
	beq _022360E4
	cmp r4, #0
	bne _022360D6
	adds r0, r5, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl ov65_02236230
	b _0223614E
_022360D6:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	adds r3, r7, #0
	bl ov65_02236230
	b _0223614E
_022360E4:
	movs r2, #0x80
	tst r2, r0
	beq _02236108
	cmp r4, #1
	bne _022360FA
	adds r0, r5, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl ov65_02236230
	b _0223614E
_022360FA:
	movs r1, #1
	adds r0, r5, #0
	adds r2, r1, #0
	adds r3, r7, #0
	bl ov65_02236230
	b _0223614E
_02236108:
	movs r2, #0x20
	tst r2, r0
	beq _0223612C
	cmp r4, #2
	bne _0223611E
	adds r0, r5, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl ov65_02236230
	b _0223614E
_0223611E:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	adds r3, r7, #0
	bl ov65_02236230
	b _0223614E
_0223612C:
	movs r2, #0x10
	tst r0, r2
	beq _0223614E
	cmp r4, #3
	bne _02236142
	adds r0, r5, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl ov65_02236230
	b _0223614E
_02236142:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #3
	adds r3, r7, #0
	bl ov65_02236230
_0223614E:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02236154: .4byte 0x021BF67C
	thumb_func_end ov65_02236044

	thumb_func_start ov65_02236158
ov65_02236158: @ 0x02236158
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #8
	ldrsh r1, [r4, r0]
	subs r1, r1, #1
	strh r1, [r4, #8]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bgt _022361A8
	ldr r0, [r4, #4]
	bl FUN_0222CFC0
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_0222CFA4
	ldr r0, _022361AC @ =0x000006CC
	movs r1, #4
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl FUN_0222BF90
	adds r6, r0, #0
	ldr r0, [r4]
	movs r1, #4
	bl FUN_0222BF90
	cmp r0, r6
	bne _0223619E
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_02235E48
	b _022361A8
_0223619E:
	ldrb r2, [r4, #0xb]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_0223628C
_022361A8:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_022361AC: .4byte 0x000006CC
	thumb_func_end ov65_02236158

	thumb_func_start ov65_022361B0
ov65_022361B0: @ 0x022361B0
	movs r0, #8
	ldrsh r2, [r1, r0]
	adds r2, r2, #1
	strh r2, [r1, #8]
	ldrsh r0, [r1, r0]
	cmp r0, #0x2d
	ble _022361C2
	movs r0, #1
	bx lr
_022361C2:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov65_022361B0

	thumb_func_start ov65_022361C8
ov65_022361C8: @ 0x022361C8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r0, #8
	ldrsh r1, [r5, r0]
	subs r1, r1, #1
	strh r1, [r5, #8]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bgt _0223620A
	bl FUN_0201D35C
	ldr r1, _02236210 @ =0x000003FF
	ands r1, r0
	movs r0, #1
	lsls r0, r0, #8
	adds r0, r1, r0
	strh r0, [r5, #8]
	bl FUN_0201D35C
	adds r4, r0, #0
	movs r1, #3
	ands r4, r1
	ldr r0, [r5]
	movs r1, #4
	bl FUN_0222BF90
	adds r3, r0, #0
	adds r0, r6, #0
	movs r1, #0
	adds r2, r4, #0
	bl ov65_02236230
_0223620A:
	movs r0, #0
	pop {r4, r5, r6, pc}
	nop
_02236210: .4byte 0x000003FF
	thumb_func_end ov65_022361C8

	thumb_func_start ov65_02236214
ov65_02236214: @ 0x02236214
	movs r0, #8
	ldrsh r2, [r1, r0]
	subs r2, r2, #1
	strh r2, [r1, #8]
	ldrsh r0, [r1, r0]
	cmp r0, #0
	bge _02236226
	movs r0, #0x1c
	strh r0, [r1, #8]
_02236226:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov65_02236214

	thumb_func_start ov65_0223622C
ov65_0223622C: @ 0x0223622C
	movs r0, #0
	bx lr
	thumb_func_end ov65_0223622C

	thumb_func_start ov65_02236230
ov65_02236230: @ 0x02236230
	push {r3, r4, lr}
	sub sp, #4
	add r4, sp, #0
	strh r1, [r4]
	strb r2, [r4, #2]
	ldr r1, _0223624C @ =0x000006F8
	strb r3, [r4, #3]
	ldr r0, [r0, r1]
	add r1, sp, #0
	bl FUN_0222D894
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223624C: .4byte 0x000006F8
	thumb_func_end ov65_02236230

	thumb_func_start ov65_02236250
ov65_02236250: @ 0x02236250
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r2, #0
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, [r4]
	movs r1, #6
	bl FUN_0222BF90
	adds r7, r0, #0
	ldr r0, [r4]
	movs r1, #4
	bl FUN_0222BF90
	adds r3, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov65_02236230
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_02236250

	thumb_func_start ov65_02236278
ov65_02236278: @ 0x02236278
	ldr r1, [r0, #0x18]
	ldr r0, _02236288 @ =ov65_02235EF8
	cmp r1, r0
	beq _02236284
	movs r0, #1
	bx lr
_02236284:
	movs r0, #0
	bx lr
	.align 2, 0
_02236288: .4byte ov65_02235EF8
	thumb_func_end ov65_02236278

	thumb_func_start ov65_0223628C
ov65_0223628C: @ 0x0223628C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	beq _0223629A
	cmp r4, #1
	beq _022362A0
	b _022362A6
_0223629A:
	bl ov65_02235E84
	b _022362AA
_022362A0:
	bl ov65_02235EC8
	b _022362AA
_022362A6:
	bl FUN_02022974
_022362AA:
	strb r4, [r5, #0xb]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_0223628C

	thumb_func_start ov65_022362B0
ov65_022362B0: @ 0x022362B0
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r3, r0, #0
	adds r5, r4, #0
	movs r1, #0x14
	movs r0, #0
_022362BC:
	strb r0, [r5]
	adds r5, r5, #1
	subs r1, r1, #1
	bne _022362BC
	ldr r3, [r3, #4]
	adds r0, r2, #0
	movs r1, #0x1f
	adds r2, r4, #4
	bl FUN_020071EC
	str r0, [r4]
	movs r0, #0xf
	strb r0, [r4, #8]
	movs r0, #0
	strb r0, [r4, #9]
	ldrb r0, [r4, #9]
	lsls r1, r0, #1
	ldr r0, _022362E8 @ =0x02238BC8
	ldrh r0, [r0, r1]
	strh r0, [r4, #0xa]
	pop {r3, r4, r5, pc}
	nop
_022362E8: .4byte 0x02238BC8
	thumb_func_end ov65_022362B0

	thumb_func_start ov65_022362EC
ov65_022362EC: @ 0x022362EC
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4]
	bl FUN_020181C4
	movs r1, #0x14
	movs r0, #0
_022362FA:
	strb r0, [r4]
	adds r4, r4, #1
	subs r1, r1, #1
	bne _022362FA
	pop {r4, pc}
	thumb_func_end ov65_022362EC

	thumb_func_start ov65_02236304
ov65_02236304: @ 0x02236304
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl ov65_02236318
	adds r0, r4, #0
	bl ov65_02236384
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_02236304

	thumb_func_start ov65_02236318
ov65_02236318: @ 0x02236318
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	subs r1, r1, #1
	strh r1, [r5, #0xa]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bgt _0223637E
	ldrb r0, [r5, #9]
	adds r0, r0, #1
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1f
	subs r1, r1, r2
	movs r0, #0x1f
	rors r1, r0
	adds r0, r2, r1
	strb r0, [r5, #9]
	ldrb r0, [r5, #9]
	lsls r1, r0, #1
	ldr r0, _02236380 @ =0x02238BC8
	ldrh r0, [r0, r1]
	strh r0, [r5, #0xa]
	ldrb r0, [r5, #9]
	cmp r0, #1
	bne _02236350
	movs r6, #2
	b _02236352
_02236350:
	movs r6, #1
_02236352:
	movs r4, #0
	movs r7, #1
_02236356:
	adds r0, r7, #0
	ldrb r1, [r5, #8]
	lsls r0, r4
	tst r0, r1
	beq _02236378
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov65_02236410
	adds r1, r4, #1
	lsls r1, r1, #1
	adds r2, r0, #0
	movs r0, #0xf
	adds r1, #0xe0
	movs r3, #2
	bl FUN_0201DC68
_02236378:
	adds r4, r4, #1
	cmp r4, #4
	blt _02236356
_0223637E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02236380: .4byte 0x02238BC8
	thumb_func_end ov65_02236318

	thumb_func_start ov65_02236384
ov65_02236384: @ 0x02236384
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldrb r3, [r4, #0xd]
	movs r0, #0
	adds r1, r0, #0
	lsls r5, r3, #2
	ldr r3, _02236400 @ =0x02238BD7
	adds r2, r0, #0
	ldrb r3, [r3, r5]
	cmp r3, #1
	bne _022363AC
	movs r3, #0xe
	ldrsh r5, [r4, r3]
	subs r5, r5, #1
	strh r5, [r4, #0xe]
	ldrsh r3, [r4, r3]
	cmp r3, #0
	bgt _022363B6
	movs r2, #1
	b _022363B6
_022363AC:
	ldrb r3, [r4, #0x10]
	cmp r3, #0
	beq _022363B6
	strb r0, [r4, #0x10]
	movs r2, #1
_022363B6:
	cmp r2, #0
	beq _022363E2
	ldrb r0, [r4, #0xd]
	adds r0, r0, #1
	strb r0, [r4, #0xd]
	ldrb r0, [r4, #0xd]
	cmp r0, #8
	blo _022363CE
	adds r0, r4, #0
	bl ov65_0223641C
	pop {r3, r4, r5, pc}
_022363CE:
	lsls r1, r0, #2
	ldr r0, _02236404 @ =0x02238BD8
	ldrb r0, [r0, r1]
	ldr r1, _02236408 @ =0x02238BDA
	strh r0, [r4, #0xe]
	ldrb r0, [r4, #0xd]
	lsls r2, r0, #2
	ldr r0, _0223640C @ =0x02238BD9
	ldrb r1, [r1, r2]
	ldrb r0, [r0, r2]
_022363E2:
	cmp r0, #0
	beq _022363FE
	adds r0, r4, #0
	bl ov65_02236410
	ldrb r1, [r4, #0xc]
	adds r2, r0, #0
	movs r0, #0xf
	adds r1, r1, #1
	lsls r1, r1, #1
	adds r1, #0xe0
	movs r3, #2
	bl FUN_0201DC68
_022363FE:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02236400: .4byte 0x02238BD7
_02236404: .4byte 0x02238BD8
_02236408: .4byte 0x02238BDA
_0223640C: .4byte 0x02238BD9
	thumb_func_end ov65_02236384

	thumb_func_start ov65_02236410
ov65_02236410: @ 0x02236410
	ldr r0, [r0, #4]
	ldr r2, [r0, #0xc]
	adds r0, r1, #1
	lsls r0, r0, #1
	adds r0, r2, r0
	bx lr
	thumb_func_end ov65_02236410

	thumb_func_start ov65_0223641C
ov65_0223641C: @ 0x0223641C
	ldrb r1, [r0, #0xc]
	ldrb r3, [r0, #8]
	movs r2, #1
	lsls r2, r1
	adds r1, r3, #0
	orrs r1, r2
	strb r1, [r0, #8]
	movs r1, #0
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xd]
	strh r1, [r0, #0xe]
	strb r1, [r0, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end ov65_0223641C

	thumb_func_start ov65_02236438
ov65_02236438: @ 0x02236438
	movs r1, #1
	strb r1, [r0, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end ov65_02236438

	thumb_func_start ov65_02236440
ov65_02236440: @ 0x02236440
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrb r1, [r5, #0xd]
	cmp r1, #0
	beq _02236450
	bl ov65_0223641C
_02236450:
	movs r0, #1
	ldrb r1, [r5, #8]
	lsls r0, r4
	eors r0, r1
	strb r0, [r5, #8]
	adds r0, r5, #0
	strb r4, [r5, #0xc]
	bl ov65_02236438
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_02236440

	thumb_func_start ov65_02236464
ov65_02236464: @ 0x02236464
	push {r3, lr}
	ldrb r1, [r0, #0xd]
	cmp r1, #0
	beq _02236470
	bl ov65_02236438
_02236470:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov65_02236464

	thumb_func_start ov65_02236474
ov65_02236474: @ 0x02236474
	lsls r1, r0, #2
	ldr r0, _0223647C @ =0x02238BF8
	ldr r0, [r0, r1]
	bx lr
	.align 2, 0
_0223647C: .4byte 0x02238BF8
	thumb_func_end ov65_02236474

	thumb_func_start ov65_02236480
ov65_02236480: @ 0x02236480
	lsls r1, r0, #2
	ldr r0, _02236488 @ =0x02239E4C
	ldr r0, [r0, r1]
	bx lr
	.align 2, 0
_02236488: .4byte 0x02239E4C
	thumb_func_end ov65_02236480

	thumb_func_start ov65_0223648C
ov65_0223648C: @ 0x0223648C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl FUN_02006840
	adds r5, r0, #0
	ldr r0, _02236540 @ =0x0000003F
	movs r1, #2
	bl FUN_02006590
	bl FUN_020389B8
	cmp r0, #1
	beq _022364AA
	bl FUN_02022974
_022364AA:
	movs r1, #0x60
	movs r0, #3
	lsls r2, r1, #0xa
	bl FUN_02017FC8
	movs r2, #0xa
	movs r0, #3
	movs r1, #0x61
	lsls r2, r2, #0xc
	bl FUN_02017FC8
	movs r1, #0x8a
	adds r0, r4, #0
	lsls r1, r1, #2
	movs r2, #0x60
	bl FUN_0200681C
	movs r2, #0x8a
	adds r4, r0, #0
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020C4CF4
	adds r0, r4, #0
	adds r0, #0x1c
	movs r1, #1
	movs r2, #4
	blx FUN_020C4CF4
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #1
	movs r2, #4
	blx FUN_020C4CF4
	movs r0, #0x10
	movs r1, #0x60
	bl FUN_0201DBEC
	bl FUN_020388E8
	adds r1, r0, #0
	str r0, [r4]
	adds r1, #0x22
	ldrb r1, [r1]
	adds r0, #0x21
	strb r1, [r0]
	adds r0, r4, #0
	bl ov65_02236794
	strb r0, [r4, #4]
	movs r0, #0xff
	strb r0, [r4, #6]
	adds r0, r4, #0
	bl FUN_0209C390
	adds r0, r4, #0
	bl ov65_0223760C
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x60
	bl ov65_022367A8
	ldr r0, _02236544 @ =ov65_02236780
	adds r1, r4, #0
	bl FUN_02017798
	bl FUN_02039734
	movs r0, #1
	adds r4, #0x27
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	nop
_02236540: .4byte 0x0000003F
_02236544: .4byte ov65_02236780
	thumb_func_end ov65_0223648C

	thumb_func_start ov65_02236548
ov65_02236548: @ 0x02236548
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r0, r6, #0
	bl FUN_02006840
	adds r7, r0, #0
	ldr r0, [r5]
	cmp r0, #4
	bls _02236566
	b _0223666E
_02236566:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02236572: @ jump table
	.2byte _0223657C - _02236572 - 2 @ case 0
	.2byte _0223659A - _02236572 - 2 @ case 1
	.2byte _022365AA - _02236572 - 2 @ case 2
	.2byte _02236640 - _02236572 - 2 @ case 3
	.2byte _02236660 - _02236572 - 2 @ case 4
_0223657C:
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x60
	str r0, [sp, #8]
	movs r0, #3
	adds r2, r1, #0
	movs r3, #0
	bl FUN_0200F174
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0223666E
_0223659A:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0223666E
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0223666E
_022365AA:
	adds r0, r4, #0
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _022365BE
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0x60
	bl ov65_02237370
_022365BE:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _022365F0
	bl FUN_02032AAC
	cmp r0, #1
	bne _022365DC
	adds r0, r4, #0
	bl ov65_02237970
	bl FUN_02032CE8
	adds r0, r4, #0
	bl ov65_0223782C
_022365DC:
	ldrb r3, [r4, #5]
	adds r0, r4, #0
	adds r1, r7, #0
	lsls r6, r3, #2
	ldr r3, _02236684 @ =0x02239B80
	movs r2, #0x60
	ldr r3, [r3, r6]
	blx r3
	adds r6, r0, #0
	b _02236612
_022365F0:
	ldrb r3, [r4, #5]
	adds r0, r4, #0
	adds r1, r7, #0
	lsls r6, r3, #2
	ldr r3, _02236688 @ =0x02239B08
	movs r2, #0x60
	ldr r3, [r3, r6]
	blx r3
	adds r6, r0, #0
	bl FUN_02032AAC
	cmp r0, #1
	bne _02236612
	adds r0, r4, #0
	movs r1, #0x60
	bl ov65_02237860
_02236612:
	adds r0, r4, #0
	bl ov65_02237660
	cmp r0, #0
	beq _02236626
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0x60
	bl ov65_02237034
_02236626:
	adds r0, r4, #0
	bl ov65_022377A4
	cmp r6, #1
	bne _0223666E
	ldrb r0, [r4, #7]
	strb r0, [r7, #3]
	ldrb r0, [r4, #0x11]
	strb r0, [r7, #4]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0223666E
_02236640:
	movs r0, #6
	str r0, [sp]
	movs r1, #0
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x60
	str r0, [sp, #8]
	movs r0, #3
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0200F174
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0223666E
_02236660:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0223666E
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0223666E:
	adds r0, r4, #0
	adds r0, #0x30
	bl ov65_022372B0
	ldr r0, [r4, #0x48]
	bl FUN_020219F8
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02236684: .4byte 0x02239B80
_02236688: .4byte 0x02239B08
	thumb_func_end ov65_02236548

	thumb_func_start ov65_0223668C
ov65_0223668C: @ 0x0223668C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02006840
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	adds r0, r4, #0
	bl ov65_0223761C
	adds r0, r4, #0
	bl ov65_022377E8
	adds r0, r4, #0
	bl ov65_02237504
	adds r0, r4, #0
	movs r1, #0x60
	bl ov65_022367F8
	bl FUN_0201DC3C
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0x61
	bl FUN_0201807C
	movs r0, #0x60
	bl FUN_0201807C
	ldr r0, _022366E0 @ =0x0000003F
	bl FUN_02006514
	movs r0, #1
	pop {r3, r4, r5, pc}
	nop
_022366E0: .4byte 0x0000003F
	thumb_func_end ov65_0223668C

	thumb_func_start ov65_022366E4
ov65_022366E4: @ 0x022366E4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #4]
	adds r4, r1, #0
	cmp r0, #0
	bne _02236742
	ldrh r6, [r4]
	bl FUN_0203608C
	cmp r6, r0
	ldr r0, [r4, #4]
	bne _0223671C
	cmp r0, #0
	beq _02236710
	cmp r0, #1
	beq _0223670A
	cmp r0, #2
	beq _02236716
	pop {r4, r5, r6, pc}
_0223670A:
	movs r0, #1
	strb r0, [r5, #0x13]
	pop {r4, r5, r6, pc}
_02236710:
	movs r0, #2
	strb r0, [r5, #0x13]
	pop {r4, r5, r6, pc}
_02236716:
	movs r0, #3
	strb r0, [r5, #0x13]
	pop {r4, r5, r6, pc}
_0223671C:
	cmp r0, #0
	beq _02236734
	cmp r0, #1
	beq _0223672A
	cmp r0, #2
	beq _02236734
	pop {r4, r5, r6, pc}
_0223672A:
	adds r0, r5, r6
	movs r1, #1
	adds r0, #0x28
	strb r1, [r0]
	pop {r4, r5, r6, pc}
_02236734:
	bl FUN_02032AAC
	cmp r0, #1
	bne _02236742
	ldrh r0, [r4]
	bl FUN_02032D98
_02236742:
	pop {r4, r5, r6, pc}
	thumb_func_end ov65_022366E4

	thumb_func_start ov65_02236744
ov65_02236744: @ 0x02236744
	push {r3, lr}
	adds r1, r0, #0
	adds r1, #0x2c
	ldrb r1, [r1]
	cmp r1, #0
	bne _0223675C
	movs r1, #1
	adds r0, #0x2c
	strb r1, [r0]
	movs r0, #0xd
	bl FUN_020364F0
_0223675C:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov65_02236744

	thumb_func_start ov65_02236760
ov65_02236760: @ 0x02236760
	ldrb r2, [r0, #4]
	cmp r2, #1
	beq _0223677C
	ldrb r2, [r1]
	adds r3, r0, #0
	adds r0, #0x20
	strb r2, [r0]
	ldrb r0, [r1, #1]
	adds r3, #0x20
	strb r0, [r3, #1]
	ldrb r0, [r1, #2]
	strb r0, [r3, #2]
	ldrb r0, [r1, #3]
	strb r0, [r3, #3]
_0223677C:
	bx lr
	.align 2, 0
	thumb_func_end ov65_02236760

	thumb_func_start ov65_02236780
ov65_02236780: @ 0x02236780
	push {r3, lr}
	ldr r0, [r0, #0x30]
	bl FUN_0201C2B8
	bl FUN_0201DCAC
	bl FUN_0200A858
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov65_02236780

	thumb_func_start ov65_02236794
ov65_02236794: @ 0x02236794
	push {r3, lr}
	bl FUN_0203608C
	cmp r0, #0
	bne _022367A2
	movs r0, #1
	pop {r3, pc}
_022367A2:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov65_02236794

	thumb_func_start ov65_022367A8
ov65_022367A8: @ 0x022367A8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl ov65_02236820
	adds r0, r5, #0
	adds r0, #0x30
	adds r1, r6, #0
	bl ov65_02236840
	adds r0, r5, #0
	adds r0, #0x30
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov65_02236A28
	adds r0, r5, #0
	adds r0, #0x30
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov65_02236C10
	adds r0, r5, #0
	adds r0, #0x30
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov65_02236C7C
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov65_02237034
	adds r5, #0x30
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov65_02236D50
	pop {r4, r5, r6, pc}
	thumb_func_end ov65_022367A8

	thumb_func_start ov65_022367F8
ov65_022367F8: @ 0x022367F8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x30
	adds r4, r1, #0
	bl ov65_02236E04
	adds r0, r5, #0
	adds r0, #0x30
	bl ov65_02236C5C
	adds r0, r5, #0
	adds r0, #0x30
	adds r1, r4, #0
	bl ov65_02236B90
	adds r5, #0x30
	adds r0, r5, #0
	bl ov65_022369F0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_022367F8

	thumb_func_start ov65_02236820
ov65_02236820: @ 0x02236820
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0223683C @ =0x02239AB0
	add r3, sp, #0
	movs r2, #5
_0223682A:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0223682A
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_0223683C: .4byte 0x02239AB0
	thumb_func_end ov65_02236820

	thumb_func_start ov65_02236840
ov65_02236840: @ 0x02236840
	push {r3, r4, r5, r6, lr}
	sub sp, #0x74
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	bl FUN_02018340
	add r3, sp, #0x64
	ldr r6, _022369E0 @ =0x02239A3C
	str r0, [r5]
	adds r2, r3, #0
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r6, _022369E4 @ =0x02239A78
	add r3, sp, #0x48
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	movs r1, #0
	str r0, [r3]
	ldr r0, [r5]
	adds r3, r1, #0
	bl FUN_020183C4
	movs r0, #0
	movs r1, #0x20
	adds r2, r0, #0
	adds r3, r4, #0
	bl FUN_02019690
	ldr r0, [r5]
	movs r1, #0
	bl FUN_02019EBC
	ldr r6, _022369E8 @ =0x02239A5C
	add r3, sp, #0x2c
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	movs r1, #1
	str r0, [r3]
	ldr r0, [r5]
	movs r3, #0
	bl FUN_020183C4
	movs r0, #1
	movs r1, #0x20
	movs r2, #0
	adds r3, r4, #0
	bl FUN_02019690
	ldr r0, [r5]
	movs r1, #1
	bl FUN_02019EBC
	ldr r6, _022369EC @ =0x02239A94
	add r3, sp, #0x10
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	movs r1, #2
	str r0, [r3]
	ldr r0, [r5]
	movs r3, #0
	bl FUN_020183C4
	movs r0, #2
	movs r1, #0x20
	movs r2, #0
	adds r3, r4, #0
	bl FUN_02019690
	ldr r0, [r5]
	movs r1, #2
	bl FUN_02019EBC
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
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
	movs r0, #0x10
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #0x5c
	adds r1, r4, #0
	bl FUN_02006C24
	movs r1, #0x20
	str r1, [sp]
	movs r1, #0xd
	movs r2, #0
	movs r3, #0xa0
	adds r6, r0, #0
	str r4, [sp, #4]
	bl FUN_02007130
	movs r1, #0
	movs r0, #6
	str r1, [sp]
	lsls r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5]
	adds r0, r6, #0
	movs r1, #0xc
	movs r3, #2
	bl FUN_020070E8
	movs r3, #0x79
	lsls r3, r3, #2
	adds r0, r6, #0
	movs r1, #0xe
	movs r2, #0
	adds r3, r5, r3
	str r4, [sp]
	bl FUN_020071D0
	movs r2, #0x1e
	lsls r2, r2, #4
	str r0, [r5, r2]
	adds r2, #0x10
	adds r0, r6, #0
	movs r1, #0x2c
	adds r2, r5, r2
	adds r3, r4, #0
	bl FUN_020071EC
	movs r1, #0x7b
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5]
	adds r0, r6, #0
	movs r1, #0x2d
	bl FUN_020070E8
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5]
	adds r0, r6, #0
	movs r1, #0x2e
	bl FUN_0200710C
	adds r0, r5, #0
	movs r1, #0
	bl ov65_022372EC
	movs r0, #0x7d
	movs r1, #3
	lsls r0, r0, #2
	strh r1, [r5, r0]
	movs r1, #1
	adds r0, r0, #2
	strh r1, [r5, r0]
	adds r0, r6, #0
	bl FUN_02006CA8
	add sp, #0x74
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022369E0: .4byte 0x02239A3C
_022369E4: .4byte 0x02239A78
_022369E8: .4byte 0x02239A5C
_022369EC: .4byte 0x02239A94
	thumb_func_end ov65_02236840

	thumb_func_start ov65_022369F0
ov65_022369F0: @ 0x022369F0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_020181C4
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020181C4
	ldr r0, [r4]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r4]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r4]
	movs r1, #0
	bl FUN_02019044
	ldr r0, [r4]
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov65_022369F0

	thumb_func_start ov65_02236A28
ov65_02236A28: @ 0x02236A28
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0
	movs r1, #0x20
	adds r4, r2, #0
	bl FUN_02002E98
	ldr r0, [r6, #8]
	bl FUN_02025E44
	bl FUN_02027B50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	str r4, [sp, #4]
	movs r1, #1
	ldr r0, [r5]
	adds r2, r1, #0
	movs r3, #2
	bl FUN_0200DD0C
	movs r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5]
	movs r1, #1
	movs r2, #0x1f
	movs r3, #3
	bl FUN_0200DAA4
	movs r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5]
	movs r1, #2
	movs r2, #0x30
	movs r3, #4
	bl FUN_0200DAA4
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r2, #1
	movs r1, #0x63
	lsls r1, r1, #2
	str r2, [sp, #0xc]
	movs r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [r5]
	adds r1, r5, r1
	movs r3, #2
	bl FUN_0201A7E8
	movs r0, #0x63
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #0x63
	lsls r0, r0, #2
	movs r1, #1
	adds r0, r5, r0
	adds r2, r1, #0
	movs r3, #2
	bl FUN_0200E060
	movs r2, #1
	movs r1, #0x67
	lsls r1, r1, #2
	str r2, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	movs r0, #0x94
	str r0, [sp, #0x10]
	ldr r0, [r5]
	adds r1, r5, r1
	adds r3, r2, #0
	bl FUN_0201A7E8
	movs r0, #0x67
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #0x67
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #1
	movs r2, #0x1f
	movs r3, #3
	bl FUN_0200DC48
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0x1c
	str r0, [sp, #4]
	movs r3, #2
	str r3, [sp, #8]
	movs r2, #1
	str r2, [sp, #0xc]
	movs r1, #0xca
	str r1, [sp, #0x10]
	adds r1, #0xe2
	ldr r0, [r5]
	adds r1, r5, r1
	bl FUN_0201A7E8
	movs r0, #0x6b
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #5
	str r0, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	movs r2, #1
	movs r1, #0x6f
	lsls r1, r1, #2
	str r2, [sp, #0xc]
	adds r0, #0xfa
	str r0, [sp, #0x10]
	ldr r0, [r5]
	adds r1, r5, r1
	adds r3, r2, #0
	bl FUN_0201A7E8
	movs r0, #0x6f
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #0x6f
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #1
	movs r2, #0x1f
	movs r3, #3
	bl FUN_0200DC48
	movs r1, #5
	str r1, [sp]
	movs r0, #7
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r2, #1
	ldr r1, _02236B8C @ =0x000001A2
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	adds r1, #0x2a
	ldr r0, [r5]
	adds r1, r5, r1
	movs r3, #0x17
	bl FUN_0201A7E8
	movs r0, #0x73
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0xf
	bl FUN_0201ADA4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02236B8C: .4byte 0x000001A2
	thumb_func_end ov65_02236A28

	thumb_func_start ov65_02236B90
ov65_02236B90: @ 0x02236B90
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov65_02236F38
	movs r0, #0x63
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200E084
	movs r0, #0x63
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
	movs r0, #0x67
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200DC9C
	movs r0, #0x67
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
	movs r0, #0x6b
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
	movs r0, #0x6f
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200DC9C
	movs r0, #0x6f
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
	movs r0, #0x73
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0200DC9C
	movs r0, #0x73
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
	movs r0, #0x77
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02236C0C
	adds r1, r4, #0
	bl FUN_02002154
_02236C0C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_02236B90

	thumb_func_start ov65_02236C10
ov65_02236C10: @ 0x02236C10
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	adds r5, r0, #0
	adds r0, r6, #0
	adds r4, r1, #0
	bl FUN_0200B358
	str r0, [r5, #4]
	ldr r2, _02236C58 @ =0x000002A2
	movs r0, #0
	movs r1, #0x1a
	adds r3, r6, #0
	bl FUN_0200B144
	str r0, [r5, #8]
	movs r0, #1
	lsls r0, r0, #8
	adds r1, r6, #0
	bl FUN_02023790
	str r0, [r5, #0xc]
	movs r0, #1
	lsls r0, r0, #8
	adds r1, r6, #0
	bl FUN_02023790
	str r0, [r5, #0x10]
	movs r0, #0xff
	strb r0, [r5, #0x14]
	ldr r0, [r4, #8]
	bl FUN_02025E44
	bl FUN_02027AC0
	strh r0, [r5, #0x16]
	pop {r4, r5, r6, pc}
	.align 2, 0
_02236C58: .4byte 0x000002A2
	thumb_func_end ov65_02236C10

	thumb_func_start ov65_02236C5C
ov65_02236C5C: @ 0x02236C5C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	bl FUN_020237BC
	ldr r0, [r4, #0xc]
	bl FUN_020237BC
	ldr r0, [r4, #8]
	bl FUN_0200B190
	ldr r0, [r4, #4]
	bl FUN_0200B3F0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_02236C5C

	thumb_func_start ov65_02236C7C
ov65_02236C7C: @ 0x02236C7C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r1, #0
	adds r4, r0, #0
	ldrb r0, [r5]
	cmp r0, #3
	bhi _02236CC0
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02236C96: @ jump table
	.2byte _02236CC0 - _02236C96 - 2 @ case 0
	.2byte _02236C9E - _02236C96 - 2 @ case 1
	.2byte _02236CAA - _02236C96 - 2 @ case 2
	.2byte _02236CB6 - _02236C96 - 2 @ case 3
_02236C9E:
	movs r1, #0
	ldr r0, [r4, #4]
	adds r2, r1, #0
	bl FUN_0200C0B0
	b _02236CC0
_02236CAA:
	ldr r0, [r4, #4]
	movs r1, #0
	movs r2, #1
	bl FUN_0200C0B0
	b _02236CC0
_02236CB6:
	ldr r0, [r4, #4]
	movs r1, #0
	movs r2, #2
	bl FUN_0200C0B0
_02236CC0:
	ldrb r2, [r5]
	ldr r1, _02236D44 @ =0x02239E5C
	ldr r0, [r4, #8]
	ldrb r1, [r1, r2]
	ldr r2, [r4, #0x10]
	bl FUN_0200B1B8
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	bl FUN_0200C388
	movs r1, #0
	str r1, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02236D48 @ =0x0001020F
	adds r2, #0x9d
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r4, r2
	ldr r2, [r4, #0xc]
	adds r3, r1, #0
	bl FUN_0201D78C
	movs r0, #0x67
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A9A4
	movs r0, #0x6f
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A9A4
	ldr r0, [r4, #8]
	ldr r2, [r4, #0xc]
	movs r1, #0x80
	bl FUN_0200B1B8
	movs r1, #0
	str r1, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02236D4C @ =0x00010200
	adds r2, #0xad
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r4, r2
	ldr r2, [r4, #0xc]
	adds r3, r1, #0
	bl FUN_0201D78C
	movs r0, #0x6b
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A9A4
	movs r0, #0x63
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02236D44: .4byte 0x02239E5C
_02236D48: .4byte 0x0001020F
_02236D4C: .4byte 0x00010200
	thumb_func_end ov65_02236C7C

	thumb_func_start ov65_02236D50
ov65_02236D50: @ 0x02236D50
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r7, r0, #0
	adds r6, r1, #0
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x1f
	str r3, [sp, #0xc]
	adds r2, r0, #0
	str r6, [sp, #0x10]
	bl FUN_0200A784
	ldr r4, _02236DFC @ =0x02239A4C
	add r3, sp, #0x14
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	ldr r1, _02236E00 @ =0x00200010
	movs r2, #0x10
	str r6, [sp, #0x20]
	bl FUN_0201E88C
	movs r0, #4
	adds r1, r6, #0
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	ldr r1, _02236E00 @ =0x00200010
	movs r0, #1
	bl FUN_0200966C
	movs r0, #1
	bl FUN_02009704
	adds r1, r7, #0
	movs r0, #4
	adds r1, #0x1c
	adds r2, r6, #0
	bl FUN_020095C4
	str r0, [r7, #0x18]
	movs r4, #0
	adds r5, r7, #0
_02236DBC:
	movs r0, #4
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_02009714
	movs r1, #0x51
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _02236DBC
	movs r0, #4
	adds r1, r6, #0
	bl FUN_0222BE18
	movs r1, #0x55
	lsls r1, r1, #2
	str r0, [r7, r1]
	str r6, [sp]
	ldr r0, [r7, #0x18]
	movs r1, #0
	movs r2, #4
	movs r3, #1
	bl FUN_0222CCE4
	movs r1, #0x56
	lsls r1, r1, #2
	str r0, [r7, r1]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02236DFC: .4byte 0x02239A4C
_02236E00: .4byte 0x00200010
	thumb_func_end ov65_02236D50

	thumb_func_start ov65_02236E04
ov65_02236E04: @ 0x02236E04
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0222CD9C
	movs r0, #0x55
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0222BE58
	ldr r0, [r5, #0x18]
	bl FUN_02021964
	movs r6, #0x51
	movs r4, #0
	lsls r6, r6, #2
_02236E28:
	ldr r0, [r5, r6]
	bl FUN_02009754
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _02236E28
	bl FUN_0201E958
	bl FUN_0201F8B4
	bl FUN_0200A878
	pop {r4, r5, r6, pc}
	thumb_func_end ov65_02236E04

	thumb_func_start ov65_02236E44
ov65_02236E44: @ 0x02236E44
	push {r3, lr}
	str r3, [sp]
	movs r3, #0
	bl ov65_02236E50
	pop {r3, pc}
	thumb_func_end ov65_02236E44

	thumb_func_start ov65_02236E50
ov65_02236E50: @ 0x02236E50
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldrb r0, [r5, #0x14]
	adds r4, r1, #0
	adds r6, r3, #0
	str r2, [sp, #0x10]
	cmp r0, #0xff
	beq _02236E74
	bl FUN_0201D724
	cmp r0, #0
	beq _02236E74
	ldrb r0, [r5, #0x14]
	bl FUN_0201D730
	movs r0, #0xff
	strb r0, [r5, #0x14]
_02236E74:
	movs r0, #0x63
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #1
	ldr r1, [sp, #0x28]
	lsls r0, r0, #8
	bl FUN_02023790
	adds r7, r0, #0
	ldr r0, [r5, #8]
	ldr r1, [sp, #0x10]
	adds r2, r7, #0
	bl FUN_0200B1B8
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	adds r2, r7, #0
	bl FUN_0200C388
	movs r3, #0
	str r3, [sp]
	ldrh r0, [r5, #0x16]
	movs r1, #1
	str r0, [sp, #4]
	ldr r0, _02236EF4 @ =0x0001020F
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r2, [r5, #0xc]
	adds r0, r5, r0
	bl FUN_0201D78C
	strb r0, [r5, #0x14]
	movs r0, #0x63
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A9A4
	adds r0, r7, #0
	bl FUN_020237BC
	ldr r0, [r4, #8]
	bl FUN_02025E44
	bl FUN_02027B50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x28]
	movs r1, #1
	str r0, [sp, #4]
	ldr r0, [r5]
	adds r2, r1, #0
	movs r3, #2
	bl FUN_0200DD0C
	strb r6, [r5, #0x15]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02236EF4: .4byte 0x0001020F
	thumb_func_end ov65_02236E50

	thumb_func_start ov65_02236EF8
ov65_02236EF8: @ 0x02236EF8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x14]
	cmp r0, #0xff
	bne _02236F10
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	beq _02236F22
	subs r0, r0, #1
	strb r0, [r4, #0x15]
	movs r0, #0
	pop {r4, pc}
_02236F10:
	bl FUN_0201D724
	cmp r0, #0
	bne _02236F22
	ldrb r0, [r4, #0x14]
	cmp r0, #0xff
	beq _02236F22
	movs r0, #0xff
	strb r0, [r4, #0x14]
_02236F22:
	ldrb r0, [r4, #0x14]
	cmp r0, #0xff
	bne _02236F32
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	bne _02236F32
	movs r0, #1
	pop {r4, pc}
_02236F32:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_02236EF8

	thumb_func_start ov65_02236F38
ov65_02236F38: @ 0x02236F38
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x14]
	cmp r0, #0xff
	beq _02236F54
	bl FUN_0201D724
	cmp r0, #0
	beq _02236F50
	ldrb r0, [r4, #0x14]
	bl FUN_0201D730
_02236F50:
	movs r0, #0xff
	strb r0, [r4, #0x14]
_02236F54:
	movs r0, #0x63
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #0x63
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A9A4
	movs r0, #0
	strb r0, [r4, #0x15]
	pop {r4, pc}
	thumb_func_end ov65_02236F38

	thumb_func_start ov65_02236F70
ov65_02236F70: @ 0x02236F70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	movs r0, #1
	adds r4, r3, #0
	str r1, [sp, #0x10]
	lsls r0, r0, #8
	adds r1, r4, #0
	str r2, [sp, #0x14]
	bl FUN_02023790
	adds r6, r0, #0
	movs r0, #1
	lsls r0, r0, #8
	adds r1, r4, #0
	bl FUN_02023790
	adds r7, r0, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	adds r0, r5, #0
	movs r3, #0
	str r4, [sp]
	bl ov65_0223726C
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	str r4, [sp]
	adds r0, r5, #0
	movs r3, #1
	bl ov65_02237284
	ldr r0, [r5, #8]
	movs r1, #0x83
	adds r2, r6, #0
	bl FUN_0200B1B8
	ldr r0, [r5, #4]
	adds r1, r7, #0
	adds r2, r6, #0
	bl FUN_0200C388
	movs r0, #0x73
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02237014 @ =0x0001020F
	adds r2, #0xcd
	str r0, [sp, #8]
	adds r0, r5, r2
	adds r2, r7, #0
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	movs r0, #0x73
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #1
	movs r2, #0x1f
	movs r3, #3
	bl FUN_0200DC48
	movs r0, #0x73
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A9A4
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_020237BC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02237014: .4byte 0x0001020F
	thumb_func_end ov65_02236F70

	thumb_func_start ov65_02237018
ov65_02237018: @ 0x02237018
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x73
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #1
	bl FUN_0200DC9C
	movs r0, #0x73
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201AD10
	pop {r4, pc}
	thumb_func_end ov65_02237018

	thumb_func_start ov65_02237034
ov65_02237034: @ 0x02237034
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	adds r7, r1, #0
	adds r5, r2, #0
	bl FUN_02032AAC
	cmp r0, #0
	beq _02237096
	ldr r6, [sp, #4]
	movs r4, #0
	adds r6, #0x30
_0223704C:
	cmp r4, #0
	bne _0223706A
	adds r0, r4, #0
	bl FUN_02032DE0
	cmp r0, #1
	bne _0223706A
	ldr r0, [sp, #4]
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r4, #0
	str r5, [sp]
	bl ov65_0223709C
	b _02237090
_0223706A:
	adds r0, r4, #0
	bl FUN_02032E00
	cmp r0, #1
	bne _02237084
	ldr r0, [sp, #4]
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r4, #0
	str r5, [sp]
	bl ov65_0223709C
	b _02237090
_02237084:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl ov65_022371FC
_02237090:
	adds r4, r4, #1
	cmp r4, #4
	blt _0223704C
_02237096:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov65_02237034

	thumb_func_start ov65_0223709C
ov65_0223709C: @ 0x0223709C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	ldr r7, [sp, #0x40]
	str r0, [sp, #0x1c]
	movs r0, #1
	adds r5, r1, #0
	lsls r0, r0, #8
	adds r1, r7, #0
	str r2, [sp, #0x20]
	adds r4, r3, #0
	bl FUN_02023790
	str r0, [sp, #0x28]
	movs r0, #1
	lsls r0, r0, #8
	adds r1, r7, #0
	bl FUN_02023790
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	str r7, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl ov65_0223726C
	ldr r0, [r5, #8]
	ldr r2, [sp, #0x28]
	movs r1, #0x81
	bl FUN_0200B1B8
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	bl FUN_0200C388
	movs r0, #0xa0
	str r0, [sp]
	movs r0, #0x10
	lsls r6, r4, #4
	str r0, [sp, #4]
	movs r0, #0x6f
	lsls r0, r0, #2
	lsls r3, r6, #0x10
	adds r0, r5, r0
	movs r1, #0xf
	movs r2, #0
	lsrs r3, r3, #0x10
	bl FUN_0201AE78
	movs r1, #0
	str r6, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _022371F8 @ =0x0001020F
	adds r2, #0xbd
	str r0, [sp, #8]
	adds r0, r5, r2
	ldr r2, [sp, #0x24]
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	ldr r1, [sp, #0x20]
	str r7, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl ov65_02237284
	ldr r0, [r5, #8]
	ldr r2, [sp, #0x28]
	movs r1, #0x82
	bl FUN_0200B1B8
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	bl FUN_0200C388
	str r6, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	ldr r0, _022371F8 @ =0x0001020F
	adds r2, #0xbd
	str r0, [sp, #8]
	adds r0, r5, r2
	movs r1, #0
	ldr r2, [sp, #0x24]
	movs r3, #0x48
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	movs r0, #0x6f
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A9A4
	bl FUN_0203608C
	cmp r4, r0
	bne _0223717C
	ldr r0, [sp, #0x1c]
	ldr r0, [r0]
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _02237178
	movs r2, #2
	b _0223718E
_02237178:
	movs r2, #1
	b _0223718E
_0223717C:
	ldr r0, [sp, #0x1c]
	adds r0, r0, r4
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0223718C
	movs r2, #2
	b _0223718E
_0223718C:
	movs r2, #1
_0223718E:
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	lsls r1, r4, #1
	adds r4, r1, #5
	movs r1, #2
	str r1, [sp]
	adds r3, r0, #0
	lsls r2, r2, #0x19
	str r1, [sp, #4]
	adds r3, #0xc
	str r3, [sp, #8]
	lsrs r2, r2, #0x18
	str r2, [sp, #0xc]
	movs r2, #0
	str r2, [sp, #0x10]
	ldrh r2, [r0]
	lsls r3, r4, #0x18
	lsrs r3, r3, #0x18
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x18
	str r2, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r2, #0x12
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5]
	bl FUN_020198E8
	movs r1, #2
	str r1, [sp]
	lsls r3, r4, #0x18
	str r1, [sp, #4]
	movs r0, #5
	str r0, [sp, #8]
	ldr r0, [r5]
	movs r2, #0x12
	lsrs r3, r3, #0x18
	bl FUN_02019E2C
	ldr r0, [r5]
	movs r1, #2
	bl FUN_0201C3C0
	ldr r0, [sp, #0x28]
	bl FUN_020237BC
	ldr r0, [sp, #0x24]
	bl FUN_020237BC
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022371F8: .4byte 0x0001020F
	thumb_func_end ov65_0223709C

	thumb_func_start ov65_022371FC
ov65_022371FC: @ 0x022371FC
	push {r4, r5, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	movs r0, #0xa0
	adds r4, r2, #0
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x6f
	lsls r0, r0, #2
	lsls r3, r4, #0x14
	adds r0, r5, r0
	movs r1, #0xf
	movs r2, #0
	lsrs r3, r3, #0x10
	bl FUN_0201AE78
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #2
	str r1, [sp]
	adds r2, r0, #0
	lsls r3, r4, #1
	adds r3, r3, #5
	lsls r3, r3, #0x18
	str r1, [sp, #4]
	adds r2, #0xc
	str r2, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrh r2, [r0]
	lsrs r3, r3, #0x18
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x18
	str r2, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r2, #0x12
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5]
	bl FUN_020198E8
	ldr r0, [r5]
	movs r1, #2
	bl FUN_0201C3C0
	movs r0, #0x6f
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A9A4
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end ov65_022371FC

	thumb_func_start ov65_0223726C
ov65_0223726C: @ 0x0223726C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, r2, #0
	adds r4, r3, #0
	bl FUN_02032EE8
	adds r2, r0, #0
	ldr r0, [r5, #4]
	adds r1, r4, #0
	bl FUN_0200B498
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_0223726C

	thumb_func_start ov65_02237284
ov65_02237284: @ 0x02237284
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r0, r2, #0
	adds r4, r3, #0
	bl FUN_02032EE8
	bl FUN_02025F24
	adds r2, r0, #0
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	adds r1, r4, #0
	movs r3, #5
	bl FUN_0200B60C
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_02237284

	thumb_func_start ov65_022372B0
ov65_022372B0: @ 0x022372B0
	push {r4, lr}
	movs r1, #0x7d
	adds r4, r0, #0
	lsls r1, r1, #2
	ldrsh r2, [r4, r1]
	cmp r2, #0
	bgt _022372E0
	adds r1, r1, #2
	ldrsh r1, [r4, r1]
	bl ov65_022372EC
	movs r0, #0x7d
	movs r1, #3
	lsls r0, r0, #2
	strh r1, [r4, r0]
	adds r0, r0, #2
	ldrsh r0, [r4, r0]
	movs r1, #0x12
	adds r0, r0, #1
	blx FUN_020E1F6C
	ldr r0, _022372E8 @ =0x000001F6
	strh r1, [r4, r0]
	pop {r4, pc}
_022372E0:
	subs r0, r2, #1
	strh r0, [r4, r1]
	pop {r4, pc}
	nop
_022372E8: .4byte 0x000001F6
	thumb_func_end ov65_022372B0

	thumb_func_start ov65_022372EC
ov65_022372EC: @ 0x022372EC
	push {r4, lr}
	movs r2, #0x1f
	adds r3, r0, #0
	lsls r2, r2, #4
	ldr r2, [r3, r2]
	adds r4, r1, #0
	ldr r3, [r2, #0xc]
	ldr r2, _02237318 @ =0x02239C04
	movs r0, #0xf
	ldrb r2, [r2, r4]
	movs r1, #0
	lsls r2, r2, #5
	adds r2, r3, r2
	movs r3, #0x20
	bl FUN_0201DC68
	cmp r0, #0
	bne _02237314
	bl FUN_02022974
_02237314:
	pop {r4, pc}
	nop
_02237318: .4byte 0x02239C04
	thumb_func_end ov65_022372EC

	thumb_func_start ov65_0223731C
ov65_0223731C: @ 0x0223731C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x22
	ldrb r1, [r0]
	movs r0, #1
	adds r2, #0x22
	subs r0, r0, r1
	strb r0, [r2]
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x22
	ldrb r0, [r0]
	adds r1, #0x21
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0x21
	ldrb r0, [r0]
	bl FUN_021D2584
	ldr r0, [r4]
	movs r1, #0x24
	bl FUN_021D222C
	ldr r0, [r4]
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #1
	bne _02237360
	adds r0, r4, #0
	bl ov65_02237520
	b _02237366
_02237360:
	adds r0, r4, #0
	bl ov65_02237534
_02237366:
	ldr r0, [r4]
	adds r0, #0x22
	ldrb r0, [r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_0223731C

	thumb_func_start ov65_02237370
ov65_02237370: @ 0x02237370
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #4]
	cmp r0, #0
	ldrb r0, [r4, #5]
	beq _022373A4
	adds r0, #0xe5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _02237428
	bl FUN_020380E4
	cmp r0, #2
	bgt _022373BA
	adds r0, r4, #0
	bl ov65_02237548
	cmp r0, #1
	bgt _022373BA
	adds r0, r4, #0
	bl ov65_02237450
	cmp r0, #0
	bne _022373BA
	pop {r3, r4, r5, r6, r7, pc}
_022373A4:
	cmp r0, #0xf
	beq _02237428
	cmp r0, #0x10
	beq _02237428
	cmp r0, #0x11
	beq _02237428
	adds r0, #0xfa
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _02237428
_022373BA:
	adds r0, r4, #0
	bl ov65_02237A54
	adds r6, r0, #0
	adds r0, r4, #0
	bl ov65_02237628
	adds r7, r0, #0
	adds r0, r4, #0
	bl ov65_02237548
	adds r5, r0, #0
	bl FUN_02035E18
	cmp r5, r0
	ble _022373DE
	movs r5, #1
	b _022373E0
_022373DE:
	movs r5, #0
_022373E0:
	bl FUN_020380E4
	cmp r0, #3
	bge _02237418
	bl FUN_020383E8
	cmp r0, #0
	bne _02237418
	bl FUN_02038284
	cmp r0, #0
	bne _02237418
	movs r0, #0
	bl FUN_02035D78
	cmp r0, #0
	beq _02237418
	adds r0, r4, #0
	bl ov65_02237450
	cmp r0, #0
	beq _02237418
	cmp r5, #1
	beq _02237418
	cmp r6, #1
	beq _02237418
	cmp r7, #1
	bne _02237428
_02237418:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _02237424
	movs r0, #0x1b
	strb r0, [r4, #5]
	pop {r3, r4, r5, r6, r7, pc}
_02237424:
	movs r0, #0xf
	strb r0, [r4, #5]
_02237428:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov65_02237370

	thumb_func_start ov65_0223742C
ov65_0223742C: @ 0x0223742C
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_020380E4
	cmp r0, #3
	bgt _02237448
	bl FUN_02038284
	cmp r0, #0
	bne _02237448
	bl FUN_020383E8
	cmp r0, #0
	beq _0223744C
_02237448:
	movs r0, #0xf
	strb r0, [r4, #5]
_0223744C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_0223742C

	thumb_func_start ov65_02237450
ov65_02237450: @ 0x02237450
	push {r3, lr}
	bl FUN_02035E18
	cmp r0, #0
	ble _0223745E
	movs r0, #1
	pop {r3, pc}
_0223745E:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov65_02237450

	thumb_func_start ov65_02237464
ov65_02237464: @ 0x02237464
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	bl FUN_020380A0
	adds r5, r0, #0
	cmp r5, #1
	bne _02237494
	cmp r4, #3
	bhi _02237494
	adds r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02237482: @ jump table
	.2byte _0223748A - _02237482 - 2 @ case 0
	.2byte _02237490 - _02237482 - 2 @ case 1
	.2byte _02237490 - _02237482 - 2 @ case 2
	.2byte _02237490 - _02237482 - 2 @ case 3
_0223748A:
	bl FUN_02038B00
	b _02237494
_02237490:
	bl FUN_02038B20
_02237494:
	adds r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_02237464

	thumb_func_start ov65_02237498
ov65_02237498: @ 0x02237498
	ldrb r1, [r1]
	cmp r1, #3
	bhi _022374D0
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_022374AA: @ jump table
	.2byte _022374B2 - _022374AA - 2 @ case 0
	.2byte _022374BA - _022374AA - 2 @ case 1
	.2byte _022374C2 - _022374AA - 2 @ case 2
	.2byte _022374CA - _022374AA - 2 @ case 3
_022374B2:
	ldr r1, [r0]
	movs r2, #0x12
	strb r2, [r1, #0x1b]
	b _022374D0
_022374BA:
	ldr r1, [r0]
	movs r2, #0x16
	strb r2, [r1, #0x1b]
	b _022374D0
_022374C2:
	ldr r1, [r0]
	movs r2, #0x18
	strb r2, [r1, #0x1b]
	b _022374D0
_022374CA:
	ldr r1, [r0]
	movs r2, #0x1a
	strb r2, [r1, #0x1b]
_022374D0:
	ldr r3, _022374D8 @ =FUN_021D222C
	ldr r0, [r0]
	movs r1, #0x24
	bx r3
	.align 2, 0
_022374D8: .4byte FUN_021D222C
	thumb_func_end ov65_02237498

	thumb_func_start ov65_022374DC
ov65_022374DC: @ 0x022374DC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x11]
	cmp r1, #1
	bne _022374EA
	movs r0, #0
	pop {r4, pc}
_022374EA:
	bl ov65_02237450
	cmp r0, #1
	bne _022374FE
	movs r0, #0x61
	bl FUN_021D1E74
	movs r0, #1
	strb r0, [r4, #0x11]
	pop {r4, pc}
_022374FE:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_022374DC

	thumb_func_start ov65_02237504
ov65_02237504: @ 0x02237504
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _02237512
	movs r0, #0
	pop {r4, pc}
_02237512:
	bl FUN_021D1F18
	movs r0, #0
	strb r0, [r4, #0x11]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_02237504

	thumb_func_start ov65_02237520
ov65_02237520: @ 0x02237520
	push {r3, lr}
	bl ov65_022374DC
	cmp r0, #0
	beq _02237532
	bl FUN_020041FC
	bl FUN_02004A84
_02237532:
	pop {r3, pc}
	thumb_func_end ov65_02237520

	thumb_func_start ov65_02237534
ov65_02237534: @ 0x02237534
	push {r3, lr}
	bl ov65_02237504
	cmp r0, #0
	beq _02237546
	movs r0, #0
	movs r1, #0x78
	bl FUN_02004A68
_02237546:
	pop {r3, pc}
	thumb_func_end ov65_02237534

	thumb_func_start ov65_02237548
ov65_02237548: @ 0x02237548
	ldr r3, _0223754C @ =FUN_02032E64
	bx r3
	.align 2, 0
_0223754C: .4byte FUN_02032E64
	thumb_func_end ov65_02237548

	thumb_func_start ov65_02237550
ov65_02237550: @ 0x02237550
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r7, #1
	bl FUN_0203608C
	subs r4, r0, #1
	bmi _02237586
_02237560:
	adds r0, r4, #0
	bl FUN_02032DC4
	cmp r0, #1
	bne _02237576
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov65_022376A0
	b _02237582
_02237576:
	adds r0, r4, #0
	bl FUN_02032E00
	cmp r0, #0
	bne _02237582
	movs r7, #0
_02237582:
	subs r4, r4, #1
	bpl _02237560
_02237586:
	adds r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov65_02237550

	thumb_func_start ov65_0223758C
ov65_0223758C: @ 0x0223758C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	movs r5, #1
	movs r6, #0x16
	add r7, sp, #0
	add r4, sp, #0
_0223759C:
	adds r0, r5, #0
	bl FUN_02032DC4
	cmp r0, #1
	bne _022375C0
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #8
	strh r5, [r4]
	bl FUN_020359DC
	cmp r0, #1
	beq _022375BA
	bl FUN_02022974
_022375BA:
	adds r0, r5, #0
	bl FUN_02032D98
_022375C0:
	adds r5, r5, #1
	cmp r5, #4
	blt _0223759C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov65_0223758C

	thumb_func_start ov65_022375CC
ov65_022375CC: @ 0x022375CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	movs r0, #0
	str r0, [sp, #4]
	movs r5, #1
	movs r6, #0x16
	add r7, sp, #0
	add r4, sp, #0
_022375DC:
	adds r0, r5, #0
	bl FUN_02032DE0
	cmp r0, #1
	bne _02237600
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #8
	strh r5, [r4]
	bl FUN_020359DC
	cmp r0, #1
	beq _022375FA
	bl FUN_02022974
_022375FA:
	adds r0, r5, #0
	bl FUN_02032D98
_02237600:
	adds r5, r5, #1
	cmp r5, #4
	blt _022375DC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov65_022375CC

	thumb_func_start ov65_0223760C
ov65_0223760C: @ 0x0223760C
	ldr r3, _02237614 @ =FUN_021D1120
	adds r1, r0, #0
	ldr r0, _02237618 @ =ov65_02237654
	bx r3
	.align 2, 0
_02237614: .4byte FUN_021D1120
_02237618: .4byte ov65_02237654
	thumb_func_end ov65_0223760C

	thumb_func_start ov65_0223761C
ov65_0223761C: @ 0x0223761C
	ldr r3, _02237624 @ =FUN_021D1120
	movs r0, #0
	adds r1, r0, #0
	bx r3
	.align 2, 0
_02237624: .4byte FUN_021D1120
	thumb_func_end ov65_0223761C

	thumb_func_start ov65_02237628
ov65_02237628: @ 0x02237628
	push {r3, r4, r5, r6, r7, lr}
	movs r7, #0
	adds r6, r0, #0
	adds r4, r7, #0
_02237630:
	adds r5, r6, r4
	ldrb r0, [r5, #0x14]
	cmp r0, #1
	bne _0223764A
	ldrb r0, [r5, #0x18]
	bl FUN_02032E00
	cmp r0, #1
	bne _02237644
	movs r7, #1
_02237644:
	movs r0, #0
	strb r0, [r5, #0x14]
	strb r0, [r5, #0x18]
_0223764A:
	adds r4, r4, #1
	cmp r4, #4
	blt _02237630
	adds r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_02237628

	thumb_func_start ov65_02237654
ov65_02237654: @ 0x02237654
	movs r2, #1
	adds r1, r1, r0
	strb r2, [r1, #0x14]
	strb r0, [r1, #0x18]
	bx lr
	.align 2, 0
	thumb_func_end ov65_02237654

	thumb_func_start ov65_02237660
ov65_02237660: @ 0x02237660
	push {r3, r4, r5, r6}
	movs r4, #0
	adds r3, r4, #0
	movs r2, #1
_02237668:
	adds r6, r0, r3
	adds r1, r6, #0
	adds r1, #0x20
	ldrb r5, [r1]
	ldrb r1, [r6, #0x1c]
	cmp r1, r5
	beq _02237678
	adds r4, r2, #0
_02237678:
	adds r3, r3, #1
	strb r5, [r6, #0x1c]
	cmp r3, #4
	blt _02237668
	adds r1, r0, #0
	adds r1, #0x24
	ldrb r1, [r1]
	cmp r1, #0
	beq _02237692
	movs r1, #0
	adds r0, #0x24
	strb r1, [r0]
	movs r4, #1
_02237692:
	adds r0, r4, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov65_02237660

	thumb_func_start ov65_02237698
ov65_02237698: @ 0x02237698
	movs r1, #1
	adds r0, #0x24
	strb r1, [r0]
	bx lr
	thumb_func_end ov65_02237698

	thumb_func_start ov65_022376A0
ov65_022376A0: @ 0x022376A0
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r6, r2, #0
	bl FUN_02032E00
	cmp r0, #0
	bne _022376CE
	adds r0, r4, #0
	bl FUN_02032E1C
	adds r0, r5, #0
	adds r0, #0x25
	strb r4, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov65_022376D0
	adds r0, r5, #0
	bl ov65_02237698
_022376CE:
	pop {r4, r5, r6, pc}
	thumb_func_end ov65_022376A0

	thumb_func_start ov65_022376D0
ov65_022376D0: @ 0x022376D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r1, #0
	adds r5, r0, #0
	movs r0, #0xc
	adds r4, r6, #0
	muls r4, r0, r4
	movs r0, #0x63
	lsls r0, r0, #2
	adds r7, r5, r0
	ldr r0, [r7, r4]
	str r2, [sp]
	cmp r0, #0
	bne _0223779C
	ldr r1, _022377A0 @ =0x02239AD8
	ldrh r2, [r1, r4]
	adds r0, r1, r4
	add r1, sp, #4
	strh r2, [r1]
	ldrh r2, [r0, #2]
	strh r2, [r1, #2]
	ldrh r2, [r0, #4]
	strh r2, [r1, #4]
	ldrh r2, [r0, #6]
	strh r2, [r1, #6]
	ldrh r2, [r0, #8]
	strh r2, [r1, #8]
	ldrh r0, [r0, #0xa]
	strh r0, [r1, #0xa]
	bl FUN_0203608C
	cmp r6, r0
	beq _0223772C
	adds r0, r6, #0
	bl FUN_02032EE8
	adds r6, r0, #0
	bne _02237720
	bl FUN_02022974
_02237720:
	adds r0, r6, #0
	bl FUN_02025F8C
	add r1, sp, #4
	strh r0, [r1, #0xa]
	b _02237740
_0223772C:
	ldr r0, [r5]
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	add r0, sp, #4
	bne _0223773C
	movs r1, #0
	strh r1, [r0, #0xa]
	b _02237740
_0223773C:
	movs r1, #0x61
	strh r1, [r0, #0xa]
_02237740:
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #4
	bl FUN_0222BEC0
	str r0, [r7, r4]
	movs r0, #0x62
	add r1, sp, #4
	lsls r0, r0, #2
	ldrh r1, [r1, #0xa]
	ldr r0, [r5, r0]
	bl FUN_0222CE18
	cmp r0, #0
	bne _02237772
	movs r0, #0x62
	add r1, sp, #4
	lsls r0, r0, #2
	ldrh r1, [r1, #0xa]
	ldr r0, [r5, r0]
	ldr r3, [sp]
	movs r2, #2
	bl FUN_0222CDE8
_02237772:
	movs r0, #0x19
	lsls r0, r0, #4
	adds r6, r5, r0
	subs r0, #8
	ldr r0, [r5, r0]
	ldr r1, [r7, r4]
	ldr r3, [sp]
	movs r2, #0
	bl FUN_0222CE44
	str r0, [r6, r4]
	ldr r0, [r6, r4]
	movs r1, #0
	bl FUN_0222D008
	movs r0, #0x65
	lsls r0, r0, #2
	adds r1, r5, r0
	ldrh r0, [r1, r4]
	adds r0, r0, #1
	strh r0, [r1, r4]
_0223779C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022377A0: .4byte 0x02239AD8
	thumb_func_end ov65_022376D0

	thumb_func_start ov65_022377A4
ov65_022377A4: @ 0x022377A4
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0x63
	lsls r0, r0, #2
	movs r6, #0
	adds r4, r7, r0
	adds r5, r7, #0
_022377B2:
	movs r2, #0x65
	lsls r2, r2, #2
	ldrh r2, [r5, r2]
	adds r0, r7, #0
	adds r1, r4, #0
	lsls r3, r2, #2
	ldr r2, _022377E4 @ =0x02239A2C
	ldr r2, [r2, r3]
	blx r2
	adds r6, r6, #1
	adds r4, #0xc
	adds r5, #0xc
	cmp r6, #4
	blt _022377B2
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	bl FUN_0222BE84
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	bl FUN_0222CEE4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022377E4: .4byte 0x02239A2C
	thumb_func_end ov65_022377A4

	thumb_func_start ov65_022377E8
ov65_022377E8: @ 0x022377E8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0222CE24
	movs r0, #0x63
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	movs r2, #0x30
	blx FUN_020D5124
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_022377E8

	thumb_func_start ov65_02237808
ov65_02237808: @ 0x02237808
	push {r3, lr}
	sub sp, #8
	add r0, sp, #0
	strh r1, [r0]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x16
	add r1, sp, #0
	movs r2, #8
	bl FUN_020359DC
	cmp r0, #1
	beq _02237826
	bl FUN_02022974
_02237826:
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov65_02237808

	thumb_func_start ov65_0223782C
ov65_0223782C: @ 0x0223782C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_02237832:
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r0, [r0]
	adds r0, r0, #1
	cmp r0, r4
	bge _02237856
	adds r0, r4, #0
	bl FUN_02032DC4
	cmp r0, #1
	bne _02237856
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_02237808
	adds r0, r4, #0
	bl FUN_02032D98
_02237856:
	adds r4, r4, #1
	cmp r4, #4
	blt _02237832
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_0223782C

	thumb_func_start ov65_02237860
ov65_02237860: @ 0x02237860
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r4, #0
_0223786A:
	adds r0, r5, r4
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #1
	bne _02237892
	adds r0, r4, #0
	bl FUN_02032DE0
	cmp r0, #1
	bne _02237892
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov65_022376A0
	adds r0, r5, r4
	adds r0, #0x28
	strb r7, [r0]
	movs r0, #1
	strb r0, [r5, #0x12]
_02237892:
	adds r4, r4, #1
	cmp r4, #4
	blt _0223786A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov65_02237860

	thumb_func_start ov65_0223789C
ov65_0223789C: @ 0x0223789C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x86
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022378AE
	bl FUN_02022974
_022378AE:
	movs r0, #0x6f
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #1
	bl FUN_0200E7FC
	movs r1, #0x86
	lsls r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_0223789C

	thumb_func_start ov65_022378C4
ov65_022378C4: @ 0x022378C4
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r4, r1, #0
	adds r6, r2, #0
	cmp r0, #0
	beq _02237902
	bl FUN_0200EBA0
	movs r0, #0x86
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r4, #8]
	bl FUN_02025E44
	bl FUN_02027B50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	str r6, [sp, #4]
	movs r1, #1
	ldr r0, [r5, #0x30]
	adds r2, r1, #0
	movs r3, #2
	bl FUN_0200DD0C
_02237902:
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov65_022378C4

	thumb_func_start ov65_02237908
ov65_02237908: @ 0x02237908
	bx lr
	.align 2, 0
	thumb_func_end ov65_02237908

	thumb_func_start ov65_0223790C
ov65_0223790C: @ 0x0223790C
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_0222CFA4
	ldr r0, [r4, #4]
	bl FUN_0222CFA8
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_0222D008
	movs r0, #2
	strh r0, [r4, #8]
	ldr r0, [r4]
	movs r1, #6
	bl FUN_0222BF90
	ldr r1, _0223793C @ =0x02239A20
	ldrb r0, [r1, r0]
	adds r0, #0x10
	strh r0, [r4, #0xa]
	pop {r4, pc}
	.align 2, 0
_0223793C: .4byte 0x02239A20
	thumb_func_end ov65_0223790C

	thumb_func_start ov65_02237940
ov65_02237940: @ 0x02237940
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4, #4]
	bl FUN_0222CFB4
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	subs r1, r1, #1
	strh r1, [r4, #0xa]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bgt _0223796A
	ldr r0, [r4, #4]
	bl FUN_0222CFC0
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_0222CFA4
	movs r0, #3
	strh r0, [r4, #8]
_0223796A:
	pop {r4, pc}
	thumb_func_end ov65_02237940

	thumb_func_start ov65_0223796C
ov65_0223796C: @ 0x0223796C
	bx lr
	.align 2, 0
	thumb_func_end ov65_0223796C

	thumb_func_start ov65_02237970
ov65_02237970: @ 0x02237970
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	bl FUN_02032AAC
	cmp r0, #0
	beq _02237A0C
	bl FUN_02032E64
	adds r7, r0, #0
	bl FUN_02032D84
	cmp r0, #0
	beq _0223799E
	movs r0, #5
	bl FUN_02036254
	cmp r0, #0
	bne _0223799E
	movs r0, #1
	str r0, [sp]
_0223799E:
	movs r4, #0
	cmp r7, #0
	ble _022379E6
_022379A4:
	cmp r4, #0
	bne _022379B0
	ldr r0, [r5]
	adds r0, #0x21
	ldrb r0, [r0]
	b _022379CC
_022379B0:
	adds r0, r4, #0
	bl FUN_02032F40
	adds r6, r0, #0
	cmp r6, #0x20
	bne _022379C0
	bl FUN_02022974
_022379C0:
	movs r0, #0x24
	ldr r1, [r5]
	muls r0, r6, r0
	adds r0, r1, r0
	adds r0, #0x45
	ldrb r0, [r0]
_022379CC:
	adds r1, r5, r4
	adds r1, #0x20
	ldrb r1, [r1]
	cmp r0, r1
	beq _022379DA
	movs r1, #1
	str r1, [sp]
_022379DA:
	adds r1, r5, r4
	adds r1, #0x20
	adds r4, r4, #1
	strb r0, [r1]
	cmp r4, r7
	blt _022379A4
_022379E6:
	ldr r0, [sp]
	cmp r0, #1
	bne _02237A0C
	adds r2, r5, #0
	adds r5, #0x20
	ldrb r0, [r5]
	add r1, sp, #4
	adds r2, #0x20
	strb r0, [r1]
	ldrb r0, [r2, #1]
	strb r0, [r1, #1]
	ldrb r0, [r2, #2]
	strb r0, [r1, #2]
	ldrb r0, [r2, #3]
	movs r2, #4
	strb r0, [r1, #3]
	movs r0, #0x18
	bl FUN_020359DC
_02237A0C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_02237970

	thumb_func_start ov65_02237A10
ov65_02237A10: @ 0x02237A10
	push {r3, lr}
	movs r0, #0xd
	bl FUN_02036540
	cmp r0, #0
	beq _02237A20
	movs r0, #1
	pop {r3, pc}
_02237A20:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov65_02237A10

	thumb_func_start ov65_02237A24
ov65_02237A24: @ 0x02237A24
	push {r3, r4, r5, lr}
	ldr r0, [r0, #8]
	adds r5, r1, #0
	bl FUN_0202B628
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0x1d
	bl FUN_0202C244
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #4
	bl FUN_0202B758
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_02237A24

	thumb_func_start ov65_02237A44
ov65_02237A44: @ 0x02237A44
	movs r1, #1
	strb r1, [r0, #0x10]
	ldr r1, _02237A50 @ =0x00000708
	str r1, [r0, #0xc]
	bx lr
	nop
_02237A50: .4byte 0x00000708
	thumb_func_end ov65_02237A44

	thumb_func_start ov65_02237A54
ov65_02237A54: @ 0x02237A54
	ldrb r1, [r0, #0x10]
	cmp r1, #0
	bne _02237A5E
	movs r0, #0
	bx lr
_02237A5E:
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ble _02237A6C
	subs r1, r1, #1
	str r1, [r0, #0xc]
	movs r0, #0
	bx lr
_02237A6C:
	movs r0, #1
	bx lr
	thumb_func_end ov65_02237A54

	thumb_func_start ov65_02237A70
ov65_02237A70: @ 0x02237A70
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5]
	adds r4, r2, #0
	adds r1, #0x21
	ldrb r1, [r1]
	cmp r1, #1
	bne _02237A84
	bl ov65_02237520
_02237A84:
	movs r0, #0
	bl FUN_021D26EC
	movs r0, #0
	movs r1, #1
	bl FUN_020388F4
	bl FUN_0203608C
	adds r1, r0, #0
	adds r0, r5, #0
	adds r2, r4, #0
	bl ov65_022376D0
	movs r0, #1
	strb r0, [r5, #5]
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_02237A70

	thumb_func_start ov65_02237AA8
ov65_02237AA8: @ 0x02237AA8
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r2, #0
	adds r0, #0x30
	movs r2, #0x6b
	bl ov65_02236E44
	movs r0, #2
	strb r0, [r4, #5]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_02237AA8

	thumb_func_start ov65_02237AC0
ov65_02237AC0: @ 0x02237AC0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r0, #0x30
	adds r6, r1, #0
	bl ov65_02236EF8
	cmp r0, #0
	bne _02237AD8
	add sp, #8
	movs r0, #0
	pop {r4, r5, r6, pc}
_02237AD8:
	adds r0, r5, #0
	bl ov65_02237450
	cmp r0, #1
	bne _02237B1E
	bl FUN_02032E44
	adds r4, r0, #0
	cmp r4, #0xff
	beq _02237B1E
	ldrb r1, [r5, #6]
	cmp r1, #0
	beq _02237B1E
	bl FUN_02032F40
	cmp r0, #0x20
	bne _02237B1C
	add r0, sp, #0
	strh r4, [r0]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	bl FUN_02032D98
	movs r0, #0x16
	add r1, sp, #0
	movs r2, #8
	bl FUN_020359DC
	cmp r0, #1
	beq _02237B1E
	bl FUN_02022974
	b _02237B1E
_02237B1C:
	strb r4, [r5, #6]
_02237B1E:
	ldr r0, _02237B94 @ =0x021BF67C
	movs r1, #1
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _02237B56
	ldr r0, _02237B98 @ =0x000005DD
	bl FUN_02005748
	adds r0, r5, #0
	bl ov65_02237450
	cmp r0, #0
	bne _02237B3E
	movs r0, #6
	strb r0, [r5, #5]
	b _02237B8C
_02237B3E:
	adds r0, r5, #0
	bl ov65_02237548
	ldrb r1, [r6, #1]
	cmp r1, r0
	bgt _02237B50
	movs r0, #8
	strb r0, [r5, #5]
	b _02237B8C
_02237B50:
	movs r0, #6
	strb r0, [r5, #5]
	b _02237B8C
_02237B56:
	movs r1, #2
	adds r2, r0, #0
	tst r2, r1
	beq _02237B6A
	ldr r0, _02237B98 @ =0x000005DD
	bl FUN_02005748
	movs r0, #0x16
	strb r0, [r5, #5]
	b _02237B8C
_02237B6A:
	ldrb r2, [r5, #6]
	cmp r2, #0xff
	beq _02237B7C
	ldr r0, _02237B98 @ =0x000005DD
	bl FUN_02005748
	movs r0, #3
	strb r0, [r5, #5]
	b _02237B8C
_02237B7C:
	lsls r1, r1, #9
	tst r0, r1
	beq _02237B8C
	movs r0, #0x1e
	strb r0, [r5, #5]
	ldr r0, _02237B98 @ =0x000005DD
	bl FUN_02005748
_02237B8C:
	movs r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02237B94: .4byte 0x021BF67C
_02237B98: .4byte 0x000005DD
	thumb_func_end ov65_02237AC0

	thumb_func_start ov65_02237B9C
ov65_02237B9C: @ 0x02237B9C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r2, #0
	ldrb r2, [r5, #6]
	adds r0, #0x30
	adds r3, r6, #0
	adds r4, r1, #0
	bl ov65_02236F70
	adds r0, r5, #0
	adds r0, #0x30
	adds r1, r4, #0
	movs r2, #0x6c
	adds r3, r6, #0
	bl ov65_02236E44
	movs r0, #4
	strb r0, [r5, #5]
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov65_02237B9C

	thumb_func_start ov65_02237BC4
ov65_02237BC4: @ 0x02237BC4
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x30
	adds r5, r2, #0
	bl ov65_02236EF8
	cmp r0, #0
	bne _02237BD8
	movs r0, #0
	pop {r3, r4, r5, pc}
_02237BD8:
	str r5, [sp]
	ldr r0, [r4, #0x30]
	ldr r1, _02237BF4 @ =0x02239A24
	movs r2, #0x30
	movs r3, #4
	bl FUN_02002100
	movs r1, #0x83
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #5
	strb r0, [r4, #5]
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02237BF4: .4byte 0x02239A24
	thumb_func_end ov65_02237BC4

	thumb_func_start ov65_02237BF8
ov65_02237BF8: @ 0x02237BF8
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0x83
	lsls r0, r0, #2
	adds r6, r2, #0
	adds r4, r1, #0
	ldr r0, [r5, r0]
	adds r1, r6, #0
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _02237C90
	ldrb r2, [r5, #6]
	add r1, sp, #0
	cmp r0, #0
	strh r2, [r1]
	bne _02237C5C
	movs r0, #1
	str r0, [sp, #4]
	ldrb r1, [r5, #6]
	adds r0, r5, #0
	adds r2, r6, #0
	bl ov65_022376A0
	ldr r0, [r5]
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #1
	bne _02237C44
	adds r0, r5, #0
	bl ov65_02237504
	adds r0, r5, #0
	bl ov65_02237520
_02237C44:
	adds r0, r5, #0
	bl ov65_02237548
	ldrb r1, [r4, #2]
	cmp r1, r0
	bgt _02237C56
	movs r0, #8
	strb r0, [r5, #5]
	b _02237C6A
_02237C56:
	movs r0, #1
	strb r0, [r5, #5]
	b _02237C6A
_02237C5C:
	movs r0, #0
	str r0, [sp, #4]
	ldrb r0, [r5, #6]
	bl FUN_02032D98
	movs r0, #1
	strb r0, [r5, #5]
_02237C6A:
	movs r0, #0x16
	add r1, sp, #0
	movs r2, #8
	bl FUN_020359DC
	cmp r0, #1
	beq _02237C7C
	bl FUN_02022974
_02237C7C:
	movs r0, #0xff
	strb r0, [r5, #6]
	adds r0, r5, #0
	adds r0, #0x30
	bl ov65_02237018
	movs r0, #0x83
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
_02237C90:
	movs r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov65_02237BF8

	thumb_func_start ov65_02237C98
ov65_02237C98: @ 0x02237C98
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r2, #0
	adds r0, #0x30
	movs r2, #0x77
	bl ov65_02236E44
	movs r0, #7
	strb r0, [r4, #5]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_02237C98

	thumb_func_start ov65_02237CB0
ov65_02237CB0: @ 0x02237CB0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x30
	bl ov65_02236EF8
	cmp r0, #0
	bne _02237CC2
	movs r0, #0
	pop {r4, pc}
_02237CC2:
	movs r0, #0x13
	strb r0, [r4, #5]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_02237CB0

	thumb_func_start ov65_02237CCC
ov65_02237CCC: @ 0x02237CCC
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r2, #0
	adds r0, #0x30
	movs r2, #0x6f
	bl ov65_02236E44
	movs r0, #9
	strb r0, [r4, #5]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_02237CCC

	thumb_func_start ov65_02237CE4
ov65_02237CE4: @ 0x02237CE4
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x30
	adds r5, r2, #0
	bl ov65_02236EF8
	cmp r0, #0
	bne _02237CF8
	movs r0, #0
	pop {r3, r4, r5, pc}
_02237CF8:
	str r5, [sp]
	ldr r0, [r4, #0x30]
	ldr r1, _02237D14 @ =0x02239A24
	movs r2, #0x30
	movs r3, #4
	bl FUN_02002100
	movs r1, #0x83
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0xa
	strb r0, [r4, #5]
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02237D14: .4byte 0x02239A24
	thumb_func_end ov65_02237CE4

	thumb_func_start ov65_02237D18
ov65_02237D18: @ 0x02237D18
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x83
	lsls r0, r0, #2
	adds r4, r1, #0
	ldr r0, [r5, r0]
	adds r1, r2, #0
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _02237D5A
	cmp r0, #0
	bne _02237D3C
	movs r0, #0xb
	strb r0, [r5, #5]
	b _02237D52
_02237D3C:
	adds r0, r5, #0
	bl ov65_02237548
	ldrb r1, [r4, #2]
	cmp r1, r0
	bgt _02237D4E
	movs r0, #0x13
	strb r0, [r5, #5]
	b _02237D52
_02237D4E:
	movs r0, #1
	strb r0, [r5, #5]
_02237D52:
	movs r0, #0x83
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
_02237D5A:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_02237D18

	thumb_func_start ov65_02237D60
ov65_02237D60: @ 0x02237D60
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	movs r1, #0x1e
	adds r6, r2, #0
	str r1, [r5, #8]
	bl ov65_0223758C
	adds r0, r5, #0
	adds r0, #0x30
	adds r1, r4, #0
	movs r2, #0x66
	adds r3, r6, #0
	bl ov65_02236E44
	adds r0, r5, #0
	bl ov65_0223789C
	adds r0, r5, #0
	bl ov65_02237A44
	movs r0, #0xc
	strb r0, [r5, #5]
	bl FUN_021D25FC
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov65_02237D60

	thumb_func_start ov65_02237D98
ov65_02237D98: @ 0x02237D98
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl FUN_02035E18
	adds r5, r0, #0
	bl FUN_02032E64
	cmp r5, r0
	beq _02237DB4
	adds r0, r4, #0
	bl ov65_0223758C
	movs r0, #0
	pop {r3, r4, r5, pc}
_02237DB4:
	bl FUN_021D25C0
	cmp r0, #0
	bne _02237DC0
	movs r0, #0
	pop {r3, r4, r5, pc}
_02237DC0:
	movs r0, #1
	bl FUN_021D26EC
	movs r0, #0xd
	strb r0, [r4, #5]
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_02237D98

	thumb_func_start ov65_02237DD0
ov65_02237DD0: @ 0x02237DD0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _02237DEE
	movs r1, #0
	movs r0, #0x17
	adds r2, r1, #0
	bl FUN_020359DC
	cmp r0, #0
	beq _02237DF2
	movs r0, #0xe
	strb r0, [r4, #5]
	b _02237DF2
_02237DEE:
	subs r0, r0, #1
	str r0, [r4, #8]
_02237DF2:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_02237DD0

	thumb_func_start ov65_02237DF8
ov65_02237DF8: @ 0x02237DF8
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xd
	adds r5, r1, #0
	bl FUN_02036540
	cmp r0, #0
	beq _02237E1E
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov65_02237498
	bl FUN_020365F4
	movs r0, #0xe
	bl FUN_020364F0
	movs r0, #0xf
	strb r0, [r4, #5]
_02237E1E:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_02237DF8

	thumb_func_start ov65_02237E24
ov65_02237E24: @ 0x02237E24
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0xe
	bl FUN_02036540
	cmp r0, #0
	beq _02237E4E
	ldr r0, [r4]
	ldrb r1, [r0, #0x1b]
	add r0, sp, #0
	strh r1, [r0]
	bl FUN_0203608C
	add r1, sp, #0
	bl FUN_02036614
	cmp r0, #1
	bne _02237E4E
	movs r0, #0x10
	strb r0, [r4, #5]
_02237E4E:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov65_02237E24

	thumb_func_start ov65_02237E54
ov65_02237E54: @ 0x02237E54
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl ov65_02237548
	adds r7, r0, #0
	bl FUN_0203608C
	movs r5, #0
	adds r4, r5, #0
	str r0, [sp]
	cmp r7, #0
	ble _02237E98
_02237E6C:
	ldr r0, [sp]
	cmp r0, r4
	beq _02237E90
	adds r0, r4, #0
	bl FUN_0203664C
	cmp r0, #0
	beq _02237E92
	ldrh r1, [r0]
	ldr r0, [r6]
	ldrb r0, [r0, #0x1b]
	cmp r1, r0
	bne _02237E8A
	adds r5, r5, #1
	b _02237E92
_02237E8A:
	movs r0, #0x1b
	strb r0, [r6, #5]
	b _02237E92
_02237E90:
	adds r5, r5, #1
_02237E92:
	adds r4, r4, #1
	cmp r4, r7
	blt _02237E6C
_02237E98:
	cmp r5, r7
	bne _02237EA0
	movs r0, #0x11
	strb r0, [r6, #5]
_02237EA0:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_02237E54

	thumb_func_start ov65_02237EA4
ov65_02237EA4: @ 0x02237EA4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	adds r1, r0, #0
	bl FUN_020388F4
	movs r0, #0x12
	bl FUN_020364F0
	movs r0, #0x12
	strb r0, [r4, #5]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_02237EA4

	thumb_func_start ov65_02237EC0
ov65_02237EC0: @ 0x02237EC0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x12
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_02036540
	cmp r0, #0
	beq _02237EEC
	movs r0, #1
	strb r0, [r5, #7]
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov65_02237A24
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov65_022378C4
	movs r0, #1
	pop {r4, r5, r6, pc}
_02237EEC:
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov65_02237EC0

	thumb_func_start ov65_02237EF0
ov65_02237EF0: @ 0x02237EF0
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r2, #0
	adds r0, #0x30
	movs r2, #0x78
	bl ov65_02236E44
	movs r0, #0x14
	strb r0, [r4, #5]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_02237EF0

	thumb_func_start ov65_02237F08
ov65_02237F08: @ 0x02237F08
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r0, #0x30
	adds r4, r2, #0
	bl ov65_02236EF8
	cmp r0, #0
	bne _02237F20
	add sp, #8
	movs r0, #0
	pop {r3, r4, r5, pc}
_02237F20:
	movs r0, #1
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0x30]
	ldr r1, _02237F44 @ =0x02239A24
	movs r2, #0x30
	movs r3, #4
	bl FUN_02002054
	movs r1, #0x83
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0x15
	strb r0, [r5, #5]
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02237F44: .4byte 0x02239A24
	thumb_func_end ov65_02237F08

	thumb_func_start ov65_02237F48
ov65_02237F48: @ 0x02237F48
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x83
	lsls r0, r0, #2
	adds r4, r1, #0
	ldr r0, [r5, r0]
	adds r1, r2, #0
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _02237F9A
	cmp r0, #0
	bne _02237F6C
	movs r0, #0x16
	strb r0, [r5, #5]
	b _02237F92
_02237F6C:
	adds r0, r5, #0
	bl ov65_02237450
	cmp r0, #0
	beq _02237F8E
	adds r0, r5, #0
	bl ov65_02237548
	ldrb r1, [r4, #2]
	cmp r1, r0
	bgt _02237F88
	movs r0, #8
	strb r0, [r5, #5]
	b _02237F92
_02237F88:
	movs r0, #1
	strb r0, [r5, #5]
	b _02237F92
_02237F8E:
	movs r0, #1
	strb r0, [r5, #5]
_02237F92:
	movs r0, #0x83
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
_02237F9A:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_02237F48

	thumb_func_start ov65_02237FA0
ov65_02237FA0: @ 0x02237FA0
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r2, #0
	adds r0, #0x30
	movs r2, #0x79
	bl ov65_02236E44
	movs r0, #0x17
	strb r0, [r4, #5]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_02237FA0

	thumb_func_start ov65_02237FB8
ov65_02237FB8: @ 0x02237FB8
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r0, #0x30
	adds r4, r2, #0
	bl ov65_02236EF8
	cmp r0, #0
	bne _02237FD0
	add sp, #8
	movs r0, #0
	pop {r3, r4, r5, pc}
_02237FD0:
	movs r0, #1
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0x30]
	ldr r1, _02237FF4 @ =0x02239A24
	movs r2, #0x30
	movs r3, #4
	bl FUN_02002054
	movs r1, #0x83
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0x18
	strb r0, [r5, #5]
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02237FF4: .4byte 0x02239A24
	thumb_func_end ov65_02237FB8

	thumb_func_start ov65_02237FF8
ov65_02237FF8: @ 0x02237FF8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x83
	lsls r0, r0, #2
	adds r4, r1, #0
	ldr r0, [r5, r0]
	adds r1, r2, #0
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _0223804A
	cmp r0, #0
	bne _0223801C
	movs r0, #0x19
	strb r0, [r5, #5]
	b _02238042
_0223801C:
	adds r0, r5, #0
	bl ov65_02237450
	cmp r0, #0
	beq _0223803E
	adds r0, r5, #0
	bl ov65_02237548
	ldrb r1, [r4, #2]
	cmp r1, r0
	bgt _02238038
	movs r0, #8
	strb r0, [r5, #5]
	b _02238042
_02238038:
	movs r0, #1
	strb r0, [r5, #5]
	b _02238042
_0223803E:
	movs r0, #1
	strb r0, [r5, #5]
_02238042:
	movs r0, #0x83
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
_0223804A:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_02237FF8

	thumb_func_start ov65_02238050
ov65_02238050: @ 0x02238050
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r2, #0
	adds r0, #0x30
	movs r2, #0x7a
	bl ov65_02236E44
	movs r0, #0x1e
	str r0, [r4, #8]
	movs r0, #0x1a
	strb r0, [r4, #5]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_02238050

	thumb_func_start ov65_0223806C
ov65_0223806C: @ 0x0223806C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x30
	bl ov65_02236EF8
	cmp r0, #0
	bne _0223807E
	movs r0, #0
	pop {r4, pc}
_0223807E:
	ldr r0, [r4, #8]
	subs r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0
	ble _0223808C
	movs r0, #0
	pop {r4, pc}
_0223808C:
	movs r0, #0
	strb r0, [r4, #7]
	bl FUN_02038378
	adds r0, r4, #0
	bl ov65_022375CC
	bl FUN_02038B60
	movs r0, #0
	movs r1, #1
	bl FUN_020388F4
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_0223806C

	thumb_func_start ov65_022380AC
ov65_022380AC: @ 0x022380AC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x83
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r6, r1, #0
	adds r4, r2, #0
	cmp r0, #0
	beq _022380CC
	adds r1, r4, #0
	bl FUN_02002154
	movs r0, #0x83
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
_022380CC:
	adds r0, r5, #0
	adds r0, #0x30
	bl ov65_02237018
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov65_022378C4
	movs r0, #0x1c
	strb r0, [r5, #5]
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov65_022380AC

	thumb_func_start ov65_022380E8
ov65_022380E8: @ 0x022380E8
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r2, #0
	adds r0, #0x30
	movs r2, #0x76
	bl ov65_02236E44
	movs r0, #0x1d
	strb r0, [r4, #5]
	adds r0, r4, #0
	bl ov65_022375CC
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov65_022380E8

	thumb_func_start ov65_02238104
ov65_02238104: @ 0x02238104
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x30
	bl ov65_02236EF8
	cmp r0, #0
	bne _02238116
	movs r0, #0
	pop {r4, pc}
_02238116:
	bl FUN_02038378
	bl FUN_02038B60
	adds r0, r4, #0
	bl ov65_022375CC
	movs r0, #0
	movs r1, #1
	strb r0, [r4, #7]
	bl FUN_020388F4
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_02238104

	thumb_func_start ov65_02238134
ov65_02238134: @ 0x02238134
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	adds r3, r2, #0
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #1
	bne _02238148
	movs r2, #0x7d
	b _0223814A
_02238148:
	movs r2, #0x7c
_0223814A:
	adds r0, r4, #0
	adds r0, #0x30
	bl ov65_02236E44
	movs r0, #0x1f
	strb r0, [r4, #5]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_02238134

	thumb_func_start ov65_0223815C
ov65_0223815C: @ 0x0223815C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x30
	adds r5, r2, #0
	bl ov65_02236EF8
	cmp r0, #0
	bne _02238170
	movs r0, #0
	pop {r3, r4, r5, pc}
_02238170:
	str r5, [sp]
	ldr r0, [r4, #0x30]
	ldr r1, _0223818C @ =0x02239A24
	movs r2, #0x30
	movs r3, #4
	bl FUN_02002100
	movs r1, #0x83
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0x20
	strb r0, [r4, #5]
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223818C: .4byte 0x02239A24
	thumb_func_end ov65_0223815C

	thumb_func_start ov65_02238190
ov65_02238190: @ 0x02238190
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x83
	lsls r0, r0, #2
	adds r4, r2, #0
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _022381C8
	cmp r0, #0
	bne _022381BC
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_0223731C
	adds r0, r5, #0
	bl ov65_02237698
_022381BC:
	movs r0, #1
	strb r0, [r5, #5]
	movs r0, #0x83
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
_022381C8:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_02238190

	thumb_func_start ov65_022381CC
ov65_022381CC: @ 0x022381CC
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_02032AC0
	movs r0, #0
	movs r1, #1
	bl FUN_020388F4
	movs r0, #1
	strb r0, [r4, #5]
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov65_022381CC

	thumb_func_start ov65_022381E4
ov65_022381E4: @ 0x022381E4
	push {r4, lr}
	adds r1, r2, #0
	adds r4, r0, #0
	bl ov65_02237550
	movs r0, #0
	bl FUN_02035D78
	cmp r0, #0
	bne _022381FE
	movs r0, #0xf
	strb r0, [r4, #5]
	b _0223820C
_022381FE:
	movs r0, #0
	bl FUN_02032E00
	cmp r0, #0
	beq _0223820C
	movs r0, #2
	strb r0, [r4, #5]
_0223820C:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov65_022381E4

	thumb_func_start ov65_02238210
ov65_02238210: @ 0x02238210
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r6, r2, #0
	adds r4, r1, #0
	adds r5, r0, #0
	adds r1, r6, #0
	bl ov65_02237550
	adds r0, r5, #0
	movs r2, #0
	adds r0, #0x30
	adds r1, r4, #0
	adds r3, r2, #0
	str r6, [sp]
	bl ov65_0223726C
	adds r0, r5, #0
	adds r0, #0x30
	adds r1, r4, #0
	movs r2, #0x72
	adds r3, r6, #0
	bl ov65_02236E44
	adds r0, r5, #0
	bl ov65_0223789C
	movs r0, #3
	strb r0, [r5, #5]
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov65_02238210

	thumb_func_start ov65_02238250
ov65_02238250: @ 0x02238250
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	adds r4, r1, #0
	adds r5, r0, #0
	adds r1, r6, #0
	bl ov65_02237550
	adds r0, r5, #0
	adds r0, #0x30
	bl ov65_02236EF8
	cmp r0, #0
	bne _0223826E
	movs r0, #0
	pop {r4, r5, r6, pc}
_0223826E:
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	beq _022382AA
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov65_022378C4
	ldrb r0, [r5, #0x13]
	cmp r0, #1
	beq _0223828E
	cmp r0, #2
	beq _02238294
	cmp r0, #3
	beq _022382A0
	b _022382AA
_0223828E:
	movs r0, #4
	strb r0, [r5, #5]
	b _022382AA
_02238294:
	movs r0, #6
	strb r0, [r5, #5]
	movs r0, #0x74
	adds r5, #0x2d
	strb r0, [r5]
	b _022382AA
_022382A0:
	movs r0, #6
	strb r0, [r5, #5]
	movs r0, #0x84
	adds r5, #0x2d
	strb r0, [r5]
_022382AA:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov65_02238250

	thumb_func_start ov65_022382B0
ov65_022382B0: @ 0x022382B0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r4, r2, #0
	movs r2, #0
	adds r5, r0, #0
	adds r0, #0x30
	adds r3, r2, #0
	adds r6, r1, #0
	str r4, [sp]
	bl ov65_0223726C
	adds r0, r5, #0
	adds r0, #0x30
	adds r1, r6, #0
	movs r2, #0x73
	movs r3, #0x1e
	str r4, [sp]
	bl ov65_02236E50
	movs r0, #5
	strb r0, [r5, #5]
	bl FUN_0203608C
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0x60
	bl ov65_022376A0
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov65_022382B0

	thumb_func_start ov65_022382F0
ov65_022382F0: @ 0x022382F0
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r2, #0
	bl ov65_02237550
	adds r0, r4, #0
	adds r0, #0x30
	bl ov65_02236EF8
	cmp r0, #0
	bne _0223830A
	movs r0, #0
	pop {r4, pc}
_0223830A:
	movs r0, #8
	strb r0, [r4, #5]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_022382F0

	thumb_func_start ov65_02238314
ov65_02238314: @ 0x02238314
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r6, r2, #0
	movs r2, #0
	adds r5, r0, #0
	adds r0, #0x30
	adds r3, r2, #0
	adds r4, r1, #0
	str r6, [sp]
	bl ov65_0223726C
	adds r2, r5, #0
	adds r2, #0x2d
	adds r0, r5, #0
	ldrb r2, [r2]
	adds r0, #0x30
	adds r1, r4, #0
	adds r3, r6, #0
	bl ov65_02236E44
	movs r0, #7
	strb r0, [r5, #5]
	bl FUN_02038378
	bl FUN_02038B60
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov65_02238314

	thumb_func_start ov65_02238350
ov65_02238350: @ 0x02238350
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x30
	bl ov65_02236EF8
	cmp r0, #0
	bne _02238362
	movs r0, #0
	pop {r4, pc}
_02238362:
	movs r0, #0
	movs r1, #1
	strb r0, [r4, #7]
	bl FUN_020388F4
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov65_02238350

	thumb_func_start ov65_02238370
ov65_02238370: @ 0x02238370
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	adds r4, r1, #0
	adds r5, r0, #0
	adds r1, r6, #0
	bl ov65_02237550
	adds r0, r5, #0
	adds r0, #0x30
	adds r1, r4, #0
	movs r2, #0x7b
	adds r3, r6, #0
	bl ov65_02236E44
	adds r0, r5, #0
	bl ov65_0223789C
	movs r0, #9
	strb r0, [r5, #5]
	ldr r0, [r5]
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #1
	bne _022383A6
	adds r0, r5, #0
	bl ov65_02237520
_022383A6:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov65_02238370

	thumb_func_start ov65_022383AC
ov65_022383AC: @ 0x022383AC
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r2, #0
	bl ov65_02237550
	adds r0, r4, #0
	adds r0, #0x30
	bl ov65_02236EF8
	cmp r0, #0
	bne _022383C6
	movs r0, #0
	pop {r4, pc}
_022383C6:
	movs r0, #0xa
	strb r0, [r4, #5]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_022383AC

	thumb_func_start ov65_022383D0
ov65_022383D0: @ 0x022383D0
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	adds r4, r1, #0
	adds r5, r0, #0
	adds r1, r6, #0
	bl ov65_02237550
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	beq _02238404
	movs r0, #0
	strb r0, [r5, #0x12]
	ldr r0, [r5]
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #1
	bne _022383FE
	adds r0, r5, #0
	bl ov65_02237504
	adds r0, r5, #0
	bl ov65_02237520
_022383FE:
	adds r0, r5, #0
	bl ov65_02237698
_02238404:
	adds r0, r5, #0
	bl ov65_02237A10
	cmp r0, #1
	bne _02238448
	bl FUN_020365F4
	movs r0, #0xe
	bl FUN_020364F0
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov65_022378C4
	adds r0, r5, #0
	adds r0, #0x30
	adds r1, r4, #0
	movs r2, #0x66
	adds r3, r6, #0
	bl ov65_02236E44
	adds r0, r5, #0
	bl ov65_02237A44
	movs r0, #0x4b
	lsls r0, r0, #2
	str r0, [r5, #8]
	adds r0, r5, #0
	bl ov65_0223789C
	movs r0, #0xb
	strb r0, [r5, #5]
	b _02238462
_02238448:
	ldr r0, _02238468 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	lsls r0, r0, #0xa
	tst r0, r1
	beq _02238462
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov65_022378C4
	movs r0, #0x12
	strb r0, [r5, #5]
_02238462:
	movs r0, #0
	pop {r4, r5, r6, pc}
	nop
_02238468: .4byte 0x021BF67C
	thumb_func_end ov65_022383D0

	thumb_func_start ov65_0223846C
ov65_0223846C: @ 0x0223846C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xe
	bl FUN_02036540
	cmp r0, #0
	beq _022384B6
	ldr r0, [r4]
	ldrb r1, [r0, #0x1b]
	add r0, sp, #0
	strh r1, [r0]
	adds r0, r4, #0
	bl ov65_02237548
	adds r5, r0, #0
	bl FUN_02035E18
	cmp r5, r0
	beq _022384A4
	ldr r0, [r4, #8]
	subs r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0
	bgt _022384A0
	movs r0, #0xf
	strb r0, [r4, #5]
_022384A0:
	movs r0, #0
	pop {r3, r4, r5, pc}
_022384A4:
	bl FUN_0203608C
	add r1, sp, #0
	bl FUN_02036614
	cmp r0, #1
	bne _022384B6
	movs r0, #0xc
	strb r0, [r4, #5]
_022384B6:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_0223846C

	thumb_func_start ov65_022384BC
ov65_022384BC: @ 0x022384BC
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl ov65_02237548
	adds r7, r0, #0
	bl FUN_0203608C
	movs r5, #0
	adds r4, r5, #0
	str r0, [sp]
	cmp r7, #0
	ble _02238500
_022384D4:
	ldr r0, [sp]
	cmp r0, r4
	beq _022384F8
	adds r0, r4, #0
	bl FUN_0203664C
	cmp r0, #0
	beq _022384FA
	ldrh r1, [r0]
	ldr r0, [r6]
	ldrb r0, [r0, #0x1b]
	cmp r1, r0
	bne _022384F2
	adds r5, r5, #1
	b _022384FA
_022384F2:
	movs r0, #0xf
	strb r0, [r6, #5]
	b _022384FA
_022384F8:
	adds r5, r5, #1
_022384FA:
	adds r4, r4, #1
	cmp r4, r7
	blt _022384D4
_02238500:
	cmp r5, r7
	bne _02238508
	movs r0, #0xd
	strb r0, [r6, #5]
_02238508:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_022384BC

	thumb_func_start ov65_0223850C
ov65_0223850C: @ 0x0223850C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	adds r1, r0, #0
	bl FUN_020388F4
	movs r0, #0x12
	bl FUN_020364F0
	movs r0, #0xe
	strb r0, [r4, #5]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_0223850C

	thumb_func_start ov65_02238528
ov65_02238528: @ 0x02238528
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x12
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_02036540
	cmp r0, #0
	beq _02238554
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov65_022378C4
	movs r0, #1
	strb r0, [r5, #7]
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov65_02237A24
	movs r0, #1
	pop {r4, r5, r6, pc}
_02238554:
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov65_02238528

	thumb_func_start ov65_02238558
ov65_02238558: @ 0x02238558
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x83
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r6, r1, #0
	adds r4, r2, #0
	cmp r0, #0
	beq _02238578
	adds r1, r4, #0
	bl FUN_02002154
	movs r0, #0x83
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
_02238578:
	adds r0, r5, #0
	adds r0, #0x30
	bl ov65_02237018
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov65_022378C4
	movs r0, #0x10
	strb r0, [r5, #5]
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov65_02238558

	thumb_func_start ov65_02238594
ov65_02238594: @ 0x02238594
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r2, #0
	adds r0, #0x30
	movs r2, #0x76
	bl ov65_02236E44
	movs r0, #0x11
	strb r0, [r4, #5]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_02238594

	thumb_func_start ov65_022385AC
ov65_022385AC: @ 0x022385AC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x30
	bl ov65_02236EF8
	cmp r0, #0
	bne _022385BE
	movs r0, #0
	pop {r4, pc}
_022385BE:
	bl FUN_02038378
	bl FUN_02038B60
	movs r0, #0
	movs r1, #1
	strb r0, [r4, #7]
	bl FUN_020388F4
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov65_022385AC

	thumb_func_start ov65_022385D4
ov65_022385D4: @ 0x022385D4
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	adds r4, r1, #0
	adds r5, r0, #0
	adds r1, r6, #0
	bl ov65_02237550
	ldr r0, [r5]
	adds r0, #0x21
	ldrb r0, [r0]
	cmp r0, #1
	bne _022385F0
	movs r2, #0x7d
	b _022385F2
_022385F0:
	movs r2, #0x7c
_022385F2:
	adds r0, r5, #0
	adds r0, #0x30
	adds r1, r4, #0
	adds r3, r6, #0
	bl ov65_02236E44
	movs r0, #0x13
	strb r0, [r5, #5]
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov65_022385D4

	thumb_func_start ov65_02238608
ov65_02238608: @ 0x02238608
	push {r3, r4, r5, lr}
	adds r5, r2, #0
	adds r4, r0, #0
	adds r1, r5, #0
	bl ov65_02237550
	adds r0, r4, #0
	bl ov65_02237A10
	cmp r0, #1
	bne _0223862E
	movs r0, #0xa
	strb r0, [r4, #5]
	adds r4, #0x30
	adds r0, r4, #0
	bl ov65_02236F38
	movs r0, #0
	pop {r3, r4, r5, pc}
_0223862E:
	adds r0, r4, #0
	adds r0, #0x30
	bl ov65_02236EF8
	cmp r0, #0
	bne _0223863E
	movs r0, #0
	pop {r3, r4, r5, pc}
_0223863E:
	str r5, [sp]
	ldr r0, [r4, #0x30]
	ldr r1, _0223865C @ =0x02239A24
	movs r2, #0x30
	movs r3, #4
	bl FUN_02002100
	movs r1, #0x83
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0x14
	strb r0, [r4, #5]
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223865C: .4byte 0x02239A24
	thumb_func_end ov65_02238608

	thumb_func_start ov65_02238660
ov65_02238660: @ 0x02238660
	push {r3, r4, r5, lr}
	adds r4, r2, #0
	adds r5, r0, #0
	adds r1, r4, #0
	bl ov65_02237550
	adds r0, r5, #0
	bl ov65_02237A10
	cmp r0, #1
	bne _02238698
	movs r0, #0xa
	strb r0, [r5, #5]
	adds r0, r5, #0
	adds r0, #0x30
	bl ov65_02236F38
	movs r0, #0x83
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl FUN_02002154
	movs r1, #0x83
	movs r0, #0
	lsls r1, r1, #2
	str r0, [r5, r1]
	pop {r3, r4, r5, pc}
_02238698:
	movs r0, #0x83
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _022386CA
	cmp r0, #0
	bne _022386BE
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_0223731C
	adds r0, r5, #0
	bl ov65_02237698
_022386BE:
	movs r0, #8
	strb r0, [r5, #5]
	movs r0, #0x83
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
_022386CA:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov65_02238660

	thumb_func_start ov65_022386D0
ov65_022386D0: @ 0x022386D0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	bl FUN_02032F40
	adds r1, r5, #0
	adds r1, #0x26
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0x20
	bne _022386F4
	bl FUN_02022974
_022386F4:
	adds r0, r5, #0
	movs r2, #0
	adds r0, #0x30
	adds r1, r6, #0
	adds r3, r2, #0
	str r4, [sp]
	bl ov65_0223726C
	bl FUN_02038378
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0x27
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x30
	adds r1, r6, #0
	movs r2, #0x84
	adds r3, r4, #0
	bl ov65_02236E44
	movs r0, #0x16
	strb r0, [r5, #5]
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov65_022386D0

	thumb_func_start ov65_02238728
ov65_02238728: @ 0x02238728
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x30
	adds r5, r2, #0
	bl ov65_02236EF8
	cmp r0, #0
	bne _0223873C
	movs r0, #0
	pop {r3, r4, r5, pc}
_0223873C:
	str r5, [sp]
	ldr r0, [r4, #0x30]
	ldr r1, _02238758 @ =0x02239A24
	movs r2, #0x30
	movs r3, #4
	bl FUN_02002100
	movs r1, #0x83
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0x17
	strb r0, [r4, #5]
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02238758: .4byte 0x02239A24
	thumb_func_end ov65_02238728

	thumb_func_start ov65_0223875C
ov65_0223875C: @ 0x0223875C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x83
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, r2, #0
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _02238788
	cmp r0, #0
	bne _0223877C
	movs r0, #0x18
	b _0223877E
_0223877C:
	movs r0, #0x1d
_0223877E:
	strb r0, [r4, #5]
	movs r0, #0x83
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
_02238788:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov65_0223875C

	thumb_func_start ov65_0223878C
ov65_0223878C: @ 0x0223878C
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r2, #0
	adds r0, #0x30
	movs r2, #0x11
	bl ov65_02236E44
	adds r0, r4, #0
	bl ov65_0223789C
	movs r0, #0x5a
	str r0, [r4, #8]
	movs r0, #0x19
	strb r0, [r4, #5]
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov65_0223878C

	thumb_func_start ov65_022387AC
ov65_022387AC: @ 0x022387AC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	adds r4, r1, #0
	cmp r0, #0
	ble _022387C0
	subs r0, r0, #1
	str r0, [r5, #8]
	movs r0, #0
	pop {r3, r4, r5, pc}
_022387C0:
	adds r0, r5, #0
	adds r0, #0x30
	bl ov65_02236EF8
	cmp r0, #0
	bne _022387D0
	movs r0, #0
	pop {r3, r4, r5, pc}
_022387D0:
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r0, [r0]
	ldrb r1, [r4]
	bl ov65_02237464
	cmp r0, #0
	beq _022387E4
	movs r0, #0x1a
	strb r0, [r5, #5]
_022387E4:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_022387AC

	thumb_func_start ov65_022387E8
ov65_022387E8: @ 0x022387E8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	bl ov65_0223742C
	bl FUN_020380E4
	cmp r0, #1
	bne _02238832
	movs r0, #0
	bl FUN_02035D78
	cmp r0, #1
	bne _02238832
	movs r0, #0
	bl FUN_0203632C
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov65_022378C4
	movs r1, #0
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #3
	adds r2, r1, #0
	adds r3, r1, #0
	str r4, [sp, #8]
	bl FUN_0200F174
	movs r0, #0x1b
	strb r0, [r5, #5]
_02238832:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov65_022387E8

	thumb_func_start ov65_02238838
ov65_02238838: @ 0x02238838
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	bl FUN_0200F2AC
	cmp r0, #0
	beq _022388F4
	ldr r0, [r6, #8]
	movs r1, #0
	bl FUN_020329E0
	adds r0, r5, #0
	movs r1, #1
	adds r0, #0x27
	strb r1, [r0]
	adds r0, r5, #0
	bl ov65_022377E8
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov65_022367F8
	adds r0, r5, #0
	movs r2, #0x7e
	adds r0, #0x30
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020D5124
	adds r0, r5, #0
	bl ov65_0223760C
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov65_022367A8
	bl FUN_02039734
	movs r1, #0
	strb r1, [r5, #0x12]
	strb r1, [r5, #0x13]
	adds r0, r5, #0
	adds r0, #0x14
	strb r1, [r5, #0x14]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	adds r0, r5, #0
	adds r0, #0x18
	strb r1, [r5, #0x18]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	adds r0, r5, #0
	adds r0, #0x1c
	movs r1, #1
	movs r2, #4
	blx FUN_020C4CF4
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #1
	movs r2, #4
	blx FUN_020C4CF4
	adds r0, r5, #0
	adds r1, r5, #0
	movs r3, #0
	adds r0, #0x24
	strb r3, [r0]
	adds r0, r5, #0
	adds r0, #0x26
	strb r3, [r0]
	adds r0, r5, #0
	adds r0, #0x28
	strb r3, [r0]
	adds r1, #0x28
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	strb r3, [r1, #3]
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #3
	adds r2, r1, #0
	str r4, [sp, #8]
	bl FUN_0200F174
	movs r0, #0x1c
	strb r0, [r5, #5]
_022388F4:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov65_02238838

	thumb_func_start ov65_022388FC
ov65_022388FC: @ 0x022388FC
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0223890C
	movs r0, #0
	strb r0, [r4, #5]
_0223890C:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov65_022388FC

	thumb_func_start ov65_02238910
ov65_02238910: @ 0x02238910
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_02038378
	bl FUN_02038B60
	movs r0, #0
	movs r1, #1
	strb r0, [r4, #7]
	bl FUN_020388F4
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov65_02238910
	@ 0x0223892C
