
	thumb_func_start ov105_02241AE0
ov105_02241AE0: @ 0x02241AE0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _02241BD0 @ =0x00000068
	movs r1, #2
	bl FUN_02006590
	bl ov105_022452E4
	movs r2, #2
	movs r0, #3
	movs r1, #0x5d
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	movs r1, #0x36
	adds r0, r5, #0
	lsls r1, r1, #4
	movs r2, #0x5d
	bl FUN_0200681C
	movs r2, #0x36
	movs r1, #0
	lsls r2, r2, #4
	adds r4, r0, #0
	blx FUN_020D5124
	movs r2, #2
	movs r1, #0
	ldr r0, _02241BD4 @ =ov105_02245CD0
	str r2, [sp]
	str r0, [sp, #4]
	movs r0, #0x5d
	adds r3, r1, #0
	bl FUN_02024220
	movs r1, #0x49
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0x5d
	bl FUN_02018340
	str r0, [r4, #0x4c]
	str r5, [r4]
	adds r0, r5, #0
	bl FUN_02006840
	movs r3, #0x4f
	movs r2, #0xae
	ldr r1, [r0]
	lsls r3, r3, #2
	str r1, [r4, r3]
	ldrb r1, [r0, #4]
	lsls r2, r2, #2
	strb r1, [r4, #9]
	ldrb r1, [r0, #5]
	strb r1, [r4, #0xa]
	ldrb r1, [r0, #6]
	strb r1, [r4, #0xb]
	ldr r1, [r0, #8]
	str r1, [r4, r2]
	ldr r5, [r0, #0xc]
	adds r1, r2, #4
	str r5, [r4, r1]
	adds r0, #0x10
	adds r2, #0x14
	str r0, [r4, r2]
	ldr r0, [r4, r3]
	bl FUN_02025E44
	movs r1, #0x4e
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #8
	str r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0
	bl ov105_022454F8
	cmp r0, #1
	bne _02241B8A
	movs r0, #6
	strb r0, [r4, #0x12]
	b _02241BAE
_02241B8A:
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #1
	bne _02241BA2
	movs r0, #2
	strb r0, [r4, #0x12]
	movs r0, #3
	strb r0, [r4, #0x1a]
	movs r0, #6
	strb r0, [r4, #0x1b]
	b _02241BAE
_02241BA2:
	movs r0, #3
	strb r0, [r4, #0x12]
	movs r0, #4
	strb r0, [r4, #0x1a]
	movs r0, #5
	strb r0, [r4, #0x1b]
_02241BAE:
	adds r0, r4, #0
	bl ov105_0224531C
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #1
	bne _02241BC4
	adds r0, r4, #0
	bl FUN_0209BA80
_02241BC4:
	movs r0, #0
	str r0, [r6]
	movs r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02241BD0: .4byte 0x00000068
_02241BD4: .4byte ov105_02245CD0
	thumb_func_end ov105_02241AE0

	thumb_func_start ov105_02241BD8
ov105_02241BD8: @ 0x02241BD8
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	bl FUN_0200682C
	movs r1, #0x35
	adds r4, r0, #0
	lsls r1, r1, #4
	ldrh r1, [r4, r1]
	cmp r1, #1
	bne _02241C22
	ldr r1, [r5]
	cmp r1, #9
	bhi _02241C22
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02241BFE: @ jump table
	.2byte _02241C22 - _02241BFE - 2 @ case 0
	.2byte _02241C22 - _02241BFE - 2 @ case 1
	.2byte _02241C22 - _02241BFE - 2 @ case 2
	.2byte _02241C22 - _02241BFE - 2 @ case 3
	.2byte _02241C22 - _02241BFE - 2 @ case 4
	.2byte _02241C22 - _02241BFE - 2 @ case 5
	.2byte _02241C12 - _02241BFE - 2 @ case 6
	.2byte _02241C12 - _02241BFE - 2 @ case 7
	.2byte _02241C12 - _02241BFE - 2 @ case 8
	.2byte _02241C12 - _02241BFE - 2 @ case 9
_02241C12:
	ldrb r1, [r4, #0x13]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	bne _02241C22
	adds r1, r5, #0
	movs r2, #0xb
	bl ov105_02244778
_02241C22:
	ldr r0, [r5]
	cmp r0, #0xe
	bhi _02241CC0
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02241C34: @ jump table
	.2byte _02241C52 - _02241C34 - 2 @ case 0
	.2byte _02241C82 - _02241C34 - 2 @ case 1
	.2byte _02241C68 - _02241C34 - 2 @ case 2
	.2byte _02241CB0 - _02241C34 - 2 @ case 3
	.2byte _02241D12 - _02241C34 - 2 @ case 4
	.2byte _02241D46 - _02241C34 - 2 @ case 5
	.2byte _02241D5C - _02241C34 - 2 @ case 6
	.2byte _02241DA6 - _02241C34 - 2 @ case 7
	.2byte _02241DF8 - _02241C34 - 2 @ case 8
	.2byte _02241E56 - _02241C34 - 2 @ case 9
	.2byte _02241EA8 - _02241C34 - 2 @ case 10
	.2byte _02241ED6 - _02241C34 - 2 @ case 11
	.2byte _02241F02 - _02241C34 - 2 @ case 12
	.2byte _02241F18 - _02241C34 - 2 @ case 13
	.2byte _02241F26 - _02241C34 - 2 @ case 14
_02241C52:
	adds r0, r4, #0
	bl ov105_02241FF4
	cmp r0, #1
	bne _02241CC0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl ov105_02244778
	b _02241F3A
_02241C68:
	adds r0, r4, #0
	bl ov105_02242698
	cmp r0, #1
	bne _02241C7E
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl ov105_02244778
	b _02241C82
_02241C7E:
	movs r0, #0
	pop {r3, r4, r5, pc}
_02241C82:
	adds r0, r4, #0
	bl ov105_022421F0
	cmp r0, #1
	bne _02241CC0
	adds r0, r4, #0
	movs r1, #0
	bl ov105_022454F8
	cmp r0, #1
	bne _02241CA4
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #3
	bl ov105_02244778
	b _02241F3A
_02241CA4:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #6
	bl ov105_02244778
	b _02241F3A
_02241CB0:
	adds r0, r4, #0
	bl ov105_022457C0
	adds r0, r4, #0
	bl ov105_022426E0
	cmp r0, #1
	beq _02241CC2
_02241CC0:
	b _02241F3A
_02241CC2:
	ldrb r0, [r4, #0x13]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _02241CD8
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	bl ov105_02244778
	b _02241F3A
_02241CD8:
	ldrb r0, [r4, #9]
	bl ov105_02245508
	ldrb r1, [r4, #0x11]
	cmp r1, r0
	bne _02241CF0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #4
	bl ov105_02244778
	b _02241F3A
_02241CF0:
	adds r0, r4, #0
	bl ov105_02245518
	cmp r0, #1
	bne _02241D06
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xd
	bl ov105_02244778
	b _02241F3A
_02241D06:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #3
	bl ov105_02244778
	b _02241F3A
_02241D12:
	adds r0, r4, #0
	bl ov105_022457C0
	adds r0, r4, #0
	bl ov105_02242D04
	cmp r0, #1
	bne _02241E02
	ldrb r0, [r4, #9]
	bl ov105_02245508
	ldrb r1, [r4, #0x11]
	cmp r1, r0
	bne _02241D3A
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xd
	bl ov105_02244778
	b _02241F3A
_02241D3A:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #5
	bl ov105_02244778
	b _02241F3A
_02241D46:
	adds r0, r4, #0
	bl ov105_02243144
	cmp r0, #1
	bne _02241E02
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #3
	bl ov105_02244778
	b _02241F3A
_02241D5C:
	adds r0, r4, #0
	bl ov105_022434BC
	cmp r0, #1
	bne _02241E02
	ldrb r0, [r4, #0x13]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _02241D7C
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	bl ov105_02244778
	b _02241F3A
_02241D7C:
	adds r0, r4, #0
	bl ov105_02245518
	cmp r0, #1
	bne _02241D9A
	adds r0, r4, #0
	movs r1, #0
	bl ov105_02245528
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #7
	bl ov105_02244778
	b _02241F3A
_02241D9A:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xa
	bl ov105_02244778
	b _02241F3A
_02241DA6:
	adds r0, r4, #0
	bl ov105_02243818
	cmp r0, #1
	bne _02241E02
	adds r0, r4, #0
	bl ov105_02245518
	cmp r0, #1
	bne _02241DCE
	adds r0, r4, #0
	movs r1, #0
	bl ov105_02245528
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #6
	bl ov105_02244778
	b _02241F3A
_02241DCE:
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #1
	bne _02241DEC
	ldrb r1, [r4, #0x13]
	movs r0, #8
	movs r2, #0xb
	bics r1, r0
	strb r1, [r4, #0x13]
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov105_02244778
	b _02241F3A
_02241DEC:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xd
	bl ov105_02244778
	b _02241F3A
_02241DF8:
	adds r0, r4, #0
	bl ov105_02243A3C
	cmp r0, #1
	beq _02241E04
_02241E02:
	b _02241F3A
_02241E04:
	adds r0, r4, #0
	bl ov105_02245518
	cmp r0, #1
	bne _02241E22
	adds r0, r4, #0
	movs r1, #0
	bl ov105_02245528
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #9
	bl ov105_02244778
	b _02241F3A
_02241E22:
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _02241E34
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xa
	bl ov105_02244778
	b _02241F3A
_02241E34:
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #1
	bne _02241E4A
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xb
	bl ov105_02244778
	b _02241F3A
_02241E4A:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xd
	bl ov105_02244778
	b _02241F3A
_02241E56:
	adds r0, r4, #0
	bl ov105_02243E84
	cmp r0, #1
	bne _02241F3A
	adds r0, r4, #0
	bl ov105_02245518
	cmp r0, #1
	bne _02241E7E
	adds r0, r4, #0
	movs r1, #0
	bl ov105_02245528
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #8
	bl ov105_02244778
	b _02241F3A
_02241E7E:
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #1
	bne _02241E9C
	ldrb r1, [r4, #0x13]
	movs r0, #8
	movs r2, #0xb
	bics r1, r0
	strb r1, [r4, #0x13]
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov105_02244778
	b _02241F3A
_02241E9C:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xd
	bl ov105_02244778
	b _02241F3A
_02241EA8:
	adds r0, r4, #0
	bl ov105_0224400C
	cmp r0, #1
	bne _02241F3A
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _02241ECA
	adds r0, r4, #0
	bl ov105_022424CC
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #6
	bl ov105_02244778
	b _02241F3A
_02241ECA:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #8
	bl ov105_02244778
	b _02241F3A
_02241ED6:
	adds r0, r4, #0
	bl ov105_0224435C
	cmp r0, #1
	bne _02241F3A
	movs r0, #0x35
	lsls r0, r0, #4
	ldrh r0, [r4, r0]
	cmp r0, #1
	bne _02241EF6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xe
	bl ov105_02244778
	b _02241F3A
_02241EF6:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xc
	bl ov105_02244778
	b _02241F3A
_02241F02:
	adds r0, r4, #0
	bl ov105_0224439C
	cmp r0, #1
	bne _02241F3A
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xd
	bl ov105_02244778
	b _02241F3A
_02241F18:
	adds r0, r4, #0
	bl ov105_022443DC
	cmp r0, #1
	bne _02241F3A
	movs r0, #1
	pop {r3, r4, r5, pc}
_02241F26:
	adds r0, r4, #0
	bl ov105_02244424
	cmp r0, #1
	bne _02241F3A
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xc
	bl ov105_02244778
_02241F3A:
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020219F8
	movs r0, #0x4a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02245D50
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov105_02241BD8

	thumb_func_start ov105_02241F54
ov105_02241F54: @ 0x02241F54
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl FUN_0200682C
	movs r1, #0
	adds r4, r0, #0
	bl ov105_022454F8
	cmp r0, #1
	bne _02241F96
	ldrb r0, [r4, #9]
	movs r7, #0
	bl ov105_02245508
	cmp r0, #0
	ble _02241FCA
	adds r6, r4, #0
	adds r5, r7, #0
_02241F78:
	movs r0, #0xb
	lsls r0, r0, #6
	ldrh r1, [r6, r0]
	adds r0, #0xc
	ldr r0, [r4, r0]
	adds r6, r6, #2
	strh r1, [r0, r5]
	ldrb r0, [r4, #9]
	adds r5, r5, #2
	adds r7, r7, #1
	bl ov105_02245508
	cmp r7, r0
	blt _02241F78
	b _02241FCA
_02241F96:
	movs r7, #0xb
	lsls r7, r7, #6
	movs r6, #0
	adds r0, r7, #0
	adds r3, r4, #0
	adds r5, r6, #0
	adds r0, #0xc
_02241FA4:
	ldrh r2, [r3, r7]
	ldr r1, [r4, r0]
	adds r6, r6, #1
	strh r2, [r1, r5]
	adds r3, r3, #2
	adds r5, r5, #2
	cmp r6, #2
	blt _02241FA4
	ldrb r0, [r4, #0x13]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	bne _02241FCA
	movs r0, #0xb3
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	movs r2, #0xff
	strh r2, [r1]
	ldr r0, [r4, r0]
	strh r2, [r0, #2]
_02241FCA:
	adds r0, r4, #0
	bl ov105_022451B4
	ldr r0, [sp]
	bl FUN_02006830
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r0, #0x5d
	bl FUN_0201807C
	ldr r0, _02241FF0 @ =0x00000068
	bl FUN_02006514
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241FF0: .4byte 0x00000068
	thumb_func_end ov105_02241F54

	thumb_func_start ov105_02241FF4
ov105_02241FF4: @ 0x02241FF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #6
	bhi _022420CA
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0224200C: @ jump table
	.2byte _0224201A - _0224200C - 2 @ case 0
	.2byte _02242036 - _0224200C - 2 @ case 1
	.2byte _0224205E - _0224200C - 2 @ case 2
	.2byte _022420C2 - _0224200C - 2 @ case 3
	.2byte _022420DE - _0224200C - 2 @ case 4
	.2byte _0224212C - _0224200C - 2 @ case 5
	.2byte _0224214C - _0224200C - 2 @ case 6
_0224201A:
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #1
	bne _0224202E
	bl FUN_020365F4
	movs r0, #0xed
	bl FUN_020364F0
_0224202E:
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _022421DC
_02242036:
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #1
	bne _02242056
	movs r0, #0xed
	bl FUN_02036540
	cmp r0, #1
	bne _022420CA
	bl FUN_020365F4
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _022421DC
_02242056:
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _022421DC
_0224205E:
	ldrb r0, [r4, #0x12]
	movs r6, #0
	cmp r0, #0
	ble _02242086
	movs r7, #0x29
	adds r5, r4, #0
	lsls r7, r7, #4
_0224206C:
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl ov105_02245F2C
	ldr r0, [r5, r7]
	bl ov105_02245F5C
	ldrb r0, [r4, #0x12]
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, r0
	blt _0224206C
_02242086:
	movs r3, #0x42
	ldr r0, [r4, #0x4c]
	movs r1, #2
	movs r2, #0
	lsls r3, r3, #2
	bl FUN_02019184
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	movs r2, #1
	bl FUN_02007DEC
	movs r0, #6
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x5d
	str r0, [sp, #8]
	movs r0, #0
	movs r1, #1
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _022421DC
_022420C2:
	bl FUN_0200F2AC
	cmp r0, #0
	bne _022420CC
_022420CA:
	b _022421DC
_022420CC:
	ldr r0, _022421E4 @ =0x00000612
	bl FUN_02005748
	movs r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _022421DC
_022420DE:
	bl ov105_02244780
	cmp r0, #1
	bne _022421DC
	ldr r0, _022421E4 @ =0x00000612
	movs r1, #0
	bl FUN_020057A4
	ldr r0, _022421E8 @ =0x00000679
	bl FUN_02005748
	ldrb r0, [r4, #0x12]
	movs r6, #0
	cmp r0, #0
	ble _02242114
	movs r7, #0x29
	adds r5, r4, #0
	lsls r7, r7, #4
_02242102:
	ldr r0, [r5, r7]
	movs r1, #0xa
	bl ov105_02245F90
	ldrb r0, [r4, #0x12]
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, r0
	blt _02242102
_02242114:
	adds r0, r4, #0
	movs r1, #0
	bl ov105_02244924
	movs r0, #8
	str r0, [r4, #0x14]
	movs r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _022421DC
_0224212C:
	movs r0, #0x2b
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02245E48
	cmp r0, #1
	beq _022421DC
	adds r0, r4, #0
	bl ov105_02245A30
	movs r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _022421DC
_0224214C:
	ldrb r1, [r4, #0x19]
	cmp r1, #0
	bne _0224219C
	movs r1, #3
	bl ov105_02244B90
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF0C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl ov105_02245538
	adds r2, r0, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #3
	movs r3, #0x15
	bl ov105_022448F4
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	movs r2, #0
	bl FUN_02007DEC
	ldr r0, _022421EC @ =0x0000FFFF
	movs r1, #0x10
	str r0, [sp]
	movs r0, #0x4a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #0
	movs r3, #1
	bl FUN_0200872C
_0224219C:
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020087B4
	ldrb r0, [r4, #0x19]
	adds r0, r0, #1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x19]
	cmp r0, #2
	blo _022421DC
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl ov105_02245538
	adds r2, r0, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #3
	movs r3, #0x15
	bl ov105_022448F4
	movs r0, #0
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	bl ov105_02245A64
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_022421DC:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022421E4: .4byte 0x00000612
_022421E8: .4byte 0x00000679
_022421EC: .4byte 0x0000FFFF
	thumb_func_end ov105_02241FF4

	thumb_func_start ov105_022421F0
ov105_022421F0: @ 0x022421F0
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _02242202
	cmp r1, #1
	beq _02242266
	b _02242274
_02242202:
	movs r1, #0
	bl ov105_022454F8
	cmp r0, #1
	bne _02242214
	adds r0, r4, #0
	bl ov105_0224227C
	b _0224221A
_02242214:
	adds r0, r4, #0
	bl ov105_022424CC
_0224221A:
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #1
	bne _02242234
	movs r2, #0
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x60
	adds r3, r2, #0
	str r2, [sp]
	bl ov105_02244F84
_02242234:
	ldrb r0, [r4, #0x13]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _02242256
	movs r0, #6
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x5d
	str r0, [sp, #8]
	movs r0, #0
	movs r1, #1
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
_02242256:
	ldrb r1, [r4, #0x13]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r4, #0x13]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02242274
_02242266:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _02242274
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, pc}
_02242274:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov105_022421F0

	thumb_func_start ov105_0224227C
ov105_0224227C: @ 0x0224227C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	ldrb r0, [r5, #9]
	bl FUN_0223AA50
	str r0, [sp, #0x18]
	adds r0, r5, #0
	movs r1, #0
	bl ov105_02245528
	movs r0, #0x2d
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	ldrb r1, [r5, #0x12]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, _0224245C @ =0x02246394
	movs r3, #0
	str r0, [sp, #4]
	movs r0, #0x51
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r2, r1, #0
	str r3, [sp, #8]
	bl ov105_02245FB8
	movs r1, #0xaa
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r2, #0
	adds r1, r5, #0
	str r2, [sp]
	adds r0, r5, #0
	adds r1, #0x50
	adds r3, r2, #0
	bl ov105_02244F0C
	ldrb r0, [r5, #0x11]
	movs r6, #0
	cmp r0, #0
	ble _02242354
	adds r7, r5, #0
	adds r4, r5, #0
	adds r7, #0x50
_022422D8:
	movs r0, #0xb
	lsls r0, r0, #6
	ldrh r0, [r4, r0]
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	bl ov105_02245F44
	movs r0, #0xb
	lsls r0, r0, #6
	ldrh r0, [r4, r0]
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #0
	bl ov105_02245FAC
	movs r0, #0xb
	lsls r0, r0, #6
	ldrh r0, [r4, r0]
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #7
	bl ov105_02245F90
	movs r0, #0
	str r0, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #0xae
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r2, #0xb
	str r0, [sp, #0x14]
	lsls r2, r2, #6
	ldrh r2, [r4, r2]
	adds r1, r6, #2
	lsls r1, r1, #4
	lsls r2, r2, #0x18
	adds r0, r5, #0
	adds r1, r7, r1
	lsrs r2, r2, #0x18
	movs r3, #0
	bl ov105_02244FF8
	ldrb r0, [r5, #0x11]
	adds r6, r6, #1
	adds r4, r4, #2
	cmp r6, r0
	blt _022422D8
_02242354:
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_022461A0
	movs r3, #0
	adds r2, r0, #0
	str r3, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	movs r0, #0xae
	adds r1, r5, #0
	str r3, [sp, #0x10]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, #0x50
	str r0, [sp, #0x14]
	ldrb r4, [r5, #0x11]
	adds r0, r5, #0
	adds r4, r4, #2
	lsls r4, r4, #4
	adds r1, r1, r4
	bl ov105_02244FF8
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r5, #0
	adds r0, #0xa0
	bl ov105_0224628C
	ldrb r2, [r5, #0x11]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r2, #1
	bl ov105_02244EE8
	adds r0, r5, #0
	movs r1, #0
	bl ov105_02244D14
	strb r0, [r5, #0x10]
	ldrb r0, [r5, #0x13]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _02242458
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl ov105_022461A4
	adds r0, r5, #0
	bl ov105_02244DF0
	movs r1, #0
	ldr r0, _02242460 @ =0x02246308
	str r1, [sp]
	str r0, [sp, #4]
	movs r0, #0x51
	str r1, [sp, #8]
	lsls r0, r0, #2
	movs r1, #3
	adds r0, r5, r0
	adds r2, r1, #0
	movs r3, #1
	bl ov105_02245FB8
	movs r1, #0xab
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	beq _02242458
	ldr r0, [sp, #0x18]
	movs r4, #0
	cmp r0, #0
	ble _02242458
	adds r7, r5, #0
	adds r6, r5, #0
	adds r7, #0x50
_02242404:
	adds r0, r4, #0
	adds r0, #8
	lsls r0, r0, #4
	str r0, [sp, #0x1c]
	adds r0, r7, r0
	movs r1, #0
	bl FUN_0201ADA4
	ldrb r0, [r5, #0x18]
	cmp r4, r0
	bge _02242446
	movs r0, #0xf
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _02242464 @ =0x00000352
	ldr r1, [sp, #0x1c]
	ldrh r0, [r6, r0]
	movs r2, #0
	adds r1, r7, r1
	str r0, [sp, #0x10]
	ldr r0, _02242468 @ =0x00000356
	adds r3, r2, #0
	ldrh r0, [r6, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	adds r0, r5, #0
	bl ov105_022450DC
_02242446:
	ldr r0, [sp, #0x1c]
	adds r0, r7, r0
	bl FUN_0201A9A4
	ldr r0, [sp, #0x18]
	adds r4, r4, #1
	adds r6, r6, #2
	cmp r4, r0
	blt _02242404
_02242458:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224245C: .4byte 0x02246394
_02242460: .4byte 0x02246308
_02242464: .4byte 0x00000352
_02242468: .4byte 0x00000356
	thumb_func_end ov105_0224227C

	thumb_func_start ov105_0224246C
ov105_0224246C: @ 0x0224246C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #0x12]
	movs r4, #0
	cmp r0, #0
	ble _0224249E
	movs r7, #0x29
	adds r5, r6, #0
	lsls r7, r7, #4
_0224247E:
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov105_02245934
	movs r1, #0x29
	lsls r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r7]
	movs r1, #1
	bl ov105_02245EBC
	ldrb r0, [r6, #0x12]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, r0
	blt _0224247E
_0224249E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov105_0224246C

	thumb_func_start ov105_022424A0
ov105_022424A0: @ 0x022424A0
	push {r4, lr}
	sub sp, #8
	movs r1, #0xae
	adds r4, r0, #0
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	adds r1, #0x18
	ldr r1, [r4, r1]
	bl FUN_0207A0FC
	adds r2, r0, #0
	movs r0, #0x2b
	str r0, [sp]
	movs r1, #0
	adds r0, r4, #0
	movs r3, #0x78
	str r1, [sp, #4]
	bl ov105_022455C4
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov105_022424A0

	thumb_func_start ov105_022424CC
ov105_022424CC: @ 0x022424CC
	push {r4, lr}
	sub sp, #0x18
	movs r1, #0
	adds r4, r0, #0
	bl ov105_02245528
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xa0
	bl ov105_0224628C
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #0
	bne _0224251C
	movs r0, #0x2d
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r2, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, _022425F8 @ =0x02246340
	movs r3, #2
	str r0, [sp, #4]
	ldr r0, _022425FC @ =0x022462D0
	str r0, [sp, #8]
	movs r0, #0x51
	lsls r0, r0, #2
	ldrb r1, [r4, #0x1a]
	adds r0, r4, r0
	bl ov105_02245FB8
	b _02242540
_0224251C:
	movs r0, #0x2d
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r2, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, _02242600 @ =0x022462FC
	adds r3, r2, #0
	str r0, [sp, #4]
	ldr r0, _02242604 @ =0x022462CC
	str r0, [sp, #8]
	movs r0, #0x51
	lsls r0, r0, #2
	ldrb r1, [r4, #0x1a]
	adds r0, r4, r0
	bl ov105_02245FB8
_02242540:
	movs r1, #0xaa
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r2, #0
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x50
	adds r3, r2, #0
	str r2, [sp]
	bl ov105_02244F0C
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	movs r3, #0
	adds r2, r0, #0
	adds r1, r4, #0
	str r3, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	movs r0, #0xae
	str r3, [sp, #0x10]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, #0x70
	str r0, [sp, #0x14]
	adds r0, r4, #0
	bl ov105_02244FF8
	adds r1, r4, #0
	ldr r0, [r4, #0x4c]
	adds r1, #0xc0
	bl ov105_02246260
	movs r3, #1
	adds r1, r4, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0xf
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
	adds r0, r4, #0
	adds r1, #0xc0
	movs r2, #0x13
	bl ov105_02244C60
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0xc0
	bl FUN_0201A9A4
	adds r0, r4, #0
	movs r1, #9
	bl ov105_02244D14
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x13]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _022425F4
	adds r0, r4, #0
	bl ov105_02244DF0
	movs r1, #0
	ldr r0, _02242608 @ =0x02246308
	str r1, [sp]
	str r0, [sp, #4]
	movs r0, #0x51
	str r1, [sp, #8]
	lsls r0, r0, #2
	movs r1, #3
	adds r0, r4, r0
	adds r2, r1, #0
	movs r3, #1
	bl ov105_02245FB8
	movs r1, #0xab
	lsls r1, r1, #2
	str r0, [r4, r1]
_022425F4:
	add sp, #0x18
	pop {r4, pc}
	.align 2, 0
_022425F8: .4byte 0x02246340
_022425FC: .4byte 0x022462D0
_02242600: .4byte 0x022462FC
_02242604: .4byte 0x022462CC
_02242608: .4byte 0x02246308
	thumb_func_end ov105_022424CC

	thumb_func_start ov105_0224260C
ov105_0224260C: @ 0x0224260C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0x12]
	movs r6, #0
	cmp r0, #0
	ble _02242668
	movs r7, #0x29
	adds r4, r5, #0
	lsls r7, r7, #4
_0224261E:
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov105_02245934
	movs r1, #0x29
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r7]
	movs r1, #1
	bl ov105_02245EBC
	ldrb r0, [r5, #0x13]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	bne _0224265E
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02245F44
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov105_02245FAC
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov105_02245F90
_0224265E:
	ldrb r0, [r5, #0x12]
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, r0
	blt _0224261E
_02242668:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov105_0224260C

	thumb_func_start ov105_0224266C
ov105_0224266C: @ 0x0224266C
	push {r4, lr}
	sub sp, #8
	movs r1, #0xae
	adds r4, r0, #0
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	adds r1, #0x18
	ldr r1, [r4, r1]
	bl FUN_0207A0FC
	adds r2, r0, #0
	movs r0, #0x2b
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0x78
	bl ov105_022455C4
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov105_0224266C

	thumb_func_start ov105_02242698
ov105_02242698: @ 0x02242698
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _022426DC
	ldr r0, [r4, #4]
	bl FUN_02006844
	cmp r0, #1
	bne _022426DC
	movs r1, #5
	lsls r1, r1, #6
	ldr r0, [r4, r1]
	ldrb r2, [r0, #0x14]
	movs r0, #0x2d
	lsls r0, r0, #4
	str r2, [r4, r0]
	ldr r0, [r4, r1]
	bl FUN_020181C4
	ldr r0, [r4, #4]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #4]
	adds r0, r4, #0
	bl ov105_022452A0
	ldrb r1, [r4, #0x13]
	movs r0, #0x40
	bics r1, r0
	strb r1, [r4, #0x13]
	movs r0, #1
	pop {r4, pc}
_022426DC:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov105_02242698

	thumb_func_start ov105_022426E0
ov105_022426E0: @ 0x022426E0
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #5
	bls _022426EE
	b _02242956
_022426EE:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022426FA: @ jump table
	.2byte _02242706 - _022426FA - 2 @ case 0
	.2byte _02242720 - _022426FA - 2 @ case 1
	.2byte _022427D4 - _022426FA - 2 @ case 2
	.2byte _0224290C - _022426FA - 2 @ case 3
	.2byte _0224293E - _022426FA - 2 @ case 4
	.2byte _0224294A - _022426FA - 2 @ case 5
_02242706:
	ldrb r0, [r4, #0x13]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	bne _02242712
	movs r0, #1
	b _02242714
_02242712:
	movs r0, #2
_02242714:
	strb r0, [r4, #8]
	ldrb r1, [r4, #0x13]
	movs r0, #2
	bics r1, r0
	strb r1, [r4, #0x13]
	b _02242956
_02242720:
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246080
	ldr r0, _0224295C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0x30
	tst r0, r1
	beq _02242758
	ldr r0, _02242960 @ =0x000005DC
	bl FUN_02005748
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	adds r2, r0, #0
	movs r0, #0xae
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r3, #0
	str r0, [sp]
	ldrb r1, [r4, #0x11]
	adds r0, r4, #0
	bl ov105_022453F8
_02242758:
	ldr r0, _0224295C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _022427A2
	ldr r0, _02242960 @ =0x000005DC
	bl FUN_02005748
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov105_022461A4
	adds r0, r4, #0
	bl ov105_02244DF0
	movs r1, #0
	ldr r0, _02242964 @ =0x02246308
	str r1, [sp]
	str r0, [sp, #4]
	movs r0, #0x51
	str r1, [sp, #8]
	lsls r0, r0, #2
	movs r1, #3
	adds r0, r4, r0
	adds r2, r1, #0
	movs r3, #1
	bl ov105_02245FB8
	movs r1, #0xab
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02242956
_022427A2:
	movs r0, #2
	tst r0, r1
	beq _02242814
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	beq _02242814
	ldr r0, _02242960 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	bl ov105_0224296C
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #1
	bne _022427CE
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	bl ov105_02245620
_022427CE:
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_022427D4:
	adds r0, r4, #0
	adds r0, #0xfc
	ldr r0, [r0]
	bl FUN_02001BE0
	adds r5, r0, #0
	movs r0, #0xab
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246080
	movs r0, #1
	mvns r0, r0
	cmp r5, r0
	bhi _0224280C
	bhs _022428D2
	cmp r5, #3
	bhi _022428D2
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02242804: @ jump table
	.2byte _02242818 - _02242804 - 2 @ case 0
	.2byte _02242866 - _02242804 - 2 @ case 1
	.2byte _022428D2 - _02242804 - 2 @ case 2
	.2byte _0224289C - _02242804 - 2 @ case 3
_0224280C:
	movs r0, #0
	mvns r0, r0
	cmp r5, r0
	bne _02242816
_02242814:
	b _02242956
_02242816:
	b _022428D2
_02242818:
	adds r0, r4, #0
	adds r0, #0xfc
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02001BC4
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r0, [r0]
	bl ov105_02245A98
	movs r0, #0xab
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246060
	movs r1, #0xab
	movs r0, #0
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldrb r2, [r4, #0x13]
	movs r1, #0x40
	adds r3, r0, #0
	orrs r1, r2
	strb r1, [r4, #0x13]
	movs r1, #6
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r1, #0x5d
	str r1, [sp, #8]
	adds r1, r0, #0
	adds r2, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02242956
_02242866:
	adds r0, r4, #0
	adds r0, #0xfc
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02001BC4
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r0, [r0]
	bl ov105_02245A98
	adds r0, r4, #0
	bl ov105_02242A58
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #1
	bne _02242896
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	bl ov105_02245620
_02242896:
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_0224289C:
	adds r0, r4, #0
	adds r0, #0xfc
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02001BC4
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r0, [r0]
	bl ov105_02245A98
	adds r0, r4, #0
	bl ov105_02242B54
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #1
	bne _022428CC
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	bl ov105_02245620
_022428CC:
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_022428D2:
	adds r0, r4, #0
	adds r0, #0xfc
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02001BC4
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r0, [r0]
	bl ov105_02245A98
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov105_022461A4
	movs r0, #0xab
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246060
	movs r0, #0xab
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_0224290C:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _02242956
	adds r0, r4, #0
	bl ov105_02245464
	adds r0, r4, #0
	bl ov105_022451B4
	movs r1, #5
	lsls r1, r1, #6
	ldr r0, _02242968 @ =0x020F410C
	ldr r1, [r4, r1]
	movs r2, #0x5d
	bl FUN_020067E8
	str r0, [r4, #4]
	ldrb r1, [r4, #0x13]
	movs r0, #2
	add sp, #0xc
	orrs r0, r1
	strb r0, [r4, #0x13]
	movs r0, #1
	pop {r4, r5, pc}
_0224293E:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02242956
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_0224294A:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _02242956
	movs r0, #2
	strb r0, [r4, #8]
_02242956:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0224295C: .4byte 0x021BF67C
_02242960: .4byte 0x000005DC
_02242964: .4byte 0x02246308
_02242968: .4byte 0x020F410C
	thumb_func_end ov105_022426E0

	thumb_func_start ov105_0224296C
ov105_0224296C: @ 0x0224296C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r4, r0, #0
	ldrb r0, [r4, #0x11]
	adds r1, r4, #0
	adds r1, #0x50
	adds r0, r0, #2
	lsls r0, r0, #4
	adds r0, r1, r0
	movs r1, #0
	bl FUN_0201ADA4
	ldrb r0, [r4, #0x11]
	adds r1, r4, #0
	adds r1, #0x50
	adds r0, r0, #2
	lsls r0, r0, #4
	adds r0, r1, r0
	bl FUN_0201A9A4
	ldrb r0, [r4, #0x11]
	adds r1, r4, #0
	adds r1, #0x50
	subs r0, r0, #1
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0x11]
	adds r0, r0, #2
	lsls r0, r0, #4
	adds r0, r1, r0
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	movs r3, #0
	adds r2, r0, #0
	adds r1, r4, #0
	str r3, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	movs r0, #0xae
	str r3, [sp, #0x10]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, #0x50
	str r0, [sp, #0x14]
	ldrb r5, [r4, #0x11]
	adds r0, r4, #0
	adds r5, r5, #2
	lsls r5, r5, #4
	adds r1, r1, r5
	bl ov105_02244FF8
	ldrb r2, [r4, #0x11]
	adds r0, r4, #0
	movs r1, #0
	adds r2, r2, #1
	bl ov105_02244EE8
	adds r0, r4, #0
	movs r1, #0
	bl ov105_02244D14
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0xb
	lsls r0, r0, #6
	ldrh r1, [r1, r0]
	subs r0, #0x30
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r0, [r1, r0]
	bl ov105_02245F50
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0xb
	lsls r0, r0, #6
	ldrh r1, [r1, r0]
	subs r0, #0x30
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r0, [r1, r0]
	movs r1, #1
	bl ov105_02245FAC
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0xb
	lsls r0, r0, #6
	ldrh r1, [r1, r0]
	subs r0, #0x30
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r0, [r1, r0]
	movs r1, #6
	bl ov105_02245F90
	ldrb r0, [r4, #0x11]
	movs r2, #0
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0xb
	lsls r0, r0, #6
	strh r2, [r1, r0]
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov105_0224296C

	thumb_func_start ov105_02242A58
ov105_02242A58: @ 0x02242A58
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r4, r0, #0
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	bl ov105_02245F44
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #0
	bl ov105_02245FAC
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #7
	bl ov105_02245F90
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	ldrb r1, [r4, #0x11]
	lsls r1, r1, #1
	adds r2, r4, r1
	movs r1, #0xb
	lsls r1, r1, #6
	strh r0, [r2, r1]
	ldrb r0, [r4, #0x11]
	adds r0, r0, #1
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #9]
	bl ov105_02245508
	ldrb r1, [r4, #0x11]
	cmp r1, r0
	bne _02242AE8
	movs r0, #0xab
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246060
	movs r0, #0xab
	movs r1, #0
	lsls r0, r0, #2
	add sp, #0x18
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_02242AE8:
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov105_022461A4
	movs r0, #0xab
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246060
	movs r0, #0xab
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	subs r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_022461A0
	movs r3, #0
	adds r2, r0, #0
	adds r1, r4, #0
	str r3, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	movs r0, #0xae
	str r3, [sp, #0x10]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, #0x50
	str r0, [sp, #0x14]
	ldrb r5, [r4, #0x11]
	adds r0, r4, #0
	adds r5, r5, #2
	lsls r5, r5, #4
	adds r1, r1, r5
	bl ov105_02244FF8
	ldrb r2, [r4, #0x11]
	adds r0, r4, #0
	movs r1, #0
	adds r2, r2, #1
	bl ov105_02244EE8
	adds r0, r4, #0
	movs r1, #0
	bl ov105_02244D14
	strb r0, [r4, #0x10]
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov105_02242A58

	thumb_func_start ov105_02242B54
ov105_02242B54: @ 0x02242B54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_022461A0
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	bl ov105_02245F50
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_022461A0
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #1
	bl ov105_02245FAC
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_022461A0
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #6
	bl ov105_02245F90
	ldrb r0, [r5, #0x11]
	cmp r0, #2
	blo _02242BF8
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_022461A0
	movs r1, #0xb
	lsls r1, r1, #6
	ldrh r2, [r5, r1]
	cmp r2, r0
	bne _02242BF8
	adds r0, r1, #2
	ldrh r0, [r5, r0]
	strh r0, [r5, r1]
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02007DC8
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_022461A0
	adds r1, r0, #0
	movs r0, #0xae
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0207A0FC
	adds r2, r0, #0
	movs r0, #0x2b
	str r0, [sp]
	movs r1, #0
	adds r0, r5, #0
	movs r3, #0x78
	str r1, [sp, #4]
	bl ov105_022455C4
_02242BF8:
	ldrb r0, [r5, #0x11]
	movs r1, #0
	subs r0, r0, #1
	strb r0, [r5, #0x11]
	ldrb r0, [r5, #0x11]
	lsls r0, r0, #1
	adds r2, r5, r0
	movs r0, #0xb
	lsls r0, r0, #6
	strh r1, [r2, r0]
	subs r0, #0x18
	ldr r0, [r5, r0]
	bl ov105_022461A4
	movs r0, #0xab
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_02246060
	movs r0, #0xab
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
	ldrb r0, [r5, #9]
	bl ov105_02245508
	adds r7, r0, #0
	movs r4, #0
	cmp r7, #0
	ble _02242C4A
	adds r6, r5, #0
	adds r6, #0x50
_02242C38:
	adds r0, r4, #2
	lsls r0, r0, #4
	adds r0, r6, r0
	movs r1, #0
	bl FUN_0201ADA4
	adds r4, r4, #1
	cmp r4, r7
	blt _02242C38
_02242C4A:
	ldrb r0, [r5, #0x11]
	movs r4, #0
	cmp r0, #0
	ble _02242C9A
	adds r0, r5, #0
	str r0, [sp, #0x18]
	adds r0, #0x50
	adds r6, r5, #0
	str r0, [sp, #0x18]
_02242C5C:
	movs r0, #0
	str r0, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #0xae
	adds r1, r4, #2
	lsls r0, r0, #2
	lsls r2, r1, #4
	ldr r1, [sp, #0x18]
	ldr r0, [r5, r0]
	adds r1, r1, r2
	movs r2, #0xb
	str r0, [sp, #0x14]
	lsls r2, r2, #6
	ldrh r2, [r6, r2]
	adds r0, r5, #0
	movs r3, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl ov105_02244FF8
	ldrb r0, [r5, #0x11]
	adds r4, r4, #1
	adds r6, r6, #2
	cmp r4, r0
	blt _02242C5C
_02242C9A:
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_022461A0
	movs r3, #0
	adds r2, r0, #0
	str r3, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	movs r0, #0xae
	adds r1, r5, #0
	str r3, [sp, #0x10]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, #0x50
	str r0, [sp, #0x14]
	ldrb r4, [r5, #0x11]
	adds r0, r5, #0
	adds r4, r4, #2
	lsls r4, r4, #4
	adds r1, r1, r4
	bl ov105_02244FF8
	movs r4, #0
	cmp r7, #0
	ble _02242CEA
	adds r6, r5, #0
	adds r6, #0x50
_02242CDA:
	adds r0, r4, #2
	lsls r0, r0, #4
	adds r0, r6, r0
	bl FUN_0201A9A4
	adds r4, r4, #1
	cmp r4, r7
	blt _02242CDA
_02242CEA:
	ldrb r2, [r5, #0x11]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r2, #1
	bl ov105_02244EE8
	adds r0, r5, #0
	movs r1, #0
	bl ov105_02244D14
	strb r0, [r5, #0x10]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov105_02242B54

	thumb_func_start ov105_02242D04
ov105_02242D04: @ 0x02242D04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r4, r0, #0
	ldrb r0, [r4, #9]
	bl FUN_0223AA50
	str r0, [sp, #0xc]
	ldrb r0, [r4, #8]
	cmp r0, #7
	bls _02242D1A
	b _0224313C
_02242D1A:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02242D26: @ jump table
	.2byte _02242D36 - _02242D26 - 2 @ case 0
	.2byte _02242DD4 - _02242D26 - 2 @ case 1
	.2byte _02242E24 - _02242D26 - 2 @ case 2
	.2byte _02242EC0 - _02242D26 - 2 @ case 3
	.2byte _02242EE0 - _02242D26 - 2 @ case 4
	.2byte _02243020 - _02242D26 - 2 @ case 5
	.2byte _022430EE - _02242D26 - 2 @ case 6
	.2byte _02243128 - _02242D26 - 2 @ case 7
_02242D36:
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov105_02246074
	ldrb r1, [r4, #0x13]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x13]
	adds r0, r4, #0
	adds r0, #0x60
	bl FUN_0201ACF4
	adds r0, r4, #0
	adds r0, #0xd0
	bl FUN_0201ACF4
	adds r0, r4, #0
	adds r0, #0xe0
	bl FUN_0201ACF4
	ldrb r0, [r4, #0x11]
	movs r5, #0
	cmp r0, #0
	ble _02242D88
	adds r6, r4, #0
	adds r6, #0x50
_02242D6E:
	adds r0, r5, #2
	lsls r7, r0, #4
	adds r0, r6, r7
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r6, r7
	bl FUN_0201A9A4
	ldrb r0, [r4, #0x11]
	adds r5, r5, #1
	cmp r5, r0
	blt _02242D6E
_02242D88:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r4, #0
	adds r0, #0x50
	bl FUN_0201A9A4
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl ov105_02245538
	adds r2, r0, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #3
	movs r3, #0x15
	bl ov105_022448F4
	ldr r0, _02243084 @ =0x0000FFFF
	movs r1, #0
	str r0, [sp]
	movs r0, #0x4a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #0x10
	adds r3, r1, #0
	bl FUN_0200872C
	movs r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _0224313C
_02242DD4:
	ldrb r0, [r4, #0x19]
	adds r0, r0, #1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x19]
	cmp r0, #2
	blo _02242E3C
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	movs r2, #1
	bl FUN_02007DEC
	adds r0, r4, #0
	movs r1, #1
	bl ov105_02244924
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov105_02245538
	adds r2, r0, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #3
	movs r3, #0x15
	bl ov105_022448F4
	adds r0, r4, #0
	movs r1, #3
	bl ov105_02244BE4
	movs r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _0224313C
_02242E24:
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020087B4
	movs r0, #0x2b
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02245E48
	cmp r0, #1
	bne _02242E3E
_02242E3C:
	b _0224313C
_02242E3E:
	adds r0, r4, #0
	bl ov105_02245A30
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02007DC8
	movs r0, #0x2c
	str r0, [sp, #0x14]
	movs r0, #0x80
	str r0, [sp, #0x18]
	movs r0, #0xd4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	movs r5, #0
	cmp r0, #0
	ble _02242EB0
	add r6, sp, #0x14
	str r4, [sp, #0x10]
	adds r7, r4, #0
_02242E68:
	movs r1, #0xb
	movs r0, #0xae
	lsls r0, r0, #2
	ldr r2, [sp, #0x10]
	lsls r1, r1, #6
	ldrh r1, [r2, r1]
	ldr r0, [r4, r0]
	bl FUN_0207A0FC
	adds r2, r0, #0
	movs r0, #0x2b
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	lsls r1, r5, #0x18
	ldr r3, [r6]
	adds r0, r4, #0
	lsrs r1, r1, #0x18
	bl ov105_022455C4
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	movs r1, #6
	movs r2, #1
	bl FUN_02007DEC
	ldr r0, [sp, #0x10]
	adds r5, r5, #1
	adds r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	adds r6, r6, #4
	adds r7, r7, #4
	cmp r5, r0
	blt _02242E68
_02242EB0:
	adds r0, r4, #0
	movs r1, #4
	bl ov105_02244924
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _0224313C
_02242EC0:
	movs r0, #0x2b
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02245E48
	cmp r0, #1
	beq _02242F7A
	adds r0, r4, #0
	bl ov105_02245A30
	movs r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _0224313C
_02242EE0:
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _02242F64
	adds r0, r4, #0
	movs r1, #3
	bl ov105_02244C0C
	ldr r0, [sp, #0xc]
	movs r6, #0
	cmp r0, #0
	ble _02242F10
	movs r7, #0x4b
	adds r5, r4, #0
	lsls r7, r7, #2
_02242EFC:
	ldr r0, [r5, r7]
	movs r1, #6
	movs r2, #0
	bl FUN_02007DEC
	ldr r0, [sp, #0xc]
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, r0
	blt _02242EFC
_02242F10:
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #0
	bne _02242F36
	movs r1, #1
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov105_02245538
	adds r2, r0, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #3
	movs r3, #0x20
	bl ov105_022448F4
	b _02242F50
_02242F36:
	movs r1, #1
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov105_02245538
	adds r2, r0, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #3
	movs r3, #0x15
	bl ov105_022448F4
_02242F50:
	ldr r0, _02243084 @ =0x0000FFFF
	movs r1, #0x10
	str r0, [sp]
	movs r0, #0x4a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #0
	movs r3, #1
	bl FUN_0200872C
_02242F64:
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020087B4
	ldrb r0, [r4, #0x19]
	adds r0, r0, #1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x19]
	cmp r0, #0x15
	bhs _02242F7C
_02242F7A:
	b _0224313C
_02242F7C:
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #0
	bne _02242FA2
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl ov105_02245538
	adds r2, r0, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #3
	movs r3, #0x20
	bl ov105_022448F4
	b _02242FBC
_02242FA2:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl ov105_02245538
	adds r2, r0, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #3
	movs r3, #0x15
	bl ov105_022448F4
_02242FBC:
	ldrb r1, [r4, #0x13]
	movs r0, #0x20
	bics r1, r0
	strb r1, [r4, #0x13]
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #1
	bne _02242FDA
	ldr r0, _02243088 @ =0x0000035B
	movs r1, #1
	strb r1, [r4, r0]
	adds r0, r4, #0
	bl ov105_022457C0
_02242FDA:
	ldr r2, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl ov105_02244EE8
	adds r0, r4, #0
	movs r1, #1
	bl ov105_02244D14
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	bl ov105_02244E94
	movs r1, #0
	ldr r0, _0224308C @ =0x022462F4
	str r1, [sp]
	str r0, [sp, #4]
	movs r0, #0x51
	str r1, [sp, #8]
	lsls r0, r0, #2
	movs r1, #2
	adds r0, r4, r0
	adds r2, r1, #0
	movs r3, #1
	bl ov105_02245FB8
	movs r1, #0xab
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _0224313C
_02243020:
	adds r0, r4, #0
	adds r0, #0xfc
	ldr r0, [r0]
	bl FUN_02001BE0
	adds r5, r0, #0
	movs r0, #0xab
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246080
	movs r0, #1
	mvns r0, r0
	cmp r5, r0
	bhi _0224304C
	bhs _02243090
	cmp r5, #1
	bhi _02243090
	cmp r5, #0
	beq _02243054
	cmp r5, #1
	b _02243090
_0224304C:
	adds r0, r0, #1
	cmp r5, r0
	beq _0224313C
	b _02243090
_02243054:
	adds r0, r4, #0
	adds r0, #0xfc
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02001BC4
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r0, [r0]
	bl ov105_02245A98
	movs r0, #0xab
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246060
	movs r0, #0xab
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _0224313C
	.align 2, 0
_02243084: .4byte 0x0000FFFF
_02243088: .4byte 0x0000035B
_0224308C: .4byte 0x022462F4
_02243090:
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov105_02246074
	adds r0, r4, #0
	adds r0, #0xfc
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02001BC4
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r0, [r0]
	bl ov105_02245A98
	movs r0, #0xab
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246060
	movs r1, #0xab
	movs r0, #0
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldrb r2, [r4, #0x11]
	adds r1, #0x14
	subs r2, r2, #1
	strb r2, [r4, #0x11]
	ldrb r2, [r4, #0x11]
	lsls r2, r2, #1
	adds r2, r4, r2
	strh r0, [r2, r1]
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #1
	bne _022430E8
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	bl ov105_02245620
_022430E8:
	add sp, #0x20
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022430EE:
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #0
	bne _022430FE
	add sp, #0x20
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022430FE:
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	bl ov105_02245620
	cmp r0, #1
	bne _0224313C
	adds r0, r4, #0
	movs r1, #2
	bl ov105_02244D14
	strb r0, [r4, #0x10]
	bl FUN_020365F4
	movs r0, #0xa4
	bl FUN_020364F0
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _0224313C
_02243128:
	movs r0, #0xa4
	bl FUN_02036540
	cmp r0, #1
	bne _0224313C
	bl FUN_020365F4
	add sp, #0x20
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224313C:
	movs r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov105_02242D04

	thumb_func_start ov105_02243144
ov105_02243144: @ 0x02243144
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldrb r0, [r4, #9]
	bl FUN_0223AA50
	adds r7, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #4
	bls _0224315A
	b _0224339C
_0224315A:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02243166: @ jump table
	.2byte _02243170 - _02243166 - 2 @ case 0
	.2byte _022431F0 - _02243166 - 2 @ case 1
	.2byte _02243272 - _02243166 - 2 @ case 2
	.2byte _022432D8 - _02243166 - 2 @ case 3
	.2byte _022432F8 - _02243166 - 2 @ case 4
_02243170:
	ldrb r1, [r4, #0x13]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x13]
	adds r0, r4, #0
	adds r0, #0x60
	bl FUN_0201ACF4
	adds r0, r4, #0
	adds r0, #0xd0
	bl FUN_0201ACF4
	adds r0, r4, #0
	adds r0, #0xe0
	bl FUN_0201ACF4
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #0
	bne _022431B6
	movs r1, #1
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov105_02245538
	adds r2, r0, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #3
	movs r3, #0x20
	bl ov105_022448F4
	b _022431D0
_022431B6:
	movs r1, #1
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov105_02245538
	adds r2, r0, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #3
	movs r3, #0x15
	bl ov105_022448F4
_022431D0:
	ldr r0, _022433A4 @ =0x0000FFFF
	movs r1, #0
	str r0, [sp]
	movs r0, #0x4a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #0x10
	adds r3, r1, #0
	bl FUN_0200872C
	movs r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _0224339C
_022431F0:
	ldrb r0, [r4, #0x19]
	adds r0, r0, #1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x19]
	cmp r0, #2
	blo _0224328A
	movs r6, #0
	cmp r7, #0
	ble _02243216
	adds r5, r4, #0
_02243204:
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02007DC8
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, r7
	blt _02243204
_02243216:
	adds r0, r4, #0
	movs r1, #5
	bl ov105_02244924
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #0
	bne _02243244
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov105_02245538
	adds r2, r0, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #3
	movs r3, #0x20
	bl ov105_022448F4
	b _0224325E
_02243244:
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov105_02245538
	adds r2, r0, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #3
	movs r3, #0x15
	bl ov105_022448F4
_0224325E:
	adds r0, r4, #0
	movs r1, #3
	bl ov105_02244BE4
	movs r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _0224339C
_02243272:
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020087B4
	movs r0, #0x2b
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02245E48
	cmp r0, #1
	bne _0224328C
_0224328A:
	b _0224339C
_0224328C:
	adds r0, r4, #0
	bl ov105_02245A30
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	adds r1, r0, #0
	movs r0, #0xae
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0207A0FC
	adds r2, r0, #0
	movs r0, #0x2b
	str r0, [sp]
	movs r1, #0
	adds r0, r4, #0
	movs r3, #0x78
	str r1, [sp, #4]
	bl ov105_022455C4
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	movs r2, #1
	bl FUN_02007DEC
	adds r0, r4, #0
	movs r1, #0
	bl ov105_02244924
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _0224339C
_022432D8:
	movs r0, #0x2b
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02245E48
	cmp r0, #1
	beq _0224339C
	adds r0, r4, #0
	bl ov105_02245A30
	movs r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _0224339C
_022432F8:
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _02243342
	adds r0, r4, #0
	movs r1, #3
	bl ov105_02244B90
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	movs r2, #0
	bl FUN_02007DEC
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl ov105_02245538
	adds r2, r0, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #3
	movs r3, #0x15
	bl ov105_022448F4
	ldr r0, _022433A4 @ =0x0000FFFF
	movs r1, #0x10
	str r0, [sp]
	movs r0, #0x4a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #0
	movs r3, #1
	bl FUN_0200872C
_02243342:
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020087B4
	ldrb r0, [r4, #0x19]
	adds r0, r0, #1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x19]
	cmp r0, #0x15
	blo _0224339C
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl ov105_02245538
	adds r2, r0, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #3
	movs r3, #0x15
	bl ov105_022448F4
	ldrb r1, [r4, #0x13]
	movs r0, #0x20
	bics r1, r0
	strb r1, [r4, #0x13]
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #1
	bne _02243390
	ldr r0, _022433A8 @ =0x0000035B
	movs r1, #1
	strb r1, [r4, r0]
	adds r0, r4, #0
	bl ov105_022457C0
_02243390:
	adds r0, r4, #0
	bl ov105_022433AC
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224339C:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022433A4: .4byte 0x0000FFFF
_022433A8: .4byte 0x0000035B
	thumb_func_end ov105_02243144

	thumb_func_start ov105_022433AC
ov105_022433AC: @ 0x022433AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldrb r0, [r5, #9]
	bl FUN_0223AA50
	ldrb r0, [r5, #0x11]
	movs r4, #0
	cmp r0, #0
	ble _02243402
	adds r7, r5, #0
	adds r6, r5, #0
	adds r7, #0x50
_022433C6:
	movs r0, #0
	str r0, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #0xae
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r2, #0xb
	str r0, [sp, #0x14]
	lsls r2, r2, #6
	ldrh r2, [r6, r2]
	adds r1, r4, #2
	lsls r1, r1, #4
	lsls r2, r2, #0x18
	adds r0, r5, #0
	adds r1, r7, r1
	lsrs r2, r2, #0x18
	movs r3, #0
	bl ov105_02244FF8
	ldrb r0, [r5, #0x11]
	adds r4, r4, #1
	adds r6, r6, #2
	cmp r4, r0
	blt _022433C6
_02243402:
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_022461A0
	movs r3, #0
	adds r2, r0, #0
	str r3, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	movs r0, #0xae
	adds r1, r5, #0
	str r3, [sp, #0x10]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, #0x50
	str r0, [sp, #0x14]
	ldrb r4, [r5, #0x11]
	adds r0, r5, #0
	adds r4, r4, #2
	lsls r4, r4, #4
	adds r1, r1, r4
	bl ov105_02244FF8
	movs r2, #0
	adds r1, r5, #0
	adds r0, r5, #0
	adds r1, #0x50
	adds r3, r2, #0
	str r2, [sp]
	bl ov105_02244F0C
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl ov105_022461A4
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_022461A0
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	bl ov105_02245F50
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_022461A0
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #1
	bl ov105_02245FAC
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_022461A0
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #6
	bl ov105_02245F90
	ldrb r2, [r5, #0x11]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r2, #1
	bl ov105_02244EE8
	adds r0, r5, #0
	movs r1, #0
	bl ov105_02244D14
	strb r0, [r5, #0x10]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov105_022433AC

	thumb_func_start ov105_022434BC
ov105_022434BC: @ 0x022434BC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #5
	bls _022434CA
	b _02243722
_022434CA:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_022434D6: @ jump table
	.2byte _022434E2 - _022434D6 - 2 @ case 0
	.2byte _02243502 - _022434D6 - 2 @ case 1
	.2byte _022435BE - _022434D6 - 2 @ case 2
	.2byte _022436D8 - _022434D6 - 2 @ case 3
	.2byte _0224370A - _022434D6 - 2 @ case 4
	.2byte _02243716 - _022434D6 - 2 @ case 5
_022434E2:
	movs r1, #0
	bl ov105_02245528
	ldrb r0, [r4, #0x13]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	bne _022434F4
	movs r0, #1
	b _022434F6
_022434F4:
	movs r0, #2
_022434F6:
	strb r0, [r4, #8]
	ldrb r1, [r4, #0x13]
	movs r0, #2
	bics r1, r0
	strb r1, [r4, #0x13]
	b _02243722
_02243502:
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246080
	ldr r0, _02243728 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0xf0
	tst r0, r1
	beq _0224353A
	ldr r0, _0224372C @ =0x000005DC
	bl FUN_02005748
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	adds r2, r0, #0
	movs r0, #0xae
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r3, #1
	str r0, [sp]
	ldrb r1, [r4, #0x11]
	adds r0, r4, #0
	bl ov105_022453F8
_0224353A:
	ldr r0, _02243728 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _022435A4
	ldr r0, _0224372C @ =0x000005DC
	bl FUN_02005748
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	ldrb r1, [r4, #0x1a]
	subs r1, r1, #1
	cmp r1, r0
	bne _0224356A
	adds r0, r4, #0
	movs r1, #1
	bl ov105_02245528
	add sp, #0x18
	movs r0, #1
	pop {r3, r4, r5, pc}
_0224356A:
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov105_022461A4
	adds r0, r4, #0
	bl ov105_02244DF0
	movs r1, #0
	ldr r0, _02243730 @ =0x02246308
	str r1, [sp]
	str r0, [sp, #4]
	movs r0, #0x51
	str r1, [sp, #8]
	lsls r0, r0, #2
	movs r1, #3
	adds r0, r4, r0
	adds r2, r1, #0
	movs r3, #1
	bl ov105_02245FB8
	movs r1, #0xab
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02243722
_022435A4:
	movs r0, #2
	tst r0, r1
	beq _022435F4
	ldr r0, _0224372C @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #1
	bl ov105_02245528
	add sp, #0x18
	movs r0, #1
	pop {r3, r4, r5, pc}
_022435BE:
	adds r0, #0xfc
	ldr r0, [r0]
	bl FUN_02001BE0
	adds r5, r0, #0
	movs r0, #0xab
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246080
	movs r0, #1
	mvns r0, r0
	cmp r5, r0
	bhi _022435EE
	bhs _02243668
	cmp r5, #4
	bhi _02243668
	cmp r5, #0
	beq _022435F8
	cmp r5, #2
	beq _02243668
	cmp r5, #4
	beq _02243646
	b _02243668
_022435EE:
	adds r0, r0, #1
	cmp r5, r0
	bne _022435F6
_022435F4:
	b _02243722
_022435F6:
	b _02243668
_022435F8:
	adds r0, r4, #0
	adds r0, #0xfc
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02001BC4
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r0, [r0]
	bl ov105_02245A98
	movs r0, #0xab
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246060
	movs r1, #0xab
	movs r0, #0
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldrb r2, [r4, #0x13]
	movs r1, #0x40
	adds r3, r0, #0
	orrs r1, r2
	strb r1, [r4, #0x13]
	movs r1, #6
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r1, #0x5d
	str r1, [sp, #8]
	adds r1, r0, #0
	adds r2, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02243722
_02243646:
	adds r0, r4, #0
	adds r0, #0xfc
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02001BC4
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r0, [r0]
	bl ov105_02245A98
	adds r0, r4, #0
	bl ov105_02243738
	add sp, #0x18
	movs r0, #1
	pop {r3, r4, r5, pc}
_02243668:
	adds r0, r4, #0
	adds r0, #0xfc
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02001BC4
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r0, [r0]
	bl ov105_02245A98
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov105_022461A4
	movs r0, #0xab
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246060
	movs r0, #0xab
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r1, r4, #0
	ldr r0, [r4, #0x4c]
	adds r1, #0xc0
	bl ov105_02246260
	movs r3, #1
	adds r1, r4, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0xf
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
	adds r0, r4, #0
	adds r1, #0xc0
	movs r2, #0x13
	bl ov105_02244C60
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0xc0
	bl FUN_0201A9A4
	movs r0, #1
	strb r0, [r4, #8]
	b _02243722
_022436D8:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _02243722
	adds r0, r4, #0
	bl ov105_02245464
	adds r0, r4, #0
	bl ov105_022451B4
	movs r1, #5
	lsls r1, r1, #6
	ldr r0, _02243734 @ =0x020F410C
	ldr r1, [r4, r1]
	movs r2, #0x5d
	bl FUN_020067E8
	str r0, [r4, #4]
	ldrb r1, [r4, #0x13]
	movs r0, #2
	add sp, #0x18
	orrs r0, r1
	strb r0, [r4, #0x13]
	movs r0, #1
	pop {r3, r4, r5, pc}
_0224370A:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02243722
	add sp, #0x18
	movs r0, #1
	pop {r3, r4, r5, pc}
_02243716:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _02243722
	movs r0, #2
	strb r0, [r4, #8]
_02243722:
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
_02243728: .4byte 0x021BF67C
_0224372C: .4byte 0x000005DC
_02243730: .4byte 0x02246308
_02243734: .4byte 0x020F410C
	thumb_func_end ov105_022434BC

	thumb_func_start ov105_02243738
ov105_02243738: @ 0x02243738
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r4, r0, #0
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	bl ov105_02245F44
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #0
	bl ov105_02245FAC
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #6
	bl ov105_02245F90
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	movs r3, #0
	adds r2, r0, #0
	adds r1, r4, #0
	str r3, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	movs r0, #0xae
	str r3, [sp, #0x10]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, #0x50
	str r0, [sp, #0x14]
	ldrb r5, [r4, #0x11]
	adds r0, r4, #0
	adds r5, r5, #2
	lsls r5, r5, #4
	adds r1, r1, r5
	bl ov105_02244FF8
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	ldrb r1, [r4, #0x11]
	lsls r1, r1, #1
	adds r2, r4, r1
	movs r1, #0xb
	lsls r1, r1, #6
	strh r0, [r2, r1]
	ldrb r0, [r4, #0x11]
	subs r1, #0x14
	adds r0, r0, #1
	strb r0, [r4, #0x11]
	ldr r0, [r4, r1]
	bl ov105_02246060
	movs r0, #0xab
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	subs r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02246060
	movs r0, #0xaa
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	ldrb r2, [r4, #0x13]
	movs r0, #4
	orrs r0, r2
	strb r0, [r4, #0x13]
	adds r0, r4, #0
	adds r0, #0x70
	bl FUN_0201ADA4
	adds r4, #0x70
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov105_02243738

	thumb_func_start ov105_02243818
ov105_02243818: @ 0x02243818
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _02243830
	cmp r0, #1
	beq _022438A4
	cmp r0, #2
	bne _0224382E
	b _0224395A
_0224382E:
	b _02243960
_02243830:
	adds r0, r5, #0
	adds r0, #0x70
	movs r1, #0
	bl FUN_0201ADA4
	ldrb r0, [r5, #0x11]
	adds r1, r5, #0
	adds r1, #0x50
	adds r0, r0, #2
	lsls r0, r0, #4
	adds r0, r1, r0
	bl FUN_0201A9A4
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02007DC8
	adds r0, r5, #0
	movs r1, #0xa
	bl ov105_02244D14
	strb r0, [r5, #0x10]
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl ov105_02246074
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl ov105_022461A4
	adds r0, r5, #0
	bl ov105_02244E94
	movs r1, #0
	ldr r0, _02243968 @ =0x022462F4
	str r1, [sp]
	str r0, [sp, #4]
	movs r0, #0x51
	str r1, [sp, #8]
	lsls r0, r0, #2
	movs r1, #2
	adds r0, r5, r0
	adds r2, r1, #0
	movs r3, #1
	bl ov105_02245FB8
	movs r1, #0xab
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldrb r0, [r5, #8]
	adds r0, r0, #1
	strb r0, [r5, #8]
	b _02243960
_022438A4:
	adds r0, r5, #0
	adds r0, #0xfc
	ldr r0, [r0]
	bl FUN_02001BE0
	adds r4, r0, #0
	movs r0, #0xab
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_02246080
	movs r0, #1
	mvns r0, r0
	cmp r4, r0
	bhi _022438D0
	bhs _02243924
	cmp r4, #1
	bhi _02243924
	cmp r4, #0
	beq _022438D8
	cmp r4, #1
	b _02243924
_022438D0:
	adds r0, r0, #1
	cmp r4, r0
	beq _02243960
	b _02243924
_022438D8:
	adds r0, r5, #0
	adds r0, #0xfc
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02001BC4
	adds r0, r5, #0
	adds r0, #0xf4
	ldr r0, [r0]
	bl ov105_02245A98
	movs r0, #0xab
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_02246060
	movs r0, #0xab
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
	ldrb r1, [r5, #0x13]
	movs r0, #8
	bics r1, r0
	strb r1, [r5, #0x13]
	ldrb r0, [r5, #9]
	bl FUN_0223AED4
	cmp r0, #1
	bne _0224391C
	adds r0, r5, #0
	movs r1, #2
	bl ov105_02244D14
	strb r0, [r5, #0x10]
_0224391C:
	ldrb r0, [r5, #8]
	adds r0, r0, #1
	strb r0, [r5, #8]
	b _02243960
_02243924:
	adds r0, r5, #0
	adds r0, #0xfc
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02001BC4
	adds r0, r5, #0
	adds r0, #0xf4
	ldr r0, [r0]
	bl ov105_02245A98
	movs r0, #0xab
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_02246060
	movs r0, #0xab
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov105_0224396C
	ldrb r0, [r5, #8]
	adds r0, r0, #1
	strb r0, [r5, #8]
	b _02243960
_0224395A:
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_02243960:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02243968: .4byte 0x022462F4
	thumb_func_end ov105_02243818

	thumb_func_start ov105_0224396C
ov105_0224396C: @ 0x0224396C
	push {r4, lr}
	sub sp, #0x18
	adds r4, r0, #0
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov105_022461C0
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	movs r3, #0
	adds r2, r0, #0
	adds r1, r4, #0
	str r3, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	movs r0, #0xae
	str r3, [sp, #0x10]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, #0x70
	str r0, [sp, #0x14]
	adds r0, r4, #0
	bl ov105_02244FF8
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	adds r1, r0, #0
	movs r0, #0xae
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0207A0FC
	adds r2, r0, #0
	movs r0, #0x2b
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0x78
	bl ov105_022455C4
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov105_02246074
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov105_022461A4
	adds r0, r4, #0
	movs r1, #1
	bl ov105_02245528
	adds r1, r4, #0
	ldr r0, [r4, #0x4c]
	adds r1, #0xc0
	bl ov105_02246260
	movs r3, #1
	adds r1, r4, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0xf
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
	adds r0, r4, #0
	adds r1, #0xc0
	movs r2, #0x13
	bl ov105_02244C60
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0xc0
	bl FUN_0201A9A4
	adds r0, r4, #0
	movs r1, #9
	bl ov105_02244D14
	strb r0, [r4, #0x10]
	add sp, #0x18
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov105_0224396C

	thumb_func_start ov105_02243A3C
ov105_02243A3C: @ 0x02243A3C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #3
	bls _02243A4A
	b _02243CFE
_02243A4A:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02243A56: @ jump table
	.2byte _02243A5E - _02243A56 - 2 @ case 0
	.2byte _02243B58 - _02243A56 - 2 @ case 1
	.2byte _02243C6A - _02243A56 - 2 @ case 2
	.2byte _02243CF8 - _02243A56 - 2 @ case 3
_02243A5E:
	adds r1, r4, #0
	ldr r0, [r4, #0x4c]
	adds r1, #0xc0
	bl ov105_02246260
	movs r3, #1
	adds r1, r4, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0xf
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
	adds r0, r4, #0
	adds r1, #0xc0
	movs r2, #0x17
	bl ov105_02244C60
	strb r0, [r4, #0x10]
	movs r0, #0x11
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r3, #1
	adds r1, r4, #0
	str r3, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0xf
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
	adds r0, r4, #0
	adds r1, #0xc0
	movs r2, #0x18
	bl ov105_02244CC0
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0xc0
	bl FUN_0201A9A4
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #0
	bne _02243AE2
	movs r0, #0
	str r0, [sp]
	ldr r0, _02243D04 @ =0x02246350
	movs r2, #3
	str r0, [sp, #4]
	ldr r0, _02243D08 @ =0x022462D4
	movs r3, #2
	str r0, [sp, #8]
	movs r0, #0x51
	lsls r0, r0, #2
	ldrb r1, [r4, #0x1b]
	adds r0, r4, r0
	bl ov105_02245FB8
	b _02243AFE
_02243AE2:
	movs r0, #0
	str r0, [sp]
	ldr r0, _02243D0C @ =0x0224637C
	movs r2, #4
	str r0, [sp, #4]
	ldr r0, _02243D10 @ =0x022462E4
	movs r3, #2
	str r0, [sp, #8]
	movs r0, #0x51
	lsls r0, r0, #2
	ldrb r1, [r4, #0x1b]
	adds r0, r4, r0
	bl ov105_02245FB8
_02243AFE:
	movs r1, #0xaa
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	movs r3, #0
	adds r2, r0, #0
	adds r1, r4, #0
	str r3, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	movs r0, #0xaf
	str r3, [sp, #0x10]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, #0x70
	str r0, [sp, #0x14]
	adds r0, r4, #0
	bl ov105_02244FF8
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xa0
	bl ov105_0224628C
	adds r0, r4, #0
	movs r1, #0xd
	bl ov105_02244D14
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02243CFE
_02243B58:
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246080
	ldr r0, _02243D14 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0xc0
	tst r0, r1
	beq _02243B90
	ldr r0, _02243D18 @ =0x000005DC
	bl FUN_02005748
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	adds r2, r0, #0
	movs r0, #0xaf
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r3, r1, #0
	bl ov105_022453F8
_02243B90:
	ldr r0, _02243D14 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0x30
	tst r0, r1
	beq _02243BBE
	ldr r0, _02243D18 @ =0x000005DC
	bl FUN_02005748
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	adds r2, r0, #0
	movs r0, #0xaf
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r3, r1, #0
	bl ov105_022453F8
_02243BBE:
	ldr r0, _02243D14 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _02243C50
	ldr r0, _02243D18 @ =0x000005DC
	bl FUN_02005748
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	ldrb r1, [r4, #0x1b]
	subs r1, r1, #1
	cmp r1, r0
	bne _02243BEE
	adds r0, r4, #0
	movs r1, #1
	bl ov105_02245528
	add sp, #0x18
	movs r0, #1
	pop {r3, r4, r5, pc}
_02243BEE:
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	ldrb r1, [r4, #0x1b]
	subs r1, r1, #2
	cmp r1, r0
	bne _02243C0C
	adds r0, r4, #0
	bl ov105_02243D20
	add sp, #0x18
	movs r0, #1
	pop {r3, r4, r5, pc}
_02243C0C:
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov105_022461A4
	adds r0, r4, #0
	bl ov105_02244E94
	movs r1, #0
	ldr r0, _02243D1C @ =0x022462F4
	str r1, [sp]
	str r0, [sp, #4]
	movs r0, #0x51
	str r1, [sp, #8]
	lsls r0, r0, #2
	movs r1, #2
	adds r0, r4, r0
	adds r2, r1, #0
	movs r3, #1
	bl ov105_02245FB8
	movs r1, #0xab
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r4, #0
	movs r1, #0xe
	bl ov105_02244D14
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02243CFE
_02243C50:
	movs r0, #2
	tst r0, r1
	beq _02243CFE
	ldr r0, _02243D18 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #1
	bl ov105_02245528
	add sp, #0x18
	movs r0, #1
	pop {r3, r4, r5, pc}
_02243C6A:
	adds r0, r4, #0
	adds r0, #0xfc
	ldr r0, [r0]
	bl FUN_02001BE0
	adds r5, r0, #0
	movs r0, #0xab
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246080
	movs r0, #1
	mvns r0, r0
	cmp r5, r0
	bhi _02243C96
	bhs _02243CD6
	cmp r5, #1
	bhi _02243CD6
	cmp r5, #0
	beq _02243C9E
	cmp r5, #1
	b _02243CD6
_02243C96:
	adds r0, r0, #1
	cmp r5, r0
	beq _02243CFE
	b _02243CD6
_02243C9E:
	adds r0, r4, #0
	adds r0, #0xfc
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02001BC4
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r0, [r0]
	bl ov105_02245A98
	adds r0, r4, #0
	bl ov105_02243D84
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #1
	bne _02243CCE
	adds r0, r4, #0
	movs r1, #2
	bl ov105_02244D14
	strb r0, [r4, #0x10]
_02243CCE:
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02243CFE
_02243CD6:
	adds r0, r4, #0
	adds r0, #0xfc
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02001BC4
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r0, [r0]
	bl ov105_02245A98
	adds r0, r4, #0
	bl ov105_02243DE4
	movs r0, #1
	strb r0, [r4, #8]
	b _02243CFE
_02243CF8:
	add sp, #0x18
	movs r0, #1
	pop {r3, r4, r5, pc}
_02243CFE:
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
_02243D04: .4byte 0x02246350
_02243D08: .4byte 0x022462D4
_02243D0C: .4byte 0x0224637C
_02243D10: .4byte 0x022462E4
_02243D14: .4byte 0x021BF67C
_02243D18: .4byte 0x000005DC
_02243D1C: .4byte 0x022462F4
	thumb_func_end ov105_02243A3C

	thumb_func_start ov105_02243D20
ov105_02243D20: @ 0x02243D20
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246060
	movs r0, #0xaa
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	ldrb r2, [r4, #0x13]
	movs r0, #4
	bics r2, r0
	adds r0, r4, #0
	adds r0, #0x70
	strb r2, [r4, #0x13]
	bl FUN_0201ADA4
	adds r0, r4, #0
	adds r0, #0x70
	bl FUN_0201A9A4
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02007DC8
	adds r0, r4, #0
	adds r0, #0xc0
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r4, #0
	adds r0, #0xc0
	movs r1, #1
	bl FUN_0200E084
	adds r0, r4, #0
	adds r0, #0xc0
	bl FUN_0201AD10
	ldrb r0, [r4, #0x11]
	movs r1, #0
	subs r0, r0, #1
	strb r0, [r4, #0x11]
	movs r0, #0xb
	lsls r0, r0, #6
	strh r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov105_02243D20

	thumb_func_start ov105_02243D84
ov105_02243D84: @ 0x02243D84
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x13]
	movs r0, #8
	orrs r0, r1
	strb r0, [r4, #0x13]
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	ldrb r1, [r4, #0x11]
	lsls r1, r1, #1
	adds r2, r4, r1
	movs r1, #0xb
	lsls r1, r1, #6
	strh r0, [r2, r1]
	ldrb r0, [r4, #0x11]
	subs r1, #0x14
	adds r0, r0, #1
	strb r0, [r4, #0x11]
	ldr r0, [r4, r1]
	bl ov105_02246060
	movs r0, #0xab
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	subs r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02246074
	adds r0, r4, #0
	adds r0, #0x70
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r4, #0
	adds r0, #0x70
	bl FUN_0201A9A4
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02007DC8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov105_02243D84

	thumb_func_start ov105_02243DE4
ov105_02243DE4: @ 0x02243DE4
	push {r4, lr}
	sub sp, #0x18
	adds r4, r0, #0
	movs r0, #0xab
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246060
	movs r0, #0xab
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	subs r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_022461A4
	adds r1, r4, #0
	ldr r0, [r4, #0x4c]
	adds r1, #0xc0
	bl ov105_02246260
	movs r3, #1
	adds r1, r4, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0xf
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
	adds r0, r4, #0
	adds r1, #0xc0
	movs r2, #0x17
	bl ov105_02244C60
	strb r0, [r4, #0x10]
	movs r0, #0x11
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r3, #1
	adds r1, r4, #0
	str r3, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0xf
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
	adds r0, r4, #0
	adds r1, #0xc0
	movs r2, #0x18
	bl ov105_02244CC0
	strb r0, [r4, #0x10]
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xa0
	bl ov105_0224628C
	adds r0, r4, #0
	movs r1, #0xd
	bl ov105_02244D14
	strb r0, [r4, #0x10]
	adds r4, #0xc0
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #0x18
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov105_02243DE4

	thumb_func_start ov105_02243E84
ov105_02243E84: @ 0x02243E84
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _02243E9C
	cmp r0, #1
	beq _02243F10
	cmp r0, #2
	bne _02243E9A
	b _02243FCC
_02243E9A:
	b _02243FD2
_02243E9C:
	adds r0, r5, #0
	adds r0, #0x70
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r0, #0x70
	bl FUN_0201A9A4
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02007DC8
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r5, #0
	adds r0, #0xa0
	bl ov105_0224628C
	adds r0, r5, #0
	movs r1, #0xa
	bl ov105_02244D14
	strb r0, [r5, #0x10]
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl ov105_02246074
	adds r0, r5, #0
	bl ov105_02244E94
	movs r1, #0
	ldr r0, _02243FD8 @ =0x022462F4
	str r1, [sp]
	str r0, [sp, #4]
	movs r0, #0x51
	str r1, [sp, #8]
	lsls r0, r0, #2
	movs r1, #2
	adds r0, r5, r0
	adds r2, r1, #0
	movs r3, #1
	bl ov105_02245FB8
	movs r1, #0xab
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldrb r0, [r5, #8]
	adds r0, r0, #1
	strb r0, [r5, #8]
	b _02243FD2
_02243F10:
	adds r0, r5, #0
	adds r0, #0xfc
	ldr r0, [r0]
	bl FUN_02001BE0
	adds r4, r0, #0
	movs r0, #0xab
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_02246080
	movs r0, #1
	mvns r0, r0
	cmp r4, r0
	bhi _02243F3C
	bhs _02243F90
	cmp r4, #1
	bhi _02243F90
	cmp r4, #0
	beq _02243F44
	cmp r4, #1
	b _02243F90
_02243F3C:
	adds r0, r0, #1
	cmp r4, r0
	beq _02243FD2
	b _02243F90
_02243F44:
	adds r0, r5, #0
	adds r0, #0xfc
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02001BC4
	adds r0, r5, #0
	adds r0, #0xf4
	ldr r0, [r0]
	bl ov105_02245A98
	movs r0, #0xab
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_02246060
	movs r0, #0xab
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
	ldrb r1, [r5, #0x13]
	movs r0, #8
	bics r1, r0
	strb r1, [r5, #0x13]
	ldrb r0, [r5, #9]
	bl FUN_0223AED4
	cmp r0, #1
	bne _02243F88
	adds r0, r5, #0
	movs r1, #2
	bl ov105_02244D14
	strb r0, [r5, #0x10]
_02243F88:
	ldrb r0, [r5, #8]
	adds r0, r0, #1
	strb r0, [r5, #8]
	b _02243FD2
_02243F90:
	adds r0, r5, #0
	adds r0, #0xfc
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02001BC4
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov105_02246060
	movs r0, #0xaa
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r0, #4
	ldr r0, [r5, r0]
	bl ov105_02246060
	movs r0, #0xab
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov105_02243FDC
	ldrb r0, [r5, #8]
	adds r0, r0, #1
	strb r0, [r5, #8]
	b _02243FD2
_02243FCC:
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_02243FD2:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_02243FD8: .4byte 0x022462F4
	thumb_func_end ov105_02243E84

	thumb_func_start ov105_02243FDC
ov105_02243FDC: @ 0x02243FDC
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0xaf
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0207A0FC
	adds r2, r0, #0
	movs r0, #0x2b
	str r0, [sp]
	movs r1, #0
	adds r0, r4, #0
	movs r3, #0x78
	str r1, [sp, #4]
	bl ov105_022455C4
	adds r0, r4, #0
	movs r1, #1
	bl ov105_02245528
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov105_02243FDC

	thumb_func_start ov105_0224400C
ov105_0224400C: @ 0x0224400C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldrb r0, [r4, #9]
	bl FUN_0223AA50
	ldrb r0, [r4, #8]
	cmp r0, #6
	bhi _022440CA
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0224402A: @ jump table
	.2byte _02244038 - _0224402A - 2 @ case 0
	.2byte _022440BE - _0224402A - 2 @ case 1
	.2byte _0224410C - _0224402A - 2 @ case 2
	.2byte _02244160 - _0224402A - 2 @ case 3
	.2byte _022441F6 - _0224402A - 2 @ case 4
	.2byte _02244248 - _0224402A - 2 @ case 5
	.2byte _02244268 - _0224402A - 2 @ case 6
_02244038:
	ldrb r1, [r4, #0x13]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x13]
	adds r0, r4, #0
	adds r0, #0x60
	bl FUN_0201ACF4
	adds r0, r4, #0
	adds r0, #0xd0
	bl FUN_0201ACF4
	adds r0, r4, #0
	adds r0, #0xe0
	bl FUN_0201ACF4
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r4, #0
	adds r0, #0x50
	bl FUN_0201A9A4
	adds r0, r4, #0
	adds r0, #0xa0
	movs r1, #1
	bl FUN_0200E084
	adds r0, r4, #0
	adds r0, #0xa0
	bl FUN_0201AD10
	adds r0, r4, #0
	adds r0, #0x50
	bl ov105_02246244
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl ov105_02245538
	adds r2, r0, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #3
	movs r3, #0x15
	bl ov105_022448F4
	ldr r0, _0224434C @ =0x0000FFFF
	movs r1, #0
	str r0, [sp]
	movs r0, #0x4a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #0x10
	adds r3, r1, #0
	bl FUN_0200872C
	movs r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02244346
_022440BE:
	ldrb r0, [r4, #0x19]
	adds r0, r0, #1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x19]
	cmp r0, #2
	bhs _022440CC
_022440CA:
	b _02244346
_022440CC:
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02007DC8
	adds r0, r4, #0
	movs r1, #1
	bl ov105_02244924
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov105_02245538
	adds r2, r0, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #3
	movs r3, #0x15
	bl ov105_022448F4
	adds r0, r4, #0
	movs r1, #3
	bl ov105_02244BE4
	movs r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02244346
_0224410C:
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020087B4
	movs r0, #0x2b
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02245E48
	cmp r0, #1
	beq _02244200
	adds r0, r4, #0
	bl ov105_02245A30
	adds r0, r4, #0
	movs r1, #1
	bl ov105_02244AA8
	adds r0, r4, #0
	movs r1, #2
	bl ov105_02244A60
	adds r0, r4, #0
	movs r1, #3
	bl ov105_02244A18
	ldr r0, [r4, #0x4c]
	ldr r3, [r4, #0xc]
	movs r1, #2
	movs r2, #0
	bl FUN_02019184
	ldr r0, _02244350 @ =0x00000612
	bl FUN_02005748
	movs r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02244346
_02244160:
	adds r0, r4, #0
	bl ov105_02244830
	cmp r0, #1
	bne _02244200
	ldr r0, _02244350 @ =0x00000612
	movs r1, #0
	bl FUN_020057A4
	ldr r0, _02244354 @ =0x00000679
	bl FUN_02005748
	movs r0, #8
	str r0, [r4, #0x14]
	ldrb r0, [r4, #0x12]
	movs r6, #0
	cmp r0, #0
	ble _022441A6
	adds r5, r4, #0
	adds r7, r6, #0
_02244188:
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl ov105_02245EA8
	movs r1, #0x29
	lsls r1, r1, #4
	str r0, [r5, r1]
	adds r0, r1, #0
	str r7, [r5, r0]
	ldrb r0, [r4, #0x12]
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, r0
	blt _02244188
_022441A6:
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #1
	bne _022441C0
	ldrb r0, [r4, #0x12]
	cmp r0, #2
	bne _022441BC
	movs r0, #4
	strb r0, [r4, #0x12]
	b _022441C0
_022441BC:
	movs r0, #2
	strb r0, [r4, #0x12]
_022441C0:
	adds r0, r4, #0
	bl ov105_0224260C
	ldrb r0, [r4, #0x12]
	movs r6, #0
	cmp r0, #0
	ble _022441E4
	movs r7, #0x29
	adds r5, r4, #0
	lsls r7, r7, #4
_022441D4:
	ldr r0, [r5, r7]
	bl ov105_02245F5C
	ldrb r0, [r4, #0x12]
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, r0
	blt _022441D4
_022441E4:
	ldr r0, _02244350 @ =0x00000612
	bl FUN_02005748
	movs r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02244346
_022441F6:
	adds r0, r4, #0
	bl ov105_02244780
	cmp r0, #1
	beq _02244202
_02244200:
	b _02244346
_02244202:
	ldr r0, _02244350 @ =0x00000612
	movs r1, #0
	bl FUN_020057A4
	ldr r0, _02244354 @ =0x00000679
	bl FUN_02005748
	ldrb r0, [r4, #0x12]
	movs r6, #0
	cmp r0, #0
	ble _02244230
	movs r7, #0x29
	adds r5, r4, #0
	lsls r7, r7, #4
_0224421E:
	ldr r0, [r5, r7]
	movs r1, #0xa
	bl ov105_02245F90
	ldrb r0, [r4, #0x12]
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, r0
	blt _0224421E
_02244230:
	movs r0, #8
	str r0, [r4, #0x14]
	adds r0, r4, #0
	movs r1, #0
	bl ov105_02244924
	movs r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02244346
_02244248:
	movs r0, #0x2b
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02245E48
	cmp r0, #1
	beq _02244346
	adds r0, r4, #0
	bl ov105_02245A30
	movs r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02244346
_02244268:
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _022442E8
	adds r0, r4, #0
	movs r1, #3
	bl ov105_02244B90
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF0C
	ldrb r0, [r4, #0x13]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	bne _0224428E
	adds r0, r4, #0
	bl ov105_0224266C
	b _022442AC
_0224428E:
	movs r0, #0xaf
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0207A0FC
	adds r2, r0, #0
	movs r0, #0x2b
	str r0, [sp]
	movs r1, #0
	adds r0, r4, #0
	movs r3, #0x78
	str r1, [sp, #4]
	bl ov105_022455C4
_022442AC:
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	movs r2, #0
	bl FUN_02007DEC
	ldr r0, _0224434C @ =0x0000FFFF
	movs r1, #0x10
	str r0, [sp]
	movs r0, #0x4a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #0
	movs r3, #1
	bl FUN_0200872C
	movs r1, #1
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov105_02245538
	adds r2, r0, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #3
	movs r3, #0x15
	bl ov105_022448F4
_022442E8:
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020087B4
	ldrb r0, [r4, #0x19]
	adds r0, r0, #1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x19]
	cmp r0, #0x15
	blo _02244346
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl ov105_02245538
	adds r2, r0, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #3
	movs r3, #0x15
	bl ov105_022448F4
	adds r0, r4, #0
	bl ov105_02245A64
	ldrb r1, [r4, #0x13]
	movs r0, #0x20
	bics r1, r0
	strb r1, [r4, #0x13]
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #1
	bne _0224433C
	ldr r0, _02244358 @ =0x0000035B
	movs r1, #1
	strb r1, [r4, r0]
	adds r0, r4, #0
	bl ov105_022457C0
_0224433C:
	movs r0, #0
	strb r0, [r4, #0x19]
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02244346:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224434C: .4byte 0x0000FFFF
_02244350: .4byte 0x00000612
_02244354: .4byte 0x00000679
_02244358: .4byte 0x0000035B
	thumb_func_end ov105_0224400C

	thumb_func_start ov105_0224435C
ov105_0224435C: @ 0x0224435C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _0224436C
	cmp r1, #1
	beq _02244384
	b _02244394
_0224436C:
	ldrb r2, [r4, #0x13]
	movs r1, #0xa
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x1f
	bl ov105_02245620
	cmp r0, #1
	bne _02244394
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02244394
_02244384:
	ldr r0, _02244398 @ =0x0000035A
	ldrb r1, [r4, r0]
	cmp r1, #2
	blo _02244394
	movs r1, #0
	strb r1, [r4, r0]
	movs r0, #1
	pop {r4, pc}
_02244394:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_02244398: .4byte 0x0000035A
	thumb_func_end ov105_0224435C

	thumb_func_start ov105_0224439C
ov105_0224439C: @ 0x0224439C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _022443AC
	cmp r1, #1
	beq _022443C6
	b _022443D8
_022443AC:
	movs r1, #0xf
	bl ov105_02244D14
	strb r0, [r4, #0x10]
	bl FUN_020365F4
	movs r0, #0xa5
	bl FUN_020364F0
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _022443D8
_022443C6:
	movs r0, #0xa5
	bl FUN_02036540
	cmp r0, #1
	bne _022443D8
	bl FUN_020365F4
	movs r0, #1
	pop {r4, pc}
_022443D8:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov105_0224439C

	thumb_func_start ov105_022443DC
ov105_022443DC: @ 0x022443DC
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _022443EE
	cmp r0, #1
	beq _0224440E
	b _0224441C
_022443EE:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x5d
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _0224441C
_0224440E:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0224441C
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, pc}
_0224441C:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov105_022443DC

	thumb_func_start ov105_02244424
ov105_02244424: @ 0x02244424
	push {r4, lr}
	sub sp, #0x18
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _02244436
	cmp r0, #1
	beq _02244500
	b _02244514
_02244436:
	movs r0, #0xab
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02244468
	adds r0, r4, #0
	adds r0, #0xfc
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02001BC4
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r0, [r0]
	bl ov105_02245A98
	movs r0, #0xab
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_02246060
	movs r0, #0xab
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
_02244468:
	ldr r0, [r4, #0x20]
	movs r1, #0
	bl FUN_0222E5D0
	movs r1, #0xae
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	adds r1, #8
	ldrh r1, [r4, r1]
	adds r1, r1, #2
	bl FUN_0207A0FC
	bl FUN_02076B10
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #1
	bl ov105_02244F00
	movs r1, #0xaf
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	adds r1, r1, #6
	ldrh r1, [r4, r1]
	bl FUN_0207A0FC
	bl FUN_02076B10
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #2
	bl ov105_02244F00
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xa0
	bl ov105_0224628C
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02025E44
	bl FUN_02027AC0
	movs r3, #1
	str r3, [sp]
	str r0, [sp, #4]
	adds r1, r4, #0
	str r3, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0xf
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	adds r0, r4, #0
	adds r1, #0xa0
	movs r2, #0x10
	bl ov105_02244C60
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0xa0
	bl FUN_0201A9A4
	movs r0, #0x50
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02244514
_02244500:
	ldrb r0, [r4, #0x10]
	bl FUN_0201D724
	cmp r0, #0
	bne _02244514
	movs r0, #0
	strb r0, [r4, #0x19]
	add sp, #0x18
	movs r0, #1
	pop {r4, pc}
_02244514:
	movs r0, #0
	add sp, #0x18
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov105_02244424

	thumb_func_start ov105_0224451C
ov105_0224451C: @ 0x0224451C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02244558
	movs r0, #0x4a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02008A94
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224453E
	bl FUN_02003694
_0224453E:
	ldr r0, [r4, #0x4c]
	bl FUN_0201C2B8
	bl FUN_0201DCAC
	bl FUN_0200A858
	ldr r3, _0224455C @ =0x027E0000
	ldr r1, _02244560 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
_02244558:
	pop {r4, pc}
	nop
_0224455C: .4byte 0x027E0000
_02244560: .4byte 0x00003FF8
	thumb_func_end ov105_0224451C

	thumb_func_start ov105_02244564
ov105_02244564: @ 0x02244564
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _02244580 @ =0x0224641C
	add r3, sp, #0
	movs r2, #5
_0224456E:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0224456E
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_02244580: .4byte 0x0224641C
	thumb_func_end ov105_02244564

	thumb_func_start ov105_02244584
ov105_02244584: @ 0x02244584
	push {r3, r4, r5, lr}
	sub sp, #0x80
	ldr r5, _02244660 @ =0x02246330
	add r3, sp, #0x70
	adds r4, r0, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _02244664 @ =0x022463E4
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
	movs r0, #1
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x5d
	bl FUN_02019690
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019EBC
	ldr r5, _02244668 @ =0x022463AC
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
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019EBC
	ldr r5, _0224466C @ =0x02246400
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
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02019EBC
	ldr r5, _02244670 @ =0x022463C8
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
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #4
	bl FUN_02019EBC
	ldr r1, _02244674 @ =0x04000008
	movs r0, #3
	ldrh r2, [r1]
	bics r2, r0
	movs r0, #1
	strh r2, [r1]
	adds r1, r0, #0
	bl FUN_0201FF0C
	add sp, #0x80
	pop {r3, r4, r5, pc}
	.align 2, 0
_02244660: .4byte 0x02246330
_02244664: .4byte 0x022463E4
_02244668: .4byte 0x022463AC
_0224466C: .4byte 0x02246400
_02244670: .4byte 0x022463C8
_02244674: .4byte 0x04000008
	thumb_func_end ov105_02244584

	thumb_func_start ov105_02244678
ov105_02244678: @ 0x02244678
	push {r4, lr}
	adds r4, r0, #0
	bl ov105_02244564
	ldr r0, [r4, #0x4c]
	bl ov105_02244584
	movs r0, #0x5d
	bl FUN_02002F38
	movs r1, #0x12
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #2
	lsls r2, r1, #8
	movs r3, #0x5d
	bl FUN_02002F70
	movs r2, #0x12
	lsls r2, r2, #4
	ldr r0, [r4, r2]
	movs r1, #0
	adds r2, #0xe0
	movs r3, #0x5d
	bl FUN_02002F70
	bl ov105_02244AF8
	ldrb r0, [r4, #0x13]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	bne _022446EC
	adds r0, r4, #0
	movs r1, #1
	bl ov105_02244AA8
	adds r0, r4, #0
	movs r1, #2
	bl ov105_02244A60
	adds r0, r4, #0
	movs r1, #3
	bl ov105_02244A18
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	b _02244720
_022446EC:
	adds r0, r4, #0
	movs r1, #3
	bl ov105_022449A4
	adds r0, r4, #0
	movs r1, #2
	bl ov105_02244A60
	ldr r0, [r4, #0x4c]
	ldr r3, [r4, #0xc]
	movs r1, #2
	movs r2, #0
	bl FUN_02019184
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
_02244720:
	adds r0, r4, #0
	movs r1, #4
	bl ov105_02244B30
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov105_02244678

	thumb_func_start ov105_0224472C
ov105_0224472C: @ 0x0224472C
	movs r1, #0x51
	lsls r1, r1, #2
	ldr r3, _02244738 @ =ov105_02245AAC
	adds r0, r0, r1
	bx r3
	nop
_02244738: .4byte ov105_02245AAC
	thumb_func_end ov105_0224472C

	thumb_func_start ov105_0224473C
ov105_0224473C: @ 0x0224473C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x1f
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0x1f
	movs r1, #0
	bl FUN_0201FF74
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
	movs r1, #4
	bl FUN_02019044
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov105_0224473C

	thumb_func_start ov105_02244778
ov105_02244778: @ 0x02244778
	movs r3, #0
	strb r3, [r0, #8]
	str r2, [r1]
	bx lr
	thumb_func_end ov105_02244778

	thumb_func_start ov105_02244780
ov105_02244780: @ 0x02244780
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x4c]
	movs r1, #2
	movs r2, #1
	movs r3, #8
	bl FUN_02019184
	ldr r0, [r5, #0x4c]
	movs r1, #2
	bl FUN_020192EC
	str r0, [r5, #0xc]
	ldrb r0, [r5, #0x12]
	movs r6, #0
	cmp r0, #0
	ble _02244816
	adds r4, r5, #0
_022447AA:
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02245F2C
	adds r7, r0, #0
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02245F88
	ldr r2, [r7]
	asrs r1, r2, #0xb
	lsrs r1, r1, #0x14
	adds r1, r2, r1
	asrs r1, r1, #0xc
	subs r1, #8
	cmp r1, r0
	bgt _022447FA
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02245F88
	adds r7, r0, #0
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov105_02245F8C
	adds r2, r0, #0
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	adds r1, r7, #0
	bl ov105_02245F14
	movs r0, #1
	str r0, [sp]
	b _0224480C
_022447FA:
	movs r1, #0x29
	lsls r1, r1, #4
	movs r2, #7
	ldr r1, [r4, r1]
	add r0, sp, #4
	mvns r2, r2
	movs r3, #0
	bl ov105_02245EC8
_0224480C:
	ldrb r0, [r5, #0x12]
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, r0
	blt _022447AA
_02244816:
	adds r0, r5, #0
	bl ov105_022448BC
	ldr r0, [sp]
	cmp r0, #1
	bne _02244828
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02244828:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov105_02244780

	thumb_func_start ov105_02244830
ov105_02244830: @ 0x02244830
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	ldr r0, [r6, #0x4c]
	movs r1, #2
	movs r2, #1
	movs r3, #8
	movs r4, #0
	bl FUN_02019184
	ldr r0, [r6, #0x4c]
	movs r1, #2
	bl FUN_020192EC
	str r0, [r6, #0xc]
	ldrb r0, [r6, #0x12]
	adds r7, r4, #0
	cmp r0, #0
	ble _022448A2
	adds r5, r6, #0
_02244858:
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl ov105_02245F2C
	ldr r1, [r0]
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r1, r0, #0xc
	movs r0, #0x17
	subs r1, #8
	mvns r0, r0
	cmp r1, r0
	bge _02244886
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl ov105_02245EBC
	adds r4, r4, #1
	b _02244898
_02244886:
	movs r1, #0x29
	lsls r1, r1, #4
	movs r2, #7
	ldr r1, [r5, r1]
	add r0, sp, #0
	mvns r2, r2
	movs r3, #0
	bl ov105_02245EC8
_02244898:
	ldrb r0, [r6, #0x12]
	adds r7, r7, #1
	adds r5, r5, #4
	cmp r7, r0
	blt _02244858
_022448A2:
	adds r0, r6, #0
	bl ov105_022448BC
	ldrb r0, [r6, #0x12]
	cmp r4, r0
	bne _022448B4
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_022448B4:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov105_02244830

	thumb_func_start ov105_022448BC
ov105_022448BC: @ 0x022448BC
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, [r4, #0x14]
	movs r0, #3
	tst r0, r1
	bne _022448EA
	lsrs r0, r1, #2
	cmp r0, #4
	blo _022448D4
	movs r0, #0
	str r0, [r4, #0x14]
_022448D4:
	movs r3, #0x20
	str r3, [sp]
	ldr r2, [r4, #0x14]
	adds r0, r4, #0
	lsrs r2, r2, #2
	adds r2, r2, #6
	lsls r2, r2, #0x18
	movs r1, #1
	lsrs r2, r2, #0x18
	bl ov105_022448F4
_022448EA:
	ldr r0, [r4, #0x14]
	adds r0, r0, #1
	str r0, [r4, #0x14]
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov105_022448BC

	thumb_func_start ov105_022448F4
ov105_022448F4: @ 0x022448F4
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	str r3, [sp]
	add r0, sp, #8
	ldrb r0, [r0, #0x10]
	adds r4, r1, #0
	lsls r1, r4, #0x18
	str r0, [sp, #4]
	str r2, [sp, #8]
	movs r2, #0
	ldr r0, [r5, #0x4c]
	lsrs r1, r1, #0x18
	adds r3, r2, #0
	bl FUN_02019E2C
	lsls r1, r4, #0x18
	ldr r0, [r5, #0x4c]
	lsrs r1, r1, #0x18
	bl FUN_0201C3C0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov105_022448F4

	thumb_func_start ov105_02244924
ov105_02244924: @ 0x02244924
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r4, r0, #0
	cmp r6, #5
	bhi _0224496C
	adds r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0224493A: @ jump table
	.2byte _02244946 - _0224493A - 2 @ case 0
	.2byte _02244950 - _0224493A - 2 @ case 1
	.2byte _0224496C - _0224493A - 2 @ case 2
	.2byte _0224496C - _0224493A - 2 @ case 3
	.2byte _0224495A - _0224493A - 2 @ case 4
	.2byte _02244964 - _0224493A - 2 @ case 5
_02244946:
	ldr r0, _0224499C @ =0x000005EE
	bl FUN_02005748
	movs r5, #2
	b _0224496C
_02244950:
	ldr r0, _022449A0 @ =0x000005EF
	bl FUN_02005748
	movs r5, #3
	b _0224496C
_0224495A:
	ldr r0, _0224499C @ =0x000005EE
	bl FUN_02005748
	movs r5, #2
	b _0224496C
_02244964:
	ldr r0, _022449A0 @ =0x000005EF
	bl FUN_02005748
	movs r5, #3
_0224496C:
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov105_02245584
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov105_022459B0
	movs r1, #0x2b
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #1
	bne _0224499A
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov105_02245A04
	movs r1, #0xad
	lsls r1, r1, #2
	str r0, [r4, r1]
_0224499A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0224499C: .4byte 0x000005EE
_022449A0: .4byte 0x000005EF
	thumb_func_end ov105_02244924

	thumb_func_start ov105_022449A4
ov105_022449A4: @ 0x022449A4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r4, r1, #0
	movs r0, #0x5d
	str r0, [sp, #0xc]
	movs r0, #0xb5
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #4
	adds r3, r4, #0
	bl FUN_020070E8
	ldrb r0, [r5, #9]
	bl FUN_0223AED4
	cmp r0, #0
	bne _022449F6
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x5d
	str r0, [sp, #0xc]
	movs r0, #0xb5
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #5
	adds r3, r4, #0
	bl FUN_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
_022449F6:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x5d
	str r0, [sp, #0xc]
	movs r0, #0xb5
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #0xb
	adds r3, r4, #0
	bl FUN_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov105_022449A4

	thumb_func_start ov105_02244A18
ov105_02244A18: @ 0x02244A18
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r4, r1, #0
	movs r0, #0x5d
	str r0, [sp, #0xc]
	movs r0, #0xb5
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #4
	adds r3, r4, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x5d
	str r0, [sp, #0xc]
	movs r0, #0xb5
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #7
	adds r3, r4, #0
	bl FUN_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov105_02244A18

	thumb_func_start ov105_02244A60
ov105_02244A60: @ 0x02244A60
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r4, r1, #0
	movs r0, #0x5d
	str r0, [sp, #0xc]
	movs r0, #0xb5
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #4
	adds r3, r4, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x5d
	str r0, [sp, #0xc]
	movs r0, #0xb5
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #8
	adds r3, r4, #0
	bl FUN_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov105_02244A60

	thumb_func_start ov105_02244AA8
ov105_02244AA8: @ 0x02244AA8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r4, r1, #0
	movs r0, #0x5d
	str r0, [sp, #0xc]
	movs r0, #0xb5
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #4
	adds r3, r4, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x5d
	str r0, [sp, #0xc]
	movs r0, #0xb5
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #9
	adds r3, r4, #0
	bl FUN_0200710C
	movs r0, #1
	movs r1, #2
	bl FUN_02019060
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov105_02244AA8

	thumb_func_start ov105_02244AF8
ov105_02244AF8: @ 0x02244AF8
	push {r3, r4, lr}
	sub sp, #4
	movs r0, #0x96
	movs r1, #0x82
	add r2, sp, #0
	movs r3, #0x5d
	bl FUN_02006F88
	adds r4, r0, #0
	ldr r0, [sp]
	movs r1, #0x16
	ldr r0, [r0, #0xc]
	lsls r1, r1, #4
	blx FUN_020C2C54
	ldr r0, [sp]
	movs r2, #0x16
	ldr r0, [r0, #0xc]
	movs r1, #0
	lsls r2, r2, #4
	blx FUN_020C00B4
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov105_02244AF8

	thumb_func_start ov105_02244B30
ov105_02244B30: @ 0x02244B30
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r4, r1, #0
	movs r0, #0x5d
	str r0, [sp, #0xc]
	movs r0, #0xb5
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #0x7d
	adds r3, r4, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x5d
	str r0, [sp, #0xc]
	movs r0, #0xb5
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #0x7e
	adds r3, r4, #0
	bl FUN_0200710C
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x5d
	str r0, [sp, #4]
	movs r0, #0xb5
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0xab
	movs r2, #4
	movs r3, #0
	bl FUN_02007130
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov105_02244B30

	thumb_func_start ov105_02244B90
ov105_02244B90: @ 0x02244B90
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #0
	bne _02244BC2
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x5d
	str r0, [sp, #0xc]
	movs r0, #0xb5
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [r4, #0x4c]
	movs r1, #5
	movs r3, #3
	bl FUN_0200710C
	add sp, #0x10
	pop {r4, pc}
_02244BC2:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x5d
	str r0, [sp, #0xc]
	movs r0, #0xb5
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [r4, #0x4c]
	movs r1, #0xb
	movs r3, #3
	bl FUN_0200710C
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov105_02244B90

	thumb_func_start ov105_02244BE4
ov105_02244BE4: @ 0x02244BE4
	push {r3, lr}
	sub sp, #0x10
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x5d
	str r0, [sp, #0xc]
	movs r0, #0xb5
	lsls r0, r0, #2
	ldr r0, [r2, r0]
	ldr r2, [r2, #0x4c]
	movs r1, #7
	movs r3, #3
	bl FUN_0200710C
	add sp, #0x10
	pop {r3, pc}
	thumb_func_end ov105_02244BE4

	thumb_func_start ov105_02244C0C
ov105_02244C0C: @ 0x02244C0C
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r0, [r4, #9]
	bl FUN_0223AED4
	cmp r0, #0
	bne _02244C3E
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x5d
	str r0, [sp, #0xc]
	movs r0, #0xb5
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [r4, #0x4c]
	movs r1, #0xa
	movs r3, #3
	bl FUN_0200710C
	add sp, #0x10
	pop {r4, pc}
_02244C3E:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x5d
	str r0, [sp, #0xc]
	movs r0, #0xb5
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [r4, #0x4c]
	movs r1, #0xc
	movs r3, #3
	bl FUN_0200710C
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov105_02244C0C

	thumb_func_start ov105_02244C60
ov105_02244C60: @ 0x02244C60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r1, #0
	add r1, sp, #0x38
	ldrb r1, [r1]
	adds r5, r0, #0
	adds r0, r4, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x1c]
	ldr r2, [r5, #0x28]
	adds r1, r6, #0
	bl FUN_0200B1B8
	ldr r0, [r5, #0x20]
	ldr r1, [r5, #0x24]
	ldr r2, [r5, #0x28]
	bl FUN_0200C388
	ldr r0, [sp, #0x28]
	add r2, sp, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	adds r3, r7, #0
	str r0, [sp, #4]
	add r0, sp, #0x38
	ldrb r1, [r0]
	ldrb r0, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	lsls r0, r0, #0x18
	lsls r2, r2, #0x18
	lsrs r0, r0, #8
	lsrs r2, r2, #0x10
	orrs r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	ldr r2, [r5, #0x24]
	adds r0, r4, #0
	bl FUN_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov105_02244C60

	thumb_func_start ov105_02244CC0
ov105_02244CC0: @ 0x02244CC0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	ldr r0, [r5, #0x1c]
	ldr r2, [r5, #0x28]
	adds r6, r3, #0
	bl FUN_0200B1B8
	ldr r0, [r5, #0x20]
	ldr r1, [r5, #0x24]
	ldr r2, [r5, #0x28]
	bl FUN_0200C388
	ldr r0, [sp, #0x20]
	add r2, sp, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x24]
	adds r3, r6, #0
	str r0, [sp, #4]
	add r0, sp, #0x30
	ldrb r1, [r0]
	ldrb r0, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	lsls r0, r0, #0x18
	lsls r2, r2, #0x18
	lsrs r0, r0, #8
	lsrs r2, r2, #0x10
	orrs r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x34
	ldrb r1, [r1]
	ldr r2, [r5, #0x24]
	adds r0, r4, #0
	bl FUN_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov105_02244CC0

	thumb_func_start ov105_02244D14
ov105_02244D14: @ 0x02244D14
	push {r3, r4, r5, lr}
	sub sp, #0x18
	movs r3, #1
	adds r2, r1, #0
	str r3, [sp]
	movs r1, #0xff
	str r1, [sp, #4]
	str r3, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	movs r1, #0xf
	str r1, [sp, #0x10]
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0xa0
	str r3, [sp, #0x14]
	bl ov105_02244C60
	adds r4, #0xa0
	adds r5, r0, #0
	adds r0, r4, #0
	bl FUN_0201A9A4
	adds r0, r5, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov105_02244D14

	thumb_func_start ov105_02244D48
ov105_02244D48: @ 0x02244D48
	push {r4, r5, r6, r7}
	movs r4, #1
	movs r6, #0
	lsls r4, r4, #8
	adds r7, r0, #0
	adds r3, r6, #0
	adds r5, r4, #4
_02244D56:
	str r3, [r7, r4]
	str r3, [r7, r5]
	adds r6, r6, #1
	adds r7, #8
	cmp r6, #4
	blt _02244D56
	movs r4, #1
	lsls r4, r4, #8
	adds r5, r0, r4
	adds r4, r0, #0
	adds r4, #0xf0
	str r5, [r4]
	adds r4, r0, #0
	adds r4, #0xf4
	str r1, [r4]
	adds r1, r0, #0
	adds r1, #0xf8
	strb r3, [r1]
	adds r1, r0, #0
	movs r3, #1
	adds r1, #0xf9
	strb r3, [r1]
	adds r1, r0, #0
	adds r1, #0xfa
	strb r2, [r1]
	adds r1, r0, #0
	adds r1, #0xfb
	ldrb r2, [r1]
	movs r1, #0xf
	bics r2, r1
	adds r1, r0, #0
	adds r1, #0xfb
	strb r2, [r1]
	adds r1, r0, #0
	adds r1, #0xfb
	ldrb r2, [r1]
	movs r1, #0x30
	bics r2, r1
	movs r1, #0x10
	orrs r2, r1
	adds r1, r0, #0
	adds r1, #0xfb
	strb r2, [r1]
	adds r1, r0, #0
	adds r1, #0xfb
	ldrb r2, [r1]
	movs r1, #0xc0
	adds r0, #0xfb
	bics r2, r1
	movs r1, #0x40
	orrs r1, r2
	strb r1, [r0]
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end ov105_02244D48

	thumb_func_start ov105_02244DC4
ov105_02244DC4: @ 0x02244DC4
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	adds r5, r7, #0
	str r2, [sp]
	adds r5, #0x2c
	lsls r4, r6, #2
	ldr r0, [r7, #0x1c]
	ldr r2, [r5, r4]
	adds r1, r3, #0
	bl FUN_0200B1B8
	lsls r0, r6, #3
	adds r2, r7, r0
	movs r0, #1
	ldr r1, [r5, r4]
	lsls r0, r0, #8
	str r1, [r2, r0]
	adds r1, r0, #4
	ldr r0, [sp]
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov105_02244DC4

	thumb_func_start ov105_02244DF0
ov105_02244DF0: @ 0x02244DF0
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r1, r4, #0
	ldr r0, [r4, #0x4c]
	adds r1, #0xc0
	bl ov105_02246260
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0xc0
	movs r2, #3
	bl ov105_02244D48
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	movs r3, #5
	bl ov105_02244DC4
	adds r0, r4, #0
	movs r1, #0
	bl ov105_022454F8
	cmp r0, #1
	bne _02244E5C
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov105_022461A0
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0x29
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	bl ov105_02245F3C
	cmp r0, #0
	bne _02244E4E
	movs r1, #1
	adds r0, r4, #0
	adds r2, r1, #0
	movs r3, #6
	bl ov105_02244DC4
	b _02244E68
_02244E4E:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	movs r3, #8
	bl ov105_02244DC4
	b _02244E68
_02244E5C:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #4
	movs r3, #0x15
	bl ov105_02244DC4
_02244E68:
	movs r1, #2
	adds r0, r4, #0
	adds r2, r1, #0
	movs r3, #7
	bl ov105_02244DC4
	movs r1, #0
	movs r0, #0x5d
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0xf0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02001B7C
	adds r4, #0xfc
	str r0, [r4]
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov105_02244DF0

	thumb_func_start ov105_02244E94
ov105_02244E94: @ 0x02244E94
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r1, r4, #0
	ldr r0, [r4, #0x4c]
	adds r1, #0xc0
	bl ov105_02246260
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0xc0
	movs r2, #2
	bl ov105_02244D48
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	movs r3, #3
	bl ov105_02244DC4
	movs r1, #1
	adds r0, r4, #0
	adds r2, r1, #0
	movs r3, #4
	bl ov105_02244DC4
	movs r1, #0
	movs r0, #0x5d
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0xf0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02001B7C
	adds r4, #0xfc
	str r0, [r4]
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov105_02244E94

	thumb_func_start ov105_02244EE8
ov105_02244EE8: @ 0x02244EE8
	push {r3, lr}
	sub sp, #8
	movs r3, #0
	str r3, [sp]
	movs r3, #1
	str r3, [sp, #4]
	ldr r0, [r0, #0x20]
	bl FUN_0200B60C
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov105_02244EE8

	thumb_func_start ov105_02244F00
ov105_02244F00: @ 0x02244F00
	ldr r3, _02244F08 @ =FUN_0200B538
	ldr r0, [r0, #0x20]
	bx r3
	nop
_02244F08: .4byte FUN_0200B538
	thumb_func_end ov105_02244F00

	thumb_func_start ov105_02244F0C
ov105_02244F0C: @ 0x02244F0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r1, #0
	movs r1, #0x4f
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	str r2, [sp, #0x10]
	adds r6, r3, #0
	bl FUN_02025E38
	adds r7, r0, #0
	movs r0, #8
	movs r1, #0x5d
	bl FUN_02023790
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r7, #0
	bl FUN_02025EF0
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_02023D28
	adds r0, r7, #0
	bl FUN_02025F30
	cmp r0, #0
	bne _02244F50
	ldr r1, _02244F80 @ =0x00070800
	b _02244F54
_02244F50:
	movs r1, #0xc1
	lsls r1, r1, #0xa
_02244F54:
	str r6, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x18
	ldrb r1, [r1, #0x10]
	ldr r3, [sp, #0x10]
	adds r0, r5, #0
	adds r2, r4, #0
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r5, #0
	bl FUN_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02244F80: .4byte 0x00070800
	thumb_func_end ov105_02244F0C

	thumb_func_start ov105_02244F84
ov105_02244F84: @ 0x02244F84
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r1, #0
	str r2, [sp, #0x10]
	adds r6, r3, #0
	bl FUN_0203608C
	movs r1, #1
	subs r0, r1, r0
	bl FUN_02032EE8
	adds r7, r0, #0
	movs r0, #8
	movs r1, #0x5d
	bl FUN_02023790
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r7, #0
	adds r1, r4, #0
	bl FUN_02025EF4
	adds r0, r7, #0
	bl FUN_02025F30
	cmp r0, #0
	bne _02244FC4
	ldr r1, _02244FF4 @ =0x00070800
	b _02244FC8
_02244FC4:
	movs r1, #0xc1
	lsls r1, r1, #0xa
_02244FC8:
	str r6, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x18
	ldrb r1, [r1, #0x10]
	ldr r3, [sp, #0x10]
	adds r0, r5, #0
	adds r2, r4, #0
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r5, #0
	bl FUN_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02244FF4: .4byte 0x00070800
	thumb_func_end ov105_02244F84

	thumb_func_start ov105_02244FF8
ov105_02244FF8: @ 0x02244FF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp, #0x10]
	adds r5, r1, #0
	ldr r0, [sp, #0x64]
	adds r1, r2, #0
	adds r6, r3, #0
	bl FUN_0207A0FC
	movs r1, #0xb3
	add r2, sp, #0x20
	adds r7, r0, #0
	bl FUN_02074470
	add r1, sp, #0x40
	ldrb r1, [r1, #0x1c]
	adds r0, r5, #0
	bl FUN_0201ADA4
	movs r0, #0xb
	movs r1, #0x5d
	bl FUN_02023790
	add r1, sp, #0x20
	adds r4, r0, #0
	bl FUN_02023D28
	add r0, sp, #0x60
	ldrb r0, [r0]
	add r2, sp, #0x40
	adds r3, r6, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x50]
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldrb r0, [r2, #0x14]
	ldrb r1, [r2, #0x1c]
	ldrb r2, [r2, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x10
	orrs r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x18]
	adds r0, r5, #0
	adds r2, r4, #0
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_0201C294
	subs r0, r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x1c]
	adds r0, r7, #0
	movs r1, #0x6f
	movs r2, #0
	bl FUN_02074470
	adds r7, r0, #0
	bne _02245084
	movs r0, #0x19
	str r0, [sp, #0x14]
	b _02245088
_02245084:
	movs r0, #0x1a
	str r0, [sp, #0x14]
_02245088:
	cmp r7, #0
	bne _02245090
	ldr r6, _022450D8 @ =0x00070800
	b _02245094
_02245090:
	movs r6, #0xc1
	lsls r6, r6, #0xa
_02245094:
	adds r0, r4, #0
	bl FUN_020237E8
	cmp r7, #2
	beq _022450C6
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #0x1c]
	adds r2, r4, #0
	bl FUN_0200B1B8
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r6, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x1c]
	adds r0, r5, #0
	adds r2, r4, #0
	lsls r3, r3, #3
	bl FUN_0201D78C
_022450C6:
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r5, #0
	bl FUN_0201A9A4
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022450D8: .4byte 0x00070800
	thumb_func_end ov105_02244FF8

	thumb_func_start ov105_022450DC
ov105_022450DC: @ 0x022450DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r5, r1, #0
	add r1, sp, #0x28
	ldrb r1, [r1, #0x18]
	str r0, [sp, #0x10]
	adds r0, r5, #0
	str r2, [sp, #0x14]
	adds r6, r3, #0
	bl FUN_0201ADA4
	movs r2, #0x67
	movs r0, #1
	movs r1, #0x1a
	lsls r2, r2, #2
	movs r3, #0x5d
	bl FUN_0200B144
	add r1, sp, #0x28
	ldrh r1, [r1, #0x20]
	adds r7, r0, #0
	bl FUN_0200B1EC
	adds r4, r0, #0
	adds r0, r7, #0
	bl FUN_0200B190
	add r2, sp, #0x28
	ldrb r0, [r2, #0x1c]
	ldr r3, [sp, #0x14]
	str r0, [sp, #0x1c]
	str r6, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldrb r0, [r2, #0x10]
	ldrb r1, [r2, #0x18]
	ldrb r2, [r2, #0x14]
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x10
	orrs r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	adds r0, r5, #0
	adds r2, r4, #0
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_0201C294
	subs r0, r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x20]
	add r0, sp, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0224515E
	movs r0, #0x19
	str r0, [sp, #0x18]
	b _02245162
_0224515E:
	movs r0, #0x1a
	str r0, [sp, #0x18]
_02245162:
	add r0, sp, #0x4c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0224516E
	ldr r7, _022451B0 @ =0x00070800
	b _02245172
_0224516E:
	movs r7, #0xc1
	lsls r7, r7, #0xa
_02245172:
	adds r0, r4, #0
	bl FUN_020237E8
	add r0, sp, #0x4c
	ldrb r0, [r0]
	cmp r0, #2
	beq _022451A6
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #0x1c]
	adds r2, r4, #0
	bl FUN_0200B1B8
	str r6, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r7, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	adds r0, r5, #0
	adds r2, r4, #0
	lsls r3, r3, #3
	bl FUN_0201D78C
_022451A6:
	adds r0, r4, #0
	bl FUN_020237BC
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022451B0: .4byte 0x00070800
	thumb_func_end ov105_022450DC

	thumb_func_start ov105_022451B4
ov105_022451B4: @ 0x022451B4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0x12]
	movs r6, #0
	cmp r0, #0
	ble _022451E0
	movs r7, #0x29
	adds r4, r5, #0
	lsls r7, r7, #4
_022451C6:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _022451D6
	bl ov105_02245EA8
	movs r1, #0x29
	lsls r1, r1, #4
	str r0, [r4, r1]
_022451D6:
	ldrb r0, [r5, #0x12]
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, r0
	blt _022451C6
_022451E0:
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _022451F6
	bl ov105_02246060
	movs r0, #0xaa
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
_022451F6:
	bl FUN_02039794
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #2
	bl FUN_02002FA0
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02002FA0
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02002F54
	movs r0, #0x12
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r5, r0]
	adds r0, #0x24
	adds r0, r5, r0
	bl ov105_02245C50
	movs r7, #0x4b
	movs r6, #0
	adds r4, r5, #0
	lsls r7, r7, #2
_02245234:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _0224523E
	bl FUN_02007DC8
_0224523E:
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #3
	blt _02245234
	movs r0, #0x4a
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02007B6C
	ldr r0, [r5, #0x1c]
	bl FUN_0200B190
	ldr r0, [r5, #0x20]
	bl FUN_0200B3F0
	ldr r0, [r5, #0x24]
	bl FUN_020237BC
	ldr r0, [r5, #0x28]
	bl FUN_020237BC
	movs r6, #0
	adds r4, r5, #0
_0224526C:
	ldr r0, [r4, #0x2c]
	bl FUN_020237BC
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #4
	blt _0224526C
	adds r0, r5, #0
	adds r0, #0x50
	bl ov105_02246244
	ldr r0, [r5, #0x4c]
	bl ov105_0224473C
	movs r0, #0xb5
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02006CA8
	movs r0, #0x49
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_020242C4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov105_022451B4

	thumb_func_start ov105_022452A0
ov105_022452A0: @ 0x022452A0
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	bl ov105_022452E4
	movs r2, #2
	movs r1, #0
	ldr r0, _022452E0 @ =ov105_02245CD0
	str r2, [sp]
	str r0, [sp, #4]
	movs r0, #0x5d
	adds r3, r1, #0
	bl FUN_02024220
	movs r1, #0x49
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0x5d
	bl FUN_02018340
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	bl ov105_0224531C
	ldr r0, [r4, #0x4c]
	adds r4, #0x50
	adds r1, r4, #0
	bl ov105_02246214
	add sp, #8
	pop {r4, pc}
	nop
_022452E0: .4byte ov105_02245CD0
	thumb_func_end ov105_022452A0

	thumb_func_start ov105_022452E4
ov105_022452E4: @ 0x022452E4
	push {r3, lr}
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
	ldr r0, _02245314 @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _02245318 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	pop {r3, pc}
	.align 2, 0
_02245314: .4byte 0xFFFFE0FF
_02245318: .4byte 0x04001000
	thumb_func_end ov105_022452E4

	thumb_func_start ov105_0224531C
ov105_0224531C: @ 0x0224531C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0x96
	movs r1, #0x5d
	bl FUN_02006C24
	movs r1, #0xb5
	lsls r1, r1, #2
	str r0, [r6, r1]
	adds r0, r6, #0
	bl ov105_02244678
	adds r0, r6, #0
	bl ov105_0224472C
	movs r2, #0x5b
	movs r0, #1
	movs r1, #0x1a
	lsls r2, r2, #2
	movs r3, #0x5d
	bl FUN_0200B144
	str r0, [r6, #0x1c]
	movs r0, #0x5d
	bl FUN_0200B358
	str r0, [r6, #0x20]
	movs r0, #0x32
	lsls r0, r0, #4
	movs r1, #0x5d
	bl FUN_02023790
	str r0, [r6, #0x24]
	movs r0, #0x32
	lsls r0, r0, #4
	movs r1, #0x5d
	bl FUN_02023790
	str r0, [r6, #0x28]
	movs r4, #0
	adds r5, r6, #0
	movs r7, #0x40
_02245370:
	adds r0, r7, #0
	movs r1, #0x5d
	bl FUN_02023790
	str r0, [r5, #0x2c]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _02245370
	movs r1, #0x1a
	movs r0, #0
	lsls r1, r1, #4
	movs r2, #0x5d
	bl FUN_02002E7C
	movs r1, #6
	movs r0, #0
	lsls r1, r1, #6
	movs r2, #0x5d
	bl FUN_02002E98
	movs r0, #0x5d
	bl FUN_0200762C
	movs r1, #0x4a
	lsls r1, r1, #2
	str r0, [r6, r1]
	bl FUN_02035E38
	cmp r0, #0
	beq _022453C0
	movs r0, #1
	movs r1, #0x10
	bl FUN_0200966C
	movs r0, #1
	bl FUN_02009704
	bl FUN_02039734
_022453C0:
	adds r0, r6, #0
	movs r1, #0
	bl ov105_022454F8
	cmp r0, #1
	bne _022453DA
	adds r0, r6, #0
	bl ov105_0224246C
	adds r0, r6, #0
	bl ov105_022424A0
	b _022453E6
_022453DA:
	adds r0, r6, #0
	bl ov105_0224260C
	adds r0, r6, #0
	bl ov105_0224266C
_022453E6:
	bl FUN_0201FFD0
	ldr r0, _022453F4 @ =ov105_0224451C
	adds r1, r6, #0
	bl FUN_02017798
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022453F4: .4byte ov105_0224451C
	thumb_func_end ov105_0224531C

	thumb_func_start ov105_022453F8
ov105_022453F8: @ 0x022453F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r6, r1, #0
	adds r4, r2, #0
	adds r7, r3, #0
	bl ov105_022461A0
	ldrb r1, [r5, #0x12]
	cmp r0, r1
	bhs _0224545E
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02007DC8
	ldr r0, [sp, #0x30]
	adds r1, r4, #0
	bl FUN_0207A0FC
	adds r2, r0, #0
	movs r0, #0x2b
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0x78
	str r7, [sp, #4]
	bl ov105_022455C4
	movs r3, #0
	adds r1, r6, #2
	lsls r2, r4, #0x18
	str r3, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [sp, #0x30]
	str r3, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r5, #0x50
	lsls r1, r1, #4
	adds r1, r5, r1
	lsrs r2, r2, #0x18
	bl ov105_02244FF8
_0224545E:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov105_022453F8

	thumb_func_start ov105_02245464
ov105_02245464: @ 0x02245464
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x5d
	movs r1, #0x30
	bl FUN_02018144
	movs r1, #5
	lsls r1, r1, #6
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #0
	movs r2, #0x30
	blx FUN_020D5124
	movs r2, #0xae
	movs r1, #5
	lsls r2, r2, #2
	lsls r1, r1, #6
	ldr r3, [r4, r2]
	ldr r0, [r4, r1]
	subs r2, #0x10
	str r3, [r0]
	adds r0, r1, #0
	subs r0, #8
	ldr r3, [r4, r0]
	ldr r0, [r4, r1]
	str r3, [r0, #4]
	ldr r0, [r4, r1]
	movs r3, #1
	strb r3, [r0, #0x11]
	ldr r0, [r4, r1]
	strb r3, [r0, #0x12]
	ldrb r3, [r4, #0x12]
	ldr r0, [r4, r1]
	strb r3, [r0, #0x13]
	ldr r0, [r4, r2]
	bl ov105_022461A0
	movs r1, #5
	lsls r1, r1, #6
	ldr r2, [r4, r1]
	strb r0, [r2, #0x14]
	ldr r0, [r4, r1]
	movs r2, #0
	strh r2, [r0, #0x18]
	subs r0, r1, #4
	ldr r0, [r4, r0]
	bl FUN_0207A274
	movs r1, #5
	lsls r1, r1, #6
	ldr r2, [r4, r1]
	str r0, [r2, #0x1c]
	ldr r0, [r4, r1]
	movs r2, #0
	str r2, [r0, #0x2c]
	ldr r0, [r4, r1]
	ldr r1, _022454F4 @ =0x022462DC
	bl FUN_0208D720
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02025E38
	adds r1, r0, #0
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	bl FUN_0208E9C0
	pop {r4, pc}
	.align 2, 0
_022454F4: .4byte 0x022462DC
	thumb_func_end ov105_02245464

	thumb_func_start ov105_022454F8
ov105_022454F8: @ 0x022454F8
	ldrb r0, [r0, #0xb]
	cmp r0, r1
	bne _02245502
	movs r0, #1
	bx lr
_02245502:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov105_022454F8

	thumb_func_start ov105_02245508
ov105_02245508: @ 0x02245508
	cmp r0, #0
	beq _02245510
	cmp r0, #1
	bne _02245514
_02245510:
	movs r0, #3
	bx lr
_02245514:
	movs r0, #2
	bx lr
	thumb_func_end ov105_02245508

	thumb_func_start ov105_02245518
ov105_02245518: @ 0x02245518
	ldrb r0, [r0, #0x13]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	beq _02245524
	movs r0, #1
	bx lr
_02245524:
	movs r0, #0
	bx lr
	thumb_func_end ov105_02245518

	thumb_func_start ov105_02245528
ov105_02245528: @ 0x02245528
	ldrb r3, [r0, #0x13]
	movs r2, #1
	bics r3, r2
	movs r2, #1
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x13]
	bx lr
	thumb_func_end ov105_02245528

	thumb_func_start ov105_02245538
ov105_02245538: @ 0x02245538
	push {r3, lr}
	movs r3, #0
	cmp r1, #0
	beq _0224554A
	cmp r1, #1
	beq _0224555C
	cmp r1, #2
	beq _0224556E
	b _0224557E
_0224554A:
	cmp r2, #1
	bne _02245552
	movs r3, #2
	b _0224557E
_02245552:
	ldrb r0, [r0, #9]
	bl FUN_0223AED4
	movs r3, #2
	b _0224557E
_0224555C:
	cmp r2, #1
	bne _02245564
	movs r3, #1
	b _0224557E
_02245564:
	ldrb r0, [r0, #9]
	bl FUN_0223AED4
	movs r3, #1
	b _0224557E
_0224556E:
	cmp r2, #1
	bne _02245576
	movs r3, #2
	b _0224557E
_02245576:
	ldrb r0, [r0, #9]
	bl FUN_0223AED4
	movs r3, #2
_0224557E:
	adds r0, r3, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov105_02245538

	thumb_func_start ov105_02245584
ov105_02245584: @ 0x02245584
	push {r4, lr}
	adds r4, r1, #0
	cmp r4, #5
	bhi _022455C0
	adds r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02245598: @ jump table
	.2byte _022455C0 - _02245598 - 2 @ case 0
	.2byte _022455C0 - _02245598 - 2 @ case 1
	.2byte _022455C0 - _02245598 - 2 @ case 2
	.2byte _022455C0 - _02245598 - 2 @ case 3
	.2byte _022455A4 - _02245598 - 2 @ case 4
	.2byte _022455B2 - _02245598 - 2 @ case 5
_022455A4:
	ldrb r0, [r0, #9]
	bl FUN_0223AED4
	cmp r0, #1
	bne _022455C0
	movs r0, #0xb
	pop {r4, pc}
_022455B2:
	ldrb r0, [r0, #9]
	bl FUN_0223AED4
	cmp r0, #1
	bne _022455C0
	movs r0, #0xc
	pop {r4, pc}
_022455C0:
	adds r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov105_02245584

	thumb_func_start ov105_022455C4
ov105_022455C4: @ 0x022455C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	lsls r4, r1, #2
	ldr r1, [sp, #0x20]
	movs r7, #0x4b
	lsls r7, r7, #2
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	subs r1, r7, #4
	adds r5, r0, r7
	ldr r0, [r0, r1]
	movs r1, #0
	adds r6, r2, #0
	bl ov105_02245D88
	str r0, [r5, r4]
	ldr r0, [r5, r4]
	movs r1, #6
	movs r2, #0
	bl FUN_02007DEC
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	adds r7, r0, #0
	adds r0, r6, #0
	movs r1, #0x70
	movs r2, #0
	bl FUN_02074470
	adds r1, r0, #0
	adds r0, r7, #0
	movs r2, #0x1c
	bl FUN_020759CC
	cmp r0, #0
	bne _0224561C
	ldr r0, [r5, r4]
	ldr r1, [sp, #0x24]
	bl ov105_02245DB8
_0224561C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov105_022455C4

	thumb_func_start ov105_02245620
ov105_02245620: @ 0x02245620
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #9]
	adds r4, r1, #0
	adds r7, r2, #0
	bl FUN_0223AED4
	cmp r0, #0
	bne _02245636
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02245636:
	cmp r4, #7
	beq _02245644
	cmp r4, #8
	beq _02245650
	cmp r4, #0xa
	beq _0224565E
	b _0224566A
_02245644:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r6, #0x1d
	bl ov105_02245684
	b _0224566A
_02245650:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	movs r6, #0x1e
	bl ov105_022456A8
	b _0224566A
_0224565E:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	movs r6, #0x20
	bl ov105_02245884
_0224566A:
	movs r1, #0xb6
	lsls r1, r1, #2
	adds r0, r6, #0
	adds r1, r5, r1
	movs r2, #0x3c
	bl FUN_020359DC
	cmp r0, #1
	bne _02245680
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02245680:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov105_02245620

	thumb_func_start ov105_02245684
ov105_02245684: @ 0x02245684
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r4, r1, #0
	bl FUN_02025E38
	movs r0, #0xb6
	lsls r0, r0, #2
	strh r4, [r5, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov105_02245684

	thumb_func_start ov105_0224569C
ov105_0224569C: @ 0x0224569C
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0203608C
	cmp r4, r0
	pop {r4, pc}
	thumb_func_end ov105_0224569C

	thumb_func_start ov105_022456A8
ov105_022456A8: @ 0x022456A8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r1, #0
	movs r0, #0xb6
	str r1, [sp]
	adds r2, r5, #0
	adds r4, r1, #0
	lsls r0, r0, #2
_022456B8:
	adds r1, r1, #1
	strh r4, [r2, r0]
	adds r2, r2, #2
	cmp r1, #0x3c
	blt _022456B8
	ldrb r1, [r5, #0x11]
	movs r0, #0xb6
	lsls r0, r0, #2
	strh r1, [r5, r0]
	ldr r0, [sp]
	adds r0, r0, #1
	str r0, [sp]
	ldrb r0, [r5, #0x11]
	cmp r0, #0
	ble _02245708
	ldr r0, [sp]
	adds r7, r5, #0
	lsls r0, r0, #1
	adds r6, r5, r0
_022456DE:
	movs r1, #0xb
	movs r0, #0xae
	lsls r1, r1, #6
	lsls r0, r0, #2
	ldrh r1, [r7, r1]
	ldr r0, [r5, r0]
	bl FUN_0207A0FC
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	movs r1, #0xb6
	lsls r1, r1, #2
	strh r0, [r6, r1]
	ldrb r0, [r5, #0x11]
	adds r4, r4, #1
	adds r7, r7, #2
	adds r6, r6, #2
	cmp r4, r0
	blt _022456DE
_02245708:
	ldr r1, [sp]
	movs r7, #0
	adds r1, r1, r0
	cmp r0, #0
	ble _02245742
	lsls r0, r1, #1
	adds r6, r5, #0
	adds r4, r5, r0
_02245718:
	movs r1, #0xb
	movs r0, #0xae
	lsls r1, r1, #6
	lsls r0, r0, #2
	ldrh r1, [r6, r1]
	ldr r0, [r5, r0]
	bl FUN_0207A0FC
	movs r1, #0x6f
	movs r2, #0
	bl FUN_02074470
	movs r1, #0xb6
	lsls r1, r1, #2
	strh r0, [r4, r1]
	ldrb r0, [r5, #0x11]
	adds r7, r7, #1
	adds r6, r6, #2
	adds r4, r4, #2
	cmp r7, r0
	blt _02245718
_02245742:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov105_022456A8

	thumb_func_start ov105_02245744
ov105_02245744: @ 0x02245744
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r3, #0
	adds r7, r0, #0
	ldrb r0, [r5, #9]
	adds r6, r2, #0
	movs r4, #0
	bl FUN_0223AA50
	bl FUN_0203608C
	cmp r7, r0
	beq _022457A8
	ldrh r0, [r6]
	adds r4, r4, #1
	strb r0, [r5, #0x18]
	ldrb r3, [r5, #0x18]
	movs r0, #0
	cmp r3, #0
	ble _02245782
	lsls r1, r4, #1
	ldr r7, _022457AC @ =0x00000352
	adds r1, r6, r1
	adds r2, r5, #0
_02245772:
	ldrh r3, [r1]
	adds r0, r0, #1
	adds r1, r1, #2
	strh r3, [r2, r7]
	ldrb r3, [r5, #0x18]
	adds r2, r2, #2
	cmp r0, r3
	blt _02245772
_02245782:
	adds r1, r4, r3
	movs r0, #0
	cmp r3, #0
	ble _022457A2
	lsls r1, r1, #1
	adds r3, r6, r1
	ldr r1, _022457B0 @ =0x00000356
	adds r4, r5, #0
_02245792:
	ldrh r2, [r3]
	adds r0, r0, #1
	adds r3, r3, #2
	strh r2, [r4, r1]
	ldrb r2, [r5, #0x18]
	adds r4, r4, #2
	cmp r0, r2
	blt _02245792
_022457A2:
	ldr r0, _022457B4 @ =0x0000035B
	movs r1, #1
	strb r1, [r5, r0]
_022457A8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022457AC: .4byte 0x00000352
_022457B0: .4byte 0x00000356
_022457B4: .4byte 0x0000035B
	thumb_func_end ov105_02245744

	thumb_func_start ov105_022457B8
ov105_022457B8: @ 0x022457B8
	ldr r3, _022457BC @ =FUN_02022974
	bx r3
	.align 2, 0
_022457BC: .4byte FUN_02022974
	thumb_func_end ov105_022457B8

	thumb_func_start ov105_022457C0
ov105_022457C0: @ 0x022457C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r7, r0, #0
	ldrb r0, [r7, #9]
	bl FUN_0223AA50
	str r0, [sp, #0x18]
	ldrb r0, [r7, #0x13]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _022457F4
	adds r0, r7, #0
	adds r0, #0x60
	bl FUN_0201ACF4
	adds r0, r7, #0
	adds r0, #0xd0
	bl FUN_0201ACF4
	adds r7, #0xe0
	adds r0, r7, #0
	bl FUN_0201ACF4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_022457F4:
	ldr r0, _02245878 @ =0x0000035B
	ldrb r0, [r7, r0]
	cmp r0, #1
	bne _0224586E
	ldr r0, [sp, #0x18]
	movs r4, #0
	cmp r0, #0
	ble _0224585E
	adds r6, r7, #0
	adds r5, r7, #0
	adds r6, #0x50
_0224580A:
	adds r0, r4, #0
	adds r0, #8
	lsls r0, r0, #4
	str r0, [sp, #0x1c]
	adds r0, r6, r0
	movs r1, #0
	bl FUN_0201ADA4
	ldrb r0, [r7, #0x18]
	cmp r4, r0
	bge _0224584C
	movs r0, #0xf
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _0224587C @ =0x00000352
	ldr r1, [sp, #0x1c]
	ldrh r0, [r5, r0]
	movs r2, #0
	adds r1, r6, r1
	str r0, [sp, #0x10]
	ldr r0, _02245880 @ =0x00000356
	adds r3, r2, #0
	ldrh r0, [r5, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	adds r0, r7, #0
	bl ov105_022450DC
_0224584C:
	ldr r0, [sp, #0x1c]
	adds r0, r6, r0
	bl FUN_0201A9A4
	ldr r0, [sp, #0x18]
	adds r4, r4, #1
	adds r5, r5, #2
	cmp r4, r0
	blt _0224580A
_0224585E:
	movs r2, #0
	adds r1, r7, #0
	adds r0, r7, #0
	adds r1, #0x60
	adds r3, r2, #0
	str r2, [sp]
	bl ov105_02244F84
_0224586E:
	ldr r0, _02245878 @ =0x0000035B
	movs r1, #0
	strb r1, [r7, r0]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02245878: .4byte 0x0000035B
_0224587C: .4byte 0x00000352
_02245880: .4byte 0x00000356
	thumb_func_end ov105_022457C0

	thumb_func_start ov105_02245884
ov105_02245884: @ 0x02245884
	movs r3, #0xb6
	lsls r3, r3, #2
	strh r1, [r0, r3]
	adds r1, r3, #2
	strh r2, [r0, r1]
	adds r1, r3, #0
	subs r1, #0x18
	ldrh r2, [r0, r1]
	adds r1, r3, #4
	strh r2, [r0, r1]
	adds r1, r3, #0
	subs r1, #0x16
	ldrh r2, [r0, r1]
	adds r1, r3, #6
	strh r2, [r0, r1]
	bx lr
	thumb_func_end ov105_02245884

	thumb_func_start ov105_022458A4
ov105_022458A4: @ 0x022458A4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _02245930 @ =0x0000035A
	adds r4, r3, #0
	ldrb r1, [r4, r0]
	adds r5, r2, #0
	adds r1, r1, #1
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r6, r0
	beq _0224592E
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0x35
	lsls r0, r0, #4
	strh r1, [r4, r0]
	bl FUN_0203608C
	cmp r0, #0
	bne _02245906
	ldrb r0, [r4, #0x13]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _022458E4
	movs r0, #0x35
	movs r1, #0
	lsls r0, r0, #4
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_022458E4:
	movs r1, #0x35
	lsls r1, r1, #4
	ldrh r0, [r4, r1]
	cmp r0, #1
	bne _0224592E
	ldrh r0, [r5, #4]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r1, #0
	subs r0, #0x90
	strh r2, [r4, r0]
	ldrh r0, [r5, #6]
	subs r1, #0x8e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r4, r1]
	pop {r4, r5, r6, pc}
_02245906:
	movs r1, #0x35
	lsls r1, r1, #4
	ldrh r0, [r4, r1]
	cmp r0, #1
	bne _0224592E
	ldrb r2, [r4, #0x13]
	movs r0, #8
	bics r2, r0
	strb r2, [r4, #0x13]
	ldrh r0, [r5, #4]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r1, #0
	subs r0, #0x90
	strh r2, [r4, r0]
	ldrh r0, [r5, #6]
	subs r1, #0x8e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r4, r1]
_0224592E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02245930: .4byte 0x0000035A
	thumb_func_end ov105_022458A4

	thumb_func_start ov105_02245934
ov105_02245934: @ 0x02245934
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	movs r1, #0
	adds r5, r0, #0
	bl ov105_022454F8
	cmp r0, #1
	bne _02245950
	ldr r0, _02245990 @ =0x02246364
	lsls r2, r4, #2
	ldrh r1, [r0, r2]
	ldr r0, _02245994 @ =0x02246366
	ldrh r2, [r0, r2]
	b _02245982
_02245950:
	ldrb r0, [r5, #9]
	bl FUN_0223AED4
	cmp r0, #0
	bne _02245966
	ldr r0, _02245998 @ =0x02246314
	lsls r2, r4, #2
	ldrh r1, [r0, r2]
	ldr r0, _0224599C @ =0x02246316
	ldrh r2, [r0, r2]
	b _02245982
_02245966:
	ldrb r0, [r5, #0x12]
	cmp r0, #2
	bne _02245978
	ldr r0, _022459A0 @ =0x022462EC
	lsls r2, r4, #2
	ldrh r1, [r0, r2]
	ldr r0, _022459A4 @ =0x022462EE
	ldrh r2, [r0, r2]
	b _02245982
_02245978:
	ldr r0, _022459A8 @ =0x02246320
	lsls r2, r4, #2
	ldrh r1, [r0, r2]
	ldr r0, _022459AC @ =0x02246322
	ldrh r2, [r0, r2]
_02245982:
	movs r0, #0x51
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r3, #0x5d
	bl ov105_02245E54
	pop {r3, r4, r5, pc}
	.align 2, 0
_02245990: .4byte 0x02246364
_02245994: .4byte 0x02246366
_02245998: .4byte 0x02246314
_0224599C: .4byte 0x02246316
_022459A0: .4byte 0x022462EC
_022459A4: .4byte 0x022462EE
_022459A8: .4byte 0x02246320
_022459AC: .4byte 0x02246322
	thumb_func_end ov105_02245934

	thumb_func_start ov105_022459B0
ov105_022459B0: @ 0x022459B0
	push {r3, r4, lr}
	sub sp, #4
	cmp r1, #0xc
	bhi _022459F4
	adds r4, r1, r1
	add r4, pc
	ldrh r4, [r4, #6]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	add pc, r4
_022459C4: @ jump table
	.2byte _022459DE - _022459C4 - 2 @ case 0
	.2byte _022459DE - _022459C4 - 2 @ case 1
	.2byte _022459F4 - _022459C4 - 2 @ case 2
	.2byte _022459F4 - _022459C4 - 2 @ case 3
	.2byte _022459E4 - _022459C4 - 2 @ case 4
	.2byte _022459E4 - _022459C4 - 2 @ case 5
	.2byte _022459F4 - _022459C4 - 2 @ case 6
	.2byte _022459F4 - _022459C4 - 2 @ case 7
	.2byte _022459F4 - _022459C4 - 2 @ case 8
	.2byte _022459F4 - _022459C4 - 2 @ case 9
	.2byte _022459F4 - _022459C4 - 2 @ case 10
	.2byte _022459EA - _022459C4 - 2 @ case 11
	.2byte _022459F0 - _022459C4 - 2 @ case 12
_022459DE:
	movs r2, #0x50
	movs r3, #0x28
	b _022459F4
_022459E4:
	movs r2, #0x80
	movs r3, #0x28
	b _022459F4
_022459EA:
	movs r2, #0x50
	movs r3, #0x28
	b _022459F4
_022459F0:
	movs r2, #0x50
	movs r3, #0x28
_022459F4:
	movs r4, #0x5d
	str r4, [sp]
	adds r4, #0xe7
	adds r0, r0, r4
	bl ov105_02245DC4
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov105_022459B0

	thumb_func_start ov105_02245A04
ov105_02245A04: @ 0x02245A04
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r4, #2
	beq _02245A12
	cmp r4, #3
	bne _02245A18
_02245A12:
	movs r2, #0xd8
	movs r3, #0x28
	b _02245A20
_02245A18:
	bl FUN_02022974
	movs r2, #0
	adds r3, r2, #0
_02245A20:
	movs r0, #0x5d
	str r0, [sp]
	adds r0, #0xe7
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov105_02245DC4
	pop {r3, r4, r5, pc}
	thumb_func_end ov105_02245A04

	thumb_func_start ov105_02245A30
ov105_02245A30: @ 0x02245A30
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x2b
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02245A4A
	bl ov105_02245E1C
	movs r0, #0x2b
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
_02245A4A:
	movs r0, #0xad
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02245A60
	bl ov105_02245E1C
	movs r0, #0xad
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
_02245A60:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov105_02245A30

	thumb_func_start ov105_02245A64
ov105_02245A64: @ 0x02245A64
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	adds r1, r0, #0
	bl FUN_02019060
	movs r0, #1
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x5d
	bl FUN_02019690
	ldr r0, [r4, #0x4c]
	movs r1, #1
	bl FUN_02019EBC
	ldr r0, [r4, #0x4c]
	adds r4, #0x50
	adds r1, r4, #0
	bl ov105_02246214
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	pop {r4, pc}
	thumb_func_end ov105_02245A64

	thumb_func_start ov105_02245A98
ov105_02245A98: @ 0x02245A98
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl FUN_0200DC9C
	adds r0, r4, #0
	bl FUN_0201AD10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov105_02245A98

	thumb_func_start ov105_02245AAC
ov105_02245AAC: @ 0x02245AAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	bl ov105_02245C98
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x20
	str r3, [sp, #0xc]
	movs r2, #0x5d
	str r2, [sp, #0x10]
	adds r2, r0, #0
	bl FUN_0200A784
	movs r0, #9
	adds r1, r7, #4
	movs r2, #0x5d
	bl FUN_020095C4
	ldr r4, _02245BA0 @ =0x02246444
	str r0, [r7]
	movs r6, #0
	adds r5, r7, #0
_02245AE4:
	ldrb r0, [r4]
	adds r1, r6, #0
	movs r2, #0x5d
	bl FUN_02009714
	movs r1, #0x4b
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r6, r6, #1
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r6, #4
	blt _02245AE4
	movs r2, #0
	str r2, [sp]
	movs r3, #1
	str r3, [sp, #4]
	movs r0, #0x5d
	str r0, [sp, #8]
	adds r0, #0xcf
	ldr r0, [r7, r0]
	movs r1, #0x97
	bl FUN_0200985C
	movs r1, #0x4f
	lsls r1, r1, #2
	str r0, [r7, r1]
	movs r3, #0
	str r3, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	movs r0, #0x5d
	str r0, [sp, #0xc]
	adds r0, #0xd3
	ldr r0, [r7, r0]
	movs r1, #0x97
	movs r2, #0x24
	bl FUN_020098B8
	movs r1, #5
	lsls r1, r1, #6
	str r0, [r7, r1]
	movs r0, #0
	str r0, [sp]
	movs r2, #2
	str r2, [sp, #4]
	movs r0, #0x5d
	str r0, [sp, #8]
	adds r0, #0xd7
	ldr r0, [r7, r0]
	movs r1, #0x97
	movs r3, #1
	bl FUN_02009918
	movs r1, #0x51
	lsls r1, r1, #2
	str r0, [r7, r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x5d
	str r0, [sp, #8]
	adds r0, #0xdb
	movs r2, #1
	ldr r0, [r7, r0]
	movs r1, #0x97
	adds r3, r2, #0
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
	bl FUN_0201FF74
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02245BA0: .4byte 0x02246444
	thumb_func_end ov105_02245AAC

	thumb_func_start ov105_02245BA4
ov105_02245BA4: @ 0x02245BA4
	push {r4, r5, r6, lr}
	sub sp, #0x80
	adds r5, r0, #0
	movs r0, #0
	str r1, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	adds r4, r3, #0
	str r0, [sp, #8]
	movs r3, #0
	ldr r0, [sp, #0x90]
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #0x4b
	lsls r0, r0, #2
	adds r6, r2, #0
	ldr r2, [r5, r0]
	str r2, [sp, #0x14]
	adds r2, r0, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	adds r2, r0, #0
	adds r2, #8
	ldr r2, [r5, r2]
	adds r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r5, r0]
	adds r2, r1, #0
	str r0, [sp, #0x20]
	str r3, [sp, #0x24]
	str r3, [sp, #0x28]
	add r0, sp, #0x5c
	adds r3, r1, #0
	bl FUN_020093B4
	ldr r0, [r5]
	movs r1, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x5c
	str r0, [sp, #0x30]
	movs r0, #1
	lsls r0, r0, #0xc
	str r1, [sp, #0x34]
	str r1, [sp, #0x38]
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r1, [r0, #0x20]
	str r4, [sp, #0x50]
	add r0, sp, #0x80
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	bne _02245C18
	movs r0, #1
	str r0, [sp, #0x54]
	b _02245C1C
_02245C18:
	movs r0, #2
	str r0, [sp, #0x54]
_02245C1C:
	movs r0, #0x5d
	str r0, [sp, #0x58]
	add r0, sp, #0x80
	ldrb r0, [r0, #0x14]
	cmp r0, #1
	bne _02245C32
	movs r0, #3
	ldr r1, [sp, #0x38]
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #0x38]
_02245C32:
	add r0, sp, #0x2c
	bl FUN_02021AA0
	adds r4, r0, #0
	movs r1, #1
	bl FUN_02021CC8
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_02021D6C
	adds r0, r4, #0
	add sp, #0x80
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov105_02245BA4

	thumb_func_start ov105_02245C50
ov105_02245C50: @ 0x02245C50
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
_02245C6E:
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, r6]
	bl FUN_02009754
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	blo _02245C6E
	ldr r0, [r5]
	bl FUN_02021964
	bl FUN_0200A878
	bl FUN_0201E958
	bl FUN_0201F8B4
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov105_02245C50

	thumb_func_start ov105_02245C98
ov105_02245C98: @ 0x02245C98
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _02245CC8 @ =0x02246448
	add r3, sp, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r1, _02245CCC @ =0x00100010
	adds r0, r2, #0
	adds r2, r1, #0
	bl FUN_0201E88C
	movs r0, #8
	movs r1, #0x5d
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_02245CC8: .4byte 0x02246448
_02245CCC: .4byte 0x00100010
	thumb_func_end ov105_02245C98

	thumb_func_start ov105_02245CD0
ov105_02245CD0: @ 0x02245CD0
	push {r3, lr}
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	ldr r0, _02245D38 @ =0x04000008
	movs r1, #3
	ldrh r2, [r0]
	bics r2, r1
	strh r2, [r0]
	adds r0, #0x58
	ldrh r2, [r0]
	ldr r1, _02245D3C @ =0xFFFFCFFD
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
	ldr r2, _02245D40 @ =0x0000CFFB
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
	ldr r2, _02245D44 @ =0x00007FFF
	adds r1, r0, #0
	movs r3, #0x3f
	str r0, [sp]
	blx FUN_020BFD58
	ldr r1, _02245D48 @ =0xBFFF0000
	ldr r0, _02245D4C @ =0x04000580
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_02245D38: .4byte 0x04000008
_02245D3C: .4byte 0xFFFFCFFD
_02245D40: .4byte 0x0000CFFB
_02245D44: .4byte 0x00007FFF
_02245D48: .4byte 0xBFFF0000
_02245D4C: .4byte 0x04000580
	thumb_func_end ov105_02245CD0

	thumb_func_start ov105_02245D50
ov105_02245D50: @ 0x02245D50
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_020241B4
	ldr r2, _02245D80 @ =0x04000440
	movs r3, #0
	adds r1, r2, #0
	str r3, [r2]
	adds r1, #0x14
	str r3, [r1]
	movs r0, #2
	str r0, [r2]
	str r3, [r1]
	blx FUN_020AF480
	blx FUN_020A73C0
	adds r0, r4, #0
	bl FUN_02007768
	ldr r0, _02245D84 @ =0x04000540
	movs r1, #1
	str r1, [r0]
	pop {r4, pc}
	.align 2, 0
_02245D80: .4byte 0x04000440
_02245D84: .4byte 0x04000540
	thumb_func_end ov105_02245D50

	thumb_func_start ov105_02245D88
ov105_02245D88: @ 0x02245D88
	push {r4, r5, r6, lr}
	sub sp, #0x20
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	add r0, sp, #0x10
	movs r2, #2
	adds r6, r3, #0
	bl FUN_02075EF4
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x30]
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	add r1, sp, #0x10
	adds r2, r6, #0
	bl FUN_02007C34
	add sp, #0x20
	pop {r4, r5, r6, pc}
	thumb_func_end ov105_02245D88

	thumb_func_start ov105_02245DB8
ov105_02245DB8: @ 0x02245DB8
	ldr r3, _02245DC0 @ =FUN_02007DEC
	adds r2, r1, #0
	movs r1, #0x23
	bx r3
	.align 2, 0
_02245DC0: .4byte FUN_02007DEC
	thumb_func_end ov105_02245DB8

	thumb_func_start ov105_02245DC4
ov105_02245DC4: @ 0x02245DC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	str r1, [sp, #8]
	ldr r0, [sp, #0x20]
	movs r1, #0xc
	adds r5, r2, #0
	adds r6, r3, #0
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	strb r1, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #2]
	strb r1, [r4, #3]
	strb r1, [r4, #4]
	strb r1, [r4, #5]
	strb r1, [r4, #6]
	strb r1, [r4, #7]
	strb r1, [r4, #8]
	strb r1, [r4, #9]
	strb r1, [r4, #0xa]
	strb r1, [r4, #0xb]
	str r5, [r4]
	str r6, [r4, #4]
	movs r0, #1
	str r0, [sp]
	ldr r2, [sp, #8]
	str r1, [sp, #4]
	adds r0, r7, #0
	adds r3, r1, #0
	bl ov105_02245BA4
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov105_02245E30
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov105_02245DC4

	thumb_func_start ov105_02245E1C
ov105_02245E1C: @ 0x02245E1C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	bl FUN_02021BD4
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov105_02245E1C

	thumb_func_start ov105_02245E30
ov105_02245E30: @ 0x02245E30
	push {lr}
	sub sp, #0xc
	lsls r1, r1, #0xc
	str r1, [sp]
	lsls r1, r2, #0xc
	str r1, [sp, #4]
	ldr r0, [r0, #8]
	add r1, sp, #0
	bl FUN_02021C50
	add sp, #0xc
	pop {pc}
	thumb_func_end ov105_02245E30

	thumb_func_start ov105_02245E48
ov105_02245E48: @ 0x02245E48
	ldr r3, _02245E50 @ =FUN_02021FD0
	ldr r0, [r0, #8]
	bx r3
	nop
_02245E50: .4byte FUN_02021FD0
	thumb_func_end ov105_02245E48

	thumb_func_start ov105_02245E54
ov105_02245E54: @ 0x02245E54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	adds r5, r1, #0
	adds r0, r3, #0
	movs r1, #0x10
	adds r6, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	adds r2, r4, #0
	movs r1, #0x10
	movs r0, #0
_02245E6E:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _02245E6E
	movs r1, #0
	strh r1, [r4]
	str r5, [r4, #4]
	str r6, [r4, #8]
	str r1, [sp]
	str r1, [sp, #4]
	adds r0, r7, #0
	movs r2, #6
	adds r3, r1, #0
	bl ov105_02245BA4
	str r0, [r4, #0xc]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov105_02245F14
	ldr r0, [r4, #0xc]
	movs r1, #1
	bl FUN_02021E90
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov105_02245E54

	thumb_func_start ov105_02245EA8
ov105_02245EA8: @ 0x02245EA8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_02021BD4
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov105_02245EA8

	thumb_func_start ov105_02245EBC
ov105_02245EBC: @ 0x02245EBC
	ldr r3, _02245EC4 @ =FUN_02021CAC
	ldr r0, [r0, #0xc]
	bx r3
	nop
_02245EC4: .4byte FUN_02021CAC
	thumb_func_end ov105_02245EBC

	thumb_func_start ov105_02245EC8
ov105_02245EC8: @ 0x02245EC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0xc]
	adds r6, r2, #0
	adds r7, r3, #0
	bl FUN_02021D28
	adds r3, r0, #0
	add r2, sp, #0
	ldm r3!, {r0, r1}
	mov ip, r2
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r1, [sp]
	lsls r0, r6, #0xc
	adds r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	lsls r0, r7, #0xc
	adds r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	mov r1, ip
	bl FUN_02021C50
	ldr r0, [r4, #0xc]
	bl FUN_02021D28
	adds r2, r0, #0
	ldm r2!, {r0, r1}
	stm r5!, {r0, r1}
	ldr r0, [r2]
	str r0, [r5]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov105_02245EC8

	thumb_func_start ov105_02245F14
ov105_02245F14: @ 0x02245F14
	push {lr}
	sub sp, #0xc
	lsls r1, r1, #0xc
	str r1, [sp]
	lsls r1, r2, #0xc
	str r1, [sp, #4]
	ldr r0, [r0, #0xc]
	add r1, sp, #0
	bl FUN_02021C50
	add sp, #0xc
	pop {pc}
	thumb_func_end ov105_02245F14

	thumb_func_start ov105_02245F2C
ov105_02245F2C: @ 0x02245F2C
	ldr r3, _02245F34 @ =FUN_02021D28
	ldr r0, [r0, #0xc]
	bx r3
	nop
_02245F34: .4byte FUN_02021D28
	thumb_func_end ov105_02245F2C

	thumb_func_start ov105_02245F38
ov105_02245F38: @ 0x02245F38
	strh r1, [r0]
	bx lr
	thumb_func_end ov105_02245F38

	thumb_func_start ov105_02245F3C
ov105_02245F3C: @ 0x02245F3C
	ldrh r0, [r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	thumb_func_end ov105_02245F3C

	thumb_func_start ov105_02245F44
ov105_02245F44: @ 0x02245F44
	ldr r3, _02245F4C @ =ov105_02245F38
	movs r1, #1
	bx r3
	nop
_02245F4C: .4byte ov105_02245F38
	thumb_func_end ov105_02245F44

	thumb_func_start ov105_02245F50
ov105_02245F50: @ 0x02245F50
	ldr r3, _02245F58 @ =ov105_02245F38
	movs r1, #0
	bx r3
	nop
_02245F58: .4byte ov105_02245F38
	thumb_func_end ov105_02245F50

	thumb_func_start ov105_02245F5C
ov105_02245F5C: @ 0x02245F5C
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl ov105_02245F2C
	ldr r2, [r0]
	asrs r1, r2, #0xb
	lsrs r1, r1, #0x14
	adds r1, r2, r1
	asrs r1, r1, #0xc
	adds r1, #0xf8
	lsls r1, r1, #0xc
	str r1, [sp]
	ldr r0, [r0, #4]
	add r1, sp, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	bl FUN_02021C50
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov105_02245F5C

	thumb_func_start ov105_02245F88
ov105_02245F88: @ 0x02245F88
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end ov105_02245F88

	thumb_func_start ov105_02245F8C
ov105_02245F8C: @ 0x02245F8C
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end ov105_02245F8C

	thumb_func_start ov105_02245F90
ov105_02245F90: @ 0x02245F90
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r1, #1
	ldr r0, [r5, #0xc]
	lsls r1, r1, #0xc
	bl FUN_02021CE4
	ldr r0, [r5, #0xc]
	adds r1, r4, #0
	bl FUN_02021D6C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov105_02245F90

	thumb_func_start ov105_02245FAC
ov105_02245FAC: @ 0x02245FAC
	ldr r3, _02245FB4 @ =FUN_02021E90
	ldr r0, [r0, #0xc]
	bx r3
	nop
_02245FB4: .4byte FUN_02021E90
	thumb_func_end ov105_02245FAC

	thumb_func_start ov105_02245FB8
ov105_02245FB8: @ 0x02245FB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0x5d
	movs r1, #0x14
	str r2, [sp, #8]
	adds r5, r3, #0
	bl FUN_02018144
	adds r4, r0, #0
	adds r2, r4, #0
	movs r1, #0x14
	movs r0, #0
_02245FD4:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _02245FD4
	strb r7, [r4]
	ldr r0, [sp, #8]
	strb r0, [r4, #0x10]
	strb r5, [r4, #1]
	add r0, sp, #0x20
	ldrb r2, [r0, #0x10]
	ldr r0, [sp, #0x34]
	strb r2, [r4, #2]
	str r0, [r4, #4]
	ldr r0, [sp, #0x38]
	str r0, [r4, #8]
	cmp r0, #0
	beq _0224600C
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r3, [r4, #8]
	adds r0, r6, #0
	ldrb r2, [r3, r2]
	adds r3, r1, #0
	bl ov105_02245BA4
	str r0, [r4, #0xc]
	b _02246036
_0224600C:
	cmp r5, #0
	bne _02246024
	movs r1, #0
	str r1, [sp]
	adds r0, r6, #0
	movs r2, #8
	adds r3, r1, #0
	str r1, [sp, #4]
	bl ov105_02245BA4
	str r0, [r4, #0xc]
	b _02246036
_02246024:
	movs r1, #0
	str r1, [sp]
	adds r0, r6, #0
	movs r2, #9
	adds r3, r1, #0
	str r1, [sp, #4]
	bl ov105_02245BA4
	str r0, [r4, #0xc]
_02246036:
	ldrb r0, [r4, #2]
	ldr r1, [r4, #4]
	lsls r0, r0, #2
	ldrsh r0, [r1, r0]
	lsls r0, r0, #0xc
	str r0, [sp, #0xc]
	ldrb r0, [r4, #2]
	ldr r1, [r4, #4]
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r0, #2
	ldrsh r0, [r1, r0]
	add r1, sp, #0xc
	lsls r0, r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [r4, #0xc]
	bl FUN_02021C50
	adds r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov105_02245FB8

	thumb_func_start ov105_02246060
ov105_02246060: @ 0x02246060
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_02021BD4
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov105_02246060

	thumb_func_start ov105_02246074
ov105_02246074: @ 0x02246074
	ldr r3, _0224607C @ =FUN_02021CAC
	ldr r0, [r0, #0xc]
	bx r3
	nop
_0224607C: .4byte FUN_02021CAC
	thumb_func_end ov105_02246074

	thumb_func_start ov105_02246080
ov105_02246080: @ 0x02246080
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrb r0, [r4, #3]
	cmp r0, #1
	bne _0224608E
	b _02246196
_0224608E:
	ldr r0, _0224619C @ =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _02246196
	ldrb r1, [r4, #1]
	cmp r1, #2
	bne _02246114
	movs r1, #0x20
	tst r1, r0
	beq _022460B6
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _022460B0
	ldrb r0, [r4]
	subs r0, r0, #1
	strb r0, [r4, #2]
	b _0224614E
_022460B0:
	subs r0, r0, #1
	strb r0, [r4, #2]
	b _0224614E
_022460B6:
	movs r1, #0x10
	tst r1, r0
	beq _022460D2
	ldrb r0, [r4]
	ldrb r1, [r4, #2]
	subs r0, r0, #1
	cmp r1, r0
	bne _022460CC
	movs r0, #0
	strb r0, [r4, #2]
	b _0224614E
_022460CC:
	adds r0, r1, #1
	strb r0, [r4, #2]
	b _0224614E
_022460D2:
	movs r1, #0x80
	tst r1, r0
	beq _022460F8
	ldrb r0, [r4, #0x10]
	ldrb r1, [r4, #2]
	cmp r1, r0
	bhs _022460E4
	strb r0, [r4, #2]
	b _0224614E
_022460E4:
	ldrb r0, [r4]
	subs r0, r0, #1
	cmp r1, r0
	bne _022460F2
	movs r0, #0
	strb r0, [r4, #2]
	b _0224614E
_022460F2:
	adds r0, r1, #1
	strb r0, [r4, #2]
	b _0224614E
_022460F8:
	movs r1, #0x40
	tst r0, r1
	beq _0224614E
	ldrb r1, [r4, #2]
	ldrb r0, [r4, #0x10]
	cmp r1, r0
	bhs _0224610E
	ldrb r0, [r4]
	subs r0, r0, #1
	strb r0, [r4, #2]
	b _0224614E
_0224610E:
	subs r0, r1, #1
	strb r0, [r4, #2]
	b _0224614E
_02246114:
	cmp r1, #0
	bne _0224611E
	movs r1, #0x10
	movs r2, #0x20
	b _02246122
_0224611E:
	movs r1, #0x80
	movs r2, #0x40
_02246122:
	tst r1, r0
	beq _0224613A
	ldrb r0, [r4, #2]
	adds r0, r0, #1
	strb r0, [r4, #2]
	ldrb r1, [r4, #2]
	ldrb r0, [r4]
	cmp r1, r0
	blo _0224614E
	movs r0, #0
	strb r0, [r4, #2]
	b _0224614E
_0224613A:
	tst r0, r2
	beq _0224614E
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _02246148
	ldrb r0, [r4]
	strb r0, [r4, #2]
_02246148:
	ldrb r0, [r4, #2]
	subs r0, r0, #1
	strb r0, [r4, #2]
_0224614E:
	ldr r2, [r4, #8]
	cmp r2, #0
	beq _0224615E
	ldrb r1, [r4, #2]
	ldr r0, [r4, #0xc]
	ldrb r1, [r2, r1]
	bl FUN_02021DCC
_0224615E:
	ldr r0, [r4, #0xc]
	bl FUN_02021D28
	adds r5, r0, #0
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	ldrb r0, [r4, #2]
	ldr r1, [r4, #4]
	lsls r0, r0, #2
	ldrsh r0, [r1, r0]
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r4, #2]
	ldr r1, [r4, #4]
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r0, #2
	ldrsh r0, [r1, r0]
	adds r1, r2, #0
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	bl FUN_02021C50
_02246196:
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0224619C: .4byte 0x021BF67C
	thumb_func_end ov105_02246080

	thumb_func_start ov105_022461A0
ov105_022461A0: @ 0x022461A0
	ldrb r0, [r0, #2]
	bx lr
	thumb_func_end ov105_022461A0

	thumb_func_start ov105_022461A4
ov105_022461A4: @ 0x022461A4
	push {r3, lr}
	strb r1, [r0, #3]
	cmp r1, #0
	ldr r0, [r0, #0xc]
	bne _022461B6
	movs r1, #8
	bl FUN_02021DCC
	pop {r3, pc}
_022461B6:
	movs r1, #0xd
	bl FUN_02021DCC
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov105_022461A4

	thumb_func_start ov105_022461C0
ov105_022461C0: @ 0x022461C0
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	strb r1, [r4, #2]
	ldr r2, [r4, #8]
	cmp r2, #0
	beq _022461D8
	ldrb r1, [r4, #2]
	ldr r0, [r4, #0xc]
	ldrb r1, [r2, r1]
	bl FUN_02021DCC
_022461D8:
	ldr r0, [r4, #0xc]
	bl FUN_02021D28
	adds r5, r0, #0
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	ldrb r0, [r4, #2]
	ldr r1, [r4, #4]
	lsls r0, r0, #2
	ldrsh r0, [r1, r0]
	lsls r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r4, #2]
	ldr r1, [r4, #4]
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r0, #2
	ldrsh r0, [r1, r0]
	adds r1, r2, #0
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	bl FUN_02021C50
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov105_022461C0

	thumb_func_start ov105_02246214
ov105_02246214: @ 0x02246214
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	movs r4, #0
_0224621C:
	ldr r2, _02246240 @ =0x02246458
	lsls r6, r4, #4
	lsls r3, r4, #3
	adds r0, r7, #0
	adds r1, r5, r6
	adds r2, r2, r3
	bl FUN_0201A8D4
	adds r0, r5, r6
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xa
	blo _0224621C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02246240: .4byte 0x02246458
	thumb_func_end ov105_02246214

	thumb_func_start ov105_02246244
ov105_02246244: @ 0x02246244
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0224624A:
	lsls r0, r4, #4
	adds r0, r5, r0
	bl FUN_0201A8FC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xa
	blo _0224624A
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov105_02246244

	thumb_func_start ov105_02246260
ov105_02246260: @ 0x02246260
	push {r4, lr}
	sub sp, #8
	adds r4, r1, #0
	movs r1, #0
	str r1, [sp]
	movs r1, #0x5d
	str r1, [sp, #4]
	ldr r2, _02246288 @ =0x000003F7
	movs r1, #1
	movs r3, #0xb
	bl FUN_0200DAA4
	ldr r2, _02246288 @ =0x000003F7
	adds r0, r4, #0
	movs r1, #1
	movs r3, #0xb
	bl FUN_0200DC48
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_02246288: .4byte 0x000003F7
	thumb_func_end ov105_02246260

	thumb_func_start ov105_0224628C
ov105_0224628C: @ 0x0224628C
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r1, #0
	adds r4, r0, #0
	bl FUN_0201C290
	adds r1, r0, #0
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x5d
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r2, _022462C8 @ =0x000003D9
	movs r3, #0xa
	bl FUN_0200DD0C
	adds r0, r4, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r2, _022462C8 @ =0x000003D9
	adds r0, r4, #0
	movs r1, #1
	movs r3, #0xa
	bl FUN_0200E060
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_022462C8: .4byte 0x000003D9
	thumb_func_end ov105_0224628C
	@ 0x022462CC
