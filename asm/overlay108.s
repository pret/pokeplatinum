
	thumb_func_start ov108_02241AE0
ov108_02241AE0: @ 0x02241AE0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, _02241C2C @ =0x00000068
	movs r1, #2
	bl FUN_02006590
	bl ov108_02242344
	movs r2, #2
	movs r0, #3
	movs r1, #0x67
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	movs r1, #0xf3
	adds r0, r4, #0
	lsls r1, r1, #2
	movs r2, #0x67
	bl FUN_0200681C
	movs r2, #0xf3
	movs r1, #0
	lsls r2, r2, #2
	adds r5, r0, #0
	blx FUN_020D5124
	movs r0, #0x67
	bl FUN_02018340
	adds r1, r5, #0
	adds r1, #0x90
	str r0, [r1]
	adds r0, r4, #0
	str r4, [r5]
	bl FUN_02006840
	adds r4, r0, #0
	adds r0, r5, #0
	ldr r1, [r4]
	adds r0, #0xdc
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0xdc
	ldr r0, [r0]
	bl FUN_020304A0
	adds r1, r5, #0
	adds r1, #0xe0
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xdc
	ldr r0, [r0]
	bl FUN_020305B8
	adds r1, r5, #0
	adds r1, #0xe4
	str r0, [r1]
	ldrb r0, [r4, #4]
	strb r0, [r5, #9]
	ldrh r0, [r4, #0x1e]
	strh r0, [r5, #0x2a]
	ldrh r0, [r4, #0x1c]
	strh r0, [r5, #0x28]
	ldrh r1, [r4, #0x18]
	ldr r0, _02241C30 @ =0x000003C2
	strh r1, [r5, r0]
	ldrb r1, [r4, #7]
	subs r0, #0x62
	strb r1, [r5, #0x12]
	adds r1, r4, #0
	adds r1, #0x38
	str r1, [r5, r0]
	adds r0, r5, #0
	adds r0, #0xdc
	ldr r0, [r0]
	bl FUN_02025E44
	adds r1, r5, #0
	adds r1, #0xd8
	str r0, [r1]
	movs r0, #0xd9
	ldr r1, [r4, #0x30]
	lsls r0, r0, #2
	str r1, [r5, r0]
	ldr r1, [r4, #0x34]
	adds r0, r0, #4
	str r1, [r5, r0]
	movs r0, #0xff
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0xdc
	ldr r0, [r0]
	bl FUN_0203068C
	str r0, [r5, #4]
	movs r0, #0xd7
	ldr r1, [r4, #8]
	lsls r0, r0, #2
	str r1, [r5, r0]
	ldr r1, [r4, #0xc]
	adds r0, #0x28
	str r1, [r5, #0x1c]
	ldr r1, [r4, #0x10]
	str r1, [r5, #0x20]
	ldr r1, [r4, #0x14]
	adds r4, #0x42
	str r1, [r5, #0x24]
	str r0, [r5, #0x18]
	ldrb r0, [r4]
	strb r0, [r5, #0xc]
	movs r2, #0
	movs r1, #0x20
_02241BC2:
	adds r0, r5, r2
	adds r0, #0x44
	adds r2, r2, #1
	strb r1, [r0]
	cmp r2, #0x20
	blt _02241BC2
	adds r0, r5, #0
	movs r1, #4
	adds r0, #0x2c
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x2d
	strb r1, [r0]
	adds r0, r5, #0
	movs r1, #0x10
	adds r0, #0x2e
	strb r1, [r0]
	movs r0, #0xf
	movs r1, #0
	lsls r0, r0, #6
	strb r1, [r5, r0]
	adds r0, r5, #0
	bl ov108_02242B1C
	ldr r1, [r5, #0x24]
	strh r0, [r1]
	bl FUN_0201D2E8
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1c
	subs r1, r1, r2
	movs r0, #0x1c
	rors r1, r0
	adds r0, r2, r1
	strh r0, [r5, #0x16]
	adds r0, r5, #0
	bl ov108_0224237C
	ldrb r0, [r5, #9]
	bl FUN_0223C000
	cmp r0, #1
	bne _02241C1E
	adds r0, r5, #0
	bl FUN_0209BA80
_02241C1E:
	movs r1, #0
	ldr r0, _02241C34 @ =0x022437A0
	str r1, [r6]
	strb r1, [r0]
	strb r1, [r0, #1]
	movs r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_02241C2C: .4byte 0x00000068
_02241C30: .4byte 0x000003C2
_02241C34: .4byte 0x022437A0
	thumb_func_end ov108_02241AE0

	thumb_func_start ov108_02241C38
ov108_02241C38: @ 0x02241C38
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldrb r1, [r4, #0xe]
	cmp r1, #0xff
	beq _02241C6A
	ldr r1, [r5]
	cmp r1, #1
	bne _02241C6A
	bl ov108_02243008
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	ldrb r1, [r4, #0xe]
	bl ov108_02242A04
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	bl ov108_0224295C
_02241C6A:
	ldr r0, [r5]
	cmp r0, #4
	bhi _02241D1C
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02241C7C: @ jump table
	.2byte _02241C86 - _02241C7C - 2 @ case 0
	.2byte _02241C9C - _02241C7C - 2 @ case 1
	.2byte _02241CE2 - _02241C7C - 2 @ case 2
	.2byte _02241CF8 - _02241C7C - 2 @ case 3
	.2byte _02241D0E - _02241C7C - 2 @ case 4
_02241C86:
	adds r0, r4, #0
	bl ov108_02241DB0
	cmp r0, #1
	bne _02241D1C
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl ov108_0224295C
	b _02241D1C
_02241C9C:
	adds r0, r4, #0
	bl ov108_02241F28
	cmp r0, #1
	bne _02241D1C
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, #1
	bne _02241CC0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	bl ov108_0224295C
	b _02241D1C
_02241CC0:
	ldrb r0, [r4, #9]
	bl FUN_0223C000
	cmp r0, #1
	bne _02241CD6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #3
	bl ov108_0224295C
	b _02241D1C
_02241CD6:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #4
	bl ov108_0224295C
	b _02241D1C
_02241CE2:
	adds r0, r4, #0
	bl ov108_02242104
	cmp r0, #1
	bne _02241D1C
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #3
	bl ov108_0224295C
	b _02241D1C
_02241CF8:
	adds r0, r4, #0
	bl ov108_02242198
	cmp r0, #1
	bne _02241D1C
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #4
	bl ov108_0224295C
	b _02241D1C
_02241D0E:
	adds r0, r4, #0
	bl ov108_022421F0
	cmp r0, #1
	bne _02241D1C
	movs r0, #1
	pop {r3, r4, r5, pc}
_02241D1C:
	ldrb r3, [r4, #0x13]
	adds r1, r4, #0
	movs r2, #0xfe
	adds r0, r3, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x19
	adds r3, r3, #1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r3, r3, #0x19
	bics r0, r2
	lsrs r3, r3, #0x18
	orrs r0, r3
	strb r0, [r4, #0x13]
	ldrb r0, [r4, #0x13]
	adds r1, #0x13
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	cmp r0, #4
	blo _02241D64
	ldrb r0, [r1]
	bics r0, r2
	strb r0, [r1]
	ldrb r3, [r1]
	movs r2, #1
	adds r0, r3, #0
	bics r0, r2
	lsls r2, r3, #0x1f
	lsrs r2, r2, #0x1f
	movs r3, #1
	eors r2, r3
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ands r2, r3
	orrs r0, r2
	strb r0, [r1]
_02241D64:
	adds r4, #0xe8
	ldr r0, [r4]
	bl FUN_020219F8
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov108_02241C38

	thumb_func_start ov108_02241D70
ov108_02241D70: @ 0x02241D70
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	movs r0, #0x36
	lsls r0, r0, #4
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, r0]
	strh r1, [r0]
	bl FUN_0201DC3C
	adds r0, r4, #0
	bl ov108_02242238
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r0, #0x67
	bl FUN_0201807C
	ldr r0, _02241DAC @ =0x00000068
	bl FUN_02006514
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_02241DAC: .4byte 0x00000068
	thumb_func_end ov108_02241D70

	thumb_func_start ov108_02241DB0
ov108_02241DB0: @ 0x02241DB0
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #9
	bhi _02241E14
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02241DC8: @ jump table
	.2byte _02241DDC - _02241DC8 - 2 @ case 0
	.2byte _02241E00 - _02241DC8 - 2 @ case 1
	.2byte _02241E2A - _02241DC8 - 2 @ case 2
	.2byte _02241E36 - _02241DC8 - 2 @ case 3
	.2byte _02241E42 - _02241DC8 - 2 @ case 4
	.2byte _02241E4E - _02241DC8 - 2 @ case 5
	.2byte _02241E72 - _02241DC8 - 2 @ case 6
	.2byte _02241E9A - _02241DC8 - 2 @ case 7
	.2byte _02241EDA - _02241DC8 - 2 @ case 8
	.2byte _02241F14 - _02241DC8 - 2 @ case 9
_02241DDC:
	ldrb r0, [r4, #9]
	bl FUN_0223C000
	cmp r0, #1
	bne _02241DF8
	bl FUN_020365F4
	movs r0, #0xc7
	bl FUN_020364F0
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241DF8:
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241E00:
	ldrb r0, [r4, #9]
	bl FUN_0223C000
	cmp r0, #1
	bne _02241E22
	movs r0, #0xc7
	bl FUN_02036540
	cmp r0, #1
	beq _02241E16
_02241E14:
	b _02241F22
_02241E16:
	bl FUN_020365F4
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241E22:
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241E2A:
	bl ov108_02242BF0
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241E36:
	bl ov108_02242D5C
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241E42:
	bl ov108_02242E10
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241E4E:
	ldrb r0, [r4, #9]
	bl FUN_0223C000
	cmp r0, #1
	bne _02241E6A
	bl FUN_020365F4
	movs r0, #0xc9
	bl FUN_020364F0
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241E6A:
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241E72:
	ldrb r0, [r4, #9]
	bl FUN_0223C000
	cmp r0, #1
	bne _02241E92
	movs r0, #0xc9
	bl FUN_02036540
	cmp r0, #1
	bne _02241F22
	bl FUN_020365F4
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241E92:
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241E9A:
	ldrb r0, [r4, #9]
	bl FUN_0223C000
	cmp r0, #1
	bne _02241EBA
	adds r0, r4, #0
	movs r1, #0x1e
	movs r2, #0
	bl ov108_02242A38
	cmp r0, #1
	bne _02241F22
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241EBA:
	movs r0, #6
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x67
	str r0, [sp, #8]
	movs r0, #0
	movs r1, #1
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241EDA:
	ldrb r0, [r4, #9]
	bl FUN_0223C000
	cmp r0, #1
	bne _02241F0C
	ldrb r0, [r4, #0xf]
	cmp r0, #2
	blo _02241F22
	movs r0, #0
	strb r0, [r4, #0xf]
	movs r1, #6
	str r1, [sp]
	movs r1, #3
	str r1, [sp, #4]
	movs r1, #0x67
	str r1, [sp, #8]
	movs r1, #1
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241F0C:
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241F22
_02241F14:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _02241F22
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, pc}
_02241F22:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov108_02241DB0

	thumb_func_start ov108_02241F28
ov108_02241F28: @ 0x02241F28
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #8
	bhi _02241FC6
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02241F3E: @ jump table
	.2byte _02241F50 - _02241F3E - 2 @ case 0
	.2byte _02241F64 - _02241F3E - 2 @ case 1
	.2byte _02241F7A - _02241F3E - 2 @ case 2
	.2byte _02241FBA - _02241F3E - 2 @ case 3
	.2byte _02241FF4 - _02241F3E - 2 @ case 4
	.2byte _0224202C - _02241F3E - 2 @ case 5
	.2byte _0224207C - _02241F3E - 2 @ case 6
	.2byte _022420D2 - _02241F3E - 2 @ case 7
	.2byte _022420E2 - _02241F3E - 2 @ case 8
_02241F50:
	movs r1, #0
	strb r1, [r4, #0xb]
	ldrh r1, [r4, #0x16]
	strb r1, [r4, #0xd]
	ldrb r1, [r4, #0xd]
	bl ov108_022429C8
	movs r0, #1
	strb r0, [r4, #8]
	b _022420F2
_02241F64:
	ldrb r0, [r4, #0xb]
	adds r0, r0, #1
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xb]
	cmp r0, #0xa
	blo _02241FC6
	movs r0, #0
	strb r0, [r4, #0xb]
	movs r0, #2
	strb r0, [r4, #8]
	b _022420F2
_02241F7A:
	movs r7, #0xb6
	movs r6, #0
	adds r5, r4, #0
	lsls r7, r7, #2
_02241F82:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02241F9A
	movs r1, #0x20
	bl ov108_022435F4
	movs r0, #0xb6
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl ov108_022435A8
_02241F9A:
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, #0x10
	blt _02241F82
	adds r0, r4, #0
	movs r1, #3
	bl ov108_02242884
	ldr r0, _022420F8 @ =0x00000609
	bl FUN_02005748
	movs r0, #0x18
	strb r0, [r4, #0xb]
	movs r0, #3
	strb r0, [r4, #8]
	b _022420F2
_02241FBA:
	ldrb r0, [r4, #0xb]
	subs r0, r0, #1
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _02241FC8
_02241FC6:
	b _022420F2
_02241FC8:
	movs r7, #0xb6
	movs r6, #0
	adds r5, r4, #0
	lsls r7, r7, #2
_02241FD0:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02241FDC
	movs r1, #0x21
	bl ov108_022435F4
_02241FDC:
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, #0x10
	blt _02241FD0
	ldr r0, _022420F8 @ =0x00000609
	bl FUN_02005748
	movs r0, #0x18
	strb r0, [r4, #0xb]
	movs r0, #4
	strb r0, [r4, #8]
	b _022420F2
_02241FF4:
	ldrb r0, [r4, #0xb]
	subs r0, r0, #1
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _022420F2
	movs r7, #0xb6
	movs r6, #0
	adds r5, r4, #0
	lsls r7, r7, #2
_02242008:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02242014
	movs r1, #0x22
	bl ov108_022435F4
_02242014:
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, #0x10
	blt _02242008
	ldr r0, _022420F8 @ =0x00000609
	bl FUN_02005748
	movs r0, #0x18
	strb r0, [r4, #0xb]
	movs r0, #5
	strb r0, [r4, #8]
	b _022420F2
_0224202C:
	ldrb r0, [r4, #0xb]
	subs r0, r0, #1
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _022420F2
	movs r7, #0xb6
	movs r5, #0
	adds r6, r4, #0
	lsls r7, r7, #2
_02242040:
	ldr r0, [r6, r7]
	cmp r0, #0
	beq _02242050
	adds r1, r4, r5
	adds r1, #0x34
	ldrb r1, [r1]
	bl ov108_022435F4
_02242050:
	adds r5, r5, #1
	adds r6, r6, #4
	cmp r5, #0x10
	blt _02242040
	movs r0, #0xb5
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov108_022435A8
	ldr r0, _022420FC @ =0x00000624
	bl FUN_02005748
	movs r0, #0xd6
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov108_022435F4
	movs r0, #6
	strb r0, [r4, #8]
	b _022420F2
_0224207C:
	ldr r1, _02242100 @ =0x021BF67C
	ldr r1, [r1, #0x48]
	bl ov108_02242964
	bl FUN_0203608C
	cmp r0, #0
	bne _02242096
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ble _02242096
	subs r0, r0, #1
	str r0, [r4, #0x18]
_02242096:
	adds r0, r4, #0
	bl ov108_02242FE8
	cmp r0, #1
	beq _022420A6
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _022420F2
_022420A6:
	adds r0, r4, #0
	bl ov108_022429FC
	ldrb r0, [r4, #9]
	bl FUN_0223C000
	cmp r0, #0
	bne _022420BC
	movs r0, #7
	strb r0, [r4, #8]
	b _022420F2
_022420BC:
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r1, [r0]
	movs r0, #0xfe
	adds r4, #0x2f
	bics r1, r0
	movs r0, #2
	orrs r0, r1
	strb r0, [r4]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022420D2:
	ldrb r1, [r4, #0xd]
	bl ov108_02242BA0
	movs r0, #0x1e
	strb r0, [r4, #0xb]
	movs r0, #8
	strb r0, [r4, #8]
	b _022420F2
_022420E2:
	ldrb r0, [r4, #0xb]
	subs r0, r0, #1
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _022420F2
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022420F2:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022420F8: .4byte 0x00000609
_022420FC: .4byte 0x00000624
_02242100: .4byte 0x021BF67C
	thumb_func_end ov108_02241F28

	thumb_func_start ov108_02242104
ov108_02242104: @ 0x02242104
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #4
	bhi _02242194
	adds r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0224211A: @ jump table
	.2byte _02242124 - _0224211A - 2 @ case 0
	.2byte _02242148 - _0224211A - 2 @ case 1
	.2byte _0224214E - _0224211A - 2 @ case 2
	.2byte _02242166 - _0224211A - 2 @ case 3
	.2byte _02242178 - _0224211A - 2 @ case 4
_02242124:
	ldrb r2, [r4, #0x14]
	movs r1, #0x1f
	bl ov108_02242A38
	cmp r0, #1
	bne _02242194
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r1, [r0]
	movs r0, #0xfe
	bics r1, r0
	adds r0, r4, #0
	adds r0, #0x2f
	strb r1, [r0]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02242194
_02242148:
	adds r0, r1, #1
	strb r0, [r4, #8]
	b _02242194
_0224214E:
	ldrb r1, [r4, #0xe]
	cmp r1, #0xff
	beq _02242194
	movs r1, #0
	strb r1, [r4, #0xf]
	ldrb r1, [r4, #0xe]
	bl ov108_02242BA0
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02242194
_02242166:
	bl FUN_020365F4
	movs r0, #0x97
	bl FUN_020364F0
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02242194
_02242178:
	movs r0, #0x97
	bl FUN_02036540
	cmp r0, #1
	bne _02242194
	bl FUN_020365F4
	movs r0, #0x67
	bl FUN_020363E8
	movs r0, #0xff
	strb r0, [r4, #0xe]
	movs r0, #1
	pop {r4, pc}
_02242194:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov108_02242104

	thumb_func_start ov108_02242198
ov108_02242198: @ 0x02242198
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _022421AC
	cmp r0, #1
	beq _022421B8
	cmp r0, #2
	beq _022421DA
	b _022421EC
_022421AC:
	movs r0, #0xf
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _022421EC
_022421B8:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _022421C2
	subs r0, r0, #1
	strb r0, [r4, #0xb]
_022421C2:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _022421EC
	bl FUN_020365F4
	movs r0, #0x98
	bl FUN_020364F0
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _022421EC
_022421DA:
	movs r0, #0x98
	bl FUN_02036540
	cmp r0, #1
	bne _022421EC
	bl FUN_020365F4
	movs r0, #1
	pop {r4, pc}
_022421EC:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov108_02242198

	thumb_func_start ov108_022421F0
ov108_022421F0: @ 0x022421F0
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _02242202
	cmp r0, #1
	beq _02242222
	b _02242230
_02242202:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x67
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02242230
_02242222:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _02242230
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, pc}
_02242230:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov108_022421F0

	thumb_func_start ov108_02242238
ov108_02242238: @ 0x02242238
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0xb5
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0224224A
	bl ov108_02243594
_0224224A:
	movs r0, #0xd6
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _02242258
	bl ov108_02243594
_02242258:
	movs r7, #0xb6
	movs r4, #0
	adds r5, r6, #0
	lsls r7, r7, #2
_02242260:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0224226A
	bl ov108_02243594
_0224226A:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0x10
	blt _02242260
	ldrb r0, [r6, #9]
	movs r1, #1
	bl FUN_0223BD70
	adds r7, r0, #0
	movs r5, #0
	cmp r7, #0
	ble _022422C4
	adds r4, r6, #0
_02242284:
	movs r0, #0xc6
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02242292
	bl ov108_02243594
_02242292:
	movs r0, #0xca
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022422A0
	bl ov108_02243594
_022422A0:
	movs r0, #0xce
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022422AE
	bl ov108_02243594
_022422AE:
	movs r0, #0xd2
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022422BC
	bl ov108_02243594
_022422BC:
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, r7
	blt _02242284
_022422C4:
	bl FUN_02039794
	adds r0, r6, #0
	adds r0, #0xd4
	ldr r0, [r0]
	movs r1, #2
	bl FUN_02002FA0
	adds r0, r6, #0
	adds r0, #0xd4
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02002FA0
	adds r0, r6, #0
	adds r0, #0xd4
	ldr r0, [r0]
	bl FUN_02002F54
	adds r0, r6, #0
	movs r1, #0
	adds r0, #0xd4
	str r1, [r0]
	adds r0, r6, #0
	adds r0, #0xe8
	bl ov108_02243194
	ldr r0, [r6, #0x68]
	bl FUN_0200B190
	ldr r0, [r6, #0x6c]
	bl FUN_0200B3F0
	ldr r0, [r6, #0x70]
	bl FUN_020237BC
	ldr r0, [r6, #0x74]
	bl FUN_020237BC
	movs r5, #0
	adds r4, r6, #0
_02242316:
	ldr r0, [r4, #0x78]
	bl FUN_020237BC
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #2
	blt _02242316
	adds r0, r6, #0
	adds r0, #0x94
	bl ov108_02243660
	adds r0, r6, #0
	adds r0, #0x90
	ldr r0, [r0]
	bl ov108_022426D4
	movs r0, #0xdb
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_02006CA8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov108_02242238

	thumb_func_start ov108_02242344
ov108_02242344: @ 0x02242344
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
	ldr r0, _02242374 @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _02242378 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	pop {r3, pc}
	.align 2, 0
_02242374: .4byte 0xFFFFE0FF
_02242378: .4byte 0x04001000
	thumb_func_end ov108_02242344

	thumb_func_start ov108_0224237C
ov108_0224237C: @ 0x0224237C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0x18]
	movs r0, #0x96
	movs r1, #0x67
	bl FUN_02006C24
	movs r2, #0xdb
	ldr r1, [sp, #0x18]
	lsls r2, r2, #2
	str r0, [r1, r2]
	adds r0, r1, #0
	bl ov108_02242658
	ldr r0, [sp, #0x18]
	bl ov108_022426B0
	movs r2, #0x86
	movs r0, #1
	movs r1, #0x1a
	lsls r2, r2, #2
	movs r3, #0x67
	bl FUN_0200B144
	ldr r1, [sp, #0x18]
	str r0, [r1, #0x68]
	movs r0, #0x67
	bl FUN_0200B358
	ldr r1, [sp, #0x18]
	str r0, [r1, #0x6c]
	movs r0, #0x96
	lsls r0, r0, #2
	movs r1, #0x67
	bl FUN_02023790
	ldr r1, [sp, #0x18]
	str r0, [r1, #0x70]
	movs r0, #0x96
	lsls r0, r0, #2
	movs r1, #0x67
	bl FUN_02023790
	ldr r1, [sp, #0x18]
	movs r4, #0
	str r0, [r1, #0x74]
	adds r5, r1, #0
	movs r6, #0x20
	movs r7, #0x67
_022423DE:
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_02023790
	str r0, [r5, #0x78]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _022423DE
	movs r1, #0x1a
	movs r0, #0
	lsls r1, r1, #4
	movs r2, #0x67
	bl FUN_02002E7C
	movs r1, #6
	movs r0, #0
	lsls r1, r1, #6
	movs r2, #0x67
	bl FUN_02002E98
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	adds r0, #0x90
	ldr r0, [r0]
	adds r1, #0x94
	bl ov108_02243630
	movs r0, #0x23
	str r0, [sp]
	movs r0, #0x44
	str r0, [sp, #4]
	movs r0, #0x24
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x14]
	movs r1, #1
	adds r0, #0xe8
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov108_0224351C
	movs r2, #0xb5
	ldr r1, [sp, #0x18]
	lsls r2, r2, #2
	str r0, [r1, r2]
	adds r0, r1, #0
	ldr r0, [r0, r2]
	movs r1, #0
	bl ov108_022435A8
	ldr r4, [sp, #0x18]
	movs r5, #0
	adds r6, r4, #0
	movs r7, #0x20
	adds r6, #0xe8
_02242456:
	lsrs r2, r5, #0x1f
	lsls r1, r5, #0x1e
	subs r1, r1, r2
	movs r0, #0x1e
	rors r1, r0
	adds r1, r2, r1
	movs r0, #0x28
	muls r0, r1, r0
	adds r0, #0x44
	lsls r0, r0, #0x10
	str r7, [sp]
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	asrs r0, r5, #1
	lsrs r0, r0, #0x1e
	adds r0, r5, r0
	asrs r1, r0, #2
	movs r0, #0x28
	muls r0, r1, r0
	movs r1, #1
	adds r0, #0x24
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
	adds r0, r6, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov108_0224351C
	movs r1, #0xb6
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r1, #0
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov108_022435A8
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #0x10
	blt _02242456
	ldr r0, [sp, #0x18]
	movs r1, #1
	ldrb r0, [r0, #9]
	bl FUN_0223BD70
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #9]
	bl FUN_0223C000
	cmp r0, #0
	bne _022424D4
	movs r0, #0x32
	movs r7, #0x2e
	str r0, [sp, #0x20]
	b _022424DA
_022424D4:
	movs r0, #0x1a
	movs r7, #0x16
	str r0, [sp, #0x20]
_022424DA:
	ldr r0, [sp, #0x1c]
	movs r5, #0
	cmp r0, #0
	bgt _022424E4
	b _022425FE
_022424E4:
	ldr r4, [sp, #0x18]
	adds r6, r4, #0
	adds r6, #0xe8
_022424EA:
	movs r0, #0
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
	adds r0, r6, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov108_0224351C
	movs r1, #0xce
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r1, #2
	movs r0, #0
	str r0, [sp]
	movs r0, #0xf6
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	adds r2, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
	adds r0, r6, #0
	adds r3, r1, #0
	bl ov108_0224351C
	movs r1, #0xd2
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #1
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	movs r0, #0
	movs r2, #3
	str r0, [sp, #0x14]
	adds r0, r6, #0
	adds r1, r5, #3
	adds r3, r2, #0
	bl ov108_0224351C
	movs r1, #0xc6
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #1
	str r0, [sp]
	movs r0, #0xee
	str r0, [sp, #4]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	movs r0, #0
	movs r2, #3
	str r0, [sp, #0x14]
	adds r0, r6, #0
	adds r1, r5, #7
	adds r3, r2, #0
	bl ov108_0224351C
	movs r1, #0xca
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0xd9
	ldr r1, [sp, #0x18]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	adds r1, r5, #0
	bl FUN_0207A0FC
	adds r1, r0, #0
	movs r0, #0xc6
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov108_02243610
	movs r0, #0xda
	ldr r1, [sp, #0x18]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	adds r1, r5, #0
	bl FUN_0207A0FC
	adds r1, r0, #0
	movs r0, #0xca
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov108_02243610
	movs r0, #0xc6
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov108_02243624
	movs r0, #0xca
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov108_02243624
	ldr r0, [sp, #0x20]
	adds r5, r5, #1
	adds r0, #0x28
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	adds r4, r4, #4
	adds r7, #0x28
	cmp r5, r0
	bge _022425FE
	b _022424EA
_022425FE:
	ldr r0, [sp, #0x18]
	bl ov108_02242F38
	movs r1, #0
	movs r0, #2
	str r0, [sp]
	movs r0, #0x80
	str r0, [sp, #4]
	movs r0, #0x60
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	adds r2, r1, #0
	adds r0, #0xe8
	adds r3, r1, #0
	bl ov108_0224351C
	movs r2, #0xd6
	ldr r1, [sp, #0x18]
	lsls r2, r2, #2
	str r0, [r1, r2]
	bl FUN_02035E38
	cmp r0, #0
	beq _02242648
	movs r0, #1
	movs r1, #0x10
	bl FUN_0200966C
	movs r0, #1
	bl FUN_02009704
	bl FUN_02039734
_02242648:
	ldr r0, _02242654 @ =ov108_02242708
	ldr r1, [sp, #0x18]
	bl FUN_02017798
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02242654: .4byte ov108_02242708
	thumb_func_end ov108_0224237C

	thumb_func_start ov108_02242658
ov108_02242658: @ 0x02242658
	push {r4, lr}
	adds r4, r0, #0
	bl ov108_02242740
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	bl ov108_02242760
	movs r0, #0x67
	bl FUN_02002F38
	adds r1, r4, #0
	adds r1, #0xd4
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xd4
	movs r1, #2
	ldr r0, [r0]
	lsls r2, r1, #8
	movs r3, #0x67
	bl FUN_02002F70
	adds r0, r4, #0
	adds r0, #0xd4
	movs r2, #2
	ldr r0, [r0]
	movs r1, #0
	lsls r2, r2, #8
	movs r3, #0x67
	bl FUN_02002F70
	adds r0, r4, #0
	movs r1, #3
	bl ov108_02242828
	bl ov108_022428C0
	adds r0, r4, #0
	movs r1, #4
	bl ov108_022428F4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov108_02242658

	thumb_func_start ov108_022426B0
ov108_022426B0: @ 0x022426B0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #9]
	bl FUN_0223C000
	adds r3, r0, #0
	movs r2, #0xd9
	lsls r2, r2, #2
	ldr r1, [r4, r2]
	adds r2, r2, #4
	adds r0, r4, #0
	lsls r3, r3, #0x18
	ldr r2, [r4, r2]
	adds r0, #0xe8
	lsrs r3, r3, #0x18
	bl ov108_02243030
	pop {r4, pc}
	thumb_func_end ov108_022426B0

	thumb_func_start ov108_022426D4
ov108_022426D4: @ 0x022426D4
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
	movs r1, #1
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #4
	bl FUN_02019044
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov108_022426D4

	thumb_func_start ov108_02242708
ov108_02242708: @ 0x02242708
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xd4
	ldr r0, [r0]
	cmp r0, #0
	beq _02242718
	bl FUN_02003694
_02242718:
	adds r4, #0x90
	ldr r0, [r4]
	bl FUN_0201C2B8
	bl FUN_0201DCAC
	bl FUN_0200A858
	ldr r3, _02242738 @ =0x027E0000
	ldr r1, _0224273C @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_02242738: .4byte 0x027E0000
_0224273C: .4byte 0x00003FF8
	thumb_func_end ov108_02242708

	thumb_func_start ov108_02242740
ov108_02242740: @ 0x02242740
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0224275C @ =0x02243738
	add r3, sp, #0
	movs r2, #5
_0224274A:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0224274A
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_0224275C: .4byte 0x02243738
	thumb_func_end ov108_02242740

	thumb_func_start ov108_02242760
ov108_02242760: @ 0x02242760
	push {r4, r5, lr}
	sub sp, #0x64
	ldr r5, _02242814 @ =0x022436A0
	add r3, sp, #0x54
	adds r4, r0, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _02242818 @ =0x022436E0
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
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	movs r0, #1
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x67
	bl FUN_02019690
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019EBC
	ldr r5, _0224281C @ =0x022436FC
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
	ldr r5, _02242820 @ =0x022436C4
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
	ldr r1, _02242824 @ =0x04000008
	movs r0, #3
	ldrh r2, [r1]
	bics r2, r0
	strh r2, [r1]
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	add sp, #0x64
	pop {r4, r5, pc}
	.align 2, 0
_02242814: .4byte 0x022436A0
_02242818: .4byte 0x022436E0
_0224281C: .4byte 0x022436FC
_02242820: .4byte 0x022436C4
_02242824: .4byte 0x04000008
	thumb_func_end ov108_02242760

	thumb_func_start ov108_02242828
ov108_02242828: @ 0x02242828
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r4, r1, #0
	movs r0, #0x67
	str r0, [sp, #0xc]
	movs r0, #0xdb
	adds r2, r5, #0
	lsls r0, r0, #2
	adds r2, #0x90
	ldr r0, [r5, r0]
	ldr r2, [r2]
	movs r1, #0x78
	adds r3, r4, #0
	bl FUN_020070E8
	ldrb r0, [r5, #9]
	bl FUN_0223C000
	cmp r0, #0
	bne _02242860
	movs r1, #0x74
	b _02242862
_02242860:
	movs r1, #0x76
_02242862:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x67
	str r0, [sp, #0xc]
	movs r0, #0xdb
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r5, #0x90
	ldr r2, [r5]
	adds r3, r4, #0
	bl FUN_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov108_02242828

	thumb_func_start ov108_02242884
ov108_02242884: @ 0x02242884
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldrb r0, [r5, #9]
	adds r4, r1, #0
	bl FUN_0223C000
	cmp r0, #0
	bne _0224289A
	movs r1, #0x75
	b _0224289C
_0224289A:
	movs r1, #0x77
_0224289C:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x67
	str r0, [sp, #0xc]
	movs r0, #0xdb
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r5, #0x90
	ldr r2, [r5]
	adds r3, r4, #0
	bl FUN_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov108_02242884

	thumb_func_start ov108_022428C0
ov108_022428C0: @ 0x022428C0
	push {r3, r4, lr}
	sub sp, #4
	movs r0, #0x96
	movs r1, #0xa7
	add r2, sp, #0
	movs r3, #0x67
	bl FUN_02006F88
	adds r4, r0, #0
	ldr r0, [sp]
	movs r1, #0xe0
	ldr r0, [r0, #0xc]
	blx FUN_020C2C54
	ldr r0, [sp]
	movs r1, #0
	ldr r0, [r0, #0xc]
	movs r2, #0xe0
	blx FUN_020C00B4
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov108_022428C0

	thumb_func_start ov108_022428F4
ov108_022428F4: @ 0x022428F4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r4, r1, #0
	movs r0, #0x67
	str r0, [sp, #0xc]
	movs r0, #0xdb
	adds r2, r5, #0
	lsls r0, r0, #2
	adds r2, #0x90
	ldr r0, [r5, r0]
	ldr r2, [r2]
	movs r1, #0x7a
	adds r3, r4, #0
	bl FUN_020070E8
	movs r0, #0x40
	str r0, [sp]
	movs r0, #0x67
	str r0, [sp, #4]
	movs r0, #0xdb
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0xa8
	movs r2, #4
	movs r3, #0
	bl FUN_02007130
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x67
	str r0, [sp, #0xc]
	movs r0, #0xdb
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r5, #0x90
	ldr r2, [r5]
	movs r1, #0x79
	adds r3, r4, #0
	bl FUN_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov108_022428F4

	thumb_func_start ov108_0224295C
ov108_0224295C: @ 0x0224295C
	movs r3, #0
	strb r3, [r0, #8]
	str r2, [r1]
	bx lr
	thumb_func_end ov108_0224295C

	thumb_func_start ov108_02242964
ov108_02242964: @ 0x02242964
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldrb r1, [r0]
	ldrb r0, [r4, #0x10]
	lsls r1, r1, #1
	adds r0, r0, #1
	strb r0, [r4, #0x10]
	ldr r0, _022429C0 @ =0x0224368F
	ldrb r2, [r4, #0x10]
	ldrb r0, [r0, r1]
	cmp r2, r0
	blo _022429BE
	movs r0, #0
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _0224299A
	bl FUN_0201D2E8
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1c
	subs r1, r1, r2
	movs r0, #0x1c
	rors r1, r0
	adds r0, r2, r1
	b _0224299E
_0224299A:
	ldrb r0, [r4, #0xd]
	adds r0, r0, #1
_0224299E:
	strb r0, [r4, #0xd]
	ldr r0, _022429C4 @ =0x000005E5
	bl FUN_02005748
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r1, [r4, #0xd]
	ldrb r0, [r0]
	cmp r1, r0
	blo _022429B6
	movs r0, #0
	strb r0, [r4, #0xd]
_022429B6:
	ldrb r1, [r4, #0xd]
	adds r0, r4, #0
	bl ov108_022429C8
_022429BE:
	pop {r4, pc}
	.align 2, 0
_022429C0: .4byte 0x0224368F
_022429C4: .4byte 0x000005E5
	thumb_func_end ov108_02242964

	thumb_func_start ov108_022429C8
ov108_022429C8: @ 0x022429C8
	push {r4, lr}
	adds r2, r1, #0
	movs r1, #0xb5
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	lsrs r4, r2, #0x1f
	lsls r3, r2, #0x1e
	subs r3, r3, r4
	movs r1, #0x1e
	rors r3, r1
	adds r1, r4, r3
	movs r3, #0x28
	adds r4, r1, #0
	muls r4, r3, r4
	lsrs r2, r2, #2
	muls r3, r2, r3
	adds r4, #0x44
	adds r3, #0x24
	lsls r1, r4, #0x10
	lsls r2, r3, #0x10
	lsrs r1, r1, #0x10
	lsrs r2, r2, #0x10
	bl ov108_022435B4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov108_022429C8

	thumb_func_start ov108_022429FC
ov108_022429FC: @ 0x022429FC
	ldrb r1, [r0, #0xd]
	strb r1, [r0, #0x14]
	bx lr
	.align 2, 0
	thumb_func_end ov108_022429FC

	thumb_func_start ov108_02242A04
ov108_02242A04: @ 0x02242A04
	cmp r1, r0
	blo _02242A0E
	subs r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_02242A0E:
	adds r0, r1, #0
	bx lr
	.align 2, 0
	thumb_func_end ov108_02242A04

	thumb_func_start ov108_02242A14
ov108_02242A14: @ 0x02242A14
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #9]
	ldrh r4, [r5, #0x28]
	bl FUN_0223C000
	cmp r0, #1
	bne _02242A30
	ldr r0, _02242A34 @ =0x000003C2
	ldrh r1, [r5, r0]
	ldrh r0, [r5, #0x28]
	cmp r1, r0
	bls _02242A30
	adds r4, r1, #0
_02242A30:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02242A34: .4byte 0x000003C2
	thumb_func_end ov108_02242A14

	thumb_func_start ov108_02242A38
ov108_02242A38: @ 0x02242A38
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	cmp r1, #0x1e
	beq _02242A4A
	cmp r1, #0x1f
	beq _02242A52
	cmp r1, #0x20
	beq _02242A5A
	b _02242A60
_02242A4A:
	movs r5, #0x47
	bl ov108_02242A7C
	b _02242A60
_02242A52:
	movs r5, #0x48
	bl ov108_02242AE8
	b _02242A60
_02242A5A:
	movs r5, #0x49
	bl ov108_02242B74
_02242A60:
	movs r1, #0x37
	lsls r1, r1, #4
	adds r0, r5, #0
	adds r1, r4, r1
	movs r2, #0x28
	bl FUN_020359DC
	cmp r0, #1
	bne _02242A76
	movs r0, #1
	pop {r3, r4, r5, pc}
_02242A76:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov108_02242A38

	thumb_func_start ov108_02242A7C
ov108_02242A7C: @ 0x02242A7C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xdc
	ldr r0, [r0]
	adds r4, r1, #0
	bl FUN_02025E38
	movs r0, #0x37
	lsls r0, r0, #4
	strh r4, [r5, r0]
	movs r2, #0
	adds r3, r5, #0
	adds r1, r0, #4
_02242A96:
	adds r0, r5, r2
	adds r0, #0x34
	ldrb r0, [r0]
	adds r2, r2, #1
	strh r0, [r3, r1]
	adds r3, r3, #2
	cmp r2, #0x10
	blt _02242A96
	ldrh r1, [r5, #0x16]
	movs r0, #0xe5
	lsls r0, r0, #2
	strh r1, [r5, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov108_02242A7C

	thumb_func_start ov108_02242AB0
ov108_02242AB0: @ 0x02242AB0
	push {r4, r5, r6, lr}
	adds r4, r3, #0
	adds r6, r0, #0
	ldrb r0, [r4, #0xf]
	adds r5, r2, #0
	adds r0, r0, #1
	strb r0, [r4, #0xf]
	bl FUN_0203608C
	cmp r6, r0
	beq _02242AE6
	bl FUN_0203608C
	cmp r0, #0
	beq _02242AE6
	movs r2, #0
	adds r3, r5, #0
_02242AD2:
	ldrh r1, [r3, #4]
	adds r0, r4, r2
	adds r0, #0x34
	adds r2, r2, #1
	adds r3, r3, #2
	strb r1, [r0]
	cmp r2, #0x10
	blt _02242AD2
	ldrh r0, [r5, #0x24]
	strh r0, [r4, #0x16]
_02242AE6:
	pop {r4, r5, r6, pc}
	thumb_func_end ov108_02242AB0

	thumb_func_start ov108_02242AE8
ov108_02242AE8: @ 0x02242AE8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x37
	lsls r0, r0, #4
	strh r1, [r5, r0]
	adds r4, r2, #0
	adds r0, r0, #2
	strh r4, [r5, r0]
	bl FUN_0203608C
	cmp r0, #0
	bne _02242B08
	ldrb r0, [r5, #0xe]
	cmp r0, #0xff
	bne _02242B08
	strb r4, [r5, #0xe]
_02242B08:
	ldrb r1, [r5, #0xe]
	movs r0, #0xdd
	lsls r0, r0, #2
	strh r1, [r5, r0]
	ldr r1, [r5, #0x24]
	adds r0, r0, #2
	ldrh r1, [r1]
	strh r1, [r5, r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov108_02242AE8

	thumb_func_start ov108_02242B1C
ov108_02242B1C: @ 0x02242B1C
	ldr r3, _02242B20 @ =FUN_0201D2E8
	bx r3
	.align 2, 0
_02242B20: .4byte FUN_0201D2E8
	thumb_func_end ov108_02242B1C

	thumb_func_start ov108_02242B24
ov108_02242B24: @ 0x02242B24
	push {r4, r5, r6, lr}
	adds r4, r3, #0
	adds r6, r0, #0
	ldrb r0, [r4, #0xf]
	adds r5, r2, #0
	adds r0, r0, #1
	strb r0, [r4, #0xf]
	bl FUN_0203608C
	cmp r6, r0
	beq _02242B6E
	ldrh r1, [r5, #2]
	ldr r0, _02242B70 @ =0x000003C1
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r0, #0
	bne _02242B64
	ldrb r0, [r4, #0xe]
	cmp r0, #0xff
	ldr r0, _02242B70 @ =0x000003C1
	beq _02242B56
	movs r1, #0
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02242B56:
	ldrb r1, [r4, r0]
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r4, #0xe]
	pop {r4, r5, r6, pc}
_02242B64:
	ldrh r0, [r5, #4]
	strb r0, [r4, #0xe]
	ldrh r1, [r5, #6]
	ldr r0, [r4, #0x24]
	strh r1, [r0]
_02242B6E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02242B70: .4byte 0x000003C1
	thumb_func_end ov108_02242B24

	thumb_func_start ov108_02242B74
ov108_02242B74: @ 0x02242B74
	movs r2, #0x37
	lsls r2, r2, #4
	strh r1, [r0, r2]
	ldrb r3, [r0, #0xd]
	adds r1, r2, #2
	strh r3, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end ov108_02242B74

	thumb_func_start ov108_02242B84
ov108_02242B84: @ 0x02242B84
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	adds r6, r3, #0
	bl FUN_0203608C
	cmp r5, r0
	beq _02242B9C
	ldrh r1, [r4, #2]
	movs r0, #0xf
	lsls r0, r0, #6
	strb r1, [r6, r0]
_02242B9C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov108_02242B84

	thumb_func_start ov108_02242BA0
ov108_02242BA0: @ 0x02242BA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	adds r0, #0x2e
	ldrb r0, [r0]
	bl ov108_02242A04
	ldr r1, [sp]
	str r0, [sp, #4]
	adds r0, r1, r0
	adds r0, #0x34
	ldrb r6, [r0]
	adds r0, r1, #0
	ldr r0, [r0, #0x20]
	movs r7, #0xb6
	strb r6, [r0]
	movs r4, #0
	adds r5, r1, #0
	lsls r7, r7, #2
_02242BC6:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02242BD2
	adds r1, r6, #0
	bl ov108_022435F4
_02242BD2:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0x10
	blt _02242BC6
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ov108_022429C8
	ldr r0, _02242BEC @ =0x000005E3
	bl FUN_02005748
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02242BEC: .4byte 0x000005E3
	thumb_func_end ov108_02242BA0

	thumb_func_start ov108_02242BF0
ov108_02242BF0: @ 0x02242BF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	str r0, [sp, #4]
	adds r0, #0x64
	ldr r5, _02242D50 @ =0x02243718
	movs r7, #0
	str r0, [sp, #4]
_02242C00:
	ldrh r0, [r6, #0x2a]
	cmp r0, #5
	bhi _02242C4E
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02242C12: @ jump table
	.2byte _02242C1E - _02242C12 - 2 @ case 0
	.2byte _02242C26 - _02242C12 - 2 @ case 1
	.2byte _02242C2E - _02242C12 - 2 @ case 2
	.2byte _02242C36 - _02242C12 - 2 @ case 3
	.2byte _02242C3E - _02242C12 - 2 @ case 4
	.2byte _02242C46 - _02242C12 - 2 @ case 5
_02242C1E:
	ldrb r0, [r5]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	b _02242C54
_02242C26:
	ldrb r0, [r5]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	b _02242C54
_02242C2E:
	ldrb r0, [r5]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	b _02242C54
_02242C36:
	ldrb r0, [r5]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	b _02242C54
_02242C3E:
	ldrb r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	b _02242C54
_02242C46:
	ldrb r0, [r5]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	b _02242C54
_02242C4E:
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
_02242C54:
	cmp r0, #1
	bne _02242D42
	adds r0, r7, #0
	subs r0, #0x18
	movs r4, #0xff
	cmp r0, #7
	bhi _02242C98
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02242C6E: @ jump table
	.2byte _02242C82 - _02242C6E - 2 @ case 0
	.2byte _02242C86 - _02242C6E - 2 @ case 1
	.2byte _02242C8A - _02242C6E - 2 @ case 2
	.2byte _02242C7E - _02242C6E - 2 @ case 3
	.2byte _02242C8E - _02242C6E - 2 @ case 4
	.2byte _02242C92 - _02242C6E - 2 @ case 5
	.2byte _02242C98 - _02242C6E - 2 @ case 6
	.2byte _02242C96 - _02242C6E - 2 @ case 7
_02242C7E:
	movs r4, #0
	b _02242C98
_02242C82:
	movs r4, #1
	b _02242C98
_02242C86:
	movs r4, #2
	b _02242C98
_02242C8A:
	movs r4, #3
	b _02242C98
_02242C8E:
	movs r4, #4
	b _02242C98
_02242C92:
	movs r4, #5
	b _02242C98
_02242C96:
	movs r4, #6
_02242C98:
	adds r0, r6, #0
	bl ov108_02242A14
	movs r1, #7
	str r0, [sp]
	blx FUN_020E1F6C
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
	ldr r1, [sp]
	ldr r0, _02242D54 @ =0x0000270F
	cmp r1, r0
	blo _02242CB4
	movs r2, #6
_02242CB4:
	cmp r4, #0xff
	beq _02242D26
	cmp r2, #7
	bhi _02242D1E
	adds r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02242CC8: @ jump table
	.2byte _02242CD8 - _02242CC8 - 2 @ case 0
	.2byte _02242CE2 - _02242CC8 - 2 @ case 1
	.2byte _02242CEC - _02242CC8 - 2 @ case 2
	.2byte _02242CF6 - _02242CC8 - 2 @ case 3
	.2byte _02242D00 - _02242CC8 - 2 @ case 4
	.2byte _02242D0A - _02242CC8 - 2 @ case 5
	.2byte _02242D14 - _02242CC8 - 2 @ case 6
	.2byte _02242D14 - _02242CC8 - 2 @ case 7
_02242CD8:
	ldr r0, _02242D58 @ =0x02243680
	ldrb r0, [r0, r4]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	b _02242D28
_02242CE2:
	ldr r0, _02242D58 @ =0x02243680
	ldrb r0, [r0, r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	b _02242D28
_02242CEC:
	ldr r0, _02242D58 @ =0x02243680
	ldrb r0, [r0, r4]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	b _02242D28
_02242CF6:
	ldr r0, _02242D58 @ =0x02243680
	ldrb r0, [r0, r4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	b _02242D28
_02242D00:
	ldr r0, _02242D58 @ =0x02243680
	ldrb r0, [r0, r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	b _02242D28
_02242D0A:
	ldr r0, _02242D58 @ =0x02243680
	ldrb r0, [r0, r4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	b _02242D28
_02242D14:
	ldr r0, _02242D58 @ =0x02243680
	ldrb r0, [r0, r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	b _02242D28
_02242D1E:
	bl FUN_02022974
	movs r0, #1
	b _02242D28
_02242D26:
	movs r0, #1
_02242D28:
	cmp r0, #1
	bne _02242D42
	adds r0, r6, #0
	adds r0, #0x64
	ldrb r0, [r0]
	adds r0, r6, r0
	adds r0, #0x44
	strb r7, [r0]
	ldr r0, [sp, #4]
	ldrb r0, [r0]
	adds r1, r0, #1
	ldr r0, [sp, #4]
	strb r1, [r0]
_02242D42:
	adds r7, r7, #1
	adds r5, r5, #1
	cmp r7, #0x20
	bhs _02242D4C
	b _02242C00
_02242D4C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02242D50: .4byte 0x02243718
_02242D54: .4byte 0x0000270F
_02242D58: .4byte 0x02243680
	thumb_func_end ov108_02242BF0

	thumb_func_start ov108_02242D5C
ov108_02242D5C: @ 0x02242D5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrb r3, [r5, #0x12]
	ldr r2, _02242E0C @ =0x0224367C
	movs r1, #0
_02242D68:
	ldrb r0, [r2]
	cmp r3, r0
	bhs _02242D76
	adds r1, r1, #1
	adds r2, r2, #1
	cmp r1, #4
	blo _02242D68
_02242D76:
	adds r0, r5, #0
	strb r1, [r5, #0x11]
	adds r0, #0x64
	ldrb r0, [r0]
	movs r4, #0
	cmp r0, #0
	ble _02242E06
	adds r0, r5, #0
	str r0, [sp, #4]
	adds r0, #0x33
	str r0, [sp, #4]
	adds r0, r5, #0
	str r0, [sp]
	adds r0, #0x32
	adds r7, r5, #0
	adds r6, r5, #0
	str r0, [sp]
	adds r7, #0x31
	adds r6, #0x30
_02242D9C:
	adds r0, r5, r4
	adds r0, #0x44
	ldrb r0, [r0]
	bl FUN_0223C148
	cmp r0, #0
	bne _02242DB2
	ldrb r0, [r6]
	adds r0, r0, #1
	strb r0, [r6]
	b _02242DFA
_02242DB2:
	adds r0, r5, r4
	adds r0, #0x44
	ldrb r0, [r0]
	bl FUN_0223C148
	cmp r0, #1
	bne _02242DC8
	ldrb r0, [r7]
	adds r0, r0, #1
	strb r0, [r7]
	b _02242DFA
_02242DC8:
	adds r0, r5, r4
	adds r0, #0x44
	ldrb r0, [r0]
	bl FUN_0223C148
	cmp r0, #2
	bne _02242DE2
	ldr r0, [sp]
	ldrb r0, [r0]
	adds r1, r0, #1
	ldr r0, [sp]
	strb r1, [r0]
	b _02242DFA
_02242DE2:
	adds r0, r5, r4
	adds r0, #0x44
	ldrb r0, [r0]
	bl FUN_0223C148
	cmp r0, #3
	bne _02242DFA
	ldr r0, [sp, #4]
	ldrb r0, [r0]
	adds r1, r0, #1
	ldr r0, [sp, #4]
	strb r1, [r0]
_02242DFA:
	adds r0, r5, #0
	adds r0, #0x64
	ldrb r0, [r0]
	adds r4, r4, #1
	cmp r4, r0
	blt _02242D9C
_02242E06:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242E0C: .4byte 0x0224367C
	thumb_func_end ov108_02242D5C

	thumb_func_start ov108_02242E10
ov108_02242E10: @ 0x02242E10
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp, #4]
_02242E1A:
	ldrb r1, [r6, #0x11]
	adds r0, r6, #0
	bl ov108_02242EF4
	adds r5, r0, #0
	adds r0, r6, r5
	adds r0, #0x30
	movs r4, #0
	ldrb r7, [r0]
	cmp r5, #0
	beq _02242E70
	cmp r5, #1
	bne _02242E3E
	adds r0, r6, #0
	adds r0, #0x30
	ldrb r0, [r0]
	adds r4, r4, r0
	b _02242E70
_02242E3E:
	cmp r5, #2
	bne _02242E54
	adds r0, r6, #0
	adds r0, #0x30
	ldrb r0, [r0]
	adds r1, r4, r0
	adds r0, r6, #0
	adds r0, #0x31
	ldrb r0, [r0]
	adds r4, r1, r0
	b _02242E70
_02242E54:
	cmp r5, #3
	bne _02242E70
	adds r0, r6, #0
	adds r0, #0x30
	ldrb r0, [r0]
	adds r1, r4, r0
	adds r0, r6, #0
	adds r0, #0x31
	ldrb r0, [r0]
	adds r1, r1, r0
	adds r0, r6, #0
	adds r0, #0x32
	ldrb r0, [r0]
	adds r4, r1, r0
_02242E70:
	bl FUN_0201D2E8
	adds r1, r7, #0
	blx FUN_020E1F6C
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r7, #0
_02242E8C:
	cmp r7, #0x32
	blt _02242EA0
	bl FUN_02022974
	ldr r0, [sp, #4]
	movs r1, #0
	adds r0, r6, r0
	adds r0, #0x34
	strb r1, [r0]
	b _02242EE6
_02242EA0:
	adds r0, r6, r4
	adds r0, #0x44
	ldrb r0, [r0]
	bl FUN_0223C148
	cmp r5, r0
	bne _02242EBE
	adds r0, r6, r4
	adds r0, #0x44
	ldrb r1, [r0]
	ldr r0, [sp, #4]
	adds r0, r6, r0
	adds r0, #0x34
	strb r1, [r0]
	b _02242EE6
_02242EBE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r6, #0
	adds r0, #0x64
	ldrb r0, [r0]
	adds r7, r7, #1
	cmp r4, r0
	blo _02242ED2
	movs r4, #0
_02242ED2:
	ldr r0, [sp]
	cmp r4, r0
	bne _02242E8C
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	blo _02242E8C
	movs r5, #0
	b _02242E8C
_02242EE6:
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0x10
	blt _02242E1A
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov108_02242E10

	thumb_func_start ov108_02242EF4
ov108_02242EF4: @ 0x02242EF4
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	movs r5, #0
	bl FUN_0201D2E8
	movs r1, #0x64
	blx FUN_020E1F6C
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
	ldr r3, _02242F34 @ =0x022436B0
	lsls r1, r4, #2
	adds r0, r5, #0
	adds r1, r3, r1
_02242F10:
	ldrb r3, [r1, r0]
	adds r3, r5, r3
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	cmp r2, r5
	blt _02242F26
	adds r0, r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	blo _02242F10
_02242F26:
	cmp r0, #4
	blo _02242F30
	bl FUN_02022974
	movs r0, #0
_02242F30:
	pop {r3, r4, r5, pc}
	nop
_02242F34: .4byte 0x022436B0
	thumb_func_end ov108_02242EF4

	thumb_func_start ov108_02242F38
ov108_02242F38: @ 0x02242F38
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #9]
	movs r1, #1
	bl FUN_0223BD70
	adds r6, r0, #0
	ldrb r0, [r5, #9]
	movs r1, #1
	bl FUN_0223BDA4
	adds r7, r0, #0
	movs r4, #0
	cmp r6, #0
	bls _02242F9A
_02242F56:
	movs r0, #0xd9
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl FUN_0207A0FC
	movs r1, #6
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	bne _02242F80
	lsls r0, r4, #2
	adds r1, r5, r0
	movs r0, #0xce
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #0
	bl ov108_022435A8
	b _02242F90
_02242F80:
	lsls r0, r4, #2
	adds r1, r5, r0
	movs r0, #0xce
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #1
	bl ov108_022435A8
_02242F90:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r6
	blo _02242F56
_02242F9A:
	movs r4, #0
	cmp r7, #0
	bls _02242FE4
	movs r6, #0xda
	lsls r6, r6, #2
_02242FA4:
	ldr r0, [r5, r6]
	adds r1, r4, #0
	bl FUN_0207A0FC
	movs r1, #6
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	bne _02242FCA
	lsls r0, r4, #2
	adds r1, r5, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #0
	bl ov108_022435A8
	b _02242FDA
_02242FCA:
	lsls r0, r4, #2
	adds r1, r5, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #1
	bl ov108_022435A8
_02242FDA:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r7
	blo _02242FA4
_02242FE4:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov108_02242F38

	thumb_func_start ov108_02242FE8
ov108_02242FE8: @ 0x02242FE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02243004 @ =0x02243687
	bl FUN_020226DC
	cmp r0, #0
	bne _02243000
	adds r0, r4, #0
	bl ov108_02243008
	movs r0, #1
	pop {r4, pc}
_02243000:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_02243004: .4byte 0x02243687
	thumb_func_end ov108_02242FE8

	thumb_func_start ov108_02243008
ov108_02243008: @ 0x02243008
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02243028 @ =0x000005DC
	movs r1, #0
	bl FUN_020057A4
	ldr r0, _0224302C @ =0x000005E4
	bl FUN_02005748
	movs r0, #0xd6
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov108_022435F4
	pop {r4, pc}
	.align 2, 0
_02243028: .4byte 0x000005DC
_0224302C: .4byte 0x000005E4
	thumb_func_end ov108_02243008

	thumb_func_start ov108_02243030
ov108_02243030: @ 0x02243030
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	str r1, [sp, #0x14]
	movs r0, #0x20
	movs r1, #0x67
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	bl FUN_0201DBEC
	bl ov108_022431FC
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x20
	str r3, [sp, #0xc]
	movs r2, #0x67
	str r2, [sp, #0x10]
	adds r2, r0, #0
	bl FUN_0200A784
	movs r0, #0x22
	adds r1, r5, #4
	movs r2, #0x67
	bl FUN_020095C4
	ldr r4, _022430EC @ =0x02243760
	str r0, [r5]
	movs r7, #0
	adds r6, r5, #0
_02243076:
	ldrb r0, [r4]
	adds r1, r7, #0
	movs r2, #0x67
	bl FUN_02009714
	movs r1, #0x4b
	lsls r1, r1, #2
	str r0, [r6, r1]
	adds r7, r7, #1
	adds r4, r4, #1
	adds r6, r6, #4
	cmp r7, #4
	blt _02243076
	adds r0, r5, #0
	bl ov108_02243490
	adds r0, r5, #0
	bl ov108_02243230
	adds r0, r5, #0
	bl ov108_022432B4
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	adds r0, r5, #0
	bl ov108_02243360
	movs r7, #0x4f
	movs r6, #0
	adds r4, r5, #0
	lsls r7, r7, #2
_022430B6:
	ldr r0, [r4, r7]
	bl FUN_0200A328
	adds r6, r6, #1
	adds r4, #0x10
	cmp r6, #0xb
	blt _022430B6
	movs r6, #5
	movs r4, #0
	lsls r6, r6, #6
_022430CA:
	ldr r0, [r5, r6]
	bl FUN_0200A5C8
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #4
	blt _022430CA
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022430EC: .4byte 0x02243760
	thumb_func_end ov108_02243030

	thumb_func_start ov108_022430F0
ov108_022430F0: @ 0x022430F0
	push {r4, r5, r6, lr}
	sub sp, #0x80
	adds r4, r0, #0
	movs r0, #0
	str r3, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r5, #0
	ldr r0, [sp, #0x98]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r6, [r4, r0]
	str r6, [sp, #0x14]
	adds r6, r0, #4
	ldr r6, [r4, r6]
	str r6, [sp, #0x18]
	adds r6, r0, #0
	adds r6, #8
	ldr r6, [r4, r6]
	adds r0, #0xc
	str r6, [sp, #0x1c]
	ldr r0, [r4, r0]
	str r0, [sp, #0x20]
	str r5, [sp, #0x24]
	str r5, [sp, #0x28]
	add r0, sp, #0x5c
	bl FUN_020093B4
	ldr r0, [r4]
	movs r1, #1
	lsls r1, r1, #0xc
	str r0, [sp, #0x2c]
	add r0, sp, #0x5c
	str r0, [sp, #0x30]
	adds r0, r5, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	add r1, sp, #0x2c
	strh r0, [r1, #0x20]
	ldr r1, [sp, #0x94]
	str r1, [sp, #0x50]
	movs r1, #0x67
	str r1, [sp, #0x58]
	add r1, sp, #0x80
	ldrb r1, [r1, #0x1c]
	cmp r1, #0
	bne _02243162
	movs r0, #1
	str r0, [sp, #0x54]
	b _0224316E
_02243162:
	movs r1, #2
	str r1, [sp, #0x54]
	movs r1, #3
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r0, [sp, #0x38]
_0224316E:
	add r0, sp, #0x2c
	bl FUN_02021AA0
	movs r1, #1
	adds r4, r0, #0
	bl FUN_02021CC8
	movs r1, #1
	adds r0, r4, #0
	lsls r1, r1, #0xc
	bl FUN_02021CE4
	ldr r1, [sp, #0x90]
	adds r0, r4, #0
	bl FUN_02021D6C
	adds r0, r4, #0
	add sp, #0x80
	pop {r4, r5, r6, pc}
	thumb_func_end ov108_022430F0

	thumb_func_start ov108_02243194
ov108_02243194: @ 0x02243194
	push {r4, r5, r6, lr}
	movs r6, #0x4f
	adds r5, r0, #0
	movs r4, #0
	lsls r6, r6, #2
_0224319E:
	lsls r0, r4, #4
	adds r0, r5, r0
	ldr r0, [r0, r6]
	bl FUN_0200A4E4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xb
	blo _0224319E
	movs r6, #5
	movs r4, #0
	lsls r6, r6, #6
_022431B8:
	lsls r0, r4, #4
	adds r0, r5, r0
	ldr r0, [r0, r6]
	bl FUN_0200A6DC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	blo _022431B8
	movs r6, #0x4b
	movs r4, #0
	lsls r6, r6, #2
_022431D2:
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, r6]
	bl FUN_02009754
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	blo _022431D2
	ldr r0, [r5]
	bl FUN_02021964
	bl FUN_0200A878
	bl FUN_0201E958
	bl FUN_0201F8B4
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov108_02243194

	thumb_func_start ov108_022431FC
ov108_022431FC: @ 0x022431FC
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _0224322C @ =0x02243764
	add r3, sp, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	movs r1, #0x10
	adds r0, r2, #0
	adds r2, r1, #0
	bl FUN_0201E88C
	movs r0, #0xe
	movs r1, #0x67
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_0224322C: .4byte 0x02243764
	thumb_func_end ov108_022431FC

	thumb_func_start ov108_02243230
ov108_02243230: @ 0x02243230
	push {r4, lr}
	sub sp, #0x10
	movs r3, #1
	str r3, [sp]
	adds r4, r0, #0
	str r3, [sp, #4]
	movs r0, #0x67
	str r0, [sp, #8]
	adds r0, #0xc5
	ldr r0, [r4, r0]
	movs r1, #0x97
	movs r2, #0x12
	bl FUN_0200985C
	movs r1, #0x53
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	movs r0, #0x67
	str r0, [sp, #0xc]
	adds r0, #0xc9
	ldr r0, [r4, r0]
	movs r1, #0x97
	movs r2, #0x28
	movs r3, #0
	bl FUN_020098B8
	movs r1, #0x15
	lsls r1, r1, #4
	str r0, [r4, r1]
	movs r3, #1
	str r3, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x67
	str r0, [sp, #8]
	adds r0, #0xcd
	ldr r0, [r4, r0]
	movs r1, #0x97
	movs r2, #0x14
	bl FUN_02009918
	movs r1, #0x55
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r3, #1
	str r3, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x67
	str r0, [sp, #8]
	adds r0, #0xd1
	ldr r0, [r4, r0]
	movs r1, #0x97
	movs r2, #0x13
	bl FUN_02009918
	movs r1, #0x56
	lsls r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov108_02243230

	thumb_func_start ov108_022432B4
ov108_022432B4: @ 0x022432B4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x14
	movs r1, #0x67
	bl FUN_02006C24
	adds r4, r0, #0
	bl FUN_02081930
	adds r2, r0, #0
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x67
	str r0, [sp, #8]
	adds r0, #0xc5
	ldr r0, [r5, r0]
	adds r1, r4, #0
	movs r3, #0
	bl FUN_02009A4C
	movs r1, #0x57
	lsls r1, r1, #2
	str r0, [r5, r1]
	bl FUN_02081934
	adds r2, r0, #0
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	movs r0, #0x67
	str r0, [sp, #0xc]
	adds r0, #0xc9
	ldr r0, [r5, r0]
	movs r1, #0x14
	movs r3, #0
	bl FUN_020098B8
	movs r1, #0x16
	lsls r1, r1, #4
	str r0, [r5, r1]
	bl FUN_02081938
	adds r2, r0, #0
	movs r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x67
	str r0, [sp, #8]
	adds r0, #0xcd
	ldr r0, [r5, r0]
	adds r1, r4, #0
	movs r3, #0
	bl FUN_02009BC4
	movs r1, #0x59
	lsls r1, r1, #2
	str r0, [r5, r1]
	bl FUN_0208193C
	adds r2, r0, #0
	movs r0, #2
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x67
	str r0, [sp, #8]
	adds r0, #0xd1
	ldr r0, [r5, r0]
	adds r1, r4, #0
	movs r3, #0
	bl FUN_02009BC4
	movs r1, #0x5a
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r4, #0
	bl FUN_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov108_022432B4

	thumb_func_start ov108_02243360
ov108_02243360: @ 0x02243360
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0x13
	movs r1, #0x67
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl FUN_02006C24
	str r0, [sp, #0x18]
	bl FUN_02079FD0
	movs r1, #3
	adds r2, r0, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0x67
	str r0, [sp, #0xc]
	adds r0, #0xc9
	ldr r0, [r6, r0]
	movs r1, #0x13
	movs r3, #0
	bl FUN_020098B8
	movs r1, #0x17
	lsls r1, r1, #4
	str r0, [r6, r1]
	bl FUN_02079FD8
	adds r2, r0, #0
	movs r0, #3
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x67
	str r0, [sp, #8]
	adds r0, #0xcd
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x18]
	movs r3, #0
	bl FUN_02009BC4
	movs r1, #0x5d
	lsls r1, r1, #2
	str r0, [r6, r1]
	bl FUN_02079FE4
	adds r2, r0, #0
	movs r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x67
	str r0, [sp, #8]
	adds r0, #0xd1
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x18]
	movs r3, #0
	bl FUN_02009BC4
	movs r1, #0x5e
	lsls r1, r1, #2
	str r0, [r6, r1]
	movs r4, #0
	adds r5, r6, #0
_022433E6:
	cmp r4, #3
	bne _0224341C
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _02243406
	adds r0, r7, #0
	movs r1, #0
	bl FUN_0207A0FC
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	movs r1, #0
	bl FUN_0207A0FC
	str r0, [sp, #0x1c]
	b _02243430
_02243406:
	adds r0, r7, #0
	adds r1, r4, #0
	bl FUN_0207A0FC
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	adds r1, r4, #0
	bl FUN_0207A0FC
	str r0, [sp, #0x1c]
	b _02243430
_0224341C:
	adds r0, r7, #0
	adds r1, r4, #0
	bl FUN_0207A0FC
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	adds r1, r4, #0
	bl FUN_0207A0FC
	str r0, [sp, #0x1c]
_02243430:
	ldr r0, [sp, #0x20]
	bl FUN_02079D80
	adds r2, r0, #0
	adds r0, r4, #3
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x67
	str r0, [sp, #8]
	adds r0, #0xc5
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x18]
	movs r3, #0
	bl FUN_02009A4C
	movs r1, #0x5b
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp, #0x1c]
	bl FUN_02079D80
	adds r2, r0, #0
	adds r0, r4, #7
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x67
	str r0, [sp, #8]
	adds r0, #0xc5
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x18]
	movs r3, #0
	bl FUN_02009A4C
	movs r1, #0x6b
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #4
	blo _022433E6
	ldr r0, [sp, #0x18]
	bl FUN_02006CA8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov108_02243360

	thumb_func_start ov108_02243490
ov108_02243490: @ 0x02243490
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x67
	str r0, [sp, #8]
	adds r0, #0xc5
	ldr r0, [r4, r0]
	movs r1, #0x97
	movs r2, #0x15
	movs r3, #1
	bl FUN_0200985C
	movs r1, #0x4f
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r3, #0
	str r3, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x67
	str r0, [sp, #0xc]
	adds r0, #0xc9
	ldr r0, [r4, r0]
	movs r1, #0x97
	movs r2, #0x29
	bl FUN_020098B8
	movs r1, #5
	lsls r1, r1, #6
	str r0, [r4, r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x67
	str r0, [sp, #8]
	adds r0, #0xcd
	ldr r0, [r4, r0]
	movs r1, #0x97
	movs r2, #0x17
	movs r3, #1
	bl FUN_02009918
	movs r1, #0x51
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x67
	str r0, [sp, #8]
	adds r0, #0xd1
	ldr r0, [r4, r0]
	movs r1, #0x97
	movs r2, #0x16
	movs r3, #1
	bl FUN_02009918
	movs r1, #0x52
	lsls r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov108_02243490

	thumb_func_start ov108_0224351C
ov108_0224351C: @ 0x0224351C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0x67
	movs r1, #0x14
	adds r7, r2, #0
	str r3, [sp, #0x10]
	bl FUN_02018144
	adds r4, r0, #0
	adds r2, r4, #0
	movs r1, #0x14
	movs r0, #0
_02243538:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _02243538
	ldr r0, [sp, #0x38]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	ldr r0, [sp, #0x44]
	adds r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x48]
	adds r2, r7, #0
	str r0, [sp, #8]
	add r0, sp, #0x4c
	ldrb r0, [r0]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	bl ov108_022430F0
	str r0, [r4, #0x10]
	add r0, sp, #0x28
	ldrh r3, [r0, #0x14]
	strh r3, [r4, #0xc]
	ldrh r1, [r0, #0x18]
	add r0, sp, #0x4c
	ldrb r2, [r0]
	strh r1, [r4, #0xe]
	lsls r0, r3, #0xc
	strb r2, [r4, #0xb]
	lsls r1, r1, #0xc
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	cmp r2, #1
	bne _02243584
	movs r0, #3
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #0x18]
_02243584:
	ldr r0, [r4, #0x10]
	add r1, sp, #0x14
	bl FUN_02021C50
	adds r0, r4, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov108_0224351C

	thumb_func_start ov108_02243594
ov108_02243594: @ 0x02243594
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	bl FUN_02021BD4
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov108_02243594

	thumb_func_start ov108_022435A8
ov108_022435A8: @ 0x022435A8
	ldr r3, _022435B0 @ =FUN_02021CAC
	ldr r0, [r0, #0x10]
	bx r3
	nop
_022435B0: .4byte FUN_02021CAC
	thumb_func_end ov108_022435A8

	thumb_func_start ov108_022435B4
ov108_022435B4: @ 0x022435B4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_02021D28
	adds r3, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0
	stm r2!, {r0, r1}
	ldr r0, [r3]
	lsls r1, r6, #0xc
	str r0, [r2]
	lsls r0, r4, #0xc
	str r1, [sp, #4]
	str r0, [sp]
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	bne _022435E6
	movs r0, #3
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #4]
_022435E6:
	ldr r0, [r5, #0x10]
	add r1, sp, #0
	bl FUN_02021C50
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov108_022435B4

	thumb_func_start ov108_022435F4
ov108_022435F4: @ 0x022435F4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r1, #1
	ldr r0, [r5, #0x10]
	lsls r1, r1, #0xc
	bl FUN_02021CE4
	ldr r0, [r5, #0x10]
	adds r1, r4, #0
	bl FUN_02021DCC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov108_022435F4

	thumb_func_start ov108_02243610
ov108_02243610: @ 0x02243610
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_02079FC4
	adds r1, r0, #0
	ldr r0, [r4, #0x10]
	bl FUN_02021F24
	pop {r4, pc}
	thumb_func_end ov108_02243610

	thumb_func_start ov108_02243624
ov108_02243624: @ 0x02243624
	ldr r3, _0224362C @ =FUN_02021CC8
	ldr r0, [r0, #0x10]
	bx r3
	nop
_0224362C: .4byte FUN_02021CC8
	thumb_func_end ov108_02243624

	thumb_func_start ov108_02243630
ov108_02243630: @ 0x02243630
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	movs r4, #0
_02243638:
	ldr r2, _0224365C @ =0x02243774
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
	cmp r4, #2
	blo _02243638
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224365C: .4byte 0x02243774
	thumb_func_end ov108_02243630

	thumb_func_start ov108_02243660
ov108_02243660: @ 0x02243660
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_02243666:
	lsls r0, r4, #4
	adds r0, r5, r0
	bl FUN_0201A8FC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	blo _02243666
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov108_02243660
	@ 0x0224367C
