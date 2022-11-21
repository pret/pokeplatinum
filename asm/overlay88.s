	.include "macros/function.inc"


	.text

	thumb_func_start ov88_0223B140
ov88_0223B140: @ 0x0223B140
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _0223B2CC @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _0223B2D0 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	ldr r2, _0223B2D4 @ =0x000707D0
	movs r0, #3
	movs r1, #0x1a
	bl FUN_02017FC8
	movs r0, #0x36
	movs r1, #0x1a
	bl FUN_02006C24
	adds r5, r0, #0
	ldr r1, _0223B2D8 @ =0x000036B4
	adds r0, r6, #0
	movs r2, #0x1a
	bl FUN_0200681C
	adds r4, r0, #0
	ldr r2, _0223B2D8 @ =0x000036B4
	movs r0, #0
	adds r1, r4, #0
	blx FUN_020C4BB8
	movs r0, #0x1a
	bl FUN_02018340
	movs r1, #0x5d
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0xc
	movs r1, #0x16
	movs r2, #0x1a
	bl FUN_0200B368
	movs r1, #0x5e
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0x1a
	bl FUN_0200B358
	movs r1, #0x5f
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0x1a
	bl FUN_0200B358
	movs r2, #6
	lsls r2, r2, #6
	str r0, [r4, r2]
	movs r1, #0x1a
	movs r0, #0
	subs r2, #0x1e
	adds r3, r1, #0
	bl FUN_0200B144
	movs r1, #0x61
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0
	str r0, [r4, #0x40]
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov88_0223C370
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	bl ov88_0223C15C
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov88_0223C17C
	movs r0, #0x10
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x1a
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov88_0223C504
	ldr r0, _0223B2DC @ =ov88_0223C0E0
	adds r1, r4, #0
	bl FUN_02017798
	bl ov88_0223C63C
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov88_0223C66C
	adds r0, r4, #0
	bl ov88_0223CBA0
	movs r0, #0x5d
	ldr r2, [r4, #8]
	lsls r0, r0, #2
	ldr r1, _0223B2E0 @ =0x00000438
	ldr r0, [r4, r0]
	ldr r2, [r2, #0x18]
	adds r1, r4, r1
	bl ov88_0223E9C4
	ldr r0, [r4, #8]
	adds r1, r4, #0
	ldr r0, [r0]
	str r0, [r4]
	bl FUN_02095E60
	movs r3, #0x5e
	lsls r3, r3, #2
	ldr r0, [r4, r3]
	adds r3, #0xc
	str r0, [sp]
	ldr r0, _0223B2E4 @ =0x000005A8
	ldr r3, [r4, r3]
	adds r0, r4, r0
	movs r1, #0x14
	movs r2, #1
	bl ov88_0223ECBC
	ldr r0, [r4]
	bl FUN_02095CD4
	movs r0, #0
	movs r1, #1
	bl FUN_02019120
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r1, #0x5d
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	movs r0, #0x1a
	bl FUN_02038A1C
	bl FUN_02039734
	bl FUN_02013948
	cmp r0, #0
	bne _0223B2AE
	ldr r1, _0223B2E8 @ =0x0000043D
	movs r0, #4
	movs r2, #1
	bl FUN_02004550
	ldr r0, _0223B2E8 @ =0x0000043D
	bl FUN_02004A84
	b _0223B2BE
_0223B2AE:
	ldr r1, _0223B2EC @ =0x0000043E
	movs r0, #4
	movs r2, #1
	bl FUN_02004550
	ldr r0, _0223B2EC @ =0x0000043E
	bl FUN_02004A84
_0223B2BE:
	adds r0, r5, #0
	bl FUN_02006CA8
	movs r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0223B2CC: .4byte 0xFFFFE0FF
_0223B2D0: .4byte 0x04001000
_0223B2D4: .4byte 0x000707D0
_0223B2D8: .4byte 0x000036B4
_0223B2DC: .4byte ov88_0223C0E0
_0223B2E0: .4byte 0x00000438
_0223B2E4: .4byte 0x000005A8
_0223B2E8: .4byte 0x0000043D
_0223B2EC: .4byte 0x0000043E
	thumb_func_end ov88_0223B140

	thumb_func_start ov88_0223B2F0
ov88_0223B2F0: @ 0x0223B2F0
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r1, [sp, #0x10]
	adds r4, r2, #0
	lsls r1, r1, #4
	adds r1, #0x92
	movs r2, #2
	ldr r0, [r0, #0x14]
	adds r6, r3, #0
	lsls r1, r1, #5
	lsls r2, r2, #8
	blx FUN_020C02BC
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_02079EDC
	adds r1, r0, #0
	ldr r0, [sp, #0x14]
	adds r1, #0xa
	bl FUN_02021EF0
	pop {r4, r5, r6, pc}
	thumb_func_end ov88_0223B2F0

	thumb_func_start ov88_0223B320
ov88_0223B320: @ 0x0223B320
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	bl FUN_0203608C
	bl FUN_02032EE8
	adds r4, r0, #0
	bl FUN_0203608C
	movs r1, #1
	eors r0, r1
	bl FUN_02032EE8
	adds r6, r0, #0
	adds r0, r4, #0
	movs r1, #0x1a
	bl FUN_02025F04
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #0x1a
	bl FUN_02025F04
	adds r6, r0, #0
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x32
	bl FUN_0200B1EC
	adds r7, r0, #0
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223B3B4 @ =0x00000438
	adds r1, r4, #0
	adds r0, r5, r0
	movs r2, #0xa
	movs r3, #0
	bl ov88_0223EC78
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223B3B8 @ =0x00000448
	adds r1, r6, #0
	adds r0, r5, r0
	movs r2, #0xa
	movs r3, #0
	bl ov88_0223EC78
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223B3BC @ =0x00000498
	adds r1, r7, #0
	adds r0, r5, r0
	movs r2, #5
	movs r3, #0
	bl ov88_0223EC78
	adds r0, r7, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_020237BC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223B3B4: .4byte 0x00000438
_0223B3B8: .4byte 0x00000448
_0223B3BC: .4byte 0x00000498
	thumb_func_end ov88_0223B320

	thumb_func_start ov88_0223B3C0
ov88_0223B3C0: @ 0x0223B3C0
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0x36
	movs r1, #0x1a
	bl FUN_02006C24
	adds r4, r0, #0
	bl ov88_0223C15C
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov88_0223C17C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov88_0223C504
	adds r0, r5, #0
	bl ov88_0223B4F0
	adds r0, r5, #0
	bl ov88_0223B320
	ldr r0, [r5, #8]
	ldr r0, [r0, #0x18]
	bl FUN_02027B50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0x5d
	str r0, [sp]
	movs r0, #0x1a
	lsls r2, r2, #2
	str r0, [sp, #4]
	ldr r0, [r5, r2]
	movs r1, #0
	adds r2, #0x65
	movs r3, #0xa
	bl FUN_0200DD0C
	movs r1, #0
	movs r2, #0x5d
	str r1, [sp]
	movs r0, #0x1a
	lsls r2, r2, #2
	str r0, [sp, #4]
	ldr r0, [r5, r2]
	adds r2, #0x83
	movs r3, #0xb
	bl FUN_0200DAA4
	movs r3, #0x5e
	lsls r3, r3, #2
	ldr r0, [r5, r3]
	adds r3, #0xc
	str r0, [sp]
	ldr r0, _0223B4E0 @ =0x00000588
	ldr r3, [r5, r3]
	adds r0, r5, r0
	movs r1, #0xf
	movs r2, #1
	bl ov88_0223ECBC
	movs r0, #4
	movs r1, #1
	bl FUN_02019120
	movs r0, #5
	movs r1, #1
	bl FUN_02019120
	movs r0, #6
	movs r1, #1
	bl FUN_02019120
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #0
	movs r1, #1
	bl FUN_02019120
	movs r0, #1
	adds r1, r0, #0
	bl FUN_02019120
	movs r0, #2
	movs r1, #1
	bl FUN_02019120
	movs r0, #3
	movs r1, #1
	bl FUN_02019120
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	bl ov88_0223C63C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov88_0223C66C
	adds r0, r5, #0
	bl ov88_0223CBA0
	ldr r0, _0223B4E4 @ =0x00002218
	movs r1, #0
	ldr r0, [r5, r0]
	adds r2, r5, #0
	bl ov88_0223B7A0
	ldr r0, _0223B4E8 @ =0x0000221C
	movs r1, #6
	ldr r0, [r5, r0]
	adds r2, r5, #0
	bl ov88_0223B7A0
	movs r0, #0xce
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CAC
	movs r0, #0xcf
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CAC
	ldr r0, _0223B4EC @ =ov88_0223C0E0
	adds r1, r5, #0
	bl FUN_02017798
	adds r0, r4, #0
	bl FUN_02006CA8
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223B4E0: .4byte 0x00000588
_0223B4E4: .4byte 0x00002218
_0223B4E8: .4byte 0x0000221C
_0223B4EC: .4byte ov88_0223C0E0
	thumb_func_end ov88_0223B3C0

	thumb_func_start ov88_0223B4F0
ov88_0223B4F0: @ 0x0223B4F0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x5e
	ldr r1, _0223B56C @ =0x00002218
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	movs r2, #0
	bl ov88_0223B710
	movs r0, #0x5e
	ldr r1, _0223B570 @ =0x0000221C
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	movs r2, #6
	bl ov88_0223B710
	movs r0, #0
	movs r2, #0x5e
	str r0, [sp]
	lsls r2, r2, #2
	ldr r3, _0223B56C @ =0x00002218
	ldr r0, _0223B574 @ =0x000004A8
	ldr r1, [r5, r2]
	adds r2, #0xc
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	adds r0, r5, r0
	bl ov88_0223B748
	movs r0, #6
	movs r2, #0x5e
	str r0, [sp]
	lsls r2, r2, #2
	ldr r3, _0223B570 @ =0x0000221C
	ldr r0, _0223B578 @ =0x00000508
	ldr r1, [r5, r2]
	adds r2, #0xc
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	adds r0, r5, r0
	bl ov88_0223B748
	ldr r0, _0223B56C @ =0x00002218
	ldr r0, [r5, r0]
	bl FUN_0207A0F8
	adds r4, r0, #0
	ldr r0, _0223B570 @ =0x0000221C
	ldr r0, [r5, r0]
	bl FUN_0207A0F8
	adds r2, r0, #0
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl ov88_0223C4E0
	pop {r3, r4, r5, pc}
	nop
_0223B56C: .4byte 0x00002218
_0223B570: .4byte 0x0000221C
_0223B574: .4byte 0x000004A8
_0223B578: .4byte 0x00000508
	thumb_func_end ov88_0223B4F0

	thumb_func_start ov88_0223B57C
ov88_0223B57C: @ 0x0223B57C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r1, #0
	bl FUN_0200682C
	ldr r1, [r5]
	adds r4, r0, #0
	movs r6, #0
	cmp r1, #0
	beq _0223B59C
	cmp r1, #1
	beq _0223B5B0
	cmp r1, #2
	bne _0223B59A
	b _0223B6DC
_0223B59A:
	b _0223B6E6
_0223B59C:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0223B5B6
	movs r0, #1
	str r0, [r5]
	adds r0, r4, #0
	bl ov88_0223B320
	b _0223B6E6
_0223B5B0:
	ldr r1, [r4, #0x48]
	cmp r1, #7
	bls _0223B5B8
_0223B5B6:
	b _0223B6E6
_0223B5B8:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223B5C4: @ jump table
	.2byte _0223B5D4 - _0223B5C4 - 2 @ case 0
	.2byte _0223B5DC - _0223B5C4 - 2 @ case 1
	.2byte _0223B5EA - _0223B5C4 - 2 @ case 2
	.2byte _0223B608 - _0223B5C4 - 2 @ case 3
	.2byte _0223B626 - _0223B5C4 - 2 @ case 4
	.2byte _0223B662 - _0223B5C4 - 2 @ case 5
	.2byte _0223B6B2 - _0223B5C4 - 2 @ case 6
	.2byte _0223B6CE - _0223B5C4 - 2 @ case 7
_0223B5D4:
	bl ov88_0223B914
	str r0, [r4, #0x48]
	b _0223B6E6
_0223B5DC:
	bl ov88_0223BED8
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl ov88_0223CE74
	b _0223B6E6
_0223B5EA:
	movs r0, #8
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x1a
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r1, r6, #0
	adds r2, r6, #0
	adds r3, r6, #0
	bl FUN_0200F174
	movs r0, #2
	str r0, [r5]
	b _0223B6E6
_0223B608:
	movs r0, #8
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x1a
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r1, r6, #0
	adds r2, r6, #0
	adds r3, r6, #0
	bl FUN_0200F174
	movs r0, #4
	str r0, [r4, #0x48]
	b _0223B6E6
_0223B626:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0223B6E6
	adds r0, r4, #0
	bl ov88_0223BFD8
	adds r0, r4, #0
	bl ov88_0223BF7C
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov88_0223C44C
	movs r0, #1
	str r0, [r4, #0x44]
	movs r0, #5
	str r0, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #6
	blx FUN_020E1F6C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov88_0223D1EC
	b _0223B6E6
_0223B662:
	ldr r0, [r4, #0x40]
	bl FUN_02006844
	cmp r0, #0
	beq _0223B6E6
	ldr r0, [r4, #0x40]
	bl FUN_02006814
	adds r0, r4, #0
	bl ov88_0223B3C0
	adds r0, r6, #0
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r2, [r0]
	ldr r1, [r4, #0x3c]
	movs r0, #6
	muls r0, r1, r0
	adds r1, r2, r0
	adds r0, r4, #0
	adds r0, #0x88
	str r1, [r0]
	adds r0, r4, #0
	bl ov88_0223BE28
	adds r0, r4, #0
	movs r1, #0xce
	adds r0, #0x88
	lsls r1, r1, #2
	ldr r0, [r0]
	ldr r1, [r4, r1]
	adds r2, r6, #0
	bl ov88_0223CF68
	bl FUN_02039734
	movs r0, #6
	str r0, [r4, #0x48]
	b _0223B6E6
_0223B6B2:
	movs r0, #8
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x1a
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r2, r1, #0
	adds r3, r6, #0
	bl FUN_0200F174
	movs r0, #7
	str r0, [r4, #0x48]
	b _0223B6E6
_0223B6CE:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0223B6E6
	movs r0, #1
	str r0, [r4, #0x48]
	b _0223B6E6
_0223B6DC:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0223B6E6
	movs r6, #1
_0223B6E6:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	bne _0223B6FC
	adds r0, r4, #0
	bl ov88_0223E848
	movs r0, #0x65
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020219F8
_0223B6FC:
	movs r1, #0x5d
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	movs r0, #0x1a
	bl FUN_02038A1C
	adds r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov88_0223B57C

	thumb_func_start ov88_0223B710
ov88_0223B710: @ 0x0223B710
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r0, #0
	adds r0, r5, #0
	adds r6, r2, #0
	movs r4, #0
	bl FUN_0207A0F8
	cmp r0, #0
	ble _0223B746
_0223B724:
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0207A0FC
	bl FUN_02076B10
	adds r2, r0, #0
	adds r0, r7, #0
	adds r1, r4, r6
	bl FUN_0200B5CC
	adds r0, r5, #0
	adds r4, r4, #1
	bl FUN_0207A0F8
	cmp r4, r0
	blt _0223B724
_0223B746:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov88_0223B710

	thumb_func_start ov88_0223B748
ov88_0223B748: @ 0x0223B748
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r0, r3, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r6, [sp, #0x28]
	movs r4, #0
	bl FUN_0207A0F8
	cmp r0, #0
	ble _0223B79A
	adds r7, r6, #1
_0223B764:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	adds r2, r7, r4
	movs r3, #0x1a
	bl FUN_0200B29C
	adds r6, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #8
	movs r3, #0
	bl ov88_0223EC78
	adds r0, r6, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x10]
	adds r5, #0x10
	adds r4, r4, #1
	bl FUN_0207A0F8
	cmp r4, r0
	blt _0223B764
_0223B79A:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov88_0223B748

	thumb_func_start ov88_0223B7A0
ov88_0223B7A0: @ 0x0223B7A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp, #0x20]
	movs r7, #0
	bl FUN_0207A0F8
	cmp r0, #0
	bgt _0223B7B6
	b _0223B8C4
_0223B7B6:
	movs r1, #0x1f
	ldr r0, [sp, #0x20]
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [sp, #0x1c]
_0223B7C0:
	ldr r0, [sp, #0xc]
	ldr r2, _0223B904 @ =0x00000696
	adds r0, r7, r0
	str r0, [sp, #0x10]
	lsls r0, r0, #2
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	lsls r1, r0, #4
	ldr r0, [sp, #0x20]
	adds r4, r0, r1
	ldr r1, [sp, #0x18]
	ldrb r2, [r4, r2]
	adds r5, r0, r1
	movs r0, #0x69
	ldr r1, _0223B908 @ =0x00000695
	lsls r0, r0, #4
	ldrh r0, [r4, r0]
	ldrb r1, [r4, r1]
	bl FUN_02079D8C
	adds r1, r0, #0
	movs r0, #0x1a
	str r0, [sp]
	ldr r6, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	movs r0, #0x13
	movs r2, #0
	adds r3, r6, r3
	bl FUN_02006F50
	movs r1, #0x79
	lsls r1, r1, #4
	str r0, [r5, r1]
	adds r0, r1, #0
	adds r0, #0x30
	ldr r0, [r5, r0]
	movs r1, #2
	ldr r0, [r0, #0x14]
	lsls r1, r1, #8
	blx FUN_020C2C54
	ldr r0, [sp, #0x10]
	movs r1, #0x69
	str r0, [sp]
	movs r0, #0x37
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, _0223B904 @ =0x00000696
	str r0, [sp, #4]
	ldr r3, _0223B908 @ =0x00000695
	movs r0, #0x1f
	lsls r1, r1, #4
	lsls r0, r0, #6
	ldrh r1, [r4, r1]
	ldrb r2, [r4, r2]
	ldrb r3, [r4, r3]
	ldr r0, [r5, r0]
	bl ov88_0223B2F0
	movs r0, #0x37
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CAC
	ldr r0, _0223B90C @ =0x00000692
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _0223B858
	movs r0, #0x3a
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	b _0223B880
_0223B858:
	ldr r0, [sp, #0x10]
	lsls r1, r0, #2
	ldr r0, [sp, #0x20]
	adds r1, r0, r1
	movs r0, #0x3a
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	str r1, [sp, #0x14]
	movs r1, #1
	bl FUN_02021CAC
	movs r0, #0x3a
	ldr r1, [sp, #0x14]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, _0223B90C @ =0x00000692
	ldrh r1, [r4, r1]
	adds r1, r1, #2
	bl FUN_02021D6C
_0223B880:
	ldr r0, _0223B910 @ =0x0000069C
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223B896
	movs r0, #0x3d
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	b _0223B8B6
_0223B896:
	ldr r0, [sp, #0x10]
	lsls r1, r0, #2
	ldr r0, [sp, #0x20]
	adds r4, r0, r1
	movs r0, #0x3d
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021CAC
	movs r0, #0x3d
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0x15
	bl FUN_02021D6C
_0223B8B6:
	ldr r0, [sp, #8]
	adds r7, r7, #1
	bl FUN_0207A0F8
	cmp r7, r0
	bge _0223B8C4
	b _0223B7C0
_0223B8C4:
	cmp r7, #6
	bge _0223B900
	ldr r0, [sp, #0xc]
	movs r6, #0x3a
	lsls r1, r0, #2
	ldr r0, [sp, #0x20]
	lsls r6, r6, #4
	adds r1, r0, r1
	lsls r0, r7, #2
	adds r5, r6, #0
	adds r4, r1, r0
	adds r5, #0x30
_0223B8DC:
	movs r0, #0x37
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [r4, r6]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [r4, r5]
	movs r1, #0
	bl FUN_02021CAC
	adds r7, r7, #1
	adds r4, r4, #4
	cmp r7, #6
	blt _0223B8DC
_0223B900:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223B904: .4byte 0x00000696
_0223B908: .4byte 0x00000695
_0223B90C: .4byte 0x00000692
_0223B910: .4byte 0x0000069C
	thumb_func_end ov88_0223B7A0

	thumb_func_start ov88_0223B914
ov88_0223B914: @ 0x0223B914
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl ov88_0223E998
	ldr r0, [r4, #0x4c]
	cmp r0, #0x13
	bls _0223B926
	b _0223BCEA
_0223B926:
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223B932: @ jump table
	.2byte _0223B95A - _0223B932 - 2 @ case 0
	.2byte _0223B9C2 - _0223B932 - 2 @ case 1
	.2byte _0223BA14 - _0223B932 - 2 @ case 2
	.2byte _0223BA24 - _0223B932 - 2 @ case 3
	.2byte _0223BA3A - _0223B932 - 2 @ case 4
	.2byte _0223BA4A - _0223B932 - 2 @ case 5
	.2byte _0223BA62 - _0223B932 - 2 @ case 6
	.2byte _0223BA76 - _0223B932 - 2 @ case 7
	.2byte _0223BA88 - _0223B932 - 2 @ case 8
	.2byte _0223BAB4 - _0223B932 - 2 @ case 9
	.2byte _0223BAC2 - _0223B932 - 2 @ case 10
	.2byte _0223BACE - _0223B932 - 2 @ case 11
	.2byte _0223BB5A - _0223B932 - 2 @ case 12
	.2byte _0223BB76 - _0223B932 - 2 @ case 13
	.2byte _0223BB82 - _0223B932 - 2 @ case 14
	.2byte _0223BB94 - _0223B932 - 2 @ case 15
	.2byte _0223BBD8 - _0223B932 - 2 @ case 16
	.2byte _0223BC12 - _0223B932 - 2 @ case 17
	.2byte _0223BC56 - _0223B932 - 2 @ case 18
	.2byte _0223BC96 - _0223B932 - 2 @ case 19
_0223B95A:
	movs r0, #0x50
	bl FUN_020364F0
	movs r0, #2
	bl FUN_02017DE0
	adds r0, r4, #0
	bl ov88_0223E894
	ldr r0, [r4, #8]
	movs r5, #0
	ldr r0, [r0, #8]
	bl FUN_0207A0F8
	cmp r0, #0
	ble _0223B9BA
	movs r7, #0x7b
	lsls r7, r7, #2
_0223B97E:
	ldr r0, [r4, #8]
	adds r1, r5, #0
	ldr r0, [r0, #8]
	bl FUN_0207A0FC
	movs r1, #0xae
	movs r2, #0
	adds r6, r0, #0
	bl FUN_02074470
	cmp r0, r7
	bne _0223B9AC
	adds r0, r6, #0
	movs r1, #0x70
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	beq _0223B9AC
	adds r0, r6, #0
	movs r1, #0
	bl FUN_02077ACC
_0223B9AC:
	ldr r0, [r4, #8]
	adds r5, r5, #1
	ldr r0, [r0, #8]
	bl FUN_0207A0F8
	cmp r5, r0
	blt _0223B97E
_0223B9BA:
	ldr r0, [r4, #0x4c]
	adds r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223B9C2:
	movs r0, #0x50
	bl FUN_02036540
	cmp r0, #0
	beq _0223BABA
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x34]
	cmp r0, #0
	bne _0223B9D8
	movs r0, #6
	b _0223B9DA
_0223B9D8:
	movs r0, #2
_0223B9DA:
	str r0, [r4, #0x4c]
	bl FUN_0203608C
	cmp r0, #0
	bne _0223BA06
	bl FUN_0201D2E8
	ldr r1, _0223BCF0 @ =0x00000445
	blx FUN_020E1F6C
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x3c
	blo _0223B9FA
	bl FUN_02022974
_0223B9FA:
	bl FUN_0203608C
	movs r1, #0x1f
	adds r2, r5, #3
	bl ov88_0223D044
_0223BA06:
	ldr r0, [r4, #4]
	bl ov88_0223D0C0
	adds r0, r4, #0
	bl ov88_0223E984
	b _0223BCEA
_0223BA14:
	movs r1, #0x8b
	lsls r1, r1, #6
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _0223BABA
	adds r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BA24:
	movs r0, #0x8b
	lsls r0, r0, #6
	ldr r1, [r4, r0]
	subs r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223BABA
	movs r0, #4
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BA3A:
	ldr r0, _0223BCF4 @ =0x0000369C
	adds r0, r4, r0
	bl FUN_02038ED4
	ldr r0, [r4, #0x4c]
	adds r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BA4A:
	ldr r2, _0223BCF4 @ =0x0000369C
	ldr r0, [r4, #4]
	movs r1, #2
	adds r2, r4, r2
	bl FUN_02038EDC
	cmp r0, #0
	beq _0223BABA
	ldr r0, [r4, #0x4c]
	adds r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BA62:
	movs r0, #1
	bl FUN_0203632C
	movs r0, #0x51
	bl FUN_020364F0
	ldr r0, [r4, #0x4c]
	adds r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BA76:
	movs r0, #0x51
	bl FUN_02036540
	cmp r0, #0
	beq _0223BABA
	ldr r0, [r4, #0x4c]
	adds r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BA88:
	movs r0, #0
	str r0, [r4, #0x50]
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	bl FUN_0203608C
	cmp r0, #1
	bne _0223BAAC
	bl FUN_0203608C
	ldr r1, _0223BCF8 @ =0x00002218
	ldr r2, [r4, #0x50]
	ldr r1, [r4, r1]
	bl ov88_0223D098
	ldr r0, [r4, #0x50]
	adds r0, r0, #1
	str r0, [r4, #0x50]
_0223BAAC:
	ldr r0, [r4, #0x4c]
	adds r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BAB4:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _0223BABC
_0223BABA:
	b _0223BCEA
_0223BABC:
	movs r0, #0xa
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BAC2:
	adds r0, r0, #1
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	bl ov88_0223B4F0
	b _0223BCEA
_0223BACE:
	movs r1, #0
	movs r0, #0x69
	adds r2, r4, #0
	adds r5, r1, #0
	lsls r0, r0, #4
_0223BAD8:
	adds r1, r1, #1
	strh r5, [r2, r0]
	adds r2, #0x10
	cmp r1, #0xd
	blt _0223BAD8
	ldr r0, _0223BCF8 @ =0x00002218
	ldr r0, [r4, r0]
	bl FUN_0207A0F8
	cmp r0, #0
	ble _0223BB14
	movs r0, #0x69
	lsls r0, r0, #4
	ldr r7, _0223BCF8 @ =0x00002218
	adds r6, r4, r0
_0223BAF6:
	ldr r0, _0223BCF8 @ =0x00002218
	adds r1, r5, #0
	ldr r0, [r4, r0]
	bl FUN_0207A0FC
	adds r1, r6, #0
	bl ov88_0223BD18
	ldr r0, [r4, r7]
	adds r6, #0x10
	adds r5, r5, #1
	bl FUN_0207A0F8
	cmp r5, r0
	blt _0223BAF6
_0223BB14:
	ldr r0, _0223BCFC @ =0x0000221C
	movs r5, #0
	ldr r0, [r4, r0]
	bl FUN_0207A0F8
	cmp r0, #0
	ble _0223BB4A
	movs r0, #0x69
	lsls r0, r0, #4
	ldr r7, _0223BCFC @ =0x0000221C
	adds r6, r4, r0
_0223BB2A:
	ldr r0, _0223BCFC @ =0x0000221C
	adds r1, r5, #0
	ldr r0, [r4, r0]
	bl FUN_0207A0FC
	adds r1, r5, #6
	lsls r1, r1, #4
	adds r1, r6, r1
	bl ov88_0223BD18
	ldr r0, [r4, r7]
	adds r5, r5, #1
	bl FUN_0207A0F8
	cmp r5, r0
	blt _0223BB2A
_0223BB4A:
	movs r0, #0x75
	movs r1, #1
	lsls r0, r0, #4
	strh r1, [r4, r0]
	ldr r0, [r4, #0x4c]
	adds r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BB5A:
	bl FUN_0203608C
	bl FUN_02032EE8
	ldr r2, _0223BD00 @ =0x00002224
	ldr r1, [r4, r2]
	adds r2, r2, #4
	adds r2, r4, r2
	bl ov88_0223D0D4
	ldr r0, [r4, #0x4c]
	adds r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BB76:
	ldr r1, [r4, #0x54]
	cmp r1, #3
	bne _0223BBD6
	adds r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BB82:
	ldr r0, [r4, #4]
	bl FUN_0202CC98
	bl ov88_0223D140
	ldr r0, [r4, #0x4c]
	adds r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BB94:
	ldr r1, [r4, #0x54]
	cmp r1, #4
	bne _0223BBD6
	adds r0, r0, #1
	str r0, [r4, #0x4c]
	movs r0, #0x10
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, _0223BCF8 @ =0x00002218
	movs r1, #0
	ldr r0, [r4, r0]
	adds r2, r4, #0
	bl ov88_0223B7A0
	ldr r0, _0223BCFC @ =0x0000221C
	movs r1, #6
	ldr r0, [r4, r0]
	adds r2, r4, #0
	bl ov88_0223B7A0
	movs r6, #0xce
	movs r5, #0
	movs r7, #1
	lsls r6, r6, #2
_0223BBC6:
	ldr r0, [r4, r6]
	adds r1, r7, #0
	bl FUN_02021CAC
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #2
	blt _0223BBC6
_0223BBD6:
	b _0223BCEA
_0223BBD8:
	movs r1, #0
	movs r0, #1
	adds r2, r1, #0
	str r0, [sp]
	movs r0, #8
	subs r2, #0x10
	movs r3, #0x1e
	bl FUN_0200AAE0
	movs r0, #1
	adds r1, r0, #0
	bl FUN_02019120
	movs r0, #2
	movs r1, #1
	bl FUN_02019120
	movs r0, #3
	movs r1, #1
	bl FUN_02019120
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	ldr r0, [r4, #0x4c]
	adds r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BC12:
	movs r0, #1
	bl FUN_0200AC1C
	cmp r0, #0
	beq _0223BCEA
	ldr r0, _0223BCF8 @ =0x00002218
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_0207A0FC
	movs r2, #0x7f
	ldr r3, _0223BD04 @ =0x000020F0
	lsls r2, r2, #4
	adds r1, r0, #0
	movs r0, #0
	adds r2, r4, r2
	adds r3, r4, r3
	bl ov88_0223C800
	ldr r1, _0223BD08 @ =0x00002110
	ldr r2, _0223BCF8 @ =0x00002218
	str r0, [r4, r1]
	str r4, [sp]
	ldr r0, _0223BD0C @ =0x00000438
	movs r1, #0
	ldr r2, [r4, r2]
	adds r0, r4, r0
	adds r3, r1, #0
	bl ov88_0223C8D8
	ldr r0, [r4, #0x4c]
	adds r0, r0, #1
	str r0, [r4, #0x4c]
	b _0223BCEA
_0223BC56:
	movs r1, #0
	movs r0, #2
	adds r2, r1, #0
	str r0, [sp]
	movs r0, #8
	subs r2, #0x10
	movs r3, #0x17
	bl FUN_0200AAE0
	movs r0, #4
	movs r1, #1
	bl FUN_02019120
	movs r0, #5
	movs r1, #1
	bl FUN_02019120
	movs r0, #6
	movs r1, #1
	bl FUN_02019120
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, [r4, #0x4c]
	adds r0, r0, #1
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	bl ov88_0223E8B4
	b _0223BCEA
_0223BC96:
	movs r0, #2
	bl FUN_0200AC1C
	cmp r0, #0
	beq _0223BCEA
	ldr r0, _0223BD10 @ =0x000005A8
	movs r1, #0
	adds r0, r4, r0
	bl FUN_0200E084
	movs r1, #0
	str r1, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x5d
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02019CB8
	movs r3, #0x5e
	lsls r3, r3, #2
	ldr r0, [r4, r3]
	adds r3, #0xc
	str r0, [sp]
	ldr r0, _0223BD14 @ =0x00000588
	ldr r3, [r4, r3]
	adds r0, r4, r0
	movs r1, #0xf
	movs r2, #1
	bl ov88_0223ECBC
	movs r0, #2
	bl FUN_02017DF0
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223BCEA:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223BCF0: .4byte 0x00000445
_0223BCF4: .4byte 0x0000369C
_0223BCF8: .4byte 0x00002218
_0223BCFC: .4byte 0x0000221C
_0223BD00: .4byte 0x00002224
_0223BD04: .4byte 0x000020F0
_0223BD08: .4byte 0x00002110
_0223BD0C: .4byte 0x00000438
_0223BD10: .4byte 0x000005A8
_0223BD14: .4byte 0x00000588
	thumb_func_end ov88_0223B914

	thumb_func_start ov88_0223BD18
ov88_0223BD18: @ 0x0223BD18
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_02073C88
	adds r7, r0, #0
	adds r0, r5, #0
	movs r1, #0x9b
	movs r2, #0
	bl FUN_02074470
	strb r0, [r4, #4]
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	strh r0, [r4]
	adds r0, r5, #0
	movs r1, #0x70
	movs r2, #0
	bl FUN_02074470
	strb r0, [r4, #6]
	adds r0, r5, #0
	movs r1, #0x4c
	movs r2, #0
	bl FUN_02074470
	strb r0, [r4, #5]
	adds r0, r5, #0
	movs r1, #0x6f
	movs r2, #0
	bl FUN_02074470
	strh r0, [r4, #8]
	adds r0, r5, #0
	movs r1, #0xa2
	movs r2, #0
	bl FUN_02074470
	str r0, [r4, #0xc]
	adds r0, r5, #0
	movs r1, #6
	movs r2, #0
	bl FUN_02074470
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_02073CD4
	ldrh r0, [r4]
	cmp r0, #0
	beq _0223BD90
	ldrb r1, [r4, #6]
	movs r2, #0x1c
	bl FUN_020759CC
	strh r0, [r4, #0xa]
_0223BD90:
	cmp r6, #0
	beq _0223BDA0
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0207D2D0
	adds r0, r0, #1
	strh r0, [r4, #2]
_0223BDA0:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov88_0223BD18

	thumb_func_start ov88_0223BDA4
ov88_0223BDA4: @ 0x0223BDA4
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #6
	blx FUN_020E1F6C
	ldr r0, _0223BE10 @ =0x0000221C
	adds r7, r1, #0
	ldr r0, [r5, r0]
	bl FUN_0207A0FC
	adds r6, r0, #0
	adds r0, r4, #0
	movs r1, #6
	blx FUN_020E1F6C
	adds r1, r6, #0
	movs r2, #0x7f
	movs r6, #0x32
	adds r3, r0, #0
	lsls r2, r2, #4
	lsls r6, r6, #6
	muls r6, r3, r6
	adds r2, r5, r2
	adds r2, r2, r6
	ldr r6, _0223BE14 @ =0x000020F0
	lsls r3, r3, #4
	adds r6, r5, r6
	movs r0, #1
	adds r3, r6, r3
	bl ov88_0223C800
	ldr r1, _0223BE18 @ =0x00002110
	ldr r2, _0223BE10 @ =0x0000221C
	str r0, [r5, r1]
	str r5, [sp]
	ldr r0, _0223BE1C @ =0x00000438
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r1, #1
	adds r3, r7, #0
	bl ov88_0223C8D8
	lsls r1, r4, #4
	adds r2, r5, r1
	ldr r1, _0223BE20 @ =0x00000694
	ldr r0, _0223BE24 @ =0x0000040C
	ldrb r1, [r2, r1]
	ldr r0, [r5, r0]
	adds r1, r1, #5
	bl FUN_02021D6C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223BE10: .4byte 0x0000221C
_0223BE14: .4byte 0x000020F0
_0223BE18: .4byte 0x00002110
_0223BE1C: .4byte 0x00000438
_0223BE20: .4byte 0x00000694
_0223BE24: .4byte 0x0000040C
	thumb_func_end ov88_0223BDA4

	thumb_func_start ov88_0223BE28
ov88_0223BE28: @ 0x0223BE28
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x88
	ldr r1, [r1]
	cmp r1, #0xc
	beq _0223BEBC
	cmp r1, #6
	bge _0223BEA2
	ldr r0, _0223BEC0 @ =0x00002218
	ldr r0, [r5, r0]
	bl FUN_0207A0FC
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #6
	blx FUN_020E1F6C
	movs r2, #0x7f
	adds r3, r0, #0
	lsls r2, r2, #4
	adds r1, r4, #0
	adds r4, r5, r2
	movs r2, #0x32
	lsls r2, r2, #6
	muls r2, r3, r2
	adds r2, r4, r2
	ldr r4, _0223BEC4 @ =0x000020F0
	lsls r3, r3, #4
	adds r4, r5, r4
	movs r0, #0
	adds r3, r4, r3
	bl ov88_0223C800
	ldr r1, _0223BEC8 @ =0x00002110
	adds r3, r5, #0
	str r0, [r5, r1]
	ldr r0, _0223BECC @ =0x00000438
	ldr r2, _0223BEC0 @ =0x00002218
	str r5, [sp]
	adds r3, #0x88
	ldr r2, [r5, r2]
	ldr r3, [r3]
	adds r0, r5, r0
	movs r1, #0
	bl ov88_0223C8D8
	ldr r0, _0223BECC @ =0x00000438
	movs r1, #1
	adds r0, r5, r0
	adds r2, r5, #0
	bl ov88_0223CB34
	ldr r0, _0223BED0 @ =0x0000040C
	movs r1, #0
	ldr r0, [r5, r0]
	bl FUN_02021CAC
	pop {r3, r4, r5, pc}
_0223BEA2:
	bl ov88_0223BDA4
	ldr r0, _0223BECC @ =0x00000438
	movs r1, #0
	adds r0, r5, r0
	adds r2, r5, #0
	bl ov88_0223CB34
	ldr r0, _0223BED4 @ =0x00000408
	movs r1, #0
	ldr r0, [r5, r0]
	bl FUN_02021CAC
_0223BEBC:
	pop {r3, r4, r5, pc}
	nop
_0223BEC0: .4byte 0x00002218
_0223BEC4: .4byte 0x000020F0
_0223BEC8: .4byte 0x00002110
_0223BECC: .4byte 0x00000438
_0223BED0: .4byte 0x0000040C
_0223BED4: .4byte 0x00000408
	thumb_func_end ov88_0223BE28

	thumb_func_start ov88_0223BED8
ov88_0223BED8: @ 0x0223BED8
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223BF78 @ =0x00002214
	adds r4, r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _0223BEEE
	blx r1
	movs r1, #5
	lsls r1, r1, #6
	str r0, [r4, r1]
_0223BEEE:
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #3
	bhi _0223BF18
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223BF04: @ jump table
	.2byte _0223BF18 - _0223BF04 - 2 @ case 0
	.2byte _0223BF18 - _0223BF04 - 2 @ case 1
	.2byte _0223BF0C - _0223BF04 - 2 @ case 2
	.2byte _0223BF12 - _0223BF04 - 2 @ case 3
_0223BF0C:
	add sp, #4
	movs r0, #2
	pop {r3, r4, pc}
_0223BF12:
	add sp, #4
	movs r0, #3
	pop {r3, r4, pc}
_0223BF18:
	movs r0, #0
	movs r2, #0xce
	str r0, [sp]
	movs r0, #0x53
	lsls r2, r2, #2
	movs r3, #0x69
	lsls r0, r0, #2
	adds r1, r4, #0
	lsls r3, r3, #4
	ldr r2, [r4, r2]
	adds r0, r4, r0
	adds r1, #0x88
	adds r3, r4, r3
	bl ov88_0223CFF4
	cmp r0, #0
	beq _0223BF40
	adds r0, r4, #0
	bl ov88_0223BE28
_0223BF40:
	movs r0, #1
	movs r2, #0xcf
	str r0, [sp]
	movs r0, #0x15
	lsls r2, r2, #2
	movs r3, #0x69
	lsls r0, r0, #4
	adds r1, r4, #0
	lsls r3, r3, #4
	ldr r2, [r4, r2]
	adds r0, r4, r0
	adds r1, #0x8c
	adds r3, r4, r3
	bl ov88_0223CFF4
	adds r0, r4, #0
	adds r0, #0x90
	bl ov88_0223CEF0
	adds r0, r4, #0
	adds r4, #0x88
	ldr r2, [r4]
	movs r1, #0x17
	bl ov88_0223D058
	movs r0, #1
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0223BF78: .4byte 0x00002214
	thumb_func_end ov88_0223BED8

	thumb_func_start ov88_0223BF7C
ov88_0223BF7C: @ 0x0223BF7C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0x2d
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	bl FUN_0200A4E4
	movs r0, #0x2e
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	bl FUN_0200A4E4
	movs r0, #0xb5
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_0200A6DC
	movs r0, #0xb9
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_0200A6DC
	movs r7, #0xb
	movs r4, #0
	adds r5, r6, #0
	lsls r7, r7, #6
_0223BFB0:
	ldr r0, [r5, r7]
	bl FUN_02009754
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _0223BFB0
	movs r0, #0x65
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_02021964
	bl FUN_0200A878
	bl FUN_0201E958
	bl FUN_0201F8B4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov88_0223BF7C

	thumb_func_start ov88_0223BFD8
ov88_0223BFD8: @ 0x0223BFD8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _0223C030 @ =0x00002218
	movs r6, #0
	ldr r0, [r5, r0]
	bl FUN_0207A0F8
	cmp r0, #0
	ble _0223C006
	ldr r7, _0223C030 @ =0x00002218
	adds r4, r5, #0
_0223BFEE:
	movs r0, #0x79
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_020181C4
	ldr r0, [r5, r7]
	adds r4, r4, #4
	adds r6, r6, #1
	bl FUN_0207A0F8
	cmp r6, r0
	blt _0223BFEE
_0223C006:
	ldr r0, _0223C034 @ =0x0000221C
	movs r6, #0
	ldr r0, [r5, r0]
	bl FUN_0207A0F8
	cmp r0, #0
	ble _0223C02E
	ldr r7, _0223C034 @ =0x0000221C
	adds r4, r5, #0
_0223C018:
	ldr r0, _0223C038 @ =0x000007A8
	ldr r0, [r4, r0]
	bl FUN_020181C4
	ldr r0, [r5, r7]
	adds r4, r4, #4
	adds r6, r6, #1
	bl FUN_0207A0F8
	cmp r6, r0
	blt _0223C018
_0223C02E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223C030: .4byte 0x00002218
_0223C034: .4byte 0x0000221C
_0223C038: .4byte 0x000007A8
	thumb_func_end ov88_0223BFD8

	thumb_func_start ov88_0223C03C
ov88_0223C03C: @ 0x0223C03C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02006840
	ldr r1, [r4, #0x5c]
	str r1, [r0, #0x28]
	adds r0, r4, #0
	bl ov88_0223BFD8
	movs r0, #0x19
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_020237BC
	ldr r0, _0223C0D8 @ =0x0000221C
	ldr r0, [r4, r0]
	bl FUN_020181C4
	adds r0, r4, #0
	bl ov88_0223BF7C
	ldr r0, _0223C0DC @ =0x00000438
	adds r0, r4, r0
	bl ov88_0223EC04
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov88_0223C44C
	movs r1, #0x5d
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	movs r0, #0x1a
	bl FUN_02018238
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200B190
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	bl FUN_0200B3F0
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200B3F0
	movs r0, #0x5e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200B3F0
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020237BC
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r0, #0x1a
	bl FUN_0201807C
	movs r0, #1
	pop {r3, r4, r5, pc}
	nop
_0223C0D8: .4byte 0x0000221C
_0223C0DC: .4byte 0x00000438
	thumb_func_end ov88_0223C03C

	thumb_func_start ov88_0223C0E0
ov88_0223C0E0: @ 0x0223C0E0
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0201C2B8
	ldr r0, _0223C14C @ =0x00002110
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223C132
	subs r4, r0, #1
	movs r0, #0x7f
	movs r2, #0x32
	lsls r0, r0, #4
	lsls r2, r2, #6
	adds r1, r4, #0
	adds r0, r5, r0
	muls r1, r2, r1
	adds r0, r0, r1
	blx FUN_020C0314
	lsls r1, r4, #4
	movs r0, #0x20
	adds r2, r5, r1
	str r0, [sp]
	movs r0, #0x1a
	adds r3, r4, #2
	ldr r1, _0223C150 @ =0x000020F0
	str r0, [sp, #4]
	ldrh r0, [r2, r1]
	adds r1, r1, #4
	ldrh r1, [r2, r1]
	movs r2, #5
	lsls r3, r3, #5
	bl FUN_02006E84
	ldr r0, _0223C14C @ =0x00002110
	movs r1, #0
	str r1, [r5, r0]
_0223C132:
	bl FUN_0201DCAC
	bl FUN_0200A858
	ldr r3, _0223C154 @ =0x027E0000
	ldr r1, _0223C158 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223C14C: .4byte 0x00002110
_0223C150: .4byte 0x000020F0
_0223C154: .4byte 0x027E0000
_0223C158: .4byte 0x00003FF8
	thumb_func_end ov88_0223C0E0

	thumb_func_start ov88_0223C15C
ov88_0223C15C: @ 0x0223C15C
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0223C178 @ =0x0223EF2C
	add r3, sp, #0
	movs r2, #5
_0223C166:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0223C166
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_0223C178: .4byte 0x0223EF2C
	thumb_func_end ov88_0223C15C

	thumb_func_start ov88_0223C17C
ov88_0223C17C: @ 0x0223C17C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xd4
	ldr r4, _0223C34C @ =0x0223EE30
	add r3, sp, #0xc4
	adds r5, r0, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r4, _0223C350 @ =0x0223EED8
	add r3, sp, #0xa8
	ldm r4!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r4]
	movs r1, #0
	str r0, [r3]
	adds r0, r5, #0
	adds r3, r1, #0
	bl FUN_020183C4
	adds r0, r5, #0
	movs r1, #0
	bl FUN_02019EBC
	ldr r4, _0223C354 @ =0x0223EEA0
	add r3, sp, #0x8c
	ldm r4!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r4]
	movs r1, #1
	str r0, [r3]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_020183C4
	adds r0, r5, #0
	movs r1, #1
	bl FUN_02019EBC
	ldr r4, _0223C358 @ =0x0223EEF4
	add r3, sp, #0x70
	ldm r4!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r4]
	movs r1, #2
	str r0, [r3]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_020183C4
	adds r0, r5, #0
	movs r1, #2
	bl FUN_02019EBC
	ldr r4, _0223C35C @ =0x0223EF10
	add r3, sp, #0x54
	ldm r4!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r4]
	movs r1, #3
	str r0, [r3]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_020183C4
	ldr r4, _0223C360 @ =0x0223EE68
	add r3, sp, #0x38
	ldm r4!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	adds r0, r5, #0
	movs r1, #4
	movs r3, #0
	bl FUN_020183C4
	adds r0, r5, #0
	movs r1, #4
	bl FUN_02019EBC
	ldr r4, _0223C364 @ =0x0223EE84
	add r3, sp, #0x1c
	ldm r4!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r4]
	movs r1, #5
	str r0, [r3]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_020183C4
	ldr r4, _0223C368 @ =0x0223EEBC
	add r3, sp, #0
	ldm r4!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r4]
	movs r1, #6
	str r0, [r3]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0
	movs r1, #0x20
	adds r2, r0, #0
	movs r3, #0x1a
	bl FUN_02019690
	movs r0, #1
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x1a
	bl FUN_02019690
	movs r0, #4
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x1a
	bl FUN_02019690
	movs r4, #0
	movs r6, #3
	adds r7, r4, #0
_0223C2C0:
	lsls r1, r4, #0x18
	movs r2, #0
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	adds r3, r2, #0
	bl FUN_02019184
	lsls r1, r4, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	adds r2, r6, #0
	adds r3, r7, #0
	bl FUN_02019184
	adds r1, r4, #4
	lsls r1, r1, #0x18
	movs r2, #0
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	adds r3, r2, #0
	bl FUN_02019184
	adds r1, r4, #4
	lsls r1, r1, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	adds r4, r4, #1
	cmp r4, #4
	blt _0223C2C0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02019120
	movs r0, #1
	movs r1, #0
	bl FUN_02019120
	movs r0, #2
	movs r1, #0
	bl FUN_02019120
	movs r0, #3
	movs r1, #0
	bl FUN_02019120
	movs r0, #4
	movs r1, #0
	bl FUN_02019120
	movs r0, #5
	movs r1, #0
	bl FUN_02019120
	movs r0, #6
	movs r1, #0
	bl FUN_02019120
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _0223C36C @ =0xFFFF1FFF
	ands r0, r1
	str r0, [r2]
	add sp, #0xd4
	pop {r4, r5, r6, r7, pc}
	nop
_0223C34C: .4byte 0x0223EE30
_0223C350: .4byte 0x0223EED8
_0223C354: .4byte 0x0223EEA0
_0223C358: .4byte 0x0223EEF4
_0223C35C: .4byte 0x0223EF10
_0223C360: .4byte 0x0223EE68
_0223C364: .4byte 0x0223EE84
_0223C368: .4byte 0x0223EEBC
_0223C36C: .4byte 0xFFFF1FFF
	thumb_func_end ov88_0223C17C

	thumb_func_start ov88_0223C370
ov88_0223C370: @ 0x0223C370
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	bl FUN_02006840
	adds r4, r0, #0
	movs r2, #6
	ldr r0, _0223C434 @ =0x00000668
	str r4, [r5, #8]
	movs r1, #4
	str r1, [r5, r0]
	movs r3, #0
	str r3, [r5, #0x44]
	subs r0, r0, #4
	str r3, [r5, r0]
	movs r0, #0x5b
	lsls r0, r0, #2
	str r2, [r5, r0]
	adds r1, r0, #4
	str r2, [r5, r1]
	adds r1, r5, #0
	adds r1, #0x88
	str r3, [r1]
	adds r1, r5, #0
	adds r1, #0x8c
	str r2, [r1]
	subs r0, #0x2c
	str r3, [r5, r0]
	str r3, [r5, #0x48]
	ldr r0, _0223C438 @ =ov88_0223D150
	ldr r1, _0223C43C @ =0x00002214
	str r3, [r5, #0x4c]
	str r0, [r5, r1]
	str r3, [r5, #0x60]
	str r3, [r5, #0x64]
	ldr r0, _0223C440 @ =0x00002110
	str r3, [r5, #0x5c]
	str r3, [r5, r0]
	ldr r0, _0223C444 @ =0x000036A0
	subs r6, r2, #7
	str r6, [r5, r0]
	adds r2, r0, #4
	str r6, [r5, r2]
	adds r2, r1, #0
	adds r2, #0xac
	str r3, [r5, r2]
	adds r2, r0, #0
	adds r2, #0xc
	str r3, [r5, r2]
	adds r0, #0x10
	str r3, [r5, r0]
	adds r0, r1, #4
	ldr r2, [r4, #8]
	adds r1, #0x10
	str r2, [r5, r0]
	ldr r0, [r4, #0xc]
	str r0, [r5, r1]
	ldr r0, [r4, #0x10]
	str r0, [r5, #4]
	bl FUN_02079FEC
	adds r1, r0, #0
	movs r0, #0x1a
	bl FUN_02018144
	ldr r1, _0223C448 @ =0x0000221C
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	movs r1, #6
	bl FUN_0207A014
	bl FUN_02079FEC
	adds r2, r0, #0
	ldr r0, _0223C448 @ =0x0000221C
	movs r1, #0xff
	ldr r0, [r5, r0]
	blx FUN_020D5124
	ldr r0, [r4, #4]
	movs r1, #0x1a
	bl FUN_02025F04
	movs r1, #0x63
	lsls r1, r1, #2
	str r0, [r5, r1]
	subs r1, #8
	ldr r0, [r5, r1]
	movs r1, #0x2a
	bl FUN_0200B1EC
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r4, #0x14]
	bl FUN_02038F8C
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223C434: .4byte 0x00000668
_0223C438: .4byte ov88_0223D150
_0223C43C: .4byte 0x00002214
_0223C440: .4byte 0x00002110
_0223C444: .4byte 0x000036A0
_0223C448: .4byte 0x0000221C
	thumb_func_end ov88_0223C370

	thumb_func_start ov88_0223C44C
ov88_0223C44C: @ 0x0223C44C
	push {r4, lr}
	adds r4, r0, #0
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
	pop {r4, pc}
	thumb_func_end ov88_0223C44C

	thumb_func_start ov88_0223C488
ov88_0223C488: @ 0x0223C488
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r2, #0
	movs r2, #1
	adds r4, r3, #0
	str r2, [sp]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl FUN_0200723C
	adds r6, r0, #0
	beq _0223C4DA
	add r1, sp, #4
	blx FUN_020A7248
	cmp r0, #0
	beq _0223C4D4
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0223C4B6
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	str r0, [sp, #0x1c]
_0223C4B6:
	lsls r1, r4, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	bl FUN_02019FE4
	cmp r0, #0
	beq _0223C4D4
	ldr r2, [sp, #4]
	lsls r1, r4, #0x18
	ldr r3, [sp, #0x1c]
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	adds r2, #0xc
	bl FUN_02019574
_0223C4D4:
	adds r0, r6, #0
	bl FUN_020181C4
_0223C4DA:
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov88_0223C488

	thumb_func_start ov88_0223C4E0
ov88_0223C4E0: @ 0x0223C4E0
	push {r3, r4, lr}
	sub sp, #4
	movs r1, #2
	adds r4, r0, #0
	bl FUN_02019FE4
	adds r2, r0, #0
	movs r0, #0
	movs r3, #6
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #2
	lsls r3, r3, #8
	bl FUN_02019460
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov88_0223C4E0

	thumb_func_start ov88_0223C504
ov88_0223C504: @ 0x0223C504
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r1, #0
	movs r1, #0x5d
	lsls r1, r1, #2
	ldr r4, [r0, r1]
	subs r1, #0x54
	str r1, [sp]
	movs r0, #0x1a
	movs r1, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #4
	adds r3, r1, #0
	bl FUN_02007130
	movs r1, #0
	movs r0, #0x12
	lsls r0, r0, #4
	str r0, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02007130
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0201975C
	movs r0, #4
	movs r1, #0
	bl FUN_0201975C
	movs r1, #0x1a
	movs r0, #0
	lsls r1, r1, #4
	movs r2, #0x1a
	bl FUN_02002E98
	movs r0, #0
	str r0, [sp]
	movs r0, #9
	lsls r0, r0, #0xa
	str r0, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r0, #0x1a
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #2
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x1a
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #3
	adds r2, r4, #0
	movs r3, #2
	bl ov88_0223C488
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x1a
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #4
	adds r2, r4, #0
	movs r3, #3
	bl FUN_0200710C
	movs r0, #0
	movs r1, #0x40
	movs r2, #0x1a
	bl FUN_02002E98
	movs r0, #0
	movs r1, #0x60
	movs r2, #0x1a
	bl FUN_02002E7C
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	lsls r0, r0, #0xa
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x1a
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #2
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
	movs r0, #0x1a
	movs r1, #5
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r2, r4, #0
	adds r3, r1, #0
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x1a
	movs r1, #6
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r2, r4, #0
	adds r3, r1, #0
	bl FUN_0200710C
	movs r0, #4
	movs r1, #0x40
	movs r2, #0x1a
	bl FUN_02002E98
	movs r0, #4
	movs r1, #0x60
	movs r2, #0x1a
	bl FUN_02002E7C
	adds r0, r4, #0
	movs r1, #4
	bl FUN_02019EBC
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov88_0223C504

	thumb_func_start ov88_0223C63C
ov88_0223C63C: @ 0x0223C63C
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _0223C668 @ =0x0223EE40
	add r3, sp, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_0201E86C
	movs r0, #0x14
	movs r1, #0x1a
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_0223C668: .4byte 0x0223EE40
	thumb_func_end ov88_0223C63C

	thumb_func_start ov88_0223C66C
ov88_0223C66C: @ 0x0223C66C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r7, r1, #0
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x7f
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x20
	str r3, [sp, #0xc]
	movs r2, #0x1a
	str r2, [sp, #0x10]
	adds r2, r0, #0
	bl FUN_0200A784
	movs r1, #0x66
	lsls r1, r1, #2
	movs r0, #0x2d
	adds r1, r5, r1
	movs r2, #0x1a
	bl FUN_020095C4
	movs r1, #0x65
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r6, #0
	adds r4, r5, #0
_0223C6A8:
	movs r0, #2
	adds r1, r6, #0
	movs r2, #0x1a
	bl FUN_02009714
	movs r1, #0xb
	lsls r1, r1, #6
	str r0, [r4, r1]
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #4
	blt _0223C6A8
	movs r0, #0
	str r0, [sp]
	movs r3, #1
	str r3, [sp, #4]
	movs r0, #0x1a
	str r0, [sp, #8]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	adds r1, r7, #0
	movs r2, #7
	bl FUN_02009A4C
	movs r1, #0x2d
	lsls r1, r1, #4
	str r0, [r5, r1]
	movs r2, #0
	str r2, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #9
	str r0, [sp, #8]
	movs r0, #0x1a
	subs r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	adds r1, r7, #0
	adds r3, r2, #0
	bl FUN_02009B04
	movs r1, #0xb5
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x1a
	subs r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	adds r1, r7, #0
	movs r2, #8
	movs r3, #1
	bl FUN_02009BC4
	movs r1, #0xb6
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x1a
	subs r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	adds r1, r7, #0
	movs r2, #9
	movs r3, #1
	bl FUN_02009BC4
	movs r1, #0xb7
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r3, #1
	str r3, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x1a
	subs r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	adds r1, r7, #0
	movs r2, #0xa
	bl FUN_02009A4C
	movs r1, #0x2e
	lsls r1, r1, #4
	str r0, [r5, r1]
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0xa
	str r0, [sp, #8]
	movs r0, #0x1a
	movs r2, #0
	subs r1, #0x1c
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	adds r1, r7, #0
	adds r3, r2, #0
	bl FUN_02009B04
	movs r1, #0xb9
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r3, #1
	str r3, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x1a
	subs r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	adds r1, r7, #0
	movs r2, #0xb
	bl FUN_02009BC4
	movs r1, #0xba
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r3, #1
	str r3, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x1a
	subs r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	adds r1, r7, #0
	movs r2, #0xc
	bl FUN_02009BC4
	movs r1, #0xbb
	lsls r1, r1, #2
	str r0, [r5, r1]
	subs r1, #0x1c
	ldr r0, [r5, r1]
	bl FUN_0200A328
	movs r0, #0x2e
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_0200A328
	movs r0, #0xb5
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200A5C8
	movs r0, #0xb9
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200A5C8
	bl FUN_02079FD0
	movs r3, #0x80
	adds r1, r0, #0
	str r3, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	movs r0, #0x13
	movs r2, #1
	adds r3, #0xc0
	bl FUN_02006E84
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov88_0223C66C

	thumb_func_start ov88_0223C800
ov88_0223C800: @ 0x0223C800
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r5, r0, #0
	adds r4, r2, #0
	adds r0, r3, #0
	movs r2, #2
	adds r6, r1, #0
	str r3, [sp, #0x20]
	bl FUN_02075EF4
	movs r1, #0
	adds r0, r6, #0
	adds r2, r1, #0
	bl FUN_02074470
	adds r7, r0, #0
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	movs r3, #0
	str r3, [sp]
	movs r1, #0xa
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r7, [sp, #0x10]
	str r3, [sp, #0x14]
	movs r1, #2
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x20]
	ldrh r0, [r0]
	ldrh r1, [r1, #2]
	movs r2, #0x1a
	bl FUN_020136A4
	movs r1, #0x32
	adds r0, r4, #0
	lsls r1, r1, #6
	blx FUN_020C2C54
	adds r0, r5, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov88_0223C800

	thumb_func_start ov88_0223C860
ov88_0223C860: @ 0x0223C860
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	movs r0, #0x14
	movs r1, #0x1a
	str r3, [sp, #8]
	bl FUN_02023790
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_0207A0FC
	movs r1, #0x77
	adds r2, r4, #0
	bl FUN_02074470
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #8]
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0
	bl ov88_0223EC78
	adds r0, r4, #0
	bl FUN_020237BC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov88_0223C860

	thumb_func_start ov88_0223C8AC
ov88_0223C8AC: @ 0x0223C8AC
	push {r4, lr}
	ldrh r0, [r0]
	adds r4, r3, #0
	cmp r0, #0x1d
	beq _0223C8BA
	cmp r0, #0x20
	bne _0223C8D2
_0223C8BA:
	adds r0, r1, #0
	adds r1, r2, #0
	bl FUN_0207A0FC
	movs r1, #0x4d
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	bne _0223C8D2
	movs r0, #2
	pop {r4, pc}
_0223C8D2:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov88_0223C8AC

	thumb_func_start ov88_0223C8D8
ov88_0223C8D8: @ 0x0223C8D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r7, r0, #0
	adds r5, r1, #0
	adds r0, r2, #0
	adds r1, r3, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r4, [sp, #0x50]
	bl FUN_0207A0FC
	movs r1, #2
	bl FUN_020765AC
	str r0, [sp, #0x10]
	movs r0, #1
	lsls r0, r0, #0xa
	adds r6, r4, r0
	lsls r0, r5, #2
	str r0, [sp, #0x14]
	ldr r0, [r6, r0]
	movs r1, #1
	bl FUN_02021CAC
	movs r0, #0xc
	adds r3, r5, #0
	muls r3, r0, r3
	ldr r1, _0223CB20 @ =0x0223EF54
	ldr r0, [sp, #0x14]
	ldr r2, _0223CB24 @ =0x0223EF58
	ldr r1, [r1, r3]
	ldr r3, [r2, r3]
	ldr r2, [sp, #0x10]
	ldr r0, [r6, r0]
	adds r2, r2, r3
	adds r2, #0xc0
	bl ov88_0223E87C
	cmp r5, #0
	bne _0223C93A
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x14]
	lsls r1, r1, #4
	adds r2, r4, r1
	ldr r1, _0223CB28 @ =0x0000069A
	ldr r0, [r6, r0]
	ldrh r1, [r2, r1]
	bl FUN_02021D0C
_0223C93A:
	ldr r1, [sp, #0xc]
	movs r0, #1
	lsls r1, r1, #4
	adds r2, r4, r1
	ldr r1, _0223CB2C @ =0x00000694
	lsls r0, r0, #0xa
	adds r6, r4, r0
	adds r0, r5, #2
	ldrb r1, [r2, r1]
	lsls r0, r0, #2
	str r0, [sp, #0x18]
	ldr r0, [r6, r0]
	adds r1, r1, #5
	bl FUN_02021D6C
	ldr r0, [sp, #0x18]
	movs r1, #1
	ldr r0, [r6, r0]
	bl FUN_02021CAC
	movs r0, #6
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x1a
	lsls r0, r0, #4
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	adds r0, r7, r0
	movs r3, #9
	bl ov88_0223C860
	movs r0, #6
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #4
	str r0, [sp, #0x38]
	ldr r3, [sp, #0x38]
	movs r0, #0x69
	lsls r0, r0, #4
	adds r3, r4, r3
	str r3, [sp, #0x34]
	mov ip, r0
	mov r3, ip
	adds r1, r4, r0
	ldr r0, [sp, #0x38]
	ldr r6, [sp, #0x34]
	adds r3, #8
	adds r0, r1, r0
	ldrh r3, [r6, r3]
	ldr r1, [sp, #8]
	bl ov88_0223C8AC
	ldr r1, _0223CB30 @ =0x00000695
	adds r2, r4, r1
	ldr r1, [sp, #0x38]
	str r2, [sp, #0x1c]
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _0223C9B8
	movs r0, #2
_0223C9B8:
	cmp r0, #0
	beq _0223C9D8
	cmp r0, #1
	beq _0223C9FE
	cmp r0, #2
	bne _0223CA22
	adds r0, r5, #4
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #1
	lsls r0, r0, #0xa
	ldr r0, [r1, r0]
	movs r1, #0
	bl FUN_02021CAC
	b _0223CA22
_0223C9D8:
	movs r0, #1
	lsls r0, r0, #0xa
	adds r0, r4, r0
	str r0, [sp, #0x20]
	adds r0, r5, #4
	lsls r0, r0, #2
	ldr r1, [sp, #0x20]
	str r0, [sp, #0x24]
	ldr r0, [r1, r0]
	movs r1, #1
	bl FUN_02021CAC
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	ldr r0, [r1, r0]
	movs r1, #0x17
	bl FUN_02021D6C
	b _0223CA22
_0223C9FE:
	movs r0, #1
	lsls r0, r0, #0xa
	adds r0, r4, r0
	str r0, [sp, #0x28]
	adds r0, r5, #4
	lsls r0, r0, #2
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	ldr r0, [r1, r0]
	movs r1, #1
	bl FUN_02021CAC
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	ldr r0, [r1, r0]
	movs r1, #0x16
	bl FUN_02021D6C
_0223CA22:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x38]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0223CAA8
	movs r0, #0xa
	movs r1, #0x1a
	bl FUN_02023790
	adds r6, r0, #0
	adds r0, r5, #0
	adds r0, #0x1c
	lsls r0, r0, #4
	str r0, [sp, #0x30]
	adds r0, r7, r0
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x29
	adds r2, r6, #0
	bl FUN_0200B1B8
	movs r0, #6
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	adds r1, r6, #0
	adds r0, r7, r0
	movs r2, #9
	movs r3, #0xff
	bl ov88_0223EC78
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl FUN_0207A0FC
	movs r1, #0xa1
	movs r2, #0
	bl FUN_02074470
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r6, #0
	movs r2, #3
	movs r3, #0
	bl FUN_020238A0
	movs r0, #0x1e
	str r0, [sp]
	ldr r0, [sp, #0x30]
	movs r3, #0
	adds r0, r7, r0
	adds r1, r6, #0
	movs r2, #9
	str r3, [sp, #4]
	bl ov88_0223EC78
	adds r0, r6, #0
	bl FUN_020237BC
	b _0223CAB4
_0223CAA8:
	adds r0, r5, #0
	adds r0, #0x1c
	lsls r0, r0, #4
	adds r0, r7, r0
	bl FUN_0201ACF4
_0223CAB4:
	movs r0, #3
	str r0, [sp]
	movs r3, #0
	adds r0, r5, #0
	movs r1, #0x19
	adds r0, #0x1e
	lsls r0, r0, #4
	str r3, [sp, #4]
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	adds r0, r7, r0
	movs r2, #7
	bl ov88_0223EC78
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl FUN_0207A0FC
	movs r1, #6
	movs r2, #0
	bl FUN_02074470
	adds r5, #0x20
	lsls r0, r0, #0x10
	lsls r4, r5, #4
	lsrs r6, r0, #0x10
	adds r0, r7, r4
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0x14
	movs r1, #0x1a
	bl FUN_02023790
	adds r1, r6, #0
	movs r2, #0x1a
	adds r5, r0, #0
	bl FUN_0207CFA0
	movs r0, #3
	str r0, [sp]
	movs r3, #0
	adds r0, r7, r4
	adds r1, r5, #0
	movs r2, #9
	str r3, [sp, #4]
	bl ov88_0223EC78
	adds r0, r5, #0
	bl FUN_020237BC
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_0223CB20: .4byte 0x0223EF54
_0223CB24: .4byte 0x0223EF58
_0223CB28: .4byte 0x0000069A
_0223CB2C: .4byte 0x00000694
_0223CB30: .4byte 0x00000695
	thumb_func_end ov88_0223C8D8

	thumb_func_start ov88_0223CB34
ov88_0223CB34: @ 0x0223CB34
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	lsls r0, r4, #2
	adds r1, r6, r0
	movs r0, #1
	lsls r0, r0, #0xa
	ldr r0, [r1, r0]
	movs r1, #0
	bl FUN_02021CAC
	adds r0, r4, #2
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r0, #1
	lsls r0, r0, #0xa
	ldr r0, [r1, r0]
	movs r1, #0
	bl FUN_02021CAC
	adds r0, r4, #4
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r0, #1
	lsls r0, r0, #0xa
	ldr r0, [r1, r0]
	movs r1, #0
	bl FUN_02021CAC
	adds r0, r4, #0
	adds r0, #0x1a
	lsls r0, r0, #4
	adds r0, r5, r0
	bl FUN_0201ACF4
	adds r0, r4, #0
	adds r0, #0x1c
	lsls r0, r0, #4
	adds r0, r5, r0
	bl FUN_0201ACF4
	adds r0, r4, #0
	adds r0, #0x1e
	lsls r0, r0, #4
	adds r0, r5, r0
	bl FUN_0201ACF4
	adds r4, #0x20
	lsls r0, r4, #4
	adds r0, r5, r0
	bl FUN_0201ACF4
	pop {r4, r5, r6, pc}
	thumb_func_end ov88_0223CB34

	thumb_func_start ov88_0223CBA0
ov88_0223CBA0: @ 0x0223CBA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	movs r1, #0
	adds r5, r0, #0
	str r1, [sp]
	subs r0, r1, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r2, #0xb
	str r1, [sp, #0xc]
	movs r0, #2
	lsls r2, r2, #6
	str r0, [sp, #0x10]
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
	movs r3, #0xb
	str r1, [sp]
	subs r0, r1, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsls r3, r3, #6
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
	movs r0, #0x65
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #2
	str r0, [sp, #0x2c]
	movs r0, #0x2f
	lsls r0, r0, #4
	adds r0, r5, r0
	str r0, [sp, #0x30]
	movs r0, #6
	lsls r1, r1, #0x10
	lsls r0, r0, #0x10
	str r0, [sp, #0x38]
	lsrs r0, r1, #5
	movs r7, #0
	str r1, [sp, #0x34]
	str r7, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r7, [r0, #0x20]
	movs r0, #1
	str r0, [sp, #0x54]
	movs r0, #0x1a
	ldr r6, _0223CE28 @ =0x0223EF9C
	str r7, [sp, #0x50]
	str r0, [sp, #0x58]
	adds r4, r5, #0
_0223CC5C:
	ldr r0, [r6]
	lsls r0, r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [r6, #4]
	lsls r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_02021AA0
	movs r1, #0xce
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r1, #0
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021CC8
	adds r0, r4, #0
	movs r1, #0xce
	adds r0, #0x88
	lsls r1, r1, #2
	ldr r0, [r0]
	ldr r1, [r4, r1]
	adds r2, r7, #0
	bl ov88_0223CF68
	movs r0, #0xce
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x64
	bl FUN_02021F58
	movs r0, #0xce
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021CAC
	adds r7, r7, #1
	adds r6, #8
	adds r4, r4, #4
	cmp r7, #2
	blt _0223CC5C
	ldr r6, _0223CE28 @ =0x0223EF9C
	movs r7, #0
	adds r4, r5, #0
_0223CCB8:
	ldr r0, [r6]
	adds r0, #0x10
	lsls r0, r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [r6, #4]
	subs r0, r0, #6
	lsls r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_02021AA0
	movs r1, #0x37
	lsls r1, r1, #4
	str r0, [r4, r1]
	adds r0, r1, #0
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0x37
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	adds r1, r7, #5
	bl FUN_02021D6C
	movs r0, #0x37
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #5
	bl FUN_02021F58
	movs r0, #0x37
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021CAC
	adds r7, r7, #1
	adds r6, #8
	adds r4, r4, #4
	cmp r7, #0xc
	blt _0223CCB8
	ldr r6, _0223CE28 @ =0x0223EF9C
	movs r7, #0
	adds r4, r5, #0
_0223CD12:
	ldr r0, [r6]
	adds r0, #0x24
	lsls r0, r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [r6, #4]
	adds r0, #0x10
	lsls r0, r0, #0xc
	str r0, [sp, #0x38]
	movs r0, #0
	str r0, [sp, #0x50]
	add r0, sp, #0x2c
	bl FUN_02021AA0
	movs r1, #0x3a
	lsls r1, r1, #4
	str r0, [r4, r1]
	adds r0, r1, #0
	ldr r0, [r4, r0]
	movs r1, #3
	bl FUN_02021F58
	movs r0, #0x3a
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021CAC
	adds r7, r7, #1
	adds r6, #8
	adds r4, r4, #4
	cmp r7, #0xc
	blt _0223CD12
	ldr r6, _0223CE28 @ =0x0223EF9C
	movs r7, #0
	adds r4, r5, #0
_0223CD58:
	ldr r0, [r6]
	adds r0, #0x2d
	lsls r0, r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [r6, #4]
	adds r0, #0x10
	lsls r0, r0, #0xc
	str r0, [sp, #0x38]
	movs r0, #0
	str r0, [sp, #0x50]
	add r0, sp, #0x2c
	bl FUN_02021AA0
	movs r1, #0x3d
	lsls r1, r1, #4
	str r0, [r4, r1]
	adds r0, r1, #0
	ldr r0, [r4, r0]
	movs r1, #3
	bl FUN_02021F58
	movs r0, #0x3d
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021CAC
	adds r7, r7, #1
	adds r6, #8
	adds r4, r4, #4
	cmp r7, #0xc
	blt _0223CD58
	movs r0, #6
	lsls r0, r0, #0x10
	str r0, [sp, #0x34]
	movs r0, #0x42
	lsls r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_02021AA0
	ldr r1, _0223CE2C @ =0x00000418
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	movs r1, #1
	bl FUN_02021CC8
	ldr r0, _0223CE2C @ =0x00000418
	movs r1, #0x14
	ldr r0, [r5, r0]
	bl FUN_02021D6C
	ldr r0, _0223CE2C @ =0x00000418
	movs r1, #0
	ldr r0, [r5, r0]
	bl FUN_02021CAC
	movs r0, #0xc5
	lsls r0, r0, #2
	ldr r4, _0223CE30 @ =0x0223EF54
	movs r6, #0
	adds r7, r5, r0
_0223CDD4:
	ldr r0, [r4]
	str r7, [sp, #0x30]
	lsls r0, r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [r4, #4]
	lsls r1, r0, #0xc
	movs r0, #3
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #0x38]
	movs r0, #2
	str r0, [sp, #0x54]
	add r0, sp, #0x2c
	bl FUN_02021AA0
	movs r1, #1
	lsls r1, r1, #0xa
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #1
	lsls r0, r0, #0xa
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CC8
	movs r0, #1
	lsls r0, r0, #0xa
	ldr r0, [r5, r0]
	ldr r1, [r4, #8]
	bl FUN_02021D6C
	adds r6, r6, #1
	adds r4, #0xc
	adds r5, r5, #4
	cmp r6, #6
	blt _0223CDD4
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223CE28: .4byte 0x0223EF9C
_0223CE2C: .4byte 0x00000418
_0223CE30: .4byte 0x0223EF54
	thumb_func_end ov88_0223CBA0

	thumb_func_start ov88_0223CE34
ov88_0223CE34: @ 0x0223CE34
	push {r3, r4}
	ldr r3, _0223CE70 @ =0x021BF67C
	movs r1, #0
	ldr r3, [r3, #0x4c]
	movs r4, #0x40
	adds r2, r1, #0
	tst r4, r3
	beq _0223CE48
	movs r2, #1
	adds r1, r1, #1
_0223CE48:
	movs r4, #0x80
	tst r4, r3
	beq _0223CE52
	movs r2, #2
	adds r1, r1, #1
_0223CE52:
	movs r4, #0x20
	tst r4, r3
	beq _0223CE5C
	movs r2, #3
	adds r1, r1, #1
_0223CE5C:
	movs r4, #0x10
	tst r3, r4
	beq _0223CE66
	movs r2, #4
	adds r1, r1, #1
_0223CE66:
	cmp r1, #0
	beq _0223CE6C
	str r2, [r0]
_0223CE6C:
	pop {r3, r4}
	bx lr
	.align 2, 0
_0223CE70: .4byte 0x021BF67C
	thumb_func_end ov88_0223CE34

	thumb_func_start ov88_0223CE74
ov88_0223CE74: @ 0x0223CE74
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #6
	bge _0223CEE2
	ldr r0, _0223CEE4 @ =0x0223EE28
	bl FUN_02022664
	adds r5, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r5, r0
	beq _0223CEE2
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	ldr r2, _0223CEE8 @ =0x00000695
	lsls r0, r0, #4
	adds r1, r4, r0
	ldrb r0, [r1, r2]
	cmp r0, #0
	bne _0223CEE2
	subs r0, r2, #5
	adds r2, r2, #1
	ldrh r0, [r1, r0]
	ldrb r2, [r1, r2]
	ldr r1, _0223CEEC @ =0x000001B9
	cmp r0, r1
	bne _0223CEC2
	ldr r0, [r4, #4]
	bl FUN_0202CC98
	movs r1, #0
	movs r2, #0x64
	adds r3, r1, #0
	bl FUN_020063E4
	b _0223CECA
_0223CEC2:
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	bl FUN_02005844
_0223CECA:
	movs r0, #1
	lsls r0, r0, #0xa
	adds r4, r4, r0
	lsls r6, r5, #2
	ldr r0, [r4, r6]
	movs r1, #1
	bl FUN_02021CC8
	ldr r0, [r4, r6]
	adds r1, r5, #4
	bl FUN_02021D6C
_0223CEE2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223CEE4: .4byte 0x0223EE28
_0223CEE8: .4byte 0x00000695
_0223CEEC: .4byte 0x000001B9
	thumb_func_end ov88_0223CE74

	thumb_func_start ov88_0223CEF0
ov88_0223CEF0: @ 0x0223CEF0
	push {r3, lr}
	ldrh r1, [r0]
	adds r1, #0x14
	strh r1, [r0]
	ldrh r2, [r0]
	movs r1, #0x5a
	lsls r1, r1, #2
	cmp r2, r1
	bls _0223CF06
	movs r1, #0
	strh r1, [r0]
_0223CF06:
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
	movs r1, #0x3a
	movs r2, #2
	blx FUN_020C0160
	pop {r3, pc}
	thumb_func_end ov88_0223CEF0

	thumb_func_start ov88_0223CF30
ov88_0223CF30: @ 0x0223CF30
	push {r3, r4, r5, r6}
	movs r5, #0x18
	muls r5, r0, r5
	ldr r6, _0223CF64 @ =0x0223F004
	movs r0, #6
	movs r4, #0
	adds r5, r6, r5
	muls r0, r1, r0
	adds r5, r5, r0
	adds r3, r4, #0
	adds r1, r5, #0
_0223CF46:
	ldrb r0, [r1]
	lsls r0, r0, #4
	ldrh r0, [r2, r0]
	cmp r0, #0
	beq _0223CF54
	ldrb r4, [r5, r3]
	b _0223CF5C
_0223CF54:
	adds r3, r3, #1
	adds r1, r1, #1
	cmp r3, #6
	blt _0223CF46
_0223CF5C:
	adds r0, r4, #0
	pop {r3, r4, r5, r6}
	bx lr
	nop
_0223CF64: .4byte 0x0223F004
	thumb_func_end ov88_0223CF30

	thumb_func_start ov88_0223CF68
ov88_0223CF68: @ 0x0223CF68
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	cmp r5, #0xd
	blt _0223CF7A
	bl FUN_02022974
_0223CF7A:
	ldr r1, _0223CFE0 @ =0x0223EF9C
	lsls r0, r5, #3
	ldr r1, [r1, r0]
	lsls r1, r1, #0xc
	str r1, [sp]
	ldr r1, _0223CFE4 @ =0x0223EFA0
	ldr r0, [r1, r0]
	add r1, sp, #0
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	cmp r5, #0xc
	bne _0223CFAC
	adds r0, r6, #0
	bl FUN_02021C50
	movs r1, #0xc
	adds r2, r4, #0
	muls r2, r1, r2
	ldr r1, _0223CFE8 @ =0x0223EE58
	adds r0, r6, #0
	ldr r1, [r1, r2]
	bl FUN_02021D6C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0223CFAC:
	adds r0, r6, #0
	bl FUN_02021C50
	cmp r5, #6
	bge _0223CFCA
	movs r1, #0xc
	adds r2, r4, #0
	muls r2, r1, r2
	ldr r1, _0223CFEC @ =0x0223EE50
	adds r0, r6, #0
	ldr r1, [r1, r2]
	bl FUN_02021D6C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0223CFCA:
	movs r1, #0xc
	adds r2, r4, #0
	muls r2, r1, r2
	ldr r1, _0223CFF0 @ =0x0223EE54
	adds r0, r6, #0
	ldr r1, [r1, r2]
	bl FUN_02021D6C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0223CFE0: .4byte 0x0223EF9C
_0223CFE4: .4byte 0x0223EFA0
_0223CFE8: .4byte 0x0223EE58
_0223CFEC: .4byte 0x0223EE50
_0223CFF0: .4byte 0x0223EE54
	thumb_func_end ov88_0223CF68

	thumb_func_start ov88_0223CFF4
ov88_0223CFF4: @ 0x0223CFF4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	str r2, [sp]
	ldr r0, [r5]
	adds r4, r1, #0
	ldr r2, [sp, #0x18]
	subs r1, r0, #1
	movs r7, #0
	cmp r2, #0
	bne _0223D034
	cmp r0, #0
	beq _0223D02E
	ldr r0, [r4]
	adds r2, r3, #0
	bl ov88_0223CF30
	ldr r1, [sp]
	ldr r2, [sp, #0x18]
	adds r6, r0, #0
	bl ov88_0223CF68
	ldr r0, [r4]
	cmp r0, r6
	beq _0223D02E
	ldr r0, _0223D040 @ =0x000005DC
	bl FUN_02005748
	str r6, [r4]
	movs r7, #1
_0223D02E:
	movs r0, #0
	str r0, [r5]
	b _0223D03C
_0223D034:
	ldr r0, [r4]
	ldr r1, [sp]
	bl ov88_0223CF68
_0223D03C:
	adds r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223D040: .4byte 0x000005DC
	thumb_func_end ov88_0223CFF4

	thumb_func_start ov88_0223D044
ov88_0223D044: @ 0x0223D044
	push {r3, lr}
	add r0, sp, #0
	strb r2, [r0]
	adds r0, r1, #0
	add r1, sp, #0
	movs r2, #1
	bl FUN_020359DC
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov88_0223D044

	thumb_func_start ov88_0223D058
ov88_0223D058: @ 0x0223D058
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0223D088 @ =0x000036A0
	adds r4, r1, #0
	ldr r1, [r5, r0]
	adds r6, r2, #0
	cmp r6, r1
	bne _0223D070
	adds r0, r0, #4
	ldr r0, [r5, r0]
	cmp r4, r0
	beq _0223D084
_0223D070:
	bl FUN_0203608C
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov88_0223D044
	ldr r0, _0223D088 @ =0x000036A0
	str r6, [r5, r0]
	adds r0, r0, #4
	str r4, [r5, r0]
_0223D084:
	pop {r4, r5, r6, pc}
	nop
_0223D088: .4byte 0x000036A0
	thumb_func_end ov88_0223D058

	thumb_func_start ov88_0223D08C
ov88_0223D08C: @ 0x0223D08C
	movs r2, #0x59
	lsls r2, r2, #4
	muls r2, r1, r2
	adds r0, r0, r2
	bx lr
	.align 2, 0
	thumb_func_end ov88_0223D08C

	thumb_func_start ov88_0223D098
ov88_0223D098: @ 0x0223D098
	push {r3, r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r1, #0
	adds r4, r2, #0
	bl FUN_02035D78
	cmp r0, #0
	beq _0223D0BE
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov88_0223D08C
	movs r2, #0x59
	adds r1, r0, #0
	movs r0, #0x16
	lsls r2, r2, #4
	bl FUN_0203597C
_0223D0BE:
	pop {r3, r4, r5, pc}
	thumb_func_end ov88_0223D098

	thumb_func_start ov88_0223D0C0
ov88_0223D0C0: @ 0x0223D0C0
	push {r3, lr}
	bl FUN_0202D79C
	adds r1, r0, #0
	movs r0, #0x20
	movs r2, #0xe
	bl FUN_020359DC
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov88_0223D0C0

	thumb_func_start ov88_0223D0D4
ov88_0223D0D4: @ 0x0223D0D4
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	adds r6, r0, #0
	adds r5, r1, #0
	bl FUN_02025EF0
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_020021B0
	adds r0, r6, #0
	bl FUN_02025F20
	str r0, [r4, #0x10]
	adds r0, r6, #0
	bl FUN_02025FD8
	strb r0, [r4, #0x14]
	adds r0, r6, #0
	bl FUN_02025FCC
	strb r0, [r4, #0x15]
	adds r0, r6, #0
	bl FUN_02025F30
	strb r0, [r4, #0x16]
	movs r0, #0
	adds r1, r4, #0
_0223D10C:
	ldr r2, [r5, #0x10]
	str r2, [r1, #0x18]
	ldrb r3, [r5, #0x15]
	adds r2, r4, r0
	adds r2, #0x58
	strb r3, [r2]
	adds r2, r4, r0
	ldrb r3, [r5, #0x14]
	adds r2, #0x68
	adds r1, r1, #4
	strb r3, [r2]
	adds r2, r4, r0
	ldrb r3, [r5, #0x16]
	adds r2, #0x78
	adds r0, r0, #1
	adds r5, #0x88
	strb r3, [r2]
	cmp r0, #0x10
	blt _0223D10C
	movs r0, #0x1c
	adds r1, r4, #0
	movs r2, #0x88
	bl FUN_0203597C
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov88_0223D0D4

	thumb_func_start ov88_0223D140
ov88_0223D140: @ 0x0223D140
	ldr r3, _0223D14C @ =FUN_0203597C
	movs r2, #0xfa
	adds r1, r0, #0
	movs r0, #0x1d
	lsls r2, r2, #2
	bx r3
	.align 2, 0
_0223D14C: .4byte FUN_0203597C
	thumb_func_end ov88_0223D140

	thumb_func_start ov88_0223D150
ov88_0223D150: @ 0x0223D150
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223D1D4 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #2
	tst r0, r1
	beq _0223D186
	ldr r0, _0223D1D8 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0xc
	adds r0, #0x88
	str r1, [r0]
	adds r0, r4, #0
	bl ov88_0223BE28
	adds r0, r4, #0
	movs r1, #0xce
	adds r0, #0x88
	lsls r1, r1, #2
	ldr r0, [r0]
	ldr r1, [r4, r1]
	movs r2, #0
	bl ov88_0223CF68
	b _0223D1CE
_0223D186:
	movs r0, #0x53
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov88_0223CE34
	ldr r0, _0223D1D4 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _0223D1CE
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223D1CE
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #0xc
	bne _0223D1B6
	ldr r1, _0223D1DC @ =ov88_0223D2C4
	ldr r0, _0223D1E0 @ =0x00002214
	str r1, [r4, r0]
	b _0223D1CE
_0223D1B6:
	cmp r0, #6
	bge _0223D1C2
	ldr r1, _0223D1E4 @ =ov88_0223DA3C
	ldr r0, _0223D1E0 @ =0x00002214
	str r1, [r4, r0]
	b _0223D1CE
_0223D1C2:
	blt _0223D1CE
	cmp r0, #0xc
	bge _0223D1CE
	ldr r1, _0223D1E8 @ =ov88_0223E4BC
	ldr r0, _0223D1E0 @ =0x00002214
	str r1, [r4, r0]
_0223D1CE:
	movs r0, #0
	pop {r4, pc}
	nop
_0223D1D4: .4byte 0x021BF67C
_0223D1D8: .4byte 0x000005DC
_0223D1DC: .4byte ov88_0223D2C4
_0223D1E0: .4byte 0x00002214
_0223D1E4: .4byte ov88_0223DA3C
_0223D1E8: .4byte ov88_0223E4BC
	thumb_func_end ov88_0223D150

	thumb_func_start ov88_0223D1EC
ov88_0223D1EC: @ 0x0223D1EC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bne _0223D21C
	ldr r0, _0223D2B0 @ =0x00002218
	ldr r0, [r5, r0]
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	ldr r0, [r0, #8]
	bl FUN_0207A0F8
	strb r0, [r5, #0x1f]
	movs r0, #0
	str r0, [r5, #0x34]
	bl FUN_0203608C
	bl FUN_02032EE8
	adds r1, r0, #0
	adds r0, r5, #0
	adds r0, #0xc
	bl FUN_0208E9C0
	b _0223D256
_0223D21C:
	ldr r0, _0223D2B4 @ =0x0000221C
	ldr r1, [r5, r0]
	str r1, [r5, #0xc]
	ldr r0, [r5, r0]
	bl FUN_0207A0F8
	strb r0, [r5, #0x1f]
	bl FUN_0203608C
	movs r2, #1
	ldr r1, _0223D2B8 @ =0x00002E14
	eors r2, r0
	movs r0, #0xfb
	lsls r0, r0, #2
	adds r1, r5, r1
	muls r0, r2, r0
	adds r0, r1, r0
	str r0, [r5, #0x34]
	bl FUN_0203608C
	movs r1, #1
	eors r0, r1
	bl FUN_02032EE8
	adds r1, r0, #0
	adds r0, r5, #0
	adds r0, #0xc
	bl FUN_0208E9C0
_0223D256:
	movs r0, #1
	strb r0, [r5, #0x1d]
	adds r0, r5, #0
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #6
	blx FUN_020E1F6C
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	movs r0, #1
	strb r0, [r5, #0x1e]
	movs r0, #0
	strh r0, [r5, #0x24]
	ldr r0, [r5, #8]
	ldr r0, [r0, #0x10]
	bl FUN_0208C324
	str r0, [r5, #0x38]
	ldr r0, [r5, #8]
	ldr r0, [r0, #0x30]
	str r0, [r5, #0x28]
	ldr r0, [r5, #8]
	ldr r0, [r0, #0x18]
	str r0, [r5, #0x10]
	ldr r0, [r5, #8]
	ldr r0, [r0, #0x10]
	bl FUN_0202D79C
	str r0, [r5, #0x2c]
	adds r0, r5, #0
	ldr r1, _0223D2BC @ =0x0223F13C
	adds r0, #0xc
	bl FUN_0208D720
	adds r1, r5, #0
	ldr r0, _0223D2C0 @ =0x020F410C
	adds r1, #0xc
	movs r2, #0x1a
	bl FUN_020067E8
	str r0, [r5, #0x40]
	str r4, [r5, #0x3c]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223D2B0: .4byte 0x00002218
_0223D2B4: .4byte 0x0000221C
_0223D2B8: .4byte 0x00002E14
_0223D2BC: .4byte 0x0223F13C
_0223D2C0: .4byte 0x020F410C
	thumb_func_end ov88_0223D1EC

	thumb_func_start ov88_0223D2C4
ov88_0223D2C4: @ 0x0223D2C4
	push {r4, lr}
	sub sp, #0x10
	movs r1, #0
	adds r4, r0, #0
	str r1, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x5d
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02019CB8
	movs r3, #0x5e
	lsls r3, r3, #2
	ldr r0, [r4, r3]
	adds r3, #0xc
	str r0, [sp]
	ldr r0, _0223D30C @ =0x000005A8
	ldr r3, [r4, r3]
	adds r0, r4, r0
	movs r1, #0x19
	movs r2, #1
	bl ov88_0223ECBC
	ldr r1, _0223D310 @ =ov88_0223D318
	ldr r0, _0223D314 @ =0x00002214
	str r1, [r4, r0]
	movs r0, #0
	add sp, #0x10
	pop {r4, pc}
	nop
_0223D30C: .4byte 0x000005A8
_0223D310: .4byte ov88_0223D318
_0223D314: .4byte 0x00002214
	thumb_func_end ov88_0223D2C4

	thumb_func_start ov88_0223D318
ov88_0223D318: @ 0x0223D318
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0x5d
	ldr r2, _0223D3C8 @ =0x00000658
	lsls r0, r0, #2
	adds r1, r4, r2
	adds r2, #0xc
	ldr r0, [r4, r0]
	adds r2, r4, r2
	bl ov88_0223ED2C
	cmp r0, #0
	beq _0223D33E
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	beq _0223D388
	b _0223D3C2
_0223D33E:
	movs r1, #0
	str r1, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x5d
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02019CB8
	movs r3, #0x5e
	lsls r3, r3, #2
	ldr r0, [r4, r3]
	adds r3, #0xc
	str r0, [sp]
	ldr r0, _0223D3CC @ =0x000005A8
	ldr r3, [r4, r3]
	adds r0, r4, r0
	movs r1, #0x1c
	movs r2, #1
	bl ov88_0223ECBC
	adds r0, r4, #0
	movs r1, #0x18
	movs r2, #1
	bl ov88_0223D058
	ldr r1, _0223D3D0 @ =ov88_0223DA00
	ldr r0, _0223D3D4 @ =0x00002214
	str r1, [r4, r0]
	movs r0, #0
	str r0, [r4, #0x5c]
	b _0223D3C2
_0223D388:
	movs r1, #0
	str r1, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x5d
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02019CB8
	movs r3, #0x5e
	lsls r3, r3, #2
	ldr r0, [r4, r3]
	adds r3, #0xc
	str r0, [sp]
	ldr r0, _0223D3D8 @ =0x00000588
	ldr r3, [r4, r3]
	adds r0, r4, r0
	movs r1, #0xf
	movs r2, #1
	bl ov88_0223ECBC
	ldr r1, _0223D3DC @ =ov88_0223D150
	ldr r0, _0223D3D4 @ =0x00002214
	str r1, [r4, r0]
_0223D3C2:
	movs r0, #0
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_0223D3C8: .4byte 0x00000658
_0223D3CC: .4byte 0x000005A8
_0223D3D0: .4byte ov88_0223DA00
_0223D3D4: .4byte 0x00002214
_0223D3D8: .4byte 0x00000588
_0223D3DC: .4byte ov88_0223D150
	thumb_func_end ov88_0223D318

	thumb_func_start ov88_0223D3E0
ov88_0223D3E0: @ 0x0223D3E0
	push {r4, lr}
	sub sp, #0x10
	movs r1, #0
	adds r4, r0, #0
	str r1, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x5d
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02019CB8
	movs r3, #0x5e
	lsls r3, r3, #2
	ldr r0, [r4, r3]
	adds r3, #0xc
	str r0, [sp]
	ldr r0, _0223D428 @ =0x000005A8
	ldr r1, [r4, #0x68]
	ldr r3, [r4, r3]
	adds r0, r4, r0
	movs r2, #1
	bl ov88_0223ECBC
	ldr r1, _0223D42C @ =ov88_0223D434
	ldr r0, _0223D430 @ =0x00002214
	str r1, [r4, r0]
	movs r0, #0
	add sp, #0x10
	pop {r4, pc}
	nop
_0223D428: .4byte 0x000005A8
_0223D42C: .4byte ov88_0223D434
_0223D430: .4byte 0x00002214
	thumb_func_end ov88_0223D3E0

	thumb_func_start ov88_0223D434
ov88_0223D434: @ 0x0223D434
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r0, _0223D48C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _0223D484
	movs r1, #0
	str r1, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x5d
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02019CB8
	movs r3, #0x5e
	lsls r3, r3, #2
	ldr r0, [r4, r3]
	adds r3, #0xc
	str r0, [sp]
	ldr r0, _0223D490 @ =0x00000588
	ldr r3, [r4, r3]
	adds r0, r4, r0
	movs r1, #0xf
	movs r2, #1
	bl ov88_0223ECBC
	ldr r1, _0223D494 @ =ov88_0223D150
	ldr r0, _0223D498 @ =0x00002214
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov88_0223DFF4
_0223D484:
	movs r0, #0
	add sp, #0x10
	pop {r4, pc}
	nop
_0223D48C: .4byte 0x021BF67C
_0223D490: .4byte 0x00000588
_0223D494: .4byte ov88_0223D150
_0223D498: .4byte 0x00002214
	thumb_func_end ov88_0223D434

	thumb_func_start ov88_0223D49C
ov88_0223D49C: @ 0x0223D49C
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, _0223D4BC @ =0x00003674
	adds r3, r0, #0
	ldr r0, [r3, r4]
	adds r4, r4, #4
	str r0, [sp]
	ldr r0, _0223D4C0 @ =0x000005A8
	movs r2, #1
	adds r0, r3, r0
	ldr r3, [r3, r4]
	bl ov88_0223ECBC
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223D4BC: .4byte 0x00003674
_0223D4C0: .4byte 0x000005A8
	thumb_func_end ov88_0223D49C

	thumb_func_start ov88_0223D4C4
ov88_0223D4C4: @ 0x0223D4C4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x5d
	ldr r2, _0223D504 @ =0x00000658
	lsls r0, r0, #2
	adds r1, r4, r2
	adds r2, #0xc
	ldr r0, [r4, r0]
	adds r2, r4, r2
	bl ov88_0223ED2C
	cmp r0, #0
	beq _0223D4E8
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	beq _0223D4F0
	b _0223D4FE
_0223D4E8:
	ldr r1, _0223D508 @ =ov88_0223D854
	ldr r0, _0223D50C @ =0x00002214
	str r1, [r4, r0]
	b _0223D4FE
_0223D4F0:
	adds r0, r4, #0
	movs r1, #0x3a
	bl ov88_0223D49C
	ldr r1, _0223D510 @ =ov88_0223D740
	ldr r0, _0223D50C @ =0x00002214
	str r1, [r4, r0]
_0223D4FE:
	movs r0, #0
	pop {r4, pc}
	nop
_0223D504: .4byte 0x00000658
_0223D508: .4byte ov88_0223D854
_0223D50C: .4byte 0x00002214
_0223D510: .4byte ov88_0223D740
	thumb_func_end ov88_0223D4C4

	thumb_func_start ov88_0223D514
ov88_0223D514: @ 0x0223D514
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x5d
	ldr r2, _0223D598 @ =0x00000658
	lsls r0, r0, #2
	adds r1, r4, r2
	adds r2, #0xc
	ldr r0, [r4, r0]
	adds r2, r4, r2
	bl ov88_0223ED2C
	cmp r0, #0
	beq _0223D53A
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	beq _0223D56E
	b _0223D590
_0223D53A:
	ldr r0, [r4, #4]
	bl FUN_0203068C
	ldr r1, _0223D59C @ =0x00003670
	ldr r1, [r4, r1]
	bl FUN_02030788
	ldr r1, _0223D5A0 @ =0x00003694
	ldr r0, [r4, r1]
	subs r1, #0x24
	ldr r1, [r4, r1]
	bl FUN_0202AFD4
	movs r0, #0
	str r0, [sp]
	ldr r1, _0223D5A4 @ =0x0000366C
	ldr r0, [r4, #4]
	ldr r1, [r4, r1]
	movs r2, #0x1f
	movs r3, #0x1a
	bl FUN_02039298
	ldr r1, _0223D5A8 @ =ov88_0223D854
	ldr r0, _0223D5AC @ =0x00002214
	str r1, [r4, r0]
	b _0223D590
_0223D56E:
	ldr r0, _0223D5A4 @ =0x0000366C
	ldr r0, [r4, r0]
	bl FUN_02032EE8
	adds r2, r0, #0
	ldr r0, _0223D5B0 @ =0x00003674
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_0200B498
	adds r0, r4, #0
	movs r1, #0x3b
	bl ov88_0223D49C
	ldr r1, _0223D5B4 @ =ov88_0223D4C4
	ldr r0, _0223D5AC @ =0x00002214
	str r1, [r4, r0]
_0223D590:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223D598: .4byte 0x00000658
_0223D59C: .4byte 0x00003670
_0223D5A0: .4byte 0x00003694
_0223D5A4: .4byte 0x0000366C
_0223D5A8: .4byte ov88_0223D854
_0223D5AC: .4byte 0x00002214
_0223D5B0: .4byte 0x00003674
_0223D5B4: .4byte ov88_0223D4C4
	thumb_func_end ov88_0223D514

	thumb_func_start ov88_0223D5B8
ov88_0223D5B8: @ 0x0223D5B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0xda
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	bl FUN_02001288
	adds r4, r0, #0
	movs r0, #1
	mvns r0, r0
	cmp r4, r0
	beq _0223D5DA
	adds r0, r0, #1
	cmp r4, r0
	bne _0223D604
	movs r0, #0
	pop {r4, r5, r6, pc}
_0223D5DA:
	ldr r0, _0223D674 @ =0x000005DC
	bl FUN_02005748
	ldr r0, _0223D678 @ =0x0000366C
	ldr r0, [r5, r0]
	bl FUN_02032EE8
	adds r2, r0, #0
	ldr r0, _0223D67C @ =0x00003674
	movs r1, #0
	ldr r0, [r5, r0]
	bl FUN_0200B498
	adds r0, r5, #0
	movs r1, #0x3b
	bl ov88_0223D49C
	ldr r1, _0223D680 @ =ov88_0223D4C4
	ldr r0, _0223D684 @ =0x00002214
	str r1, [r5, r0]
	b _0223D648
_0223D604:
	ldr r0, _0223D674 @ =0x000005DC
	bl FUN_02005748
	ldr r0, _0223D688 @ =0x00003670
	str r4, [r5, r0]
	movs r0, #0x1a
	bl FUN_02025E6C
	adds r6, r0, #0
	ldr r0, _0223D68C @ =0x00003694
	adds r1, r4, #0
	ldr r0, [r5, r0]
	bl FUN_0202AEF0
	adds r1, r0, #0
	adds r0, r6, #0
	bl FUN_02025EC0
	ldr r0, _0223D67C @ =0x00003674
	movs r1, #0
	ldr r0, [r5, r0]
	adds r2, r6, #0
	bl FUN_0200B498
	adds r0, r6, #0
	bl FUN_020181C4
	adds r0, r5, #0
	movs r1, #0x3c
	bl ov88_0223D49C
	ldr r1, _0223D690 @ =ov88_0223D514
	ldr r0, _0223D684 @ =0x00002214
	str r1, [r5, r0]
_0223D648:
	ldr r0, _0223D694 @ =0x00003684
	movs r1, #0
	adds r0, r5, r0
	bl FUN_0200DC9C
	ldr r0, _0223D694 @ =0x00003684
	adds r0, r5, r0
	bl FUN_0201A8FC
	movs r0, #0xda
	lsls r0, r0, #6
	movs r1, #0
	ldr r0, [r5, r0]
	adds r2, r1, #0
	bl FUN_02001384
	ldr r0, _0223D698 @ =0x0000367C
	ldr r0, [r5, r0]
	bl FUN_02013A3C
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223D674: .4byte 0x000005DC
_0223D678: .4byte 0x0000366C
_0223D67C: .4byte 0x00003674
_0223D680: .4byte ov88_0223D4C4
_0223D684: .4byte 0x00002214
_0223D688: .4byte 0x00003670
_0223D68C: .4byte 0x00003694
_0223D690: .4byte ov88_0223D514
_0223D694: .4byte 0x00003684
_0223D698: .4byte 0x0000367C
	thumb_func_end ov88_0223D5B8

	thumb_func_start ov88_0223D69C
ov88_0223D69C: @ 0x0223D69C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _0223D730 @ =0x00003694
	ldr r0, [r5, r0]
	bl FUN_0202AF94
	str r0, [sp]
	adds r0, r0, #1
	movs r1, #0x1a
	bl FUN_02013A04
	ldr r1, _0223D734 @ =0x0000367C
	str r0, [r5, r1]
	movs r0, #0x64
	movs r1, #0x1a
	bl FUN_02023790
	ldr r7, _0223D730 @ =0x00003694
	adds r6, r0, #0
	movs r4, #0
_0223D6C4:
	ldr r0, [r5, r7]
	adds r1, r4, #0
	bl FUN_0202AF78
	cmp r0, #0
	beq _0223D6EE
	ldr r0, _0223D730 @ =0x00003694
	adds r1, r4, #0
	ldr r0, [r5, r0]
	bl FUN_0202AEF0
	adds r1, r0, #0
	adds r0, r6, #0
	bl FUN_02023D28
	ldr r0, _0223D734 @ =0x0000367C
	adds r1, r6, #0
	ldr r0, [r5, r0]
	adds r2, r4, #0
	bl FUN_02013A6C
_0223D6EE:
	adds r4, r4, #1
	cmp r4, #0x20
	blt _0223D6C4
	ldr r1, _0223D734 @ =0x0000367C
	movs r2, #0xb
	ldr r0, [r5, r1]
	subs r1, r1, #4
	adds r3, r2, #0
	ldr r1, [r5, r1]
	subs r3, #0xd
	bl FUN_02013A4C
	adds r0, r6, #0
	bl FUN_020237BC
	ldr r2, _0223D734 @ =0x0000367C
	movs r3, #0x5d
	lsls r3, r3, #2
	ldr r0, [r5, r2]
	adds r2, #8
	ldr r1, [sp]
	ldr r3, [r5, r3]
	adds r2, r5, r2
	bl ov88_0223ED94
	movs r1, #0xda
	lsls r1, r1, #6
	str r0, [r5, r1]
	ldr r1, _0223D738 @ =ov88_0223D5B8
	ldr r0, _0223D73C @ =0x00002214
	str r1, [r5, r0]
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223D730: .4byte 0x00003694
_0223D734: .4byte 0x0000367C
_0223D738: .4byte ov88_0223D5B8
_0223D73C: .4byte 0x00002214
	thumb_func_end ov88_0223D69C

	thumb_func_start ov88_0223D740
ov88_0223D740: @ 0x0223D740
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x5d
	ldr r2, _0223D794 @ =0x00000658
	lsls r0, r0, #2
	adds r1, r4, r2
	adds r2, #0xc
	ldr r0, [r4, r0]
	adds r2, r4, r2
	bl ov88_0223ED2C
	cmp r0, #0
	beq _0223D764
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	beq _0223D76C
	b _0223D78E
_0223D764:
	ldr r1, _0223D798 @ =ov88_0223D69C
	ldr r0, _0223D79C @ =0x00002214
	str r1, [r4, r0]
	b _0223D78E
_0223D76C:
	ldr r0, _0223D7A0 @ =0x0000366C
	ldr r0, [r4, r0]
	bl FUN_02032EE8
	adds r2, r0, #0
	ldr r0, _0223D7A4 @ =0x00003674
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_0200B498
	adds r0, r4, #0
	movs r1, #0x3b
	bl ov88_0223D49C
	ldr r1, _0223D7A8 @ =ov88_0223D4C4
	ldr r0, _0223D79C @ =0x00002214
	str r1, [r4, r0]
_0223D78E:
	movs r0, #0
	pop {r4, pc}
	nop
_0223D794: .4byte 0x00000658
_0223D798: .4byte ov88_0223D69C
_0223D79C: .4byte 0x00002214
_0223D7A0: .4byte 0x0000366C
_0223D7A4: .4byte 0x00003674
_0223D7A8: .4byte ov88_0223D4C4
	thumb_func_end ov88_0223D740

	thumb_func_start ov88_0223D7AC
ov88_0223D7AC: @ 0x0223D7AC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0x5d
	ldr r2, _0223D828 @ =0x00000658
	lsls r0, r0, #2
	adds r1, r5, r2
	adds r2, #0xc
	ldr r0, [r5, r0]
	adds r2, r5, r2
	bl ov88_0223ED2C
	cmp r0, #0
	beq _0223D7D2
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	beq _0223D81A
	b _0223D820
_0223D7D2:
	ldr r1, _0223D82C @ =ov88_0223D854
	ldr r0, _0223D830 @ =0x00002214
	ldr r6, _0223D834 @ =0x00003694
	str r1, [r5, r0]
	movs r4, #0
_0223D7DC:
	ldr r0, [r5, r6]
	adds r1, r4, #0
	bl FUN_0202AF78
	cmp r0, #0
	bne _0223D7FC
	movs r0, #0
	str r0, [sp]
	ldr r1, _0223D838 @ =0x0000366C
	ldr r0, [r5, #4]
	ldr r1, [r5, r1]
	adds r2, r4, #0
	movs r3, #0x1a
	bl FUN_02039298
	b _0223D802
_0223D7FC:
	adds r4, r4, #1
	cmp r4, #0x20
	blt _0223D7DC
_0223D802:
	cmp r4, #0x20
	bne _0223D820
	adds r0, r5, #0
	movs r1, #0x3a
	bl ov88_0223D49C
	ldr r1, _0223D83C @ =ov88_0223D740
	ldr r0, _0223D830 @ =0x00002214
	add sp, #4
	str r1, [r5, r0]
	movs r0, #0
	pop {r3, r4, r5, r6, pc}
_0223D81A:
	ldr r1, _0223D82C @ =ov88_0223D854
	ldr r0, _0223D830 @ =0x00002214
	str r1, [r5, r0]
_0223D820:
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0223D828: .4byte 0x00000658
_0223D82C: .4byte ov88_0223D854
_0223D830: .4byte 0x00002214
_0223D834: .4byte 0x00003694
_0223D838: .4byte 0x0000366C
_0223D83C: .4byte ov88_0223D740
	thumb_func_end ov88_0223D7AC

	thumb_func_start ov88_0223D840
ov88_0223D840: @ 0x0223D840
	push {r3, lr}
	movs r0, #0x13
	bl FUN_02036540
	cmp r0, #0
	beq _0223D850
	movs r0, #2
	pop {r3, pc}
_0223D850:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov88_0223D840

	thumb_func_start ov88_0223D854
ov88_0223D854: @ 0x0223D854
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r1, #0
	ldr r0, _0223D948 @ =0x0000366C
	mvns r1, r1
	str r1, [r5, r0]
	movs r6, #0
	bl FUN_02035E18
	cmp r0, #0
	ble _0223D890
	ldr r7, _0223D94C @ =0x000035EC
	adds r4, r5, #0
_0223D86E:
	ldr r0, [r4, r7]
	cmp r0, #2
	bne _0223D884
	ldr r0, _0223D948 @ =0x0000366C
	lsls r1, r6, #2
	str r6, [r5, r0]
	movs r2, #0
	adds r1, r5, r1
	subs r0, #0x80
	str r2, [r1, r0]
	b _0223D890
_0223D884:
	adds r4, r4, #4
	adds r6, r6, #1
	bl FUN_02035E18
	cmp r6, r0
	blt _0223D86E
_0223D890:
	ldr r0, _0223D948 @ =0x0000366C
	movs r1, #0
	ldr r2, [r5, r0]
	mvns r1, r1
	cmp r2, r1
	bne _0223D8D4
	adds r0, #0xc
	ldr r0, [r5, r0]
	bl FUN_0200B190
	ldr r0, _0223D950 @ =0x00003674
	ldr r0, [r5, r0]
	bl FUN_0200B3F0
	movs r0, #0x13
	bl FUN_020364F0
	movs r3, #0x5e
	lsls r3, r3, #2
	ldr r0, [r5, r3]
	adds r3, #0xc
	str r0, [sp]
	ldr r0, _0223D954 @ =0x000005A8
	ldr r3, [r5, r3]
	adds r0, r5, r0
	movs r1, #0x1c
	movs r2, #1
	bl ov88_0223ECBC
	ldr r1, _0223D958 @ =ov88_0223D840
	ldr r0, _0223D95C @ =0x00002214
	str r1, [r5, r0]
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223D8D4:
	ldr r0, [r5, #4]
	bl FUN_0207D990
	ldr r1, _0223D960 @ =0x000001B5
	movs r2, #1
	movs r3, #0x1a
	bl FUN_0207D688
	cmp r0, #1
	bne _0223D90E
	ldr r0, _0223D948 @ =0x0000366C
	ldr r0, [r5, r0]
	bl FUN_02032EE8
	adds r2, r0, #0
	ldr r0, _0223D950 @ =0x00003674
	movs r1, #0
	ldr r0, [r5, r0]
	bl FUN_0200B498
	adds r0, r5, #0
	movs r1, #0x39
	bl ov88_0223D49C
	ldr r1, _0223D964 @ =ov88_0223D7AC
	ldr r0, _0223D95C @ =0x00002214
	str r1, [r5, r0]
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223D90E:
	ldr r0, [r5, #4]
	bl FUN_0202B370
	adds r6, r0, #0
	movs r4, #0
_0223D918:
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_0202AF78
	cmp r0, #0
	bne _0223D938
	movs r0, #0
	str r0, [sp]
	ldr r1, _0223D948 @ =0x0000366C
	ldr r0, [r5, #4]
	ldr r1, [r5, r1]
	adds r2, r4, #0
	movs r3, #0x1a
	bl FUN_02039298
	b _0223D93E
_0223D938:
	adds r4, r4, #1
	cmp r4, #0x20
	blt _0223D918
_0223D93E:
	ldr r1, _0223D968 @ =ov88_0223D854
	ldr r0, _0223D95C @ =0x00002214
	str r1, [r5, r0]
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223D948: .4byte 0x0000366C
_0223D94C: .4byte 0x000035EC
_0223D950: .4byte 0x00003674
_0223D954: .4byte 0x000005A8
_0223D958: .4byte ov88_0223D840
_0223D95C: .4byte 0x00002214
_0223D960: .4byte 0x000001B5
_0223D964: .4byte ov88_0223D7AC
_0223D968: .4byte ov88_0223D854
	thumb_func_end ov88_0223D854

	thumb_func_start ov88_0223D96C
ov88_0223D96C: @ 0x0223D96C
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _0223D9DC @ =0x000035EC
	ldr r0, [r4, #4]
	adds r1, r4, r1
	movs r2, #0x1a
	bl FUN_020391DC
	cmp r0, #0
	bne _0223D9AC
	movs r0, #0x13
	bl FUN_020364F0
	movs r3, #0x5e
	lsls r3, r3, #2
	ldr r0, [r4, r3]
	adds r3, #0xc
	str r0, [sp]
	ldr r0, _0223D9E0 @ =0x000005A8
	ldr r3, [r4, r3]
	adds r0, r4, r0
	movs r1, #0x1c
	movs r2, #1
	bl ov88_0223ECBC
	ldr r1, _0223D9E4 @ =ov88_0223D840
	ldr r0, _0223D9E8 @ =0x00002214
	add sp, #4
	str r1, [r4, r0]
	movs r0, #0
	pop {r3, r4, pc}
_0223D9AC:
	movs r0, #0x1a
	bl FUN_0200B358
	ldr r1, _0223D9EC @ =0x00003674
	ldr r2, _0223D9F0 @ =0x000002A3
	str r0, [r4, r1]
	movs r1, #0x1a
	movs r0, #0
	adds r3, r1, #0
	bl FUN_0200B144
	ldr r1, _0223D9F4 @ =0x00003678
	str r0, [r4, r1]
	ldr r0, [r4, #4]
	bl FUN_0202B370
	ldr r1, _0223D9F8 @ =0x00003694
	str r0, [r4, r1]
	ldr r1, _0223D9FC @ =ov88_0223D854
	ldr r0, _0223D9E8 @ =0x00002214
	str r1, [r4, r0]
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0223D9DC: .4byte 0x000035EC
_0223D9E0: .4byte 0x000005A8
_0223D9E4: .4byte ov88_0223D840
_0223D9E8: .4byte 0x00002214
_0223D9EC: .4byte 0x00003674
_0223D9F0: .4byte 0x000002A3
_0223D9F4: .4byte 0x00003678
_0223D9F8: .4byte 0x00003694
_0223D9FC: .4byte ov88_0223D854
	thumb_func_end ov88_0223D96C

	thumb_func_start ov88_0223DA00
ov88_0223DA00: @ 0x0223DA00
	ldr r2, [r0, #0x60]
	cmp r2, #0
	beq _0223DA2C
	ldr r1, [r0, #0x64]
	cmp r1, #0
	beq _0223DA2C
	cmp r2, #1
	bne _0223DA1C
	cmp r1, #1
	bne _0223DA1C
	ldr r2, _0223DA30 @ =ov88_0223D96C
	ldr r1, _0223DA34 @ =0x00002214
	str r2, [r0, r1]
	b _0223DA22
_0223DA1C:
	ldr r2, _0223DA38 @ =ov88_0223D3E0
	ldr r1, _0223DA34 @ =0x00002214
	str r2, [r0, r1]
_0223DA22:
	movs r1, #0
	str r1, [r0, #0x60]
	str r1, [r0, #0x64]
	movs r1, #0x1d
	str r1, [r0, #0x68]
_0223DA2C:
	movs r0, #0
	bx lr
	.align 2, 0
_0223DA30: .4byte ov88_0223D96C
_0223DA34: .4byte 0x00002214
_0223DA38: .4byte ov88_0223D3E0
	thumb_func_end ov88_0223DA00

	thumb_func_start ov88_0223DA3C
ov88_0223DA3C: @ 0x0223DA3C
	push {r3, r4, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	movs r0, #0
	add r1, sp, #0x10
	strb r0, [r1, #8]
	movs r0, #1
	strb r0, [r1, #9]
	movs r0, #3
	strb r0, [r1, #0xa]
	ldrb r2, [r1, #0xb]
	movs r0, #0xf
	bics r2, r0
	strb r2, [r1, #0xb]
	ldrb r2, [r1, #0xb]
	movs r0, #0x30
	bics r2, r0
	strb r2, [r1, #0xb]
	ldrb r2, [r1, #0xb]
	movs r0, #0xc0
	bics r2, r0
	strb r2, [r1, #0xb]
	ldr r0, _0223DB34 @ =0x00002218
	adds r1, r4, #0
	adds r1, #0x88
	ldr r0, [r4, r0]
	ldr r1, [r1]
	bl FUN_0207A0FC
	bl FUN_02076B10
	adds r2, r0, #0
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200B5CC
	movs r1, #0
	str r1, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x5d
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02019CB8
	movs r3, #0x5f
	lsls r3, r3, #2
	ldr r0, [r4, r3]
	adds r3, #8
	str r0, [sp]
	ldr r0, _0223DB38 @ =0x00000598
	ldr r3, [r4, r3]
	adds r0, r4, r0
	movs r1, #0x10
	movs r2, #1
	bl ov88_0223ECBC
	movs r0, #3
	movs r1, #0x1a
	bl FUN_02013A04
	ldr r1, _0223DB3C @ =0x0000065C
	movs r2, #0x11
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #0x61
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	movs r3, #0
	bl FUN_02013A4C
	ldr r0, _0223DB3C @ =0x0000065C
	movs r1, #0x61
	lsls r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	movs r2, #0x12
	movs r3, #1
	bl FUN_02013A4C
	ldr r0, _0223DB3C @ =0x0000065C
	movs r1, #0x61
	lsls r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	movs r2, #0x13
	movs r3, #2
	bl FUN_02013A4C
	ldr r0, _0223DB3C @ =0x0000065C
	ldr r1, [r4, r0]
	str r1, [sp, #0x10]
	subs r0, #0xa4
	adds r0, r4, r0
	str r0, [sp, #0x14]
	bl ov88_0223ED80
	movs r0, #0x1a
	str r0, [sp]
	movs r0, #2
	movs r2, #0
	str r0, [sp, #4]
	add r0, sp, #0x10
	movs r1, #8
	adds r3, r2, #0
	bl FUN_02001B7C
	movs r1, #0x66
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldr r1, _0223DB40 @ =ov88_0223DB48
	ldr r0, _0223DB44 @ =0x00002214
	str r1, [r4, r0]
	movs r0, #0
	add sp, #0x1c
	pop {r3, r4, pc}
	nop
_0223DB34: .4byte 0x00002218
_0223DB38: .4byte 0x00000598
_0223DB3C: .4byte 0x0000065C
_0223DB40: .4byte ov88_0223DB48
_0223DB44: .4byte 0x00002214
	thumb_func_end ov88_0223DA3C

	thumb_func_start ov88_0223DB48
ov88_0223DB48: @ 0x0223DB48
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0x66
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02001BE0
	cmp r0, #2
	bhi _0223DB6A
	cmp r0, #0
	beq _0223DB74
	cmp r0, #1
	beq _0223DBC8
	cmp r0, #2
	beq _0223DC18
	b _0223DC66
_0223DB6A:
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	beq _0223DC18
	b _0223DC66
_0223DB74:
	movs r1, #0
	str r1, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x5d
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02019CB8
	movs r3, #0x5e
	lsls r3, r3, #2
	ldr r0, [r4, r3]
	adds r3, #0xc
	str r0, [sp]
	ldr r0, _0223DC6C @ =0x00000588
	ldr r3, [r4, r3]
	adds r0, r4, r0
	movs r1, #0xf
	movs r2, #1
	bl ov88_0223ECBC
	movs r0, #0x66
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02001BC4
	ldr r0, _0223DC70 @ =0x0000065C
	ldr r0, [r4, r0]
	bl FUN_02013A3C
	ldr r1, _0223DC74 @ =ov88_0223D150
	ldr r0, _0223DC78 @ =0x00002214
	add sp, #0x10
	str r1, [r4, r0]
	movs r0, #3
	pop {r4, pc}
_0223DBC8:
	movs r1, #0
	str r1, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x5d
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02019CB8
	movs r3, #0x5e
	lsls r3, r3, #2
	ldr r0, [r4, r3]
	adds r3, #0xc
	str r0, [sp]
	ldr r0, _0223DC7C @ =0x000005A8
	ldr r3, [r4, r3]
	adds r0, r4, r0
	movs r1, #0x14
	movs r2, #1
	bl ov88_0223ECBC
	movs r0, #0x66
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02001BC4
	ldr r0, _0223DC70 @ =0x0000065C
	ldr r0, [r4, r0]
	bl FUN_02013A3C
	ldr r1, _0223DC80 @ =ov88_0223DC84
	ldr r0, _0223DC78 @ =0x00002214
	str r1, [r4, r0]
	b _0223DC66
_0223DC18:
	movs r1, #0
	str r1, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x5d
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02019CB8
	movs r3, #0x5e
	lsls r3, r3, #2
	ldr r0, [r4, r3]
	adds r3, #0xc
	str r0, [sp]
	ldr r0, _0223DC6C @ =0x00000588
	ldr r3, [r4, r3]
	adds r0, r4, r0
	movs r1, #0xf
	movs r2, #1
	bl ov88_0223ECBC
	movs r0, #0x66
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02001BC4
	ldr r0, _0223DC70 @ =0x0000065C
	ldr r0, [r4, r0]
	bl FUN_02013A3C
	ldr r1, _0223DC74 @ =ov88_0223D150
	ldr r0, _0223DC78 @ =0x00002214
	str r1, [r4, r0]
_0223DC66:
	movs r0, #0
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_0223DC6C: .4byte 0x00000588
_0223DC70: .4byte 0x0000065C
_0223DC74: .4byte ov88_0223D150
_0223DC78: .4byte 0x00002214
_0223DC7C: .4byte 0x000005A8
_0223DC80: .4byte ov88_0223DC84
	thumb_func_end ov88_0223DB48

	thumb_func_start ov88_0223DC84
ov88_0223DC84: @ 0x0223DC84
	push {r4, lr}
	sub sp, #0x10
	movs r1, #0
	adds r4, r0, #0
	str r1, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x5d
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02019CB8
	movs r3, #0x5e
	lsls r3, r3, #2
	ldr r0, [r4, r3]
	adds r3, #0xc
	str r0, [sp]
	ldr r0, _0223DCD4 @ =0x000005A8
	ldr r3, [r4, r3]
	adds r0, r4, r0
	movs r1, #0x14
	movs r2, #1
	bl ov88_0223ECBC
	adds r0, r4, #0
	movs r1, #0x18
	movs r2, #2
	bl ov88_0223D058
	ldr r1, _0223DCD8 @ =ov88_0223DCE0
	ldr r0, _0223DCDC @ =0x00002214
	str r1, [r4, r0]
	movs r0, #0
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_0223DCD4: .4byte 0x000005A8
_0223DCD8: .4byte ov88_0223DCE0
_0223DCDC: .4byte 0x00002214
	thumb_func_end ov88_0223DC84

	thumb_func_start ov88_0223DCE0
ov88_0223DCE0: @ 0x0223DCE0
	ldr r2, [r0, #0x60]
	cmp r2, #0
	beq _0223DD0C
	ldr r1, [r0, #0x64]
	cmp r1, #0
	beq _0223DD0C
	cmp r2, #2
	bne _0223DCFC
	cmp r1, #2
	bne _0223DCFC
	ldr r2, _0223DD10 @ =ov88_0223DD1C
	ldr r1, _0223DD14 @ =0x00002214
	str r2, [r0, r1]
	b _0223DD02
_0223DCFC:
	ldr r2, _0223DD18 @ =ov88_0223D3E0
	ldr r1, _0223DD14 @ =0x00002214
	str r2, [r0, r1]
_0223DD02:
	movs r1, #0x18
	str r1, [r0, #0x68]
	movs r1, #0
	str r1, [r0, #0x60]
	str r1, [r0, #0x64]
_0223DD0C:
	movs r0, #0
	bx lr
	.align 2, 0
_0223DD10: .4byte ov88_0223DD1C
_0223DD14: .4byte 0x00002214
_0223DD18: .4byte ov88_0223D3E0
	thumb_func_end ov88_0223DCE0

	thumb_func_start ov88_0223DD1C
ov88_0223DD1C: @ 0x0223DD1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, _0223DE3C @ =0x00000438
	movs r6, #0
	adds r0, r7, r0
	adds r4, r7, #0
	adds r5, r7, #0
	str r0, [sp, #4]
_0223DD2E:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r6, r0
	beq _0223DD6C
	movs r0, #0x37
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, _0223DE40 @ =0x00000692
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _0223DD58
	movs r0, #0x3a
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021CAC
_0223DD58:
	ldr r0, _0223DE44 @ =0x0000069C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223DD6C
	movs r0, #0x3d
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021CAC
_0223DD6C:
	adds r0, r6, #7
	lsls r1, r0, #4
	ldr r0, [sp, #4]
	adds r0, r0, r1
	bl FUN_0201AD10
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r0, [r0]
	subs r0, r0, #6
	cmp r6, r0
	beq _0223DDB8
	movs r0, #0xe2
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, _0223DE48 @ =0x000006F2
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _0223DDA4
	movs r0, #0xee
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021CAC
_0223DDA4:
	ldr r0, _0223DE4C @ =0x000006FC
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223DDB8
	movs r0, #0xfa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021CAC
_0223DDB8:
	adds r0, r6, #0
	adds r0, #0xd
	lsls r1, r0, #4
	ldr r0, [sp, #4]
	adds r0, r0, r1
	bl FUN_0201AD10
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, #0x10
	cmp r6, #6
	blt _0223DD2E
	movs r0, #0xce
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #0xcf
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	movs r1, #0
	bl FUN_02021CAC
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	movs r3, #0x30
	lsls r2, r0, #3
	ldr r1, _0223DE50 @ =0x0223EF9C
	ldr r0, _0223DE54 @ =0x000022C4
	ldr r1, [r1, r2]
	ldr r4, _0223DE58 @ =0x0223EFA0
	adds r0, r7, r0
	ldr r2, [r4, r2]
	adds r1, #0x10
	subs r2, r2, #6
	str r3, [sp]
	bl ov88_0223DE68
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r0, [r0]
	ldr r1, _0223DE50 @ =0x0223EF9C
	lsls r2, r0, #3
	movs r0, #0x30
	str r0, [sp]
	ldr r0, _0223DE5C @ =0x000022DC
	ldr r1, [r1, r2]
	adds r3, r4, #0
	ldr r2, [r3, r2]
	adds r0, r7, r0
	adds r1, #0x10
	subs r2, r2, #6
	movs r3, #0xb0
	bl ov88_0223DE68
	ldr r1, _0223DE60 @ =0x000022BC
	movs r0, #0
	str r0, [r7, r1]
	ldr r2, _0223DE64 @ =ov88_0223DF00
	subs r1, #0xa8
	str r2, [r7, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223DE3C: .4byte 0x00000438
_0223DE40: .4byte 0x00000692
_0223DE44: .4byte 0x0000069C
_0223DE48: .4byte 0x000006F2
_0223DE4C: .4byte 0x000006FC
_0223DE50: .4byte 0x0223EF9C
_0223DE54: .4byte 0x000022C4
_0223DE58: .4byte 0x0223EFA0
_0223DE5C: .4byte 0x000022DC
_0223DE60: .4byte 0x000022BC
_0223DE64: .4byte ov88_0223DF00
	thumb_func_end ov88_0223DD1C

	thumb_func_start ov88_0223DE68
ov88_0223DE68: @ 0x0223DE68
	lsls r1, r1, #0xc
	str r1, [r0]
	lsls r1, r2, #0xc
	str r1, [r0, #4]
	lsls r1, r3, #0xc
	str r1, [r0, #0xc]
	ldr r1, [sp]
	lsls r1, r1, #0xc
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end ov88_0223DE68

	thumb_func_start ov88_0223DE7C
ov88_0223DE7C: @ 0x0223DE7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r7, [sp, #0x48]
	str r0, [sp]
	ldr r4, [r7]
	ldr r0, [r7, #0xc]
	str r1, [sp, #4]
	adds r6, r3, #0
	subs r0, r0, r4
	movs r1, #0x14
	str r2, [sp, #8]
	ldr r5, [sp, #0x4c]
	blx FUN_020E1F6C
	muls r0, r6, r0
	adds r0, r4, r0
	str r0, [sp, #0x24]
	ldr r4, [r7, #4]
	ldr r0, [r7, #0x10]
	movs r1, #0x14
	subs r0, r0, r4
	blx FUN_020E1F6C
	muls r0, r6, r0
	adds r0, r4, r0
	str r0, [sp, #0x28]
	ldr r0, [sp]
	add r1, sp, #0x24
	bl FUN_02021C50
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _0223DEDA
	movs r0, #5
	ldr r1, [sp, #0x24]
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp, #0x18]
	movs r0, #0x16
	ldr r1, [sp, #0x28]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	add r1, sp, #0x18
	bl FUN_02021C50
_0223DEDA:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0223DEFC
	movs r0, #7
	ldr r1, [sp, #0x24]
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp, #0xc]
	movs r0, #0x16
	ldr r1, [sp, #0x28]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	add r1, sp, #0xc
	bl FUN_02021C50
_0223DEFC:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov88_0223DE7C

	thumb_func_start ov88_0223DF00
ov88_0223DF00: @ 0x0223DF00
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r3, _0223DFD4 @ =0x000022BC
	adds r4, r0, #0
	ldr r0, [r4, r3]
	adds r2, r3, #0
	adds r0, r0, #1
	str r0, [r4, r3]
	adds r0, r4, #0
	adds r0, #0x88
	ldr r1, [r0]
	adds r2, #8
	adds r2, r4, r2
	lsls r0, r1, #2
	str r2, [sp]
	movs r2, #0x69
	lsls r2, r2, #4
	adds r2, r4, r2
	lsls r1, r1, #4
	adds r1, r2, r1
	movs r2, #0x37
	str r1, [sp, #4]
	lsls r2, r2, #4
	adds r5, r4, r0
	adds r1, r2, #0
	ldr r0, [r5, r2]
	adds r1, #0x30
	adds r2, #0x60
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r4, r3]
	bl ov88_0223DE7C
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r3, _0223DFD8 @ =0x000022DC
	ldr r5, [r0]
	adds r1, r4, r3
	str r1, [sp]
	movs r1, #0x69
	lsls r1, r1, #4
	adds r2, r4, r1
	lsls r1, r5, #4
	adds r1, r2, r1
	movs r2, #0x37
	lsls r0, r5, #2
	lsls r2, r2, #4
	str r1, [sp, #4]
	adds r5, r4, r0
	adds r1, r2, #0
	ldr r0, [r5, r2]
	adds r1, #0x30
	adds r2, #0x60
	subs r3, #0x20
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r4, r3]
	bl ov88_0223DE7C
	ldr r1, _0223DFD4 @ =0x000022BC
	ldr r0, [r4, r1]
	cmp r0, #0x15
	bne _0223DFCC
	movs r0, #1
	adds r2, r4, #0
	str r0, [sp]
	ldr r0, _0223DFDC @ =0x00000568
	subs r1, #0xa4
	adds r2, #0x88
	ldr r1, [r4, r1]
	ldr r2, [r2]
	adds r0, r4, r0
	movs r3, #8
	bl ov88_0223C860
	movs r0, #1
	adds r2, r4, #0
	str r0, [sp]
	ldr r1, _0223DFE0 @ =0x0000221C
	adds r2, #0x8c
	ldr r0, _0223DFE4 @ =0x00000578
	ldr r2, [r2]
	ldr r1, [r4, r1]
	adds r0, r4, r0
	subs r2, r2, #6
	movs r3, #8
	bl ov88_0223C860
	adds r1, r4, #0
	adds r1, #0x8c
	ldr r1, [r1]
	adds r0, r4, #0
	bl ov88_0223BDA4
	ldr r1, _0223DFE8 @ =ov88_0223E110
	ldr r0, _0223DFEC @ =0x00002214
	str r1, [r4, r0]
	ldr r0, _0223DFF0 @ =0x00000418
	movs r1, #1
	ldr r0, [r4, r0]
	bl FUN_02021CAC
_0223DFCC:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223DFD4: .4byte 0x000022BC
_0223DFD8: .4byte 0x000022DC
_0223DFDC: .4byte 0x00000568
_0223DFE0: .4byte 0x0000221C
_0223DFE4: .4byte 0x00000578
_0223DFE8: .4byte ov88_0223E110
_0223DFEC: .4byte 0x00002214
_0223DFF0: .4byte 0x00000418
	thumb_func_end ov88_0223DF00

	thumb_func_start ov88_0223DFF4
ov88_0223DFF4: @ 0x0223DFF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _0223E0F0 @ =0x00000568
	str r0, [sp]
	adds r0, r0, r1
	bl FUN_0201AD10
	ldr r1, _0223E0F4 @ =0x00000578
	ldr r0, [sp]
	adds r0, r0, r1
	bl FUN_0201AD10
	ldr r6, [sp]
	ldr r1, _0223E0F8 @ =0x00000438
	adds r0, r6, #0
	adds r0, r0, r1
	ldr r4, _0223E0FC @ =0x0223EF9C
	movs r7, #0
	adds r5, r6, #0
	str r0, [sp, #4]
_0223E01C:
	movs r0, #0x69
	lsls r0, r0, #4
	ldrh r0, [r6, r0]
	cmp r0, #0
	beq _0223E09C
	movs r0, #0x37
	lsls r0, r0, #4
	ldr r1, [r4]
	ldr r2, [r4, #4]
	ldr r0, [r5, r0]
	adds r1, #0x10
	subs r2, r2, #6
	bl ov88_0223E87C
	movs r0, #0x37
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CAC
	ldr r0, _0223E100 @ =0x00000692
	ldrh r0, [r6, r0]
	cmp r0, #0
	beq _0223E06A
	movs r0, #0x3a
	lsls r0, r0, #4
	ldr r1, [r4]
	ldr r2, [r4, #4]
	ldr r0, [r5, r0]
	adds r1, #0x24
	adds r2, #0x10
	bl ov88_0223E87C
	movs r0, #0x3a
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CAC
_0223E06A:
	ldr r0, _0223E104 @ =0x0000069C
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0223E090
	movs r0, #0x3d
	lsls r0, r0, #4
	ldr r1, [r4]
	ldr r2, [r4, #4]
	ldr r0, [r5, r0]
	adds r1, #0x2c
	adds r2, #0x10
	bl ov88_0223E87C
	movs r0, #0x3d
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CAC
_0223E090:
	adds r0, r7, #7
	lsls r1, r0, #4
	ldr r0, [sp, #4]
	adds r0, r0, r1
	bl FUN_0201A9A4
_0223E09C:
	adds r7, r7, #1
	adds r6, #0x10
	adds r4, #8
	adds r5, r5, #4
	cmp r7, #0xc
	blt _0223E01C
	movs r1, #0xce
	ldr r0, [sp]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	movs r1, #1
	bl FUN_02021CAC
	movs r1, #0xcf
	ldr r0, [sp]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	movs r1, #1
	bl FUN_02021CAC
	ldr r1, _0223E0F8 @ =0x00000438
	ldr r0, [sp]
	ldr r2, [sp]
	adds r0, r0, r1
	movs r1, #1
	bl ov88_0223CB34
	ldr r1, _0223E108 @ =0x0000040C
	ldr r0, [sp]
	ldr r0, [r0, r1]
	movs r1, #0
	bl FUN_02021CAC
	ldr r1, _0223E10C @ =0x00000418
	ldr r0, [sp]
	ldr r0, [r0, r1]
	movs r1, #0
	bl FUN_02021CAC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223E0F0: .4byte 0x00000568
_0223E0F4: .4byte 0x00000578
_0223E0F8: .4byte 0x00000438
_0223E0FC: .4byte 0x0223EF9C
_0223E100: .4byte 0x00000692
_0223E104: .4byte 0x0000069C
_0223E108: .4byte 0x0000040C
_0223E10C: .4byte 0x00000418
	thumb_func_end ov88_0223DFF4

	thumb_func_start ov88_0223E110
ov88_0223E110: @ 0x0223E110
	push {r4, lr}
	sub sp, #0x10
	movs r1, #0
	adds r4, r0, #0
	str r1, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x5d
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02019CB8
	ldr r0, _0223E198 @ =0x00002218
	adds r1, r4, #0
	adds r1, #0x88
	ldr r0, [r4, r0]
	ldr r1, [r1]
	bl FUN_0207A0FC
	bl FUN_02076B10
	adds r2, r0, #0
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200B5CC
	adds r1, r4, #0
	ldr r0, _0223E19C @ =0x0000221C
	adds r1, #0x8c
	ldr r1, [r1]
	ldr r0, [r4, r0]
	subs r1, r1, #6
	bl FUN_0207A0FC
	bl FUN_02076B10
	adds r2, r0, #0
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0200B5CC
	movs r3, #0x5f
	lsls r3, r3, #2
	ldr r0, [r4, r3]
	adds r3, #8
	str r0, [sp]
	ldr r0, _0223E1A0 @ =0x000005A8
	ldr r3, [r4, r3]
	adds r0, r4, r0
	movs r1, #0x15
	movs r2, #1
	bl ov88_0223ECBC
	ldr r1, _0223E1A4 @ =ov88_0223E20C
	ldr r0, _0223E1A8 @ =0x00002214
	str r1, [r4, r0]
	movs r0, #0
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_0223E198: .4byte 0x00002218
_0223E19C: .4byte 0x0000221C
_0223E1A0: .4byte 0x000005A8
_0223E1A4: .4byte ov88_0223E20C
_0223E1A8: .4byte 0x00002214
	thumb_func_end ov88_0223E110

	thumb_func_start ov88_0223E1AC
ov88_0223E1AC: @ 0x0223E1AC
	push {r4, lr}
	movs r1, #0x18
	movs r2, #3
	adds r4, r0, #0
	bl ov88_0223D058
	movs r0, #1
	str r0, [r4, #0x5c]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov88_0223E1AC

	thumb_func_start ov88_0223E1C0
ov88_0223E1C0: @ 0x0223E1C0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r1, #0
	movs r1, #0
	adds r5, r0, #0
	str r1, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x5d
	adds r6, r2, #0
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02019CB8
	movs r3, #0x5e
	lsls r3, r3, #2
	ldr r0, [r5, r3]
	adds r3, #0xc
	str r0, [sp]
	ldr r0, _0223E208 @ =0x00000438
	ldr r3, [r5, r3]
	adds r1, r5, r0
	lsls r0, r4, #4
	adds r0, r1, r0
	adds r1, r6, #0
	movs r2, #1
	bl ov88_0223ECBC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223E208: .4byte 0x00000438
	thumb_func_end ov88_0223E1C0

	thumb_func_start ov88_0223E20C
ov88_0223E20C: @ 0x0223E20C
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0x5d
	ldr r2, _0223E318 @ =0x00000658
	lsls r0, r0, #2
	adds r1, r4, r2
	adds r2, #0xc
	ldr r0, [r4, r0]
	adds r2, r4, r2
	bl ov88_0223ED2C
	cmp r0, #0
	beq _0223E232
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	beq _0223E2CC
	b _0223E310
_0223E232:
	adds r0, r4, #0
	bl ov88_0223E8D0
	cmp r0, #0
	beq _0223E2BA
	adds r0, r4, #0
	bl ov88_0223E914
	cmp r0, #0
	beq _0223E250
	cmp r0, #1
	beq _0223E282
	cmp r0, #2
	beq _0223E29E
	b _0223E310
_0223E250:
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	lsls r0, r0, #4
	adds r1, r4, r0
	ldr r0, _0223E31C @ =0x0000069C
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0223E27A
	adds r0, r4, #0
	bl ov88_0223E1AC
	adds r0, r4, #0
	movs r1, #0x17
	movs r2, #0x14
	bl ov88_0223E1C0
	ldr r1, _0223E320 @ =ov88_0223E41C
	ldr r0, _0223E324 @ =0x00002214
	str r1, [r4, r0]
	b _0223E310
_0223E27A:
	ldr r1, _0223E328 @ =ov88_0223E330
	ldr r0, _0223E324 @ =0x00002214
	str r1, [r4, r0]
	b _0223E310
_0223E282:
	adds r0, r4, #0
	movs r1, #0x17
	movs r2, #0x25
	bl ov88_0223E1C0
	ldr r1, _0223E320 @ =ov88_0223E41C
	ldr r0, _0223E324 @ =0x00002214
	movs r2, #4
	str r1, [r4, r0]
	adds r0, r4, #0
	movs r1, #0x18
	bl ov88_0223D058
	b _0223E310
_0223E29E:
	adds r0, r4, #0
	movs r1, #0x17
	movs r2, #0x26
	bl ov88_0223E1C0
	ldr r1, _0223E320 @ =ov88_0223E41C
	ldr r0, _0223E324 @ =0x00002214
	movs r2, #4
	str r1, [r4, r0]
	adds r0, r4, #0
	movs r1, #0x18
	bl ov88_0223D058
	b _0223E310
_0223E2BA:
	ldr r1, _0223E320 @ =ov88_0223E41C
	ldr r0, _0223E324 @ =0x00002214
	movs r2, #4
	str r1, [r4, r0]
	adds r0, r4, #0
	movs r1, #0x18
	bl ov88_0223D058
	b _0223E310
_0223E2CC:
	movs r1, #0
	str r1, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x5d
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02019CB8
	movs r3, #0x5e
	lsls r3, r3, #2
	ldr r0, [r4, r3]
	adds r3, #0xc
	str r0, [sp]
	ldr r0, _0223E32C @ =0x000005A8
	ldr r3, [r4, r3]
	adds r0, r4, r0
	movs r1, #0x14
	movs r2, #1
	bl ov88_0223ECBC
	ldr r1, _0223E320 @ =ov88_0223E41C
	ldr r0, _0223E324 @ =0x00002214
	movs r2, #4
	str r1, [r4, r0]
	adds r0, r4, #0
	movs r1, #0x18
	bl ov88_0223D058
_0223E310:
	movs r0, #0
	add sp, #0x10
	pop {r4, pc}
	nop
_0223E318: .4byte 0x00000658
_0223E31C: .4byte 0x0000069C
_0223E320: .4byte ov88_0223E41C
_0223E324: .4byte 0x00002214
_0223E328: .4byte ov88_0223E330
_0223E32C: .4byte 0x000005A8
	thumb_func_end ov88_0223E20C

	thumb_func_start ov88_0223E330
ov88_0223E330: @ 0x0223E330
	push {r4, lr}
	sub sp, #0x10
	movs r1, #0
	adds r4, r0, #0
	str r1, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x5d
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02019CB8
	movs r3, #0x5f
	lsls r3, r3, #2
	ldr r0, [r4, r3]
	adds r3, #8
	str r0, [sp]
	ldr r0, _0223E378 @ =0x000005A8
	ldr r3, [r4, r3]
	adds r0, r4, r0
	movs r1, #0x24
	movs r2, #1
	bl ov88_0223ECBC
	ldr r1, _0223E37C @ =ov88_0223E384
	ldr r0, _0223E380 @ =0x00002214
	str r1, [r4, r0]
	movs r0, #0
	add sp, #0x10
	pop {r4, pc}
	nop
_0223E378: .4byte 0x000005A8
_0223E37C: .4byte ov88_0223E384
_0223E380: .4byte 0x00002214
	thumb_func_end ov88_0223E330

	thumb_func_start ov88_0223E384
ov88_0223E384: @ 0x0223E384
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0x5d
	ldr r2, _0223E40C @ =0x00000658
	lsls r0, r0, #2
	adds r1, r4, r2
	adds r2, #0xc
	ldr r0, [r4, r0]
	adds r2, r4, r2
	bl ov88_0223ED2C
	cmp r0, #0
	beq _0223E3AA
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	beq _0223E3C2
	b _0223E406
_0223E3AA:
	adds r0, r4, #0
	bl ov88_0223E1AC
	adds r0, r4, #0
	movs r1, #0x17
	movs r2, #0x14
	bl ov88_0223E1C0
	ldr r1, _0223E410 @ =ov88_0223E41C
	ldr r0, _0223E414 @ =0x00002214
	str r1, [r4, r0]
	b _0223E406
_0223E3C2:
	movs r1, #0
	str r1, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x5d
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02019CB8
	movs r3, #0x5e
	lsls r3, r3, #2
	ldr r0, [r4, r3]
	adds r3, #0xc
	str r0, [sp]
	ldr r0, _0223E418 @ =0x000005A8
	ldr r3, [r4, r3]
	adds r0, r4, r0
	movs r1, #0x14
	movs r2, #1
	bl ov88_0223ECBC
	ldr r1, _0223E410 @ =ov88_0223E41C
	ldr r0, _0223E414 @ =0x00002214
	movs r2, #4
	str r1, [r4, r0]
	adds r0, r4, #0
	movs r1, #0x18
	bl ov88_0223D058
_0223E406:
	movs r0, #0
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_0223E40C: .4byte 0x00000658
_0223E410: .4byte ov88_0223E41C
_0223E414: .4byte 0x00002214
_0223E418: .4byte 0x000005A8
	thumb_func_end ov88_0223E384

	thumb_func_start ov88_0223E41C
ov88_0223E41C: @ 0x0223E41C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x60]
	cmp r1, #0
	beq _0223E464
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _0223E464
	cmp r1, #3
	bne _0223E444
	cmp r0, #3
	bne _0223E444
	ldr r0, _0223E468 @ =0x00003698
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	ldr r1, _0223E46C @ =ov88_0223E478
	ldr r0, _0223E470 @ =0x00002214
	str r1, [r4, r0]
	b _0223E44A
_0223E444:
	ldr r1, _0223E474 @ =ov88_0223D3E0
	ldr r0, _0223E470 @ =0x00002214
	str r1, [r4, r0]
_0223E44A:
	movs r0, #0
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	adds r0, r4, #0
	bl ov88_0223E8D0
	cmp r0, #0
	beq _0223E460
	movs r0, #0x18
	str r0, [r4, #0x68]
	b _0223E464
_0223E460:
	movs r0, #0x22
	str r0, [r4, #0x68]
_0223E464:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_0223E468: .4byte 0x00003698
_0223E46C: .4byte ov88_0223E478
_0223E470: .4byte 0x00002214
_0223E474: .4byte ov88_0223D3E0
	thumb_func_end ov88_0223E41C

	thumb_func_start ov88_0223E478
ov88_0223E478: @ 0x0223E478
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_020331E0
	ldr r0, [r4, #8]
	adds r3, r4, #0
	adds r2, r4, #0
	ldr r1, _0223E4B0 @ =0x00002218
	str r0, [sp]
	adds r3, #0x8c
	ldr r0, [r4, r1]
	adds r1, r1, #4
	adds r2, #0x88
	ldr r3, [r3]
	ldr r1, [r4, r1]
	ldr r2, [r2]
	subs r3, r3, #6
	bl ov88_0223E694
	ldr r1, _0223E4B4 @ =ov88_0223D3E0
	ldr r0, _0223E4B8 @ =0x00002214
	str r1, [r4, r0]
	movs r0, #2
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0223E4B0: .4byte 0x00002218
_0223E4B4: .4byte ov88_0223D3E0
_0223E4B8: .4byte 0x00002214
	thumb_func_end ov88_0223E478

	thumb_func_start ov88_0223E4BC
ov88_0223E4BC: @ 0x0223E4BC
	push {r3, r4, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	movs r0, #0
	add r1, sp, #0x10
	strb r0, [r1, #8]
	movs r0, #1
	strb r0, [r1, #9]
	movs r0, #2
	strb r0, [r1, #0xa]
	ldrb r2, [r1, #0xb]
	movs r0, #0xf
	bics r2, r0
	strb r2, [r1, #0xb]
	ldrb r2, [r1, #0xb]
	movs r0, #0x30
	bics r2, r0
	strb r2, [r1, #0xb]
	ldrb r2, [r1, #0xb]
	movs r0, #0xc0
	bics r2, r0
	strb r2, [r1, #0xb]
	adds r1, r4, #0
	ldr r0, _0223E5A4 @ =0x0000221C
	adds r1, #0x88
	ldr r1, [r1]
	ldr r0, [r4, r0]
	subs r1, r1, #6
	bl FUN_0207A0FC
	bl FUN_02076B10
	adds r2, r0, #0
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200B5CC
	movs r1, #0
	str r1, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x5d
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02019CB8
	movs r3, #0x5f
	lsls r3, r3, #2
	ldr r0, [r4, r3]
	adds r3, #8
	str r0, [sp]
	ldr r0, _0223E5A8 @ =0x00000598
	ldr r3, [r4, r3]
	adds r0, r4, r0
	movs r1, #0x10
	movs r2, #1
	bl ov88_0223ECBC
	movs r0, #2
	movs r1, #0x1a
	bl FUN_02013A04
	ldr r1, _0223E5AC @ =0x0000065C
	movs r2, #0x11
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #0x61
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	movs r3, #0
	bl FUN_02013A4C
	ldr r0, _0223E5AC @ =0x0000065C
	movs r1, #0x61
	lsls r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	movs r2, #0x13
	movs r3, #1
	bl FUN_02013A4C
	ldr r0, _0223E5AC @ =0x0000065C
	ldr r1, [r4, r0]
	subs r0, #0x94
	adds r0, r4, r0
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	bl ov88_0223ED80
	movs r0, #0x1a
	str r0, [sp]
	movs r0, #2
	movs r2, #0
	str r0, [sp, #4]
	add r0, sp, #0x10
	movs r1, #8
	adds r3, r2, #0
	bl FUN_02001B7C
	movs r1, #0x66
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldr r1, _0223E5B0 @ =ov88_0223E5B8
	ldr r0, _0223E5B4 @ =0x00002214
	str r1, [r4, r0]
	movs r0, #0
	add sp, #0x1c
	pop {r3, r4, pc}
	nop
_0223E5A4: .4byte 0x0000221C
_0223E5A8: .4byte 0x00000598
_0223E5AC: .4byte 0x0000065C
_0223E5B0: .4byte ov88_0223E5B8
_0223E5B4: .4byte 0x00002214
	thumb_func_end ov88_0223E4BC

	thumb_func_start ov88_0223E5B8
ov88_0223E5B8: @ 0x0223E5B8
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0x66
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02001BE0
	cmp r0, #0
	beq _0223E5DA
	cmp r0, #1
	beq _0223E62E
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	beq _0223E62E
	b _0223E67C
_0223E5DA:
	movs r1, #0
	str r1, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x5d
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02019CB8
	movs r3, #0x5e
	lsls r3, r3, #2
	ldr r0, [r4, r3]
	adds r3, #0xc
	str r0, [sp]
	ldr r0, _0223E684 @ =0x00000588
	ldr r3, [r4, r3]
	adds r0, r4, r0
	movs r1, #0xf
	movs r2, #1
	bl ov88_0223ECBC
	ldr r1, _0223E688 @ =ov88_0223D150
	ldr r0, _0223E68C @ =0x00002214
	str r1, [r4, r0]
	movs r0, #0x66
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02001BC4
	ldr r0, _0223E690 @ =0x0000065C
	ldr r0, [r4, r0]
	bl FUN_02013A3C
	add sp, #0x10
	movs r0, #3
	pop {r4, pc}
_0223E62E:
	movs r1, #0
	str r1, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x5d
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02019CB8
	movs r3, #0x5e
	lsls r3, r3, #2
	ldr r0, [r4, r3]
	adds r3, #0xc
	str r0, [sp]
	ldr r0, _0223E684 @ =0x00000588
	ldr r3, [r4, r3]
	adds r0, r4, r0
	movs r1, #0xf
	movs r2, #1
	bl ov88_0223ECBC
	movs r0, #0x66
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02001BC4
	ldr r0, _0223E690 @ =0x0000065C
	ldr r0, [r4, r0]
	bl FUN_02013A3C
	ldr r1, _0223E688 @ =ov88_0223D150
	ldr r0, _0223E68C @ =0x00002214
	str r1, [r4, r0]
_0223E67C:
	movs r0, #0
	add sp, #0x10
	pop {r4, pc}
	nop
_0223E684: .4byte 0x00000588
_0223E688: .4byte ov88_0223D150
_0223E68C: .4byte 0x00002214
_0223E690: .4byte 0x0000065C
	thumb_func_end ov88_0223E5B8

	thumb_func_start ov88_0223E694
ov88_0223E694: @ 0x0223E694
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #4]
	movs r0, #0x1a
	str r1, [sp, #8]
	adds r6, r2, #0
	str r3, [sp, #0xc]
	ldr r5, [sp, #0x30]
	bl FUN_02073C74
	adds r7, r0, #0
	movs r0, #0x1a
	bl FUN_02073C74
	adds r4, r0, #0
	ldr r0, [sp, #4]
	adds r1, r6, #0
	bl FUN_0207A0FC
	adds r1, r7, #0
	bl FUN_020775EC
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl FUN_0207A0FC
	adds r1, r4, #0
	bl FUN_020775EC
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	ldr r1, _0223E7E8 @ =0x000001ED
	cmp r0, r1
	bne _0223E720
	adds r0, r4, #0
	movs r1, #0x6e
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	bne _0223E708
	adds r0, r4, #0
	movs r1, #0x99
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0x56
	bne _0223E720
	adds r0, r4, #0
	movs r1, #0x6e
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	bne _0223E720
_0223E708:
	ldr r0, [r5, #0x10]
	bl FUN_020507E4
	str r0, [sp, #0x10]
	bl FUN_0206B5F8
	cmp r0, #0
	bne _0223E720
	ldr r0, [sp, #0x10]
	movs r1, #1
	bl FUN_0206B608
_0223E720:
	adds r0, r4, #0
	movs r1, #0x6f
	movs r2, #0
	bl FUN_02074B30
	adds r0, r4, #0
	movs r1, #0x4c
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	bne _0223E748
	movs r1, #0x46
	add r0, sp, #0x14
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #9
	add r2, sp, #0x14
	bl FUN_02074B30
_0223E748:
	bl FUN_0203608C
	bl FUN_02032EE8
	adds r1, r0, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #5
	movs r3, #0
	bl FUN_0209304C
	adds r0, r4, #0
	bl FUN_0207893C
	ldr r1, [r5, #0x3c]
	adds r0, r7, #0
	bl FUN_020775EC
	ldr r1, [r5, #0x40]
	adds r0, r4, #0
	bl FUN_020775EC
	bl FUN_0203608C
	movs r1, #1
	eors r0, r1
	bl FUN_02032EE8
	ldr r1, [r5, #0x38]
	bl FUN_02025E80
	ldr r0, [sp, #4]
	ldr r1, _0223E7EC @ =0x000001B9
	str r6, [r5, #0x2c]
	bl FUN_0207A230
	cmp r0, #0
	bne _0223E7A0
	ldr r0, [r5, #0x10]
	bl FUN_0202CC98
	bl FUN_0202CCA8
_0223E7A0:
	ldr r0, [r5, #0x10]
	adds r1, r4, #0
	bl FUN_0202F180
	ldr r0, [sp, #4]
	adds r1, r6, #0
	bl FUN_0207A0FC
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_020775EC
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl FUN_0207A0FC
	adds r1, r0, #0
	adds r0, r7, #0
	bl FUN_020775EC
	ldr r0, [r5, #0x1c]
	adds r1, r4, #0
	bl ov88_0223E7F0
	ldr r0, [r5, #0x20]
	movs r1, #0x13
	bl FUN_0202CF28
	adds r0, r7, #0
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223E7E8: .4byte 0x000001ED
_0223E7EC: .4byte 0x000001B9
	thumb_func_end ov88_0223E694

	thumb_func_start ov88_0223E7F0
ov88_0223E7F0: @ 0x0223E7F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r6, r0, #0
	adds r4, r1, #0
	bl FUN_0203608C
	movs r1, #1
	eors r0, r1
	bl FUN_02032EE8
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0x75
	add r2, sp, #4
	bl FUN_02074470
	adds r0, r5, #0
	bl FUN_02025EF0
	adds r7, r0, #0
	adds r0, r5, #0
	bl FUN_02025F30
	adds r5, r0, #0
	adds r0, r4, #0
	bl FUN_02075D6C
	adds r3, r0, #0
	movs r0, #0x1a
	lsls r1, r5, #0x18
	str r0, [sp]
	adds r0, r7, #0
	lsrs r1, r1, #0x18
	add r2, sp, #4
	bl FUN_0202C11C
	adds r1, r0, #0
	adds r0, r6, #0
	movs r2, #4
	bl FUN_0202B758
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov88_0223E7F0

	thumb_func_start ov88_0223E848
ov88_0223E848: @ 0x0223E848
	push {r4, lr}
	ldr r3, _0223E878 @ =0x000022B8
	adds r4, r0, #0
	ldr r0, [r4, r3]
	movs r1, #6
	adds r0, r0, #2
	str r0, [r4, r3]
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r3, [r4, r3]
	movs r2, #0
	bl FUN_02019184
	movs r0, #0x5d
	ldr r3, _0223E878 @ =0x000022B8
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r3, [r4, r3]
	movs r1, #3
	movs r2, #0
	bl FUN_02019184
	pop {r4, pc}
	.align 2, 0
_0223E878: .4byte 0x000022B8
	thumb_func_end ov88_0223E848

	thumb_func_start ov88_0223E87C
ov88_0223E87C: @ 0x0223E87C
	push {lr}
	sub sp, #0xc
	lsls r1, r1, #0xc
	str r1, [sp]
	lsls r1, r2, #0xc
	str r1, [sp, #4]
	add r1, sp, #0
	bl FUN_02021C50
	add sp, #0xc
	pop {pc}
	.align 2, 0
	thumb_func_end ov88_0223E87C

	thumb_func_start ov88_0223E894
ov88_0223E894: @ 0x0223E894
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223E8A8 @ =0x000005A8
	ldr r1, _0223E8AC @ =0x000001D9
	adds r0, r4, r0
	bl FUN_0200E7FC
	ldr r1, _0223E8B0 @ =0x000036A8
	str r0, [r4, r1]
	pop {r4, pc}
	.align 2, 0
_0223E8A8: .4byte 0x000005A8
_0223E8AC: .4byte 0x000001D9
_0223E8B0: .4byte 0x000036A8
	thumb_func_end ov88_0223E894

	thumb_func_start ov88_0223E8B4
ov88_0223E8B4: @ 0x0223E8B4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223E8CC @ =0x000036A8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223E8CA
	bl FUN_0200EBA0
	ldr r0, _0223E8CC @ =0x000036A8
	movs r1, #0
	str r1, [r4, r0]
_0223E8CA:
	pop {r4, pc}
	.align 2, 0
_0223E8CC: .4byte 0x000036A8
	thumb_func_end ov88_0223E8B4

	thumb_func_start ov88_0223E8D0
ov88_0223E8D0: @ 0x0223E8D0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0223E90C @ =0x00002218
	movs r4, #0
	ldr r0, [r5, r0]
	bl FUN_0207A0F8
	adds r3, r4, #0
	cmp r0, #0
	ble _0223E8FC
	adds r1, r5, #0
	adds r1, #0x88
	ldr r6, [r1]
	ldr r1, _0223E910 @ =0x00000695
_0223E8EC:
	cmp r3, r6
	beq _0223E8F4
	ldrb r2, [r5, r1]
	adds r4, r4, r2
_0223E8F4:
	adds r3, r3, #1
	adds r5, #0x10
	cmp r3, r0
	blt _0223E8EC
_0223E8FC:
	subs r0, r0, #1
	cmp r4, r0
	bne _0223E906
	movs r0, #0
	pop {r4, r5, r6, pc}
_0223E906:
	movs r0, #1
	pop {r4, r5, r6, pc}
	nop
_0223E90C: .4byte 0x00002218
_0223E910: .4byte 0x00000695
	thumb_func_end ov88_0223E8D0

	thumb_func_start ov88_0223E914
ov88_0223E914: @ 0x0223E914
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _0223E97C @ =0x00002218
	ldr r0, [r5, r0]
	bl FUN_0207A0F8
	adds r6, r0, #0
	movs r4, #0
	cmp r6, #0
	ble _0223E948
	ldr r7, _0223E97C @ =0x00002218
_0223E92A:
	ldr r0, [r5, r7]
	adds r1, r4, #0
	bl FUN_0207A0FC
	movs r1, #3
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	beq _0223E942
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223E942:
	adds r4, r4, #1
	cmp r4, r6
	blt _0223E92A
_0223E948:
	ldr r0, _0223E980 @ =0x0000221C
	ldr r0, [r5, r0]
	bl FUN_0207A0F8
	adds r6, r0, #0
	movs r4, #0
	cmp r6, #0
	ble _0223E978
	ldr r7, _0223E980 @ =0x0000221C
_0223E95A:
	ldr r0, [r5, r7]
	adds r1, r4, #0
	bl FUN_0207A0FC
	movs r1, #3
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	beq _0223E972
	movs r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0223E972:
	adds r4, r4, #1
	cmp r4, r6
	blt _0223E95A
_0223E978:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223E97C: .4byte 0x00002218
_0223E980: .4byte 0x0000221C
	thumb_func_end ov88_0223E914

	thumb_func_start ov88_0223E984
ov88_0223E984: @ 0x0223E984
	ldr r1, _0223E994 @ =0x000036AC
	movs r2, #1
	str r2, [r0, r1]
	movs r2, #0
	adds r1, r1, #4
	str r2, [r0, r1]
	bx lr
	nop
_0223E994: .4byte 0x000036AC
	thumb_func_end ov88_0223E984

	thumb_func_start ov88_0223E998
ov88_0223E998: @ 0x0223E998
	push {r3, lr}
	ldr r2, _0223E9BC @ =0x000036AC
	ldr r1, [r0, r2]
	cmp r1, #0
	beq _0223E9BA
	adds r1, r2, #4
	ldr r1, [r0, r1]
	adds r3, r1, #1
	adds r1, r2, #4
	str r3, [r0, r1]
	ldr r1, [r0, r1]
	ldr r0, _0223E9C0 @ =0x00000708
	cmp r1, r0
	ble _0223E9BA
	movs r0, #4
	bl FUN_02038AE0
_0223E9BA:
	pop {r3, pc}
	.align 2, 0
_0223E9BC: .4byte 0x000036AC
_0223E9C0: .4byte 0x00000708
	thumb_func_end ov88_0223E998

	thumb_func_start ov88_0223E9C4
ov88_0223E9C4: @ 0x0223E9C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r2, #0
	movs r2, #1
	str r2, [sp]
	movs r3, #0xa
	str r3, [sp, #4]
	movs r3, #2
	str r3, [sp, #8]
	movs r6, #8
	str r6, [sp, #0xc]
	adds r5, r1, #0
	str r0, [sp, #0x14]
	str r2, [sp, #0x10]
	bl FUN_0201A7E8
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	movs r2, #1
	adds r1, r5, #0
	str r2, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	adds r0, r6, #0
	str r0, [sp, #0xc]
	movs r0, #0x15
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	adds r1, #0x10
	movs r3, #0x14
	bl FUN_0201A7E8
	adds r0, r5, #0
	adds r0, #0x10
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0x15
	str r0, [sp]
	movs r0, #5
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	adds r0, r6, #0
	str r0, [sp, #0xc]
	movs r0, #0x29
	str r0, [sp, #0x10]
	adds r1, r5, #0
	ldr r0, [sp, #0x14]
	adds r1, #0x60
	movs r2, #1
	movs r3, #0x1a
	bl FUN_0201A7E8
	adds r0, r5, #0
	adds r0, #0x60
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r4, #0
	bl FUN_02027B50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r2, _0223EBF4 @ =0x000001D9
	movs r1, #0
	movs r3, #0xa
	bl FUN_0200DD0C
	movs r1, #0
	str r1, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r2, _0223EBF8 @ =0x000001F7
	movs r3, #0xb
	bl FUN_0200DAA4
	movs r1, #0x15
	str r1, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r3, #2
	lsls r1, r1, #4
	str r3, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	adds r1, r5, r1
	movs r2, #0
	bl FUN_0201A7E8
	movs r0, #0x15
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0xe
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x28
	movs r1, #0x16
	str r0, [sp, #0x10]
	lsls r1, r1, #4
	ldr r0, [sp, #0x14]
	adds r1, r5, r1
	movs r2, #0
	movs r3, #2
	bl FUN_0201A7E8
	movs r0, #0x16
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x38
	movs r1, #0x17
	str r0, [sp, #0x10]
	lsls r1, r1, #4
	ldr r0, [sp, #0x14]
	adds r1, r5, r1
	movs r2, #0
	movs r3, #2
	bl FUN_0201A7E8
	movs r0, #0x17
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0x11
	str r0, [sp]
	movs r0, #0xb
	str r0, [sp, #4]
	movs r0, #6
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r1, #0xa4
	str r1, [sp, #0x10]
	adds r1, #0xdc
	ldr r0, [sp, #0x14]
	adds r1, r5, r1
	movs r2, #0
	movs r3, #0x14
	bl FUN_0201A7E8
	movs r0, #6
	lsls r0, r0, #6
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0xb
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r1, #0xe6
	str r1, [sp, #0x10]
	adds r1, #0xaa
	ldr r0, [sp, #0x14]
	adds r1, r5, r1
	movs r2, #0
	movs r3, #0x14
	bl FUN_0201A7E8
	movs r0, #0x19
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r4, _0223EBFC @ =0x0223F170
	movs r7, #0
	movs r6, #0x33
_0223EB5E:
	adds r0, r7, #7
	lsls r0, r0, #4
	str r0, [sp, #0x18]
	ldrh r0, [r4, #2]
	ldr r1, [sp, #0x18]
	movs r2, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r3, [r4]
	ldr r0, [sp, #0x14]
	adds r1, r5, r1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
	ldr r0, [sp, #0x18]
	movs r1, #0
	adds r0, r5, r0
	bl FUN_0201ADA4
	adds r7, r7, #1
	adds r6, #0x10
	adds r4, r4, #4
	cmp r7, #0xe
	blt _0223EB5E
	ldr r4, _0223EC00 @ =0x0223F1A8
	movs r6, #0
_0223EBA8:
	adds r0, r6, #0
	adds r0, #0x1a
	lsls r7, r0, #4
	ldrh r0, [r4, #2]
	adds r1, r5, r7
	movs r2, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r4, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	ldrh r0, [r4, #8]
	str r0, [sp, #0x10]
	ldrh r3, [r4]
	ldr r0, [sp, #0x14]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
	adds r0, r5, r7
	movs r1, #0
	bl FUN_0201ADA4
	adds r6, r6, #1
	adds r4, #0xa
	cmp r6, #8
	blt _0223EBA8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223EBF4: .4byte 0x000001D9
_0223EBF8: .4byte 0x000001F7
_0223EBFC: .4byte 0x0223F170
_0223EC00: .4byte 0x0223F1A8
	thumb_func_end ov88_0223E9C4

	thumb_func_start ov88_0223EC04
ov88_0223EC04: @ 0x0223EC04
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
_0223EC0A:
	adds r0, r5, #7
	lsls r0, r0, #4
	adds r0, r4, r0
	bl FUN_0201A8FC
	adds r5, r5, #1
	cmp r5, #0xe
	blt _0223EC0A
	movs r5, #0
_0223EC1C:
	adds r0, r5, #0
	adds r0, #0x1a
	lsls r0, r0, #4
	adds r0, r4, r0
	bl FUN_0201A8FC
	adds r5, r5, #1
	cmp r5, #8
	blt _0223EC1C
	adds r0, r4, #0
	bl FUN_0201A8FC
	adds r0, r4, #0
	adds r0, #0x10
	bl FUN_0201A8FC
	adds r0, r4, #0
	adds r0, #0x60
	bl FUN_0201A8FC
	movs r0, #0x15
	lsls r0, r0, #4
	adds r0, r4, r0
	bl FUN_0201A8FC
	movs r0, #0x16
	lsls r0, r0, #4
	adds r0, r4, r0
	bl FUN_0201A8FC
	movs r0, #0x17
	lsls r0, r0, #4
	adds r0, r4, r0
	bl FUN_0201A8FC
	movs r0, #6
	lsls r0, r0, #6
	adds r0, r4, r0
	bl FUN_0201A8FC
	movs r0, #0x19
	lsls r0, r0, #4
	adds r0, r4, r0
	bl FUN_0201A8FC
	pop {r3, r4, r5, pc}
	thumb_func_end ov88_0223EC04

	thumb_func_start ov88_0223EC78
ov88_0223EC78: @ 0x0223EC78
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r3, #0
	ldr r3, [sp, #0x20]
	adds r5, r0, #0
	adds r6, r1, #0
	cmp r3, #1
	bne _0223EC9C
	movs r0, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	ldrb r1, [r5, #7]
	lsls r1, r1, #3
	subs r1, r1, r0
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r3, r0, #1
_0223EC9C:
	ldr r0, [sp, #0x24]
	movs r1, #0
	str r0, [sp]
	ldr r0, _0223ECB8 @ =0x000B0C00
	str r4, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r2, r6, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223ECB8: .4byte 0x000B0C00
	thumb_func_end ov88_0223EC78

	thumb_func_start ov88_0223ECBC
ov88_0223ECBC: @ 0x0223ECBC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	adds r1, r3, #0
	ldr r0, [sp, #0x20]
	adds r2, r6, #0
	movs r3, #0x1a
	bl FUN_0200B29C
	adds r6, r0, #0
	cmp r4, #1
	bne _0223ECE6
	ldr r2, _0223ED20 @ =0x000001D9
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0xa
	bl FUN_0200E060
	b _0223ECF2
_0223ECE6:
	ldr r2, _0223ED24 @ =0x000001F7
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0xb
	bl FUN_0200DC48
_0223ECF2:
	adds r0, r5, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r3, #0
	str r3, [sp]
	ldr r0, _0223ED28 @ =0x0001020F
	str r3, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	str r3, [sp, #0xc]
	bl FUN_0201D78C
	adds r4, r0, #0
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r4, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223ED20: .4byte 0x000001D9
_0223ED24: .4byte 0x000001F7
_0223ED28: .4byte 0x0001020F
	thumb_func_end ov88_0223ECBC

	thumb_func_start ov88_0223ED2C
ov88_0223ED2C: @ 0x0223ED2C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r4, r2, #0
	adds r5, r1, #0
	movs r6, #0
	ldr r1, [r4]
	mvns r6, r6
	cmp r1, #0
	beq _0223ED44
	cmp r1, #1
	beq _0223ED5C
	b _0223ED72
_0223ED44:
	movs r1, #0x1a
	str r1, [sp]
	ldr r1, _0223ED78 @ =0x0223F148
	ldr r2, _0223ED7C @ =0x000001F7
	movs r3, #0xb
	bl FUN_02002100
	str r0, [r5]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0223ED72
_0223ED5C:
	ldr r0, [r5]
	movs r1, #0x1a
	bl FUN_02002114
	adds r6, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r6, r0
	beq _0223ED72
	movs r0, #0
	str r0, [r4]
_0223ED72:
	adds r0, r6, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0223ED78: .4byte 0x0223F148
_0223ED7C: .4byte 0x000001F7
	thumb_func_end ov88_0223ED2C

	thumb_func_start ov88_0223ED80
ov88_0223ED80: @ 0x0223ED80
	push {r3, lr}
	ldr r2, _0223ED90 @ =0x000001F7
	movs r1, #0
	movs r3, #0xb
	bl FUN_0200DC48
	pop {r3, pc}
	nop
_0223ED90: .4byte 0x000001F7
	thumb_func_end ov88_0223ED80

	thumb_func_start ov88_0223ED94
ov88_0223ED94: @ 0x0223ED94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r5, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	movs r0, #0xa
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0223EE04 @ =0x0000014D
	adds r4, r2, #0
	adds r6, r1, #0
	str r0, [sp, #0x10]
	adds r0, r3, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0x13
	bl FUN_0201A7E8
	ldr r2, _0223EE08 @ =0x000001F7
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0xb
	bl FUN_0200DC48
	ldr r3, _0223EE0C @ =0x0223F150
	add r2, sp, #0x14
	adds r7, r2, #0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	adds r1, r6, #1
	add r0, sp, #0x14
	strh r1, [r0, #0x10]
	movs r1, #5
	strh r1, [r0, #0x12]
	ldr r0, _0223EE10 @ =ov88_0223EE14
	movs r1, #0
	str r0, [sp, #0x18]
	adds r0, r7, #0
	adds r2, r1, #0
	movs r3, #0x1a
	str r5, [sp, #0x14]
	str r4, [sp, #0x20]
	bl FUN_0200112C
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0223EE04: .4byte 0x0000014D
_0223EE08: .4byte 0x000001F7
_0223EE0C: .4byte 0x0223F150
_0223EE10: .4byte ov88_0223EE14
	thumb_func_end ov88_0223ED94

	thumb_func_start ov88_0223EE14
ov88_0223EE14: @ 0x0223EE14
	push {r3, lr}
	cmp r2, #0
	bne _0223EE20
	ldr r0, _0223EE24 @ =0x000005DC
	bl FUN_02005748
_0223EE20:
	pop {r3, pc}
	nop
_0223EE24: .4byte 0x000005DC
	thumb_func_end ov88_0223EE14
	@ 0x0223EE28
