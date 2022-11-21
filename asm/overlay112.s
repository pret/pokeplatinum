
	thumb_func_start ov112_0225C700
ov112_0225C700: @ 0x0225C700
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl FUN_02006840
	movs r2, #5
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0x6b
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	movs r1, #0x27
	adds r0, r4, #0
	lsls r1, r1, #4
	movs r2, #0x6b
	bl FUN_0200681C
	movs r2, #0x27
	movs r1, #0
	lsls r2, r2, #4
	adds r4, r0, #0
	blx FUN_020D5124
	ldr r0, [r5]
	movs r1, #0x6b
	str r0, [r4]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #8
	bl ov112_0225C9BC
	movs r0, #0x53
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r0, r4, r0
	adds r1, #8
	movs r2, #0x6b
	bl ov112_0225CC64
	ldr r0, [r4, #4]
	adds r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #8]
	movs r2, #0x6b
	str r0, [sp, #4]
	str r2, [sp, #8]
	adds r0, r2, #0
	adds r0, #0xe9
	adds r2, #0xe1
	ldr r3, [r4]
	adds r0, r4, r0
	adds r1, #8
	adds r2, r4, r2
	bl ov112_0225CDA8
	ldr r0, [r5, #8]
	adds r1, r4, #0
	str r0, [sp]
	movs r2, #0x6b
	str r2, [sp, #4]
	adds r0, r2, #0
	adds r0, #0xf5
	adds r2, #0xe1
	ldr r3, [r4]
	adds r0, r4, r0
	adds r1, #8
	adds r2, r4, r2
	bl ov112_0225CFC0
	movs r0, #0x59
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r0, r4, r0
	adds r1, #8
	movs r2, #0x6b
	bl ov112_0225D1EC
	movs r0, #2
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r0, r4, r0
	adds r1, #8
	movs r2, #0x6b
	bl ov112_0225D57C
	ldr r0, _0225C7C0 @ =ov112_0225C964
	adds r1, r4, #0
	bl FUN_02017798
	bl FUN_020177A4
	movs r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0225C7C0: .4byte ov112_0225C964
	thumb_func_end ov112_0225C700

	thumb_func_start ov112_0225C7C4
ov112_0225C7C4: @ 0x0225C7C4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r0, r6, #0
	bl FUN_02006840
	adds r6, r0, #0
	ldr r0, [r5]
	cmp r0, #4
	bls _0225C7E2
	b _0225C8EA
_0225C7E2:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225C7EE: @ jump table
	.2byte _0225C7F8 - _0225C7EE - 2 @ case 0
	.2byte _0225C81E - _0225C7EE - 2 @ case 1
	.2byte _0225C82E - _0225C7EE - 2 @ case 2
	.2byte _0225C8BC - _0225C7EE - 2 @ case 3
	.2byte _0225C8DC - _0225C7EE - 2 @ case 4
_0225C7F8:
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x6b
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r6, #8]
	movs r1, #1
	bl FUN_0222E31C
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0225C8EA
_0225C81E:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0225C8EA
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0225C8EA
_0225C82E:
	ldr r0, _0225C8F8 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #2
	tst r0, r1
	bne _0225C84A
	ldr r0, [r6, #8]
	bl FUN_0222E12C
	cmp r0, #1
	beq _0225C84A
	bl FUN_02231760
	cmp r0, #1
	bne _0225C860
_0225C84A:
	ldr r0, [r6, #8]
	bl FUN_0222E12C
	cmp r0, #1
	bne _0225C85A
	ldr r0, [r6, #8]
	bl FUN_0222E2A4
_0225C85A:
	movs r0, #3
	str r0, [r5]
	b _0225C8EA
_0225C860:
	movs r0, #0x55
	lsls r0, r0, #2
	ldr r1, [r4]
	ldr r2, [r4, #4]
	adds r0, r4, r0
	bl ov112_0225CDFC
	cmp r0, #1
	bne _0225C87E
	movs r0, #2
	lsls r0, r0, #8
	adds r0, r4, r0
	movs r1, #1
	bl ov112_0225D718
_0225C87E:
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r1, [r4]
	adds r0, r4, r0
	bl ov112_0225CFD8
	cmp r0, #1
	bne _0225C89A
	movs r0, #2
	lsls r0, r0, #8
	adds r0, r4, r0
	movs r1, #2
	bl ov112_0225D718
_0225C89A:
	movs r0, #0x59
	lsls r0, r0, #2
	ldr r1, [r4]
	ldr r2, [r6, #8]
	adds r0, r4, r0
	movs r3, #0x6b
	bl ov112_0225D304
	cmp r0, #1
	bne _0225C8EA
	movs r0, #2
	lsls r0, r0, #8
	adds r0, r4, r0
	movs r1, #3
	bl ov112_0225D718
	b _0225C8EA
_0225C8BC:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x6b
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0225C8EA
_0225C8DC:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0225C8EA
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_0225C8EA:
	ldr r1, [r6, #8]
	adds r0, r4, #0
	bl ov112_0225C970
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0225C8F8: .4byte 0x021BF67C
	thumb_func_end ov112_0225C7C4

	thumb_func_start ov112_0225C8FC
ov112_0225C8FC: @ 0x0225C8FC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02006840
	movs r0, #2
	lsls r0, r0, #8
	adds r0, r4, r0
	bl ov112_0225D6DC
	movs r0, #0x55
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov112_0225CDF8
	movs r0, #0x16
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov112_0225CFD4
	movs r0, #0x59
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov112_0225D2D0
	movs r0, #0x53
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov112_0225CC84
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	adds r4, #8
	adds r0, r4, #0
	bl ov112_0225C9F4
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0x6b
	bl FUN_0201807C
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov112_0225C8FC

	thumb_func_start ov112_0225C964
ov112_0225C964: @ 0x0225C964
	ldr r3, _0225C96C @ =ov112_0225CA20
	adds r0, #8
	bx r3
	nop
_0225C96C: .4byte ov112_0225CA20
	thumb_func_end ov112_0225C964

	thumb_func_start ov112_0225C970
ov112_0225C970: @ 0x0225C970
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	movs r1, #0x55
	adds r5, r0, #0
	lsls r1, r1, #2
	adds r0, r5, r1
	subs r1, #8
	adds r2, r5, #0
	adds r1, r5, r1
	adds r2, #8
	bl ov112_0225CE60
	movs r1, #0x16
	str r4, [sp]
	lsls r1, r1, #4
	adds r0, r5, r1
	subs r1, #0x14
	adds r2, r5, #0
	ldr r3, [r5]
	adds r1, r5, r1
	adds r2, #8
	bl ov112_0225D004
	movs r0, #0x59
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov112_0225D3E0
	movs r0, #2
	lsls r0, r0, #8
	adds r0, r5, r0
	bl ov112_0225D700
	adds r5, #8
	adds r0, r5, #0
	bl ov112_0225CA14
	pop {r3, r4, r5, pc}
	thumb_func_end ov112_0225C970

	thumb_func_start ov112_0225C9BC
ov112_0225C9BC: @ 0x0225C9BC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xa9
	adds r4, r1, #0
	bl FUN_02006C24
	movs r1, #5
	lsls r1, r1, #6
	str r0, [r5, r1]
	movs r0, #0x30
	adds r1, r4, #0
	bl FUN_0201DBEC
	ldr r0, _0225C9F0 @ =0x0225D858
	bl FUN_0201FE94
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov112_0225CA34
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov112_0225CB98
	pop {r3, r4, r5, pc}
	nop
_0225C9F0: .4byte 0x0225D858
	thumb_func_end ov112_0225C9BC

	thumb_func_start ov112_0225C9F4
ov112_0225C9F4: @ 0x0225C9F4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	bl FUN_02006CA8
	bl FUN_0201DC3C
	adds r0, r4, #0
	bl ov112_0225CB60
	adds r0, r4, #0
	bl ov112_0225CC38
	pop {r4, pc}
	thumb_func_end ov112_0225C9F4

	thumb_func_start ov112_0225CA14
ov112_0225CA14: @ 0x0225CA14
	ldr r3, _0225CA1C @ =FUN_020219F8
	ldr r0, [r0, #4]
	bx r3
	nop
_0225CA1C: .4byte FUN_020219F8
	thumb_func_end ov112_0225CA14

	thumb_func_start ov112_0225CA20
ov112_0225CA20: @ 0x0225CA20
	push {r3, lr}
	ldr r0, [r0]
	bl FUN_0201C2B8
	bl FUN_0200A858
	bl FUN_0201DCAC
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov112_0225CA20

	thumb_func_start ov112_0225CA34
ov112_0225CA34: @ 0x0225CA34
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, _0225CB50 @ =0x0225D834
	adds r7, r1, #0
	bl FUN_02018368
	adds r0, r7, #0
	bl FUN_02018340
	str r0, [r5]
	ldr r0, _0225CB54 @ =0x021BF6DC
	movs r1, #0
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	movs r0, #0
	ldr r6, _0225CB58 @ =0x0225D8C0
	ldr r4, _0225CB5C @ =0x0225D844
	str r0, [sp, #0x10]
_0225CA5C:
	ldr r1, [r4]
	ldr r0, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r2, r6, #0
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4]
	movs r1, #0x20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0
	adds r3, r7, #0
	bl FUN_02019690
	ldr r1, [r4]
	ldr r0, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_02019EBC
	ldr r0, [sp, #0x10]
	adds r6, #0x1c
	adds r0, r0, #1
	adds r4, r4, #4
	str r0, [sp, #0x10]
	cmp r0, #5
	blt _0225CA5C
	movs r1, #0
	str r1, [sp]
	movs r0, #5
	str r7, [sp, #4]
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02007130
	movs r1, #5
	movs r0, #0
	lsls r1, r1, #6
	adds r2, r7, #0
	bl FUN_02002E98
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #5
	str r7, [sp, #0xc]
	lsls r0, r0, #6
	movs r1, #1
	ldr r0, [r5, r0]
	ldr r2, [r5]
	adds r3, r1, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #5
	str r7, [sp, #0xc]
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5]
	movs r1, #3
	movs r3, #1
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #5
	str r7, [sp, #0xc]
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5]
	movs r1, #4
	movs r3, #2
	bl FUN_0200710C
	movs r1, #0
	str r1, [sp]
	movs r0, #5
	str r7, [sp, #4]
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	movs r2, #4
	adds r3, r1, #0
	bl FUN_02007130
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #5
	str r7, [sp, #0xc]
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5]
	movs r1, #2
	movs r3, #4
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #5
	str r7, [sp, #0xc]
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, [r5]
	movs r1, #6
	movs r3, #4
	bl FUN_0200710C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225CB50: .4byte 0x0225D834
_0225CB54: .4byte 0x021BF6DC
_0225CB58: .4byte 0x0225D8C0
_0225CB5C: .4byte 0x0225D844
	thumb_func_end ov112_0225CA34

	thumb_func_start ov112_0225CB60
ov112_0225CB60: @ 0x0225CB60
	push {r4, r5, r6, lr}
	ldr r5, _0225CB90 @ =0x0225D844
	adds r6, r0, #0
	movs r4, #0
_0225CB68:
	ldr r1, [r5]
	ldr r0, [r6]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_02019044
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #5
	blt _0225CB68
	ldr r0, [r6]
	bl FUN_020181C4
	ldr r0, _0225CB94 @ =0x021BF6DC
	movs r1, #0
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	pop {r4, r5, r6, pc}
	nop
_0225CB90: .4byte 0x0225D844
_0225CB94: .4byte 0x021BF6DC
	thumb_func_end ov112_0225CB60

	thumb_func_start ov112_0225CB98
ov112_0225CB98: @ 0x0225CB98
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
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
	ldr r0, _0225CC30 @ =0x0225D814
	ldr r1, _0225CC34 @ =0x00200010
	movs r2, #0x10
	bl FUN_0201E88C
	movs r0, #0x20
	adds r1, r6, #0
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	ldr r1, _0225CC34 @ =0x00200010
	movs r0, #1
	bl FUN_0200966C
	movs r0, #1
	bl FUN_02009704
	adds r1, r5, #0
	movs r0, #0x20
	adds r1, #8
	adds r2, r6, #0
	bl FUN_020095C4
	str r0, [r5, #4]
	adds r0, r5, #0
	movs r2, #1
	adds r0, #8
	movs r1, #0
	lsls r2, r2, #0x14
	bl FUN_0200964C
	movs r7, #0x13
	movs r4, #0
	lsls r7, r7, #4
_0225CC04:
	movs r0, #0x20
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_02009714
	str r0, [r5, r7]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _0225CC04
	bl FUN_02039734
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225CC30: .4byte 0x0225D814
_0225CC34: .4byte 0x00200010
	thumb_func_end ov112_0225CB98

	thumb_func_start ov112_0225CC38
ov112_0225CC38: @ 0x0225CC38
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	bl FUN_02021964
	movs r6, #0x13
	movs r4, #0
	lsls r6, r6, #4
_0225CC48:
	ldr r0, [r5, r6]
	bl FUN_02009754
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _0225CC48
	bl FUN_0201E958
	bl FUN_0201F8B4
	bl FUN_0200A878
	pop {r4, r5, r6, pc}
	thumb_func_end ov112_0225CC38

	thumb_func_start ov112_0225CC64
ov112_0225CC64: @ 0x0225CC64
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #5
	str r2, [sp]
	lsls r0, r0, #6
	ldr r0, [r1, r0]
	movs r1, #5
	movs r2, #0
	adds r3, r4, #4
	bl FUN_020071D0
	str r0, [r4]
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov112_0225CC64

	thumb_func_start ov112_0225CC84
ov112_0225CC84: @ 0x0225CC84
	ldr r3, _0225CC8C @ =FUN_020181C4
	ldr r0, [r0]
	bx r3
	nop
_0225CC8C: .4byte FUN_020181C4
	thumb_func_end ov112_0225CC84

	thumb_func_start ov112_0225CC90
ov112_0225CC90: @ 0x0225CC90
	push {r3, r4, lr}
	sub sp, #0x1c
	ldr r0, [r0, #4]
	adds r4, r1, #0
	movs r1, #1
	str r1, [sp]
	movs r1, #2
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xc
	str r1, [sp, #8]
	adds r1, r2, #6
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	adds r2, r3, #5
	lsls r2, r2, #0x18
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	add r3, sp, #0x18
	movs r1, #3
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldrb r3, [r3, #0x10]
	ldr r0, [r4]
	lsrs r2, r2, #0x18
	lsls r3, r3, #1
	adds r3, r3, #4
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl FUN_020198E8
	ldr r0, [r4]
	movs r1, #3
	bl FUN_0201C3C0
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ov112_0225CC90

	thumb_func_start ov112_0225CCE8
ov112_0225CCE8: @ 0x0225CCE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [sp, #0x38]
	movs r1, #3
	adds r7, r2, #0
	adds r6, r3, #0
	blx FUN_020E2178
	str r1, [sp, #0x1c]
	ldr r0, [sp, #0x38]
	movs r1, #3
	blx FUN_020E2178
	ldr r1, [sp, #0x44]
	cmp r1, #0
	beq _0225CD0E
	adds r0, r0, #2
_0225CD0E:
	ldr r1, [sp, #0x3c]
	cmp r1, #1
	bne _0225CD16
	adds r0, r0, #1
_0225CD16:
	ldr r1, [r4, #4]
	lsls r2, r6, #1
	adds r6, r2, #4
	movs r2, #2
	str r2, [sp]
	str r2, [sp, #4]
	adds r2, r1, #0
	adds r2, #0xc
	str r2, [sp, #8]
	ldr r2, [sp, #0x1c]
	lsls r0, r0, #0x19
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x18
	str r2, [sp, #0xc]
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	ldrh r0, [r1]
	lsls r4, r7, #1
	adds r4, #0x15
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	ldrh r0, [r1, #2]
	lsls r2, r4, #0x18
	lsls r3, r6, #0x18
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5]
	movs r1, #3
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_020198E8
	ldr r0, [sp, #0x48]
	cmp r0, #0
	beq _0225CD7C
	movs r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	lsls r2, r4, #0x18
	lsls r3, r6, #0x18
	ldr r0, [r5]
	movs r1, #3
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_02019E2C
	b _0225CD9A
_0225CD7C:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _0225CD9A
	movs r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	movs r1, #3
	str r1, [sp, #8]
	lsls r2, r4, #0x18
	lsls r3, r6, #0x18
	ldr r0, [r5]
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_02019E2C
_0225CD9A:
	ldr r0, [r5]
	movs r1, #3
	bl FUN_0201C3C0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov112_0225CCE8

	thumb_func_start ov112_0225CDA8
ov112_0225CDA8: @ 0x0225CDA8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [sp, #0x1c]
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bl FUN_0222EB48
	movs r1, #0
	strb r1, [r5]
	movs r1, #0x3c
	str r0, [sp]
	blx FUN_020E2178
	adds r0, r0, #1
	strb r0, [r5, #1]
	movs r0, #0
	strb r0, [r5, #2]
	ldr r0, [sp]
	movs r1, #0x28
	blx FUN_020E2178
	str r0, [r5, #8]
	movs r0, #1
	strb r0, [r5, #4]
	movs r0, #0
	strh r0, [r5, #6]
	strb r0, [r5, #5]
	ldr r2, [sp, #0x18]
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov112_0225CDFC
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov112_0225CE60
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov112_0225CDA8

	thumb_func_start ov112_0225CDF8
ov112_0225CDF8: @ 0x0225CDF8
	bx lr
	.align 2, 0
	thumb_func_end ov112_0225CDF8

	thumb_func_start ov112_0225CDFC
ov112_0225CDFC: @ 0x0225CDFC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r0, r1, #0
	add r1, sp, #8
	adds r6, r2, #0
	movs r4, #0
	bl FUN_02231C10
	cmp r0, #0
	bne _0225CE18
	add sp, #0xc
	adds r0, r4, #0
	pop {r3, r4, r5, r6, pc}
_0225CE18:
	ldrb r0, [r5, #4]
	cmp r0, #1
	bne _0225CE26
	adds r0, r4, #0
	strb r0, [r5, #4]
	movs r4, #1
	strb r4, [r5, #5]
_0225CE26:
	adds r0, r6, #0
	add r1, sp, #8
	add r2, sp, #4
	bl FUN_022314BC
	add r0, sp, #4
	adds r1, r5, #0
	add r2, sp, #0
	bl FUN_022314BC
	add r0, sp, #0
	ldrb r2, [r0, #2]
	ldr r1, [r5, #8]
	cmp r2, r1
	bhs _0225CE50
	ldrb r1, [r0, #1]
	cmp r1, #0
	bne _0225CE50
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225CE58
_0225CE50:
	movs r4, #1
	strb r4, [r5, #5]
	ldr r0, [sp, #4]
	str r0, [r5]
_0225CE58:
	adds r0, r4, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov112_0225CDFC

	thumb_func_start ov112_0225CE60
ov112_0225CE60: @ 0x0225CE60
	push {r3, lr}
	ldrb r3, [r0, #4]
	cmp r3, #1
	bne _0225CE6E
	bl ov112_0225CE74
	pop {r3, pc}
_0225CE6E:
	bl ov112_0225CE88
	pop {r3, pc}
	thumb_func_end ov112_0225CE60

	thumb_func_start ov112_0225CE74
ov112_0225CE74: @ 0x0225CE74
	ldrh r1, [r0, #6]
	adds r1, r1, #1
	strh r1, [r0, #6]
	ldrh r1, [r0, #6]
	cmp r1, #0x10
	bls _0225CE84
	movs r1, #0
	strh r1, [r0, #6]
_0225CE84:
	bx lr
	.align 2, 0
	thumb_func_end ov112_0225CE74

	thumb_func_start ov112_0225CE88
ov112_0225CE88: @ 0x0225CE88
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r4, r0, #0
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	ldrb r1, [r4, #1]
	movs r0, #0x3c
	ldrb r2, [r4, #2]
	muls r0, r1, r0
	ldrb r1, [r4]
	adds r2, r2, r0
	movs r0, #0xe1
	lsls r0, r0, #4
	muls r0, r1, r0
	ldr r1, [r4, #8]
	adds r0, r2, r0
	blx FUN_020E2178
	ldrb r1, [r4, #5]
	adds r5, r0, #0
	cmp r1, #0
	beq _0225CF36
	movs r2, #0
	strh r2, [r4, #6]
	strb r2, [r4, #5]
	movs r0, #4
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	str r2, [sp, #0xc]
	ldr r0, [r0]
	movs r1, #3
	movs r3, #5
	bl FUN_02019CB8
	ldr r0, [sp, #0x14]
	movs r1, #3
	ldr r0, [r0]
	bl FUN_0201C3C0
	movs r0, #0
	str r0, [sp, #0x1c]
_0225CEE2:
	ldr r0, [sp, #0x1c]
	movs r1, #3
	subs r6, r1, r0
	movs r0, #0xa
	adds r7, r6, #0
	muls r7, r0, r7
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	movs r4, #0
	str r0, [sp, #0x20]
_0225CEF6:
	movs r0, #9
	subs r3, r0, r4
	adds r0, r3, r7
	cmp r0, r5
	blo _0225CF22
	cmp r0, r5
	bne _0225CF08
	movs r2, #1
	b _0225CF12
_0225CF08:
	cmp r6, #3
	bne _0225CF10
	movs r2, #2
	b _0225CF12
_0225CF10:
	movs r2, #0
_0225CF12:
	ldr r0, [sp, #0x20]
	lsls r3, r3, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsrs r3, r3, #0x18
	bl ov112_0225CC90
_0225CF22:
	adds r4, r4, #1
	cmp r4, #0xa
	blt _0225CEF6
	ldr r0, [sp, #0x1c]
	adds r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #4
	blt _0225CEE2
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_0225CF36:
	cmp r5, #0x28
	bhs _0225CFB8
	ldrh r1, [r4, #6]
	adds r1, r1, #1
	strh r1, [r4, #6]
	ldrh r6, [r4, #6]
	movs r1, #0x1b
	lsrs r3, r6, #0x1f
	lsls r2, r6, #0x1b
	subs r2, r2, r3
	rors r2, r1
	movs r1, #0xa
	adds r7, r3, r2
	blx FUN_020E2178
	str r1, [sp, #0x18]
	adds r0, r5, #0
	movs r1, #0xa
	blx FUN_020E2178
	cmp r7, #0
	bne _0225CF9E
	ldr r2, [r4, #8]
	movs r1, #0x1e
	muls r1, r2, r1
	lsrs r4, r1, #2
	movs r2, #6
	movs r5, #0
_0225CF6E:
	adds r1, r5, #1
	adds r3, r4, #0
	muls r3, r1, r3
	cmp r3, r6
	bls _0225CF80
	ldr r1, _0225CFBC @ =0x0225D824
	lsls r2, r5, #2
	ldr r2, [r1, r2]
	b _0225CF86
_0225CF80:
	adds r5, r1, #0
	cmp r1, #4
	blt _0225CF6E
_0225CF86:
	lsls r0, r0, #0x18
	ldr r3, [sp, #0x18]
	lsrs r0, r0, #0x18
	str r0, [sp]
	lsls r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsrs r3, r3, #0x18
	bl ov112_0225CC90
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_0225CF9E:
	cmp r7, #0x10
	bne _0225CFB8
	lsls r0, r0, #0x18
	ldr r3, [sp, #0x18]
	lsrs r0, r0, #0x18
	str r0, [sp]
	lsls r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	movs r2, #3
	lsrs r3, r3, #0x18
	bl ov112_0225CC90
_0225CFB8:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225CFBC: .4byte 0x0225D824
	thumb_func_end ov112_0225CE88

	thumb_func_start ov112_0225CFC0
ov112_0225CFC0: @ 0x0225CFC0
	push {r3, lr}
	movs r0, #0
	str r0, [sp]
	adds r0, r2, #0
	adds r2, r3, #0
	ldr r3, [sp, #8]
	bl ov112_0225D08C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov112_0225CFC0

	thumb_func_start ov112_0225CFD4
ov112_0225CFD4: @ 0x0225CFD4
	bx lr
	.align 2, 0
	thumb_func_end ov112_0225CFD4

	thumb_func_start ov112_0225CFD8
ov112_0225CFD8: @ 0x0225CFD8
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	movs r5, #0
	bl FUN_02231C54
	cmp r0, #0
	beq _0225CFFE
	cmp r0, #1
	beq _0225CFF2
	cmp r0, #2
	beq _0225CFF8
	b _0225CFFE
_0225CFF2:
	movs r5, #1
	strh r5, [r4, #2]
	b _0225CFFE
_0225CFF8:
	movs r0, #3
	strh r0, [r4, #2]
	movs r5, #1
_0225CFFE:
	adds r0, r5, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov112_0225CFD8

	thumb_func_start ov112_0225D004
ov112_0225D004: @ 0x0225D004
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #2]
	cmp r0, #4
	bhi _0225D086
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225D01C: @ jump table
	.2byte _0225D086 - _0225D01C - 2 @ case 0
	.2byte _0225D026 - _0225D01C - 2 @ case 1
	.2byte _0225D032 - _0225D01C - 2 @ case 2
	.2byte _0225D058 - _0225D01C - 2 @ case 3
	.2byte _0225D064 - _0225D01C - 2 @ case 4
_0225D026:
	movs r0, #2
	strh r0, [r4, #2]
	movs r0, #0
	add sp, #4
	strh r0, [r4]
	pop {r3, r4, pc}
_0225D032:
	movs r0, #0
	ldrsh r0, [r4, r0]
	str r0, [sp]
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r3, [sp, #0x10]
	bl ov112_0225D144
	movs r0, #0
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4]
	ldrsh r1, [r4, r0]
	cmp r1, #0x20
	blt _0225D086
	add sp, #4
	strh r0, [r4, #2]
	pop {r3, r4, pc}
_0225D058:
	movs r0, #4
	strh r0, [r4, #2]
	movs r0, #0
	add sp, #4
	strh r0, [r4]
	pop {r3, r4, pc}
_0225D064:
	movs r0, #0
	ldrsh r0, [r4, r0]
	str r0, [sp]
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r3, [sp, #0x10]
	bl ov112_0225D164
	movs r0, #0
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4]
	ldrsh r1, [r4, r0]
	cmp r1, #0x20
	blt _0225D086
	strh r0, [r4, #2]
_0225D086:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov112_0225D004

	thumb_func_start ov112_0225D08C
ov112_0225D08C: @ 0x0225D08C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp, #0x14]
	movs r0, #4
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #8
	adds r6, r2, #0
	str r0, [sp, #8]
	movs r2, #0
	str r3, [sp, #0x1c]
	str r2, [sp, #0xc]
	adds r0, r1, #0
	str r1, [sp, #0x18]
	ldr r0, [r0]
	movs r1, #3
	movs r3, #0x15
	ldr r7, [sp, #0x50]
	bl FUN_02019CB8
	movs r5, #0
	str r5, [sp, #0x2c]
_0225D0BA:
	ldr r0, [sp, #0x2c]
	movs r4, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x34]
_0225D0C4:
	adds r0, r6, #0
	adds r1, r4, r5
	bl FUN_02231C18
	cmp r0, #0
	beq _0225D12E
	adds r0, r6, #0
	adds r1, r4, r5
	bl FUN_02231C24
	str r0, [sp, #0x28]
	adds r0, r6, #0
	adds r1, r4, r5
	bl FUN_02231C30
	str r0, [sp, #0x24]
	adds r0, r6, #0
	adds r1, r4, r5
	bl FUN_02231C3C
	str r0, [sp, #0x20]
	adds r0, r6, #0
	adds r1, r4, r5
	bl FUN_02231C48
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x1c]
	adds r1, r4, r5
	bl FUN_0222E924
	cmp r7, #2
	bne _0225D10E
	ldr r1, [sp, #0x30]
	cmp r1, #1
	bne _0225D10E
	movs r1, #0
	b _0225D110
_0225D10E:
	adds r1, r7, #0
_0225D110:
	str r1, [sp]
	ldr r1, [sp, #0x28]
	lsls r2, r4, #0x18
	str r1, [sp, #4]
	ldr r1, [sp, #0x24]
	ldr r3, [sp, #0x34]
	str r1, [sp, #8]
	ldr r1, [sp, #0x20]
	lsrs r2, r2, #0x18
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	bl ov112_0225CCE8
_0225D12E:
	adds r4, r4, #1
	cmp r4, #5
	blt _0225D0C4
	ldr r0, [sp, #0x2c]
	adds r5, r5, #5
	adds r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, #4
	blt _0225D0BA
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov112_0225D08C

	thumb_func_start ov112_0225D144
ov112_0225D144: @ 0x0225D144
	push {r3, r4, r5, lr}
	ldr r5, [sp, #0x10]
	movs r4, #7
	tst r4, r5
	bne _0225D162
	lsrs r5, r5, #3
	movs r4, #1
	tst r4, r5
	bne _0225D15A
	movs r4, #2
	b _0225D15C
_0225D15A:
	movs r4, #0
_0225D15C:
	str r4, [sp]
	bl ov112_0225D08C
_0225D162:
	pop {r3, r4, r5, pc}
	thumb_func_end ov112_0225D144

	thumb_func_start ov112_0225D164
ov112_0225D164: @ 0x0225D164
	push {r3, r4, r5, lr}
	ldr r5, [sp, #0x10]
	movs r4, #7
	tst r4, r5
	bne _0225D17E
	lsrs r4, r5, #3
	movs r5, #1
	tst r4, r5
	beq _0225D178
	movs r5, #0
_0225D178:
	str r5, [sp]
	bl ov112_0225D08C
_0225D17E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov112_0225D164

	thumb_func_start ov112_0225D180
ov112_0225D180: @ 0x0225D180
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	str r3, [sp]
	movs r4, #0
_0225D18C:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl FUN_02231D00
	adds r1, r0, #0
	cmp r1, #0x14
	beq _0225D1B0
	ldr r0, [sp]
	bl FUN_0222E924
	cmp r0, #1
	bne _0225D1AC
	movs r0, #9
	strb r0, [r5, r4]
	b _0225D1B0
_0225D1AC:
	movs r0, #5
	strb r0, [r5, r4]
_0225D1B0:
	adds r4, r4, #1
	cmp r4, #4
	blt _0225D18C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov112_0225D180

	thumb_func_start ov112_0225D1B8
ov112_0225D1B8: @ 0x0225D1B8
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0
	lsls r6, r2, #5
	ldr r7, [r1, #0xc]
	str r0, [sp]
	adds r5, r4, #0
	adds r6, #0xa
_0225D1C6:
	ldr r2, [sp]
	movs r0, #0xf
	ldrb r2, [r2, r4]
	adds r1, r6, r5
	movs r3, #4
	lsls r2, r2, #1
	adds r2, #0xe0
	adds r2, r7, r2
	bl FUN_0201DC68
	cmp r0, #0
	bne _0225D1E2
	bl FUN_02022974
_0225D1E2:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _0225D1C6
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov112_0225D1B8

	thumb_func_start ov112_0225D1EC
ov112_0225D1EC: @ 0x0225D1EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	movs r7, #3
	adds r5, r0, #0
	ldr r6, _0225D2C4 @ =0x0225D804
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	movs r4, #0
	str r0, [sp, #0x20]
	lsls r7, r7, #8
	adds r5, #0x60
_0225D204:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	adds r2, r4, #0
	bl ov112_0225D408
	ldrb r0, [r6]
	adds r1, r5, #0
	movs r2, #3
	str r0, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	adds r0, r4, #7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	movs r3, #1
	ldr r0, [r0]
	bl FUN_0201A7E8
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, #0
	bl FUN_0201A9A4
	ldr r0, [sp, #0x20]
	adds r4, r4, #1
	adds r0, #0x20
	str r0, [sp, #0x20]
	adds r7, #0x3c
	adds r6, r6, #1
	adds r5, #0x10
	cmp r4, #3
	blt _0225D204
	movs r0, #1
	ldr r1, [sp, #0x1c]
	lsls r0, r0, #8
	bl FUN_02023790
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x14]
	adds r1, #0x90
	str r0, [r1]
	movs r1, #5
	ldr r0, [sp, #0x18]
	lsls r1, r1, #6
	ldr r0, [r0, r1]
	ldr r3, [sp, #0x1c]
	movs r1, #0
	adds r2, #0x98
	bl FUN_020071EC
	ldr r1, [sp, #0x14]
	movs r2, #4
	adds r1, #0x94
	str r0, [r1]
	ldr r1, [sp, #0x14]
	movs r0, #0
	adds r1, #0x98
	ldr r1, [r1]
	movs r3, #0xfa
	ldr r1, [r1, #0xc]
	adds r1, #0xee
	bl FUN_0201972C
	ldr r1, [sp, #0x14]
	ldr r3, _0225D2C8 @ =0x0000011A
	adds r1, #0x98
	ldr r1, [r1]
	movs r0, #0
	ldr r1, [r1, #0xc]
	movs r2, #4
	adds r1, #0xee
	bl FUN_0201972C
	ldr r1, [sp, #0x14]
	ldr r3, _0225D2CC @ =0x0000013A
	adds r1, #0x98
	str r1, [sp, #0x14]
	ldr r1, [r1]
	movs r0, #0
	ldr r1, [r1, #0xc]
	movs r2, #4
	adds r1, #0xee
	bl FUN_0201972C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225D2C4: .4byte 0x0225D804
_0225D2C8: .4byte 0x0000011A
_0225D2CC: .4byte 0x0000013A
	thumb_func_end ov112_0225D1EC

	thumb_func_start ov112_0225D2D0
ov112_0225D2D0: @ 0x0225D2D0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x94
	ldr r0, [r0]
	bl FUN_020181C4
	adds r0, r5, #0
	adds r0, #0x90
	ldr r0, [r0]
	bl FUN_020237BC
	adds r4, r5, #0
	movs r6, #0
	adds r4, #0x60
_0225D2EC:
	adds r0, r4, #0
	bl FUN_0201A8FC
	adds r0, r5, #0
	bl ov112_0225D44C
	adds r6, r6, #1
	adds r4, #0x10
	adds r5, #0x20
	cmp r6, #3
	blt _0225D2EC
	pop {r4, r5, r6, pc}
	thumb_func_end ov112_0225D2D0

	thumb_func_start ov112_0225D304
ov112_0225D304: @ 0x0225D304
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r5, r1, #0
	adds r0, r2, #0
	add r1, sp, #0x14
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl FUN_0222E934
	movs r0, #2
	adds r4, r6, #0
	ldr r7, _0225D3DC @ =0x0225D810
	str r0, [sp, #0xc]
	adds r4, #0x40
_0225D322:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0225D358
	adds r0, r4, #0
	bl ov112_0225D4E4
	cmp r0, #1
	bne _0225D358
	ldr r0, [sp, #0xc]
	adds r1, r0, #1
	cmp r1, #3
	bge _0225D352
	adds r0, r6, #0
	adds r0, #0x98
	ldr r0, [r0]
	adds r3, r4, #0
	str r0, [sp]
	lsls r0, r1, #5
	ldr r1, [r4, #8]
	ldr r2, [r7, #4]
	adds r0, r6, r0
	adds r3, #0x1c
	bl ov112_0225D460
_0225D352:
	adds r0, r4, #0
	bl ov112_0225D4DC
_0225D358:
	ldr r0, [sp, #0xc]
	subs r4, #0x20
	subs r7, r7, #4
	subs r0, r0, #1
	str r0, [sp, #0xc]
	bpl _0225D322
	ldrb r0, [r6]
	cmp r0, #0
	bne _0225D3D6
	adds r0, r5, #0
	bl FUN_02231C60
	cmp r0, #1
	bne _0225D3D6
	add r7, sp, #0x14
_0225D376:
	adds r0, r5, #0
	bl FUN_02231C78
	adds r4, r0, #0
	ldr r0, [sp, #8]
	adds r3, r6, #0
	str r0, [sp]
	adds r3, #0x90
	ldr r3, [r3]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl FUN_02231C94
	cmp r0, #1
	bne _0225D3C6
	ldr r3, [sp, #4]
	add r0, sp, #0x10
	adds r1, r5, #0
	adds r2, r4, #0
	bl ov112_0225D180
	adds r0, r6, #0
	adds r0, #0x98
	ldr r0, [r0]
	movs r2, #0x15
	str r0, [sp]
	adds r0, r6, #0
	adds r6, #0x90
	ldr r1, [r6]
	lsls r2, r2, #4
	add r3, sp, #0x10
	bl ov112_0225D460
	adds r0, r5, #0
	bl FUN_02231C04
	add sp, #0x28
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225D3C6:
	adds r0, r5, #0
	bl FUN_02231C04
	adds r0, r5, #0
	bl FUN_02231C60
	cmp r0, #1
	beq _0225D376
_0225D3D6:
	movs r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225D3DC: .4byte 0x0225D810
	thumb_func_end ov112_0225D304

	thumb_func_start ov112_0225D3E0
ov112_0225D3E0: @ 0x0225D3E0
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r6, #0
	movs r7, #0
	adds r4, #0x60
	adds r5, r6, #0
_0225D3EC:
	ldrb r0, [r6]
	cmp r0, #1
	bne _0225D3FA
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov112_0225D4F8
_0225D3FA:
	adds r7, r7, #1
	adds r6, #0x20
	adds r4, #0x10
	adds r5, #0x20
	cmp r7, #3
	blt _0225D3EC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov112_0225D3E0

	thumb_func_start ov112_0225D408
ov112_0225D408: @ 0x0225D408
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0
	strb r0, [r5]
	strh r0, [r5, #2]
	movs r0, #1
	adds r4, r1, #0
	adds r6, r2, #0
	lsls r0, r0, #8
	adds r1, r3, #0
	bl FUN_02023790
	str r0, [r5, #8]
	adds r0, r6, #7
	strb r0, [r5, #1]
	movs r3, #0
	adds r5, #0xc
	str r3, [sp]
	movs r0, #0xb4
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #7
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [r4]
	adds r1, r5, #0
	movs r2, #3
	bl FUN_0201A7E8
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov112_0225D408

	thumb_func_start ov112_0225D44C
ov112_0225D44C: @ 0x0225D44C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	bl FUN_020237BC
	adds r4, #0xc
	adds r0, r4, #0
	bl FUN_0201A8FC
	pop {r4, pc}
	thumb_func_end ov112_0225D44C

	thumb_func_start ov112_0225D460
ov112_0225D460: @ 0x0225D460
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [r5, #8]
	adds r7, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	bl FUN_02023810
	movs r0, #1
	strb r0, [r5]
	movs r2, #0
	strh r2, [r5, #2]
	strh r6, [r5, #4]
	adds r1, r7, #0
	bl FUN_02002D7C
	strh r0, [r5, #6]
	movs r0, #1
	ldrh r1, [r5, #6]
	lsls r0, r0, #8
	adds r0, r1, r0
	strh r0, [r5, #6]
	movs r0, #0x5a
	ldrh r1, [r5, #6]
	lsls r0, r0, #4
	cmp r1, r0
	bls _0225D49C
	bl FUN_02022974
_0225D49C:
	adds r0, r5, #0
	adds r0, #0xc
	movs r1, #0
	bl FUN_0201ADA4
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	adds r0, r5, #0
	ldr r2, [r5, #8]
	adds r0, #0xc
	movs r1, #1
	bl FUN_0201D738
	ldrb r0, [r4]
	ldr r1, [sp, #0x20]
	strb r0, [r5, #0x1c]
	ldrb r0, [r4, #1]
	strb r0, [r5, #0x1d]
	ldrb r0, [r4, #2]
	strb r0, [r5, #0x1e]
	ldrb r0, [r4, #3]
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	ldrb r2, [r5, #1]
	adds r0, #0x1c
	bl ov112_0225D1B8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov112_0225D460

	thumb_func_start ov112_0225D4DC
ov112_0225D4DC: @ 0x0225D4DC
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov112_0225D4DC

	thumb_func_start ov112_0225D4E4
ov112_0225D4E4: @ 0x0225D4E4
	ldrh r1, [r0, #2]
	movs r3, #1
	adds r2, r1, #1
	ldrh r1, [r0, #4]
	cmp r2, r1
	bgt _0225D4F4
	strh r2, [r0, #2]
	movs r3, #0
_0225D4F4:
	adds r0, r3, #0
	bx lr
	thumb_func_end ov112_0225D4E4

	thumb_func_start ov112_0225D4F8
ov112_0225D4F8: @ 0x0225D4F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r5, r0, #0
	ldrh r0, [r5, #6]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	ldrh r1, [r5, #2]
	ldr r0, [sp, #0x20]
	muls r0, r1, r0
	ldrh r1, [r5, #4]
	blx FUN_020E1F6C
	adds r4, r0, #0
	movs r0, #1
	lsls r0, r0, #8
	cmp r4, r0
	bge _0225D522
	movs r0, #0xff
	subs r7, r0, r4
	movs r6, #0
	b _0225D530
_0225D522:
	subs r6, r4, r0
	ldr r0, [sp, #0x20]
	movs r7, #0
	subs r4, r0, r4
	cmp r4, #0xff
	ble _0225D530
	movs r4, #0xff
_0225D530:
	movs r0, #0xff
	str r0, [sp]
	movs r1, #0
	movs r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0201AE78
	movs r0, #0x5a
	lsls r0, r0, #4
	str r0, [sp]
	movs r0, #0x10
	lsls r1, r7, #0x10
	lsls r2, r6, #0x10
	str r0, [sp, #4]
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	movs r3, #0
	lsls r1, r4, #0x10
	str r3, [sp, #0xc]
	lsrs r1, r1, #0x10
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	movs r0, #0xf
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r1, [r5, #0x18]
	lsrs r2, r2, #0x10
	bl FUN_0201AE08
	ldr r0, [sp, #0x1c]
	bl FUN_0201A9A4
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov112_0225D4F8

	thumb_func_start ov112_0225D57C
ov112_0225D57C: @ 0x0225D57C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	movs r1, #0
	movs r2, #0x70
	str r0, [sp, #0x14]
	blx FUN_020D5124
	ldr r2, _0225D6CC @ =0x0000028D
	ldr r3, [sp, #0x1c]
	movs r0, #0
	movs r1, #0x1a
	bl FUN_0200B144
	str r0, [sp, #0x38]
	ldr r1, [sp, #0x1c]
	movs r0, #0x80
	bl FUN_02023790
	str r0, [sp, #0x34]
	movs r0, #0
	str r0, [sp, #0x3c]
	ldr r0, _0225D6D0 @ =0x0225D968
	ldr r5, _0225D6D4 @ =0x0225D880
	str r0, [sp, #0x28]
	ldr r0, _0225D6D8 @ =0x0225D960
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x20]
	adds r0, #0x40
	str r0, [sp, #0x20]
_0225D5BC:
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	ldrh r1, [r1]
	ldr r0, [sp, #0x20]
	ldr r2, [r2]
	bl ov112_0225D73C
	ldrb r0, [r5, #1]
	ldr r1, [sp, #0x14]
	movs r2, #0
	str r0, [sp]
	ldrb r0, [r5, #2]
	str r0, [sp, #4]
	ldrb r0, [r5, #3]
	str r0, [sp, #8]
	ldrb r0, [r5, #6]
	str r0, [sp, #0xc]
	ldrh r0, [r5, #4]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	ldrb r3, [r5]
	ldr r0, [r0]
	bl FUN_0201A7E8
	ldr r0, [sp, #0x14]
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x34]
	bl FUN_0200B1B8
	ldr r0, [sp, #0x34]
	bl FUN_02023C5C
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	ldrb r6, [r5, #8]
	bl FUN_02023C3C
	ldr r1, [sp, #0x1c]
	adds r0, r0, #1
	bl FUN_02023790
	adds r4, r0, #0
	ldr r0, [sp, #0x30]
	movs r7, #0
	cmp r0, #0
	bls _0225D68A
_0225D620:
	ldr r1, [sp, #0x34]
	adds r0, r4, #0
	adds r2, r7, #0
	bl FUN_02023C9C
	ldrb r0, [r5, #9]
	cmp r0, #0
	beq _0225D63A
	cmp r0, #1
	beq _0225D640
	cmp r0, #2
	beq _0225D656
	b _0225D666
_0225D63A:
	ldrb r0, [r5, #7]
	str r0, [sp, #0x2c]
	b _0225D666
_0225D640:
	movs r0, #0
	adds r1, r4, #0
	adds r2, r0, #0
	bl FUN_02002EB4
	adds r0, r0, #1
	ldrb r1, [r5, #7]
	lsrs r0, r0, #1
	subs r0, r1, r0
	str r0, [sp, #0x2c]
	b _0225D666
_0225D656:
	movs r0, #0
	adds r1, r4, #0
	adds r2, r0, #0
	bl FUN_02002EB4
	ldrb r1, [r5, #7]
	subs r0, r1, r0
	str r0, [sp, #0x2c]
_0225D666:
	str r6, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	ldr r3, [sp, #0x2c]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	movs r1, #0
	adds r2, r4, #0
	bl FUN_0201D78C
	ldr r0, [sp, #0x30]
	adds r7, r7, #1
	adds r6, #0x10
	cmp r7, r0
	blo _0225D620
_0225D68A:
	adds r0, r4, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x14]
	bl FUN_0201A9A4
	ldr r0, [sp, #0x28]
	adds r5, #0x10
	adds r0, r0, #4
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	adds r0, r0, #2
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	adds r0, #0xc
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	adds r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x3c]
	adds r0, r0, #1
	str r0, [sp, #0x3c]
	cmp r0, #4
	blt _0225D5BC
	ldr r0, [sp, #0x34]
	bl FUN_020237BC
	ldr r0, [sp, #0x38]
	bl FUN_0200B190
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225D6CC: .4byte 0x0000028D
_0225D6D0: .4byte 0x0225D968
_0225D6D4: .4byte 0x0225D880
_0225D6D8: .4byte 0x0225D960
	thumb_func_end ov112_0225D57C

	thumb_func_start ov112_0225D6DC
ov112_0225D6DC: @ 0x0225D6DC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	movs r6, #0
	adds r4, #0x40
_0225D6E6:
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r0, r4, #0
	bl ov112_0225D75C
	adds r6, r6, #1
	adds r5, #0x10
	adds r4, #0xc
	cmp r6, #4
	blt _0225D6E6
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov112_0225D6DC

	thumb_func_start ov112_0225D700
ov112_0225D700: @ 0x0225D700
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	adds r5, #0x40
_0225D708:
	adds r0, r5, #0
	bl ov112_0225D784
	adds r4, r4, #1
	adds r5, #0xc
	cmp r4, #4
	blt _0225D708
	pop {r3, r4, r5, pc}
	thumb_func_end ov112_0225D700

	thumb_func_start ov112_0225D718
ov112_0225D718: @ 0x0225D718
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r4, #4
	blo _0225D726
	bl FUN_02022974
_0225D726:
	cmp r4, #0
	bne _0225D72E
	bl FUN_02022974
_0225D72E:
	movs r0, #0xc
	adds r5, #0x40
	muls r0, r4, r0
	adds r0, r5, r0
	bl ov112_0225D778
	pop {r3, r4, r5, pc}
	thumb_func_end ov112_0225D718

	thumb_func_start ov112_0225D73C
ov112_0225D73C: @ 0x0225D73C
	movs r3, #0
	strb r3, [r0]
	strb r3, [r0, #1]
	strb r3, [r0, #2]
	strb r3, [r0, #3]
	strb r3, [r0, #4]
	strb r3, [r0, #5]
	strb r3, [r0, #6]
	strb r3, [r0, #7]
	strb r3, [r0, #8]
	strb r3, [r0, #9]
	strb r3, [r0, #0xa]
	strb r3, [r0, #0xb]
	strh r1, [r0, #6]
	str r2, [r0, #8]
	bx lr
	thumb_func_end ov112_0225D73C

	thumb_func_start ov112_0225D75C
ov112_0225D75C: @ 0x0225D75C
	movs r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	strb r1, [r0, #0xa]
	strb r1, [r0, #0xb]
	bx lr
	thumb_func_end ov112_0225D75C

	thumb_func_start ov112_0225D778
ov112_0225D778: @ 0x0225D778
	movs r1, #1
	strh r1, [r0]
	movs r1, #0
	strh r1, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end ov112_0225D778

	thumb_func_start ov112_0225D784
ov112_0225D784: @ 0x0225D784
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldrh r0, [r4, #2]
	cmp r0, #0x1c
	bls _0225D794
	movs r0, #0
	strh r0, [r4]
_0225D794:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225D800
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _0225D7AA
	ldr r0, [r4, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_02005748
_0225D7AA:
	ldrh r0, [r4, #2]
	cmp r0, #2
	bhs _0225D7BA
	lsls r1, r0, #4
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r3, r0, #1
	b _0225D7D0
_0225D7BA:
	cmp r0, #0xe
	bhs _0225D7C2
	movs r3, #0x10
	b _0225D7D0
_0225D7C2:
	subs r0, #0xe
	lsls r0, r0, #4
	movs r1, #0xe
	blx FUN_020E1F6C
	movs r1, #0x10
	subs r3, r1, r0
_0225D7D0:
	movs r1, #0xe
	add r0, sp, #4
	strh r1, [r0]
	movs r0, #0x19
	lsls r3, r3, #0x18
	str r0, [sp]
	add r0, sp, #4
	adds r1, r4, #4
	movs r2, #1
	lsrs r3, r3, #0x18
	bl FUN_0200393C
	adds r0, r4, #4
	movs r1, #2
	blx FUN_020C2C54
	ldrh r1, [r4, #6]
	adds r0, r4, #4
	movs r2, #2
	blx FUN_020C00B4
	ldrh r0, [r4, #2]
	adds r0, r0, #1
	strh r0, [r4, #2]
_0225D800:
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov112_0225D784
	@ 0x0225D804
