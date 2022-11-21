	.include "macros/function.inc"


	.text

	thumb_func_start ov101_021D0D80
ov101_021D0D80: @ 0x021D0D80
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r2, #2
	movs r0, #3
	movs r1, #0x4f
	lsls r2, r2, #0x12
	bl FUN_02017FC8
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0x4f
	bl FUN_0200681C
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	adds r0, r5, #0
	bl FUN_02006840
	str r0, [r4]
	bl ov101_021D0F6C
	adds r5, r0, #0
	str r5, [r4, #4]
	bl ov101_021D19BC
	adds r0, r5, #0
	bl ov101_021D186C
	adds r0, r5, #0
	bl ov101_021D0F9C
	adds r0, r5, #0
	bl ov101_021D121C
	adds r0, r5, #0
	bl ov101_021D13C8
	bl ov101_021D150C
	adds r0, r5, #0
	bl ov101_021D1550
	adds r0, r5, #0
	bl ov101_021D1A28
	adds r0, r5, #0
	bl ov101_021D59AC
	adds r0, r5, #0
	bl ov101_021D5AF0
	adds r0, r5, #0
	bl ov101_021D5C28
	movs r1, #0
	movs r0, #0x42
	adds r2, r1, #0
	bl FUN_02004550
	adds r0, r5, #0
	bl ov101_021D18C0
	movs r0, #8
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x4f
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov101_021D0D80

	thumb_func_start ov101_021D0E40
ov101_021D0E40: @ 0x021D0E40
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	bl FUN_0200682C
	ldr r5, [r0, #4]
	ldr r0, [r4]
	cmp r0, #3
	bhi _021D0EC6
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D0E5E: @ jump table
	.2byte _021D0E66 - _021D0E5E - 2 @ case 0
	.2byte _021D0E76 - _021D0E5E - 2 @ case 1
	.2byte _021D0EA8 - _021D0E5E - 2 @ case 2
	.2byte _021D0EB6 - _021D0E5E - 2 @ case 3
_021D0E66:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D0EC6
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D0EC6
_021D0E76:
	adds r0, r5, #0
	bl ov101_021D1AAC
	cmp r0, #1
	bne _021D0EC6
	ldr r0, [r4]
	movs r1, #0
	adds r0, r0, #1
	str r0, [r4]
	movs r0, #8
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x4f
	str r0, [sp, #8]
	movs r0, #2
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0200F174
	adds r0, r5, #0
	movs r1, #0
	bl ov101_021D1894
	b _021D0EC6
_021D0EA8:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D0EC6
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_021D0EB6:
	adds r0, r5, #0
	bl ov101_021D18B4
	cmp r0, #0
	bne _021D0EC6
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_021D0EC6:
	ldr r0, _021D0EE0 @ =0x0000044C
	ldr r0, [r5, r0]
	bl FUN_020713D0
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl ov101_021D80D4
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D0EE0: .4byte 0x0000044C
	thumb_func_end ov101_021D0E40

	thumb_func_start ov101_021D0EE4
ov101_021D0EE4: @ 0x021D0EE4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r6, r0, #0
	movs r0, #0
	ldr r4, [r6, #4]
	adds r1, r0, #0
	bl FUN_02017798
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov101_021D0F3C
	adds r0, r4, #0
	bl ov101_021D1884
	adds r0, r4, #0
	bl ov101_021D107C
	adds r0, r4, #0
	bl ov101_021D1458
	adds r0, r4, #0
	bl ov101_021D1A4C
	adds r0, r4, #0
	bl ov101_021D18E4
	adds r0, r4, #0
	bl ov101_021D19D4
	adds r0, r4, #0
	bl ov101_021D0F94
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0x4f
	bl FUN_0201807C
	movs r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov101_021D0EE4

	thumb_func_start ov101_021D0F3C
ov101_021D0F3C: @ 0x021D0F3C
	push {r3, lr}
	adds r2, r1, #0
	ldr r3, [r2, #0x60]
	ldr r1, _021D0F68 @ =0x0000C350
	cmp r3, r1
	bls _021D0F4A
	adds r3, r1, #0
_021D0F4A:
	ldr r1, [r0]
	ldr r1, [r1]
	str r3, [r1]
	ldr r3, [r2, #0x20]
	ldr r1, [r0]
	str r3, [r1, #0xc]
	ldr r0, [r0]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021D0F66
	ldr r2, [r2, #0xc]
	movs r1, #0xe
	bl FUN_0202CF70
_021D0F66:
	pop {r3, pc}
	.align 2, 0
_021D0F68: .4byte 0x0000C350
	thumb_func_end ov101_021D0F3C

	thumb_func_start ov101_021D0F6C
ov101_021D0F6C: @ 0x021D0F6C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D0F8C @ =0x000004C8
	bl ov101_021D1998
	ldr r1, [r4]
	ldr r1, [r1]
	str r1, [r0, #0x60]
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r1, #0x88
	str r2, [r1]
	ldr r2, [r4, #0x10]
	ldr r1, _021D0F90 @ =0x000004C4
	str r2, [r0, r1]
	pop {r4, pc}
	.align 2, 0
_021D0F8C: .4byte 0x000004C8
_021D0F90: .4byte 0x000004C4
	thumb_func_end ov101_021D0F6C

	thumb_func_start ov101_021D0F94
ov101_021D0F94: @ 0x021D0F94
	ldr r3, _021D0F98 @ =FUN_020181C4
	bx r3
	.align 2, 0
_021D0F98: .4byte FUN_020181C4
	thumb_func_end ov101_021D0F94

	thumb_func_start ov101_021D0F9C
ov101_021D0F9C: @ 0x021D0F9C
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r0, #0x4f
	bl FUN_02018340
	ldr r1, _021D106C @ =0x0000043C
	str r0, [r4, r1]
	bl ov101_021D1098
	ldr r0, _021D106C @ =0x0000043C
	ldr r0, [r4, r0]
	bl ov101_021D10B8
	bl ov101_021D11D0
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
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
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, _021D1070 @ =0x04000008
	movs r2, #3
	ldrh r1, [r0]
	movs r3, #1
	movs r7, #2
	bics r1, r2
	strh r1, [r0]
	ldrh r1, [r0, #2]
	ldr r6, _021D1074 @ =0x04001008
	bics r1, r2
	orrs r1, r3
	strh r1, [r0, #2]
	ldrh r1, [r0, #4]
	bics r1, r2
	orrs r1, r7
	strh r1, [r0, #4]
	ldrh r5, [r0, #6]
	movs r1, #3
	bics r5, r2
	orrs r5, r1
	strh r5, [r0, #6]
	ldrh r5, [r6]
	bics r5, r2
	strh r5, [r6]
	ldrh r5, [r6, #2]
	bics r5, r2
	orrs r3, r5
	strh r3, [r6, #2]
	ldrh r3, [r6, #4]
	adds r0, #0x48
	bics r3, r2
	orrs r3, r7
	strh r3, [r6, #4]
	ldrh r3, [r6, #6]
	bics r3, r2
	orrs r1, r3
	strh r1, [r6, #6]
	movs r1, #9
	str r1, [sp]
	movs r1, #4
	movs r2, #0x10
	movs r3, #8
	blx FUN_020BF55C
	ldr r0, _021D1078 @ =ov101_021D197C
	adds r1, r4, #0
	bl FUN_02017798
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D106C: .4byte 0x0000043C
_021D1070: .4byte 0x04000008
_021D1074: .4byte 0x04001008
_021D1078: .4byte ov101_021D197C
	thumb_func_end ov101_021D0F9C

	thumb_func_start ov101_021D107C
ov101_021D107C: @ 0x021D107C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D1094 @ =0x0000043C
	ldr r0, [r4, r0]
	bl ov101_021D11A4
	adds r0, r4, #0
	bl ov101_021D15A4
	bl ov101_021D1544
	pop {r4, pc}
	.align 2, 0
_021D1094: .4byte 0x0000043C
	thumb_func_end ov101_021D107C

	thumb_func_start ov101_021D1098
ov101_021D1098: @ 0x021D1098
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D10B4 @ =0x021D8620
	add r3, sp, #0
	movs r2, #5
_021D10A2:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D10A2
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_021D10B4: .4byte 0x021D8620
	thumb_func_end ov101_021D1098

	thumb_func_start ov101_021D10B8
ov101_021D10B8: @ 0x021D10B8
	push {r3, r4, r5, lr}
	sub sp, #0x80
	ldr r2, _021D118C @ =0x04000304
	adds r4, r0, #0
	ldrh r1, [r2]
	lsrs r0, r2, #0xb
	ldr r5, _021D1190 @ =0x021D8590
	orrs r0, r1
	strh r0, [r2]
	add r3, sp, #0x70
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _021D1194 @ =0x021D85CC
	add r3, sp, #0x54
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
	movs r0, #0
	movs r1, #0x20
	adds r2, r0, #0
	movs r3, #0x4f
	bl FUN_02019690
	ldr r5, _021D1198 @ =0x021D85E8
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
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019EBC
	ldr r5, _021D119C @ =0x021D8604
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
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019EBC
	ldr r5, _021D11A0 @ =0x021D85B0
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
	add sp, #0x80
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D118C: .4byte 0x04000304
_021D1190: .4byte 0x021D8590
_021D1194: .4byte 0x021D85CC
_021D1198: .4byte 0x021D85E8
_021D119C: .4byte 0x021D8604
_021D11A0: .4byte 0x021D85B0
	thumb_func_end ov101_021D10B8

	thumb_func_start ov101_021D11A4
ov101_021D11A4: @ 0x021D11A4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #7
	bl FUN_02019044
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D11A4

	thumb_func_start ov101_021D11D0
ov101_021D11D0: @ 0x021D11D0
	push {r4, r5}
	movs r0, #1
	lsls r0, r0, #0x1a
	ldr r2, [r0]
	ldr r1, _021D1218 @ =0xFFFF1FFF
	adds r5, r0, #0
	ands r2, r1
	lsrs r1, r0, #0xd
	orrs r1, r2
	str r1, [r0]
	adds r5, #0x48
	ldrh r3, [r5]
	movs r1, #0x3f
	movs r2, #0x1f
	bics r3, r1
	adds r4, r3, #0
	orrs r4, r2
	movs r3, #0x20
	orrs r4, r3
	strh r4, [r5]
	adds r4, r0, #0
	adds r4, #0x4a
	ldrh r5, [r4]
	bics r5, r1
	adds r1, r5, #0
	orrs r1, r2
	orrs r1, r3
	strh r1, [r4]
	adds r1, r0, #0
	movs r2, #0xff
	adds r1, #0x40
	strh r2, [r1]
	adds r0, #0x44
	strh r2, [r0]
	pop {r4, r5}
	bx lr
	.align 2, 0
_021D1218: .4byte 0xFFFF1FFF
	thumb_func_end ov101_021D11D0

	thumb_func_start ov101_021D121C
ov101_021D121C: @ 0x021D121C
	push {r3, r4, r5, lr}
	movs r1, #3
	movs r2, #0
	adds r4, r0, #0
	bl ov101_021D19E4
	ldr r1, _021D13BC @ =0x00000448
	adds r5, r0, #0
	adds r1, r4, r1
	blx FUN_020A71B0
	ldr r1, _021D13BC @ =0x00000448
	movs r2, #0x1a
	ldr r1, [r4, r1]
	movs r0, #1
	ldr r1, [r1, #0xc]
	lsls r2, r2, #4
	movs r3, #0
	bl FUN_0201972C
	adds r0, r5, #0
	bl FUN_020181C4
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov101_021D19E4
	ldr r1, _021D13C0 @ =0x00000444
	adds r5, r0, #0
	adds r1, r4, r1
	blx FUN_020A7118
	ldr r0, _021D13C0 @ =0x00000444
	movs r1, #0
	ldr r3, [r4, r0]
	subs r0, #8
	str r1, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r4, r0]
	ldr r3, [r3, #0x10]
	movs r1, #1
	bl FUN_0201958C
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl ov101_021D19E4
	movs r1, #0x11
	lsls r1, r1, #6
	adds r1, r4, r1
	adds r5, r0, #0
	blx FUN_020A7248
	movs r0, #0x11
	lsls r0, r0, #6
	ldr r3, [r4, r0]
	subs r0, r0, #4
	adds r2, r3, #0
	ldr r0, [r4, r0]
	ldr r3, [r3, #8]
	movs r1, #1
	adds r2, #0xc
	bl FUN_02019574
	ldr r0, _021D13C4 @ =0x0000043C
	movs r1, #1
	ldr r0, [r4, r0]
	bl FUN_02019448
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	bl ov101_021D19E4
	ldr r1, _021D13C0 @ =0x00000444
	adds r5, r0, #0
	adds r1, r4, r1
	blx FUN_020A7118
	ldr r0, _021D13C0 @ =0x00000444
	movs r1, #0
	ldr r3, [r4, r0]
	subs r0, #8
	str r1, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r4, r0]
	ldr r3, [r3, #0x10]
	movs r1, #2
	bl FUN_0201958C
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r4, #0
	movs r1, #9
	movs r2, #0
	bl ov101_021D19E4
	movs r1, #0x11
	lsls r1, r1, #6
	adds r1, r4, r1
	adds r5, r0, #0
	blx FUN_020A7248
	movs r0, #0x11
	lsls r0, r0, #6
	ldr r3, [r4, r0]
	subs r0, r0, #4
	adds r2, r3, #0
	ldr r0, [r4, r0]
	ldr r3, [r3, #8]
	movs r1, #2
	adds r2, #0xc
	bl FUN_02019574
	ldr r0, _021D13C4 @ =0x0000043C
	movs r1, #2
	ldr r0, [r4, r0]
	bl FUN_02019448
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	bl ov101_021D19E4
	ldr r1, _021D13BC @ =0x00000448
	adds r5, r0, #0
	adds r1, r4, r1
	blx FUN_020A71B0
	ldr r1, _021D13BC @ =0x00000448
	movs r2, #0x1a
	ldr r1, [r4, r1]
	movs r0, #7
	ldr r1, [r1, #0xc]
	lsls r2, r2, #4
	movs r3, #0
	bl FUN_0201972C
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl ov101_021D19E4
	ldr r1, _021D13C0 @ =0x00000444
	adds r5, r0, #0
	adds r1, r4, r1
	blx FUN_020A7118
	ldr r0, _021D13C0 @ =0x00000444
	movs r1, #0
	ldr r3, [r4, r0]
	subs r0, #8
	str r1, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r4, r0]
	ldr r3, [r3, #0x10]
	movs r1, #7
	bl FUN_0201958C
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl ov101_021D19E4
	movs r1, #0x11
	lsls r1, r1, #6
	adds r1, r4, r1
	adds r5, r0, #0
	blx FUN_020A7248
	movs r0, #0x11
	lsls r0, r0, #6
	ldr r3, [r4, r0]
	subs r0, r0, #4
	adds r2, r3, #0
	ldr r0, [r4, r0]
	ldr r3, [r3, #8]
	movs r1, #7
	adds r2, #0xc
	bl FUN_02019574
	ldr r0, _021D13C4 @ =0x0000043C
	movs r1, #7
	ldr r0, [r4, r0]
	bl FUN_02019448
	adds r0, r5, #0
	bl FUN_020181C4
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D13BC: .4byte 0x00000448
_021D13C0: .4byte 0x00000444
_021D13C4: .4byte 0x0000043C
	thumb_func_end ov101_021D121C

	thumb_func_start ov101_021D13C8
ov101_021D13C8: @ 0x021D13C8
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _021D1448 @ =0x00000408
	movs r1, #0
	adds r4, r5, r0
	str r1, [sp]
	movs r2, #0x4f
	str r2, [sp, #4]
	adds r0, #0x34
	ldr r0, [r5, r0]
	movs r2, #1
	movs r3, #0xf
	bl FUN_0200DAA4
	ldr r1, _021D144C @ =0x000004C4
	movs r2, #0x1f
	ldr r0, [r5, r1]
	subs r1, #0x88
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x4f
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	movs r1, #0
	movs r3, #0xe
	bl FUN_0200DD0C
	movs r1, #0x1e
	movs r0, #0
	lsls r1, r1, #4
	movs r2, #0x4f
	bl FUN_02002E98
	movs r2, #0x22
	movs r0, #0
	movs r1, #0x1a
	lsls r2, r2, #4
	movs r3, #0x4f
	bl FUN_0200B144
	ldr r1, _021D1448 @ =0x00000408
	str r0, [r5, r1]
	movs r0, #0x4f
	bl FUN_0200B358
	str r0, [r4, #4]
	ldr r0, _021D1450 @ =0x0000043C
	adds r1, r4, #0
	ldr r0, [r5, r0]
	ldr r2, _021D1454 @ =0x021D8588
	adds r1, #8
	bl FUN_0201A8D4
	movs r0, #1
	lsls r0, r0, #8
	movs r1, #0x4f
	bl FUN_02023790
	str r0, [r4, #0x18]
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021D1448: .4byte 0x00000408
_021D144C: .4byte 0x000004C4
_021D1450: .4byte 0x0000043C
_021D1454: .4byte 0x021D8588
	thumb_func_end ov101_021D13C8

	thumb_func_start ov101_021D1458
ov101_021D1458: @ 0x021D1458
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _021D1488 @ =0x00000408
	adds r4, r5, r0
	adds r6, r4, #0
	adds r6, #8
	adds r0, r6, #0
	bl FUN_0201ACF4
	adds r0, r6, #0
	bl FUN_0201A8FC
	ldr r0, _021D1488 @ =0x00000408
	ldr r0, [r5, r0]
	bl FUN_0200B190
	ldr r0, [r4, #4]
	bl FUN_0200B3F0
	ldr r0, [r4, #0x18]
	bl FUN_020237BC
	pop {r4, r5, r6, pc}
	nop
_021D1488: .4byte 0x00000408
	thumb_func_end ov101_021D1458

	thumb_func_start ov101_021D148C
ov101_021D148C: @ 0x021D148C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _021D14E0 @ =0x00000408
	adds r6, r1, #0
	adds r4, r5, r0
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	movs r2, #0x1f
	movs r3, #0xe
	bl FUN_0200E060
	adds r0, r4, #0
	adds r0, #8
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r0, _021D14E0 @ =0x00000408
	ldr r2, [r4, #0x18]
	ldr r0, [r5, r0]
	adds r1, r6, #0
	bl FUN_0200B1B8
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	adds r0, r4, #0
	ldr r2, [r4, #0x18]
	adds r0, #8
	movs r1, #1
	bl FUN_0201D738
	adds r4, #8
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021D14E0: .4byte 0x00000408
	thumb_func_end ov101_021D148C

	thumb_func_start ov101_021D14E4
ov101_021D14E4: @ 0x021D14E4
	push {r3, r4, r5, lr}
	ldr r4, _021D1508 @ =0x00000408
	adds r5, r0, #0
	adds r0, r5, r4
	adds r0, #8
	movs r1, #1
	bl FUN_0200E084
	adds r0, r5, r4
	adds r0, #8
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, r4
	adds r0, #8
	bl FUN_0201A9A4
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D1508: .4byte 0x00000408
	thumb_func_end ov101_021D14E4

	thumb_func_start ov101_021D150C
ov101_021D150C: @ 0x021D150C
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021D153C @ =0x021D85A0
	add r3, sp, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r1, _021D1540 @ =0x00200010
	adds r0, r2, #0
	adds r2, r1, #0
	bl FUN_0201E88C
	movs r0, #0x10
	movs r1, #0x4f
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_021D153C: .4byte 0x021D85A0
_021D1540: .4byte 0x00200010
	thumb_func_end ov101_021D150C

	thumb_func_start ov101_021D1544
ov101_021D1544: @ 0x021D1544
	push {r3, lr}
	bl FUN_0201E958
	bl FUN_0201F8B4
	pop {r3, pc}
	thumb_func_end ov101_021D1544

	thumb_func_start ov101_021D1550
ov101_021D1550: @ 0x021D1550
	push {r3, r4, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x20
	str r3, [sp, #0xc]
	movs r2, #0x4f
	str r2, [sp, #0x10]
	adds r2, r0, #0
	bl FUN_0200A784
	movs r0, #0x10
	str r0, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r2, #0x20
	str r2, [sp, #8]
	movs r3, #0xb
	str r3, [sp, #0xc]
	movs r0, #8
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	movs r0, #0x4f
	adds r3, r1, #0
	bl ov101_021D7E48
	movs r1, #0x45
	lsls r1, r1, #4
	str r0, [r4, r1]
	adds r0, r4, #0
	bl ov101_021D15BC
	add sp, #0x1c
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D1550

	thumb_func_start ov101_021D15A4
ov101_021D15A4: @ 0x021D15A4
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D1868
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov101_021D7FB4
	bl FUN_0200A878
	pop {r4, pc}
	thumb_func_end ov101_021D15A4

	thumb_func_start ov101_021D15BC
ov101_021D15BC: @ 0x021D15BC
	push {r3, r4, lr}
	sub sp, #4
	movs r2, #0x45
	adds r4, r0, #0
	movs r0, #0
	lsls r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	subs r2, #0x18
	ldr r2, [r4, r2]
	movs r1, #1
	movs r3, #0xb
	bl ov101_021D80E4
	movs r1, #1
	movs r2, #0x45
	str r1, [sp]
	lsls r2, r2, #4
	ldr r0, [r4, r2]
	subs r2, #0x18
	ldr r2, [r4, r2]
	movs r3, #0x15
	bl ov101_021D80E4
	movs r2, #0x45
	movs r0, #6
	lsls r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	subs r2, #0x18
	ldr r2, [r4, r2]
	movs r1, #2
	movs r3, #0x44
	bl ov101_021D80E4
	movs r2, #0x45
	movs r0, #7
	lsls r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	subs r2, #0x18
	ldr r2, [r4, r2]
	movs r1, #2
	movs r3, #0x47
	bl ov101_021D80E4
	movs r2, #0x45
	movs r0, #8
	lsls r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	subs r2, #0x18
	ldr r2, [r4, r2]
	movs r1, #2
	movs r3, #0x40
	bl ov101_021D80E4
	movs r2, #0x45
	movs r0, #9
	lsls r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	subs r2, #0x18
	ldr r2, [r4, r2]
	movs r1, #2
	movs r3, #0x3c
	bl ov101_021D80E4
	movs r2, #0x45
	movs r0, #0
	lsls r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	subs r2, #0x18
	ldr r2, [r4, r2]
	movs r1, #3
	movs r3, #0xa
	bl ov101_021D81B4
	movs r1, #1
	movs r2, #0x45
	str r1, [sp]
	lsls r2, r2, #4
	ldr r0, [r4, r2]
	subs r2, #0x18
	ldr r2, [r4, r2]
	movs r3, #0x14
	bl ov101_021D81B4
	movs r2, #0x45
	movs r0, #6
	lsls r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	subs r2, #0x18
	ldr r2, [r4, r2]
	movs r1, #2
	movs r3, #0x43
	bl ov101_021D81B4
	movs r2, #0x45
	movs r0, #7
	lsls r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	subs r2, #0x18
	ldr r2, [r4, r2]
	movs r1, #2
	movs r3, #0x3f
	bl ov101_021D81B4
	movs r1, #0x45
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	subs r1, #0x18
	ldr r1, [r4, r1]
	movs r2, #0xc
	movs r3, #0
	bl ov101_021D8288
	movs r1, #0x45
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	subs r1, #0x18
	ldr r1, [r4, r1]
	movs r2, #0x16
	movs r3, #1
	bl ov101_021D8288
	movs r1, #0x45
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	subs r1, #0x18
	ldr r1, [r4, r1]
	movs r2, #0x45
	movs r3, #6
	bl ov101_021D8288
	movs r1, #0x45
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	subs r1, #0x18
	ldr r1, [r4, r1]
	movs r2, #0x48
	movs r3, #7
	bl ov101_021D8288
	movs r1, #0x45
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	subs r1, #0x18
	ldr r1, [r4, r1]
	movs r2, #0x41
	movs r3, #8
	bl ov101_021D8288
	movs r1, #0x45
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	subs r1, #0x18
	ldr r1, [r4, r1]
	movs r2, #0x3d
	movs r3, #9
	bl ov101_021D8288
	movs r1, #0x45
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	subs r1, #0x18
	ldr r1, [r4, r1]
	movs r2, #0xd
	movs r3, #0
	bl ov101_021D82F0
	movs r1, #0x45
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	subs r1, #0x18
	ldr r1, [r4, r1]
	movs r2, #0x17
	movs r3, #1
	bl ov101_021D82F0
	movs r1, #0x45
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	subs r1, #0x18
	ldr r1, [r4, r1]
	movs r2, #0x46
	movs r3, #6
	bl ov101_021D82F0
	movs r1, #0x45
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	subs r1, #0x18
	ldr r1, [r4, r1]
	movs r2, #0x49
	movs r3, #7
	bl ov101_021D82F0
	movs r1, #0x45
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	subs r1, #0x18
	ldr r1, [r4, r1]
	movs r2, #0x42
	movs r3, #8
	bl ov101_021D82F0
	movs r1, #0x45
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	subs r1, #0x18
	ldr r1, [r4, r1]
	movs r2, #0x3e
	movs r3, #9
	bl ov101_021D82F0
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov101_021D814C
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov101_021D814C
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov101_021D814C
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #7
	bl ov101_021D814C
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #8
	bl ov101_021D814C
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #9
	bl ov101_021D814C
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov101_021D8180
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov101_021D8180
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov101_021D8180
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #7
	bl ov101_021D8180
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #8
	bl ov101_021D8180
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #9
	bl ov101_021D8180
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov101_021D8220
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov101_021D8220
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov101_021D8220
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #7
	bl ov101_021D8220
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov101_021D8254
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov101_021D8254
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #6
	bl ov101_021D8254
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #7
	bl ov101_021D8254
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D15BC

	thumb_func_start ov101_021D1868
ov101_021D1868: @ 0x021D1868
	bx lr
	.align 2, 0
	thumb_func_end ov101_021D1868

	thumb_func_start ov101_021D186C
ov101_021D186C: @ 0x021D186C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x4f
	movs r1, #0x80
	bl FUN_020711EC
	ldr r1, _021D1880 @ =0x0000044C
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_021D1880: .4byte 0x0000044C
	thumb_func_end ov101_021D186C

	thumb_func_start ov101_021D1884
ov101_021D1884: @ 0x021D1884
	ldr r1, _021D188C @ =0x0000044C
	ldr r3, _021D1890 @ =FUN_0207121C
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_021D188C: .4byte 0x0000044C
_021D1890: .4byte FUN_0207121C
	thumb_func_end ov101_021D1884

	thumb_func_start ov101_021D1894
ov101_021D1894: @ 0x021D1894
	ldr r2, _021D18B0 @ =0x00000424
	adds r2, r0, r2
	ldr r0, [r2, #8]
	cmp r0, r1
	beq _021D18AC
	ldr r0, [r2, #0xc]
	cmp r0, r1
	beq _021D18AC
	str r1, [r2, #0xc]
	movs r0, #1
	str r0, [r2]
	str r0, [r2, #4]
_021D18AC:
	bx lr
	nop
_021D18B0: .4byte 0x00000424
	thumb_func_end ov101_021D1894

	thumb_func_start ov101_021D18B4
ov101_021D18B4: @ 0x021D18B4
	ldr r1, _021D18BC @ =0x00000428
	ldr r0, [r0, r1]
	bx lr
	nop
_021D18BC: .4byte 0x00000428
	thumb_func_end ov101_021D18B4

	thumb_func_start ov101_021D18C0
ov101_021D18C0: @ 0x021D18C0
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, _021D18DC @ =0x00000424
	movs r2, #0x90
	adds r4, r1, r0
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #3
	str r0, [r4, #0xc]
	ldr r0, _021D18E0 @ =ov101_021D18F4
	bl FUN_0200D9E8
	str r0, [r4, #0x10]
	pop {r4, pc}
	.align 2, 0
_021D18DC: .4byte 0x00000424
_021D18E0: .4byte ov101_021D18F4
	thumb_func_end ov101_021D18C0

	thumb_func_start ov101_021D18E4
ov101_021D18E4: @ 0x021D18E4
	ldr r1, _021D18EC @ =0x00000434
	ldr r3, _021D18F0 @ =FUN_0200DA58
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_021D18EC: .4byte 0x00000434
_021D18F0: .4byte FUN_0200DA58
	thumb_func_end ov101_021D18E4

	thumb_func_start ov101_021D18F4
ov101_021D18F4: @ 0x021D18F4
	push {r4, lr}
	ldr r0, _021D1978 @ =0x00000424
	adds r4, r1, r0
	ldr r1, [r4]
	cmp r1, #0
	beq _021D1974
	cmp r1, #1
	beq _021D190A
	cmp r1, #2
	beq _021D193E
	pop {r4, pc}
_021D190A:
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _021D191A
	cmp r1, #1
	beq _021D1924
	cmp r1, #2
	beq _021D192E
	b _021D1936
_021D191A:
	movs r0, #1
	adds r1, r0, #0
	bl FUN_020049F4
	b _021D1936
_021D1924:
	adds r0, #0x7c
	movs r1, #0
	bl FUN_020055D0
	b _021D1936
_021D192E:
	adds r0, #0x7d
	movs r1, #0
	bl FUN_020055D0
_021D1936:
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021D193E:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _021D194E
	cmp r1, #1
	beq _021D1958
	cmp r1, #2
	beq _021D1960
	b _021D1966
_021D194E:
	movs r0, #1
	movs r1, #0
	bl FUN_020049F4
	b _021D1966
_021D1958:
	adds r0, #0x7c
	bl FUN_02005474
	b _021D1966
_021D1960:
	adds r0, #0x7d
	bl FUN_02005474
_021D1966:
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
	movs r0, #3
	str r0, [r4, #0xc]
	movs r0, #0
	str r0, [r4, #4]
	str r0, [r4]
_021D1974:
	pop {r4, pc}
	nop
_021D1978: .4byte 0x00000424
	thumb_func_end ov101_021D18F4

	thumb_func_start ov101_021D197C
ov101_021D197C: @ 0x021D197C
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0201DCAC
	bl FUN_0200A858
	ldr r0, _021D1994 @ =0x0000043C
	ldr r0, [r4, r0]
	bl FUN_0201C2B8
	pop {r4, pc}
	nop
_021D1994: .4byte 0x0000043C
	thumb_func_end ov101_021D197C

	thumb_func_start ov101_021D1998
ov101_021D1998: @ 0x021D1998
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x4f
	adds r1, r5, #0
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D19AC
	bl FUN_02022974
_021D19AC:
	adds r0, r4, #0
	movs r1, #0
	adds r2, r5, #0
	blx FUN_020D5124
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov101_021D1998

	thumb_func_start ov101_021D19BC
ov101_021D19BC: @ 0x021D19BC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x85
	movs r1, #0x4f
	bl FUN_02006C24
	ldr r1, _021D19D0 @ =0x00000438
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_021D19D0: .4byte 0x00000438
	thumb_func_end ov101_021D19BC

	thumb_func_start ov101_021D19D4
ov101_021D19D4: @ 0x021D19D4
	ldr r1, _021D19DC @ =0x00000438
	ldr r3, _021D19E0 @ =FUN_02006CA8
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_021D19DC: .4byte 0x00000438
_021D19E0: .4byte FUN_02006CA8
	thumb_func_end ov101_021D19D4

	thumb_func_start ov101_021D19E4
ov101_021D19E4: @ 0x021D19E4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _021D1A24 @ =0x00000438
	adds r6, r1, #0
	ldr r0, [r4, r0]
	adds r5, r2, #0
	bl FUN_02006D84
	adds r1, r0, #0
	cmp r5, #1
	bne _021D1A02
	movs r0, #0x4f
	bl FUN_02018144
	b _021D1A08
_021D1A02:
	movs r0, #0x4f
	bl FUN_02018184
_021D1A08:
	adds r5, r0, #0
	cmp r5, #0
	bne _021D1A12
	bl FUN_02022974
_021D1A12:
	ldr r0, _021D1A24 @ =0x00000438
	adds r1, r6, #0
	ldr r0, [r4, r0]
	adds r2, r5, #0
	bl FUN_02006D28
	adds r0, r5, #0
	pop {r4, r5, r6, pc}
	nop
_021D1A24: .4byte 0x00000438
	thumb_func_end ov101_021D19E4

	thumb_func_start ov101_021D1A28
ov101_021D1A28: @ 0x021D1A28
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D1A68
	adds r0, r4, #0
	bl ov101_021D2B8C
	adds r0, r4, #0
	bl ov101_021D45C4
	adds r0, r4, #0
	bl ov101_021D4764
	adds r0, r4, #0
	bl ov101_021D4D38
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D1A28

	thumb_func_start ov101_021D1A4C
ov101_021D1A4C: @ 0x021D1A4C
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D2BC0
	adds r0, r4, #0
	bl ov101_021D45E8
	adds r0, r4, #0
	bl ov101_021D4788
	adds r0, r4, #0
	bl ov101_021D4EA4
	pop {r4, pc}
	thumb_func_end ov101_021D1A4C

	thumb_func_start ov101_021D1A68
ov101_021D1A68: @ 0x021D1A68
	push {r3, r4, r5, r6, r7, lr}
	movs r7, #0x15
	adds r5, r0, #0
	movs r4, #0
	lsls r6, r7, #0x11
_021D1A72:
	bl FUN_0201D2E8
	adds r1, r7, #0
	blx FUN_020E1F6C
	adds r0, r5, #0
	adds r0, #0xa8
	str r1, [r0]
	lsls r0, r1, #0x11
	subs r1, r6, r0
	adds r0, r5, #0
	adds r0, #0x90
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0x90
	movs r1, #0x2a
	ldr r0, [r0]
	lsls r1, r1, #0x10
	blx FUN_020E1F6C
	adds r0, r5, #0
	adds r0, #0x90
	adds r4, r4, #1
	adds r5, r5, #4
	str r1, [r0]
	cmp r4, #3
	blt _021D1A72
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov101_021D1A68

	thumb_func_start ov101_021D1AAC
ov101_021D1AAC: @ 0x021D1AAC
	push {r3, r4, r5, lr}
	ldr r4, _021D1ACC @ =0x021D8838
	adds r5, r0, #0
_021D1AB2:
	ldr r1, [r5]
	adds r0, r5, #0
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _021D1AB2
	cmp r0, #2
	bne _021D1AC8
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D1AC8:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D1ACC: .4byte 0x021D8838
	thumb_func_end ov101_021D1AAC

	thumb_func_start ov101_021D1AD0
ov101_021D1AD0: @ 0x021D1AD0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	str r1, [r4, #0x64]
	movs r3, #1
	adds r2, r4, #0
	str r1, [r4, #0x68]
	lsls r3, r3, #0x10
	adds r2, #0x8c
	str r3, [r2]
	str r1, [r4, #0x74]
	str r1, [r4, #8]
	movs r2, #1
	str r2, [r4]
	bl ov101_021D5938
	adds r0, r4, #0
	movs r1, #1
	bl ov101_021D5938
	adds r0, r4, #0
	movs r1, #2
	bl ov101_021D5938
	adds r0, r4, #0
	bl ov101_021D4FF8
	adds r0, r4, #0
	bl ov101_021D5200
	ldr r1, [r4, #0x60]
	cmp r1, #0
	bne _021D1B1C
	movs r0, #0x3c
	str r0, [r4]
	movs r0, #0x3f
	str r0, [r4, #4]
	b _021D1B38
_021D1B1C:
	cmp r1, #3
	bge _021D1B2A
	movs r0, #0x3b
	str r0, [r4]
	movs r0, #0x3f
	str r0, [r4, #4]
	b _021D1B38
_021D1B2A:
	ldr r0, _021D1B3C @ =0x0000C350
	cmp r1, r0
	blt _021D1B38
	movs r0, #0x3d
	str r0, [r4]
	movs r0, #1
	str r0, [r4, #4]
_021D1B38:
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_021D1B3C: .4byte 0x0000C350
	thumb_func_end ov101_021D1AD0

	thumb_func_start ov101_021D1B40
ov101_021D1B40: @ 0x021D1B40
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #8
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D1B5C
	adds r0, r4, #0
	bl ov101_021D5244
	movs r0, #0x3f
	str r0, [r4]
	movs r0, #0
	pop {r4, pc}
_021D1B5C:
	movs r0, #1
	lsls r0, r0, #0xa
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D1B90
	ldr r0, [r4, #0x60]
	subs r0, r0, #3
	str r0, [r4, #0x60]
	ldr r0, _021D1B94 @ =0x0000045C
	ldr r1, [r4, r0]
	adds r1, r1, #3
	str r1, [r4, r0]
	movs r0, #2
	str r0, [r4]
	ldr r0, _021D1B98 @ =0x000005ED
	bl FUN_02005748
	adds r0, r4, #0
	bl ov101_021D5244
	adds r0, r4, #0
	bl ov101_021D5010
	movs r0, #0
	pop {r4, pc}
_021D1B90:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_021D1B94: .4byte 0x0000045C
_021D1B98: .4byte 0x000005ED
	thumb_func_end ov101_021D1B40

	thumb_func_start ov101_021D1B9C
ov101_021D1B9C: @ 0x021D1B9C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #8
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D1BB8
	ldr r0, [r4, #0x60]
	adds r0, r0, #3
	str r0, [r4, #0x60]
	movs r0, #0x3f
	str r0, [r4]
	movs r0, #0
	pop {r4, pc}
_021D1BB8:
	movs r0, #0x12
	lsls r0, r0, #6
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D1BCC
	movs r0, #3
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D1BCC:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D1B9C

	thumb_func_start ov101_021D1BD0
ov101_021D1BD0: @ 0x021D1BD0
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D40A8
	movs r0, #0x46
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	adds r1, r0, #4
	ldr r1, [r4, r1]
	adds r0, r0, #4
	adds r1, r1, #1
	str r1, [r4, r0]
	movs r0, #0
	str r0, [r4, #0x70]
	ldr r1, [r4, #0x74]
	movs r0, #0x33
	tst r0, r1
	beq _021D1BFC
	movs r0, #1
	str r0, [r4, #0x70]
_021D1BFC:
	movs r0, #0
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _021D1C38
	adds r0, r4, #0
	bl ov101_021D41EC
	cmp r0, #0
	bne _021D1C18
	movs r0, #0x55
	movs r1, #4
	lsls r0, r0, #2
	b _021D1C2C
_021D1C18:
	ldr r0, [r4, #0x74]
	bl ov101_021D5814
	movs r1, #0x55
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0x49
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	adds r1, r1, #1
_021D1C2C:
	str r1, [r4, r0]
	movs r1, #1
	adds r0, r4, #0
	str r1, [r4, #0x30]
	bl ov101_021D4798
_021D1C38:
	adds r0, r4, #0
	movs r1, #0
	bl ov101_021D5938
	adds r0, r4, #0
	movs r1, #1
	bl ov101_021D5938
	adds r0, r4, #0
	movs r1, #2
	bl ov101_021D5938
	adds r0, r4, #0
	bl ov101_021D5010
	adds r0, r4, #0
	movs r1, #0
	bl ov101_021D2BDC
	adds r0, r4, #0
	movs r1, #1
	bl ov101_021D2BDC
	adds r0, r4, #0
	movs r1, #2
	bl ov101_021D2BDC
	adds r0, r4, #0
	bl ov101_021D5848
	movs r1, #1
	adds r0, r4, #0
	str r1, [r4, #0x7c]
	adds r0, #0x80
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	str r1, [r0]
	movs r0, #0
	str r0, [r4, #0x6c]
	movs r0, #4
	str r0, [r4]
	ldr r0, _021D1C98 @ =0x000005EE
	bl FUN_02005748
	movs r0, #1
	pop {r4, pc}
	nop
_021D1C98: .4byte 0x000005EE
	thumb_func_end ov101_021D1BD0

	thumb_func_start ov101_021D1C9C
ov101_021D1C9C: @ 0x021D1C9C
	movs r1, #1
	ldr r2, [r0, #0x6c]
	lsls r1, r1, #0xc
	adds r2, r2, r1
	lsls r1, r1, #3
	str r2, [r0, #0x6c]
	cmp r2, r1
	blt _021D1CB8
	movs r1, #0
	str r1, [r0, #0x6c]
	movs r1, #5
	str r1, [r0]
	movs r0, #1
	bx lr
_021D1CB8:
	movs r0, #0
	bx lr
	thumb_func_end ov101_021D1C9C

	thumb_func_start ov101_021D1CBC
ov101_021D1CBC: @ 0x021D1CBC
	push {r4, lr}
	ldr r1, _021D1DAC @ =0x021BF67C
	adds r4, r0, #0
	ldr r2, [r1, #0x48]
	ldr r1, [r4, #0x7c]
	cmp r1, #1
	bne _021D1D02
	movs r1, #2
	lsls r1, r1, #0xa
	adds r3, r2, #0
	tst r3, r1
	beq _021D1D02
	movs r2, #2
	str r2, [r4, #0x7c]
	bl ov101_021D5858
	adds r0, r4, #0
	bl ov101_021D5880
	cmp r0, #0
	bne _021D1CEA
	movs r0, #0
	str r0, [r4, #0x70]
_021D1CEA:
	adds r0, r4, #0
	movs r1, #0
	bl ov101_021D58F4
	adds r0, r4, #0
	movs r1, #0
	bl ov101_021D2BF4
	ldr r0, _021D1DB0 @ =0x00000626
	bl FUN_02005748
	b _021D1D8A
_021D1D02:
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #1
	bne _021D1D46
	movs r1, #2
	adds r0, r2, #0
	tst r0, r1
	beq _021D1D46
	adds r0, r4, #0
	adds r0, #0x80
	str r1, [r0]
	adds r0, r4, #0
	bl ov101_021D5858
	adds r0, r4, #0
	bl ov101_021D5880
	cmp r0, #0
	bne _021D1D2E
	movs r0, #0
	str r0, [r4, #0x70]
_021D1D2E:
	adds r0, r4, #0
	movs r1, #1
	bl ov101_021D58F4
	adds r0, r4, #0
	movs r1, #1
	bl ov101_021D2BF4
	ldr r0, _021D1DB0 @ =0x00000626
	bl FUN_02005748
	b _021D1D8A
_021D1D46:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #1
	bne _021D1D8A
	movs r1, #1
	adds r0, r2, #0
	tst r0, r1
	beq _021D1D8A
	adds r0, r4, #0
	movs r2, #2
	adds r0, #0x84
	str r2, [r0]
	adds r0, r4, #0
	bl ov101_021D5858
	adds r0, r4, #0
	bl ov101_021D5880
	cmp r0, #0
	bne _021D1D74
	movs r0, #0
	str r0, [r4, #0x70]
_021D1D74:
	adds r0, r4, #0
	movs r1, #2
	bl ov101_021D58F4
	adds r0, r4, #0
	movs r1, #2
	bl ov101_021D2BF4
	ldr r0, _021D1DB0 @ =0x00000626
	bl FUN_02005748
_021D1D8A:
	ldr r0, [r4, #0x7c]
	cmp r0, #2
	bne _021D1DA8
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #2
	bne _021D1DA8
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #2
	bne _021D1DA8
	movs r0, #6
	str r0, [r4]
_021D1DA8:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_021D1DAC: .4byte 0x021BF67C
_021D1DB0: .4byte 0x00000626
	thumb_func_end ov101_021D1CBC

	thumb_func_start ov101_021D1DB4
ov101_021D1DB4: @ 0x021D1DB4
	push {r4, lr}
	movs r1, #0
	adds r4, r0, #0
	bl ov101_021D2C04
	cmp r0, #1
	beq _021D1DDA
	adds r0, r4, #0
	movs r1, #1
	bl ov101_021D2C04
	cmp r0, #1
	beq _021D1DDA
	adds r0, r4, #0
	movs r1, #2
	bl ov101_021D2C04
	cmp r0, #1
	bne _021D1DDE
_021D1DDA:
	movs r0, #0
	pop {r4, pc}
_021D1DDE:
	adds r0, r4, #0
	bl ov101_021D4FF8
	movs r0, #7
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov101_021D1DB4

	thumb_func_start ov101_021D1DEC
ov101_021D1DEC: @ 0x021D1DEC
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	ldr r1, [r4, #0x74]
	adds r2, #0x48
	bl ov101_021D5778
	str r0, [r4, #0x44]
	cmp r0, #6
	bne _021D1E24
	ldr r1, [r4, #0x74]
	movs r0, #0xaa
	tst r0, r1
	beq _021D1E10
	movs r0, #0x10
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D1E10:
	cmp r1, #0
	beq _021D1E1C
	movs r0, #0xa
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D1E1C:
	movs r0, #8
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D1E24:
	ldr r2, [r4, #0x74]
	movs r1, #0xaa
	tst r1, r2
	beq _021D1E3E
	movs r0, #2
	tst r0, r2
	beq _021D1E36
	movs r0, #0x15
	b _021D1E38
_021D1E36:
	movs r0, #0x13
_021D1E38:
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D1E3E:
	cmp r0, #2
	bne _021D1E4A
	movs r0, #0xe
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D1E4A:
	movs r0, #0xc
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D1DEC

	thumb_func_start ov101_021D1E54
ov101_021D1E54: @ 0x021D1E54
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D4FF8
	movs r0, #0
	str r0, [r4, #0x6c]
	movs r0, #9
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov101_021D1E54

	thumb_func_start ov101_021D1E68
ov101_021D1E68: @ 0x021D1E68
	movs r1, #1
	ldr r2, [r0, #0x6c]
	lsls r1, r1, #0xc
	adds r2, r2, r1
	lsls r1, r1, #3
	str r2, [r0, #0x6c]
	cmp r2, r1
	blt _021D1E7E
	movs r1, #0
	str r1, [r0, #0x6c]
	str r1, [r0]
_021D1E7E:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov101_021D1E68

	thumb_func_start ov101_021D1E84
ov101_021D1E84: @ 0x021D1E84
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D4FF8
	adds r0, r4, #0
	movs r1, #2
	bl ov101_021D4798
	movs r0, #0xb
	str r0, [r4]
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D1E84

	thumb_func_start ov101_021D1E9C
ov101_021D1E9C: @ 0x021D1E9C
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D47AC
	cmp r0, #1
	bne _021D1EB8
	adds r0, r4, #0
	movs r1, #0
	bl ov101_021D4798
	movs r0, #0
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D1EB8:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D1E9C

	thumb_func_start ov101_021D1EBC
ov101_021D1EBC: @ 0x021D1EBC
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D597C
	ldr r1, _021D1EE8 @ =0x00000458
	str r0, [r4, #0x64]
	ldr r2, [r4, r1]
	adds r0, r2, r0
	str r0, [r4, r1]
	movs r0, #0
	str r0, [r4, #0x6c]
	movs r0, #0xd
	str r0, [r4]
	adds r0, r4, #0
	bl ov101_021D45F8
	adds r0, r4, #0
	movs r1, #0xb
	bl ov101_021D4798
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_021D1EE8: .4byte 0x00000458
	thumb_func_end ov101_021D1EBC

	thumb_func_start ov101_021D1EEC
ov101_021D1EEC: @ 0x021D1EEC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	ldr r2, [r4, #0x6c]
	lsls r1, r1, #0xc
	adds r2, r2, r1
	movs r1, #0x1e
	lsls r1, r1, #0xc
	str r2, [r4, #0x6c]
	cmp r2, r1
	bne _021D1F0A
	movs r1, #2
	bl ov101_021D4798
	b _021D1F30
_021D1F0A:
	ble _021D1F30
	bl ov101_021D460C
	cmp r0, #1
	bne _021D1F30
	adds r0, r4, #0
	bl ov101_021D47AC
	cmp r0, #1
	bne _021D1F30
	adds r0, r4, #0
	movs r1, #0
	bl ov101_021D4798
	movs r0, #0
	str r0, [r4, #0x6c]
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D1F30:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D1EEC

	thumb_func_start ov101_021D1F34
ov101_021D1F34: @ 0x021D1F34
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	str r1, [r4, #0x64]
	str r1, [r4, #0x6c]
	movs r1, #0xf
	str r1, [r4]
	bl ov101_021D45F8
	adds r0, r4, #0
	movs r1, #0xb
	bl ov101_021D4798
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D1F34

	thumb_func_start ov101_021D1F54
ov101_021D1F54: @ 0x021D1F54
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	ldr r2, [r4, #0x6c]
	lsls r1, r1, #0xc
	adds r2, r2, r1
	movs r1, #0xf
	lsls r1, r1, #0xc
	str r2, [r4, #0x6c]
	cmp r2, r1
	bne _021D1F72
	movs r1, #2
	bl ov101_021D4798
	b _021D1F9A
_021D1F72:
	ble _021D1F9A
	bl ov101_021D460C
	cmp r0, #1
	bne _021D1F9A
	adds r0, r4, #0
	bl ov101_021D47AC
	cmp r0, #1
	bne _021D1F9A
	adds r0, r4, #0
	movs r1, #0
	bl ov101_021D4798
	movs r0, #0
	str r0, [r4, #0x6c]
	movs r0, #3
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D1F9A:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D1F54

	thumb_func_start ov101_021D1FA0
ov101_021D1FA0: @ 0x021D1FA0
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D4FF8
	adds r0, r4, #0
	bl ov101_021D4210
	adds r0, r4, #0
	bl ov101_021D42D0
	adds r0, r4, #0
	movs r1, #0xb
	bl ov101_021D4798
	movs r0, #0
	str r0, [r4, #0x6c]
	movs r1, #0x11
	str r1, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D1FA0

	thumb_func_start ov101_021D1FC8
ov101_021D1FC8: @ 0x021D1FC8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	ldr r2, [r4, #0x6c]
	lsls r1, r1, #0xc
	adds r2, r2, r1
	lsls r1, r1, #3
	str r2, [r4, #0x6c]
	cmp r2, r1
	blt _021D1FEE
	movs r1, #3
	bl ov101_021D4798
	adds r0, r4, #0
	movs r1, #1
	bl ov101_021D1894
	movs r0, #0x12
	str r0, [r4]
_021D1FEE:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D1FC8

	thumb_func_start ov101_021D1FF4
ov101_021D1FF4: @ 0x021D1FF4
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D47AC
	cmp r0, #1
	bne _021D2008
	movs r0, #0x17
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D2008:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D1FF4

	thumb_func_start ov101_021D200C
ov101_021D200C: @ 0x021D200C
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D597C
	str r0, [r4, #0x64]
	movs r0, #0
	str r0, [r4, #0x6c]
	movs r0, #0x14
	str r0, [r4]
	adds r0, r4, #0
	bl ov101_021D45F8
	adds r0, r4, #0
	bl ov101_021D4210
	adds r0, r4, #0
	bl ov101_021D42D0
	adds r0, r4, #0
	movs r1, #0xb
	bl ov101_021D4798
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D200C

	thumb_func_start ov101_021D203C
ov101_021D203C: @ 0x021D203C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	ldr r2, [r4, #0x6c]
	lsls r1, r1, #0xc
	adds r2, r2, r1
	movs r1, #0x1e
	lsls r1, r1, #0xc
	str r2, [r4, #0x6c]
	cmp r2, r1
	bne _021D2062
	movs r1, #1
	bl ov101_021D1894
	adds r0, r4, #0
	movs r1, #3
	bl ov101_021D4798
	b _021D2082
_021D2062:
	blt _021D2082
	bl ov101_021D460C
	cmp r0, #1
	bne _021D2082
	adds r0, r4, #0
	bl ov101_021D47AC
	cmp r0, #1
	bne _021D2082
	movs r0, #0
	str r0, [r4, #0x6c]
	movs r0, #0x17
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D2082:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D203C

	thumb_func_start ov101_021D2088
ov101_021D2088: @ 0x021D2088
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	str r1, [r4, #0x6c]
	movs r1, #0x16
	str r1, [r4]
	bl ov101_021D45F8
	adds r0, r4, #0
	movs r1, #0xb
	bl ov101_021D4798
	adds r0, r4, #0
	bl ov101_021D4210
	adds r0, r4, #0
	bl ov101_021D42D0
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D2088

	thumb_func_start ov101_021D20B0
ov101_021D20B0: @ 0x021D20B0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	ldr r2, [r4, #0x6c]
	lsls r1, r1, #0xc
	adds r3, r2, r1
	lsls r2, r1, #3
	str r3, [r4, #0x6c]
	cmp r3, r2
	bne _021D20D4
	movs r1, #3
	bl ov101_021D4798
	adds r0, r4, #0
	movs r1, #1
	bl ov101_021D1894
	b _021D20F8
_021D20D4:
	lsls r1, r1, #3
	cmp r3, r1
	blt _021D20F8
	bl ov101_021D460C
	cmp r0, #1
	bne _021D20F8
	adds r0, r4, #0
	bl ov101_021D47AC
	cmp r0, #1
	bne _021D20F8
	movs r0, #0
	str r0, [r4, #0x6c]
	movs r0, #0x18
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D20F8:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D20B0

	thumb_func_start ov101_021D20FC
ov101_021D20FC: @ 0x021D20FC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #6
	blt _021D210A
	bl FUN_02022974
_021D210A:
	movs r0, #0x19
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D20FC

	thumb_func_start ov101_021D2114
ov101_021D2114: @ 0x021D2114
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #6
	blt _021D2122
	bl FUN_02022974
_021D2122:
	movs r0, #0x1c
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D2114

	thumb_func_start ov101_021D212C
ov101_021D212C: @ 0x021D212C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	str r1, [r4, #0x64]
	str r1, [r4, #0x68]
	movs r2, #0x1a
	str r2, [r4]
	str r1, [r4, #0x74]
	bl ov101_021D5938
	adds r0, r4, #0
	movs r1, #1
	bl ov101_021D5938
	adds r0, r4, #0
	movs r1, #2
	bl ov101_021D5938
	adds r0, r4, #0
	bl ov101_021D4FF8
	adds r0, r4, #0
	bl ov101_021D5200
	adds r0, r4, #0
	movs r1, #7
	bl ov101_021D4798
	ldr r1, [r4, #0x60]
	cmp r1, #0
	bne _021D2174
	movs r0, #0x3c
	str r0, [r4]
	movs r0, #0x3f
	str r0, [r4, #4]
	b _021D2190
_021D2174:
	cmp r1, #3
	bge _021D2182
	movs r0, #0x3b
	str r0, [r4]
	movs r0, #0x3f
	str r0, [r4, #4]
	b _021D2190
_021D2182:
	ldr r0, _021D2194 @ =0x0000C350
	cmp r1, r0
	blt _021D2190
	movs r0, #0x3d
	str r0, [r4]
	movs r0, #0x1a
	str r0, [r4, #4]
_021D2190:
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_021D2194: .4byte 0x0000C350
	thumb_func_end ov101_021D212C

	thumb_func_start ov101_021D2198
ov101_021D2198: @ 0x021D2198
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #8
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D21B4
	movs r0, #0x3f
	str r0, [r4]
	adds r0, r4, #0
	bl ov101_021D5244
	movs r0, #0
	pop {r4, pc}
_021D21B4:
	movs r0, #1
	lsls r0, r0, #0xa
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D21E8
	ldr r0, [r4, #0x60]
	subs r0, r0, #3
	str r0, [r4, #0x60]
	ldr r0, _021D21EC @ =0x0000045C
	ldr r1, [r4, r0]
	adds r1, r1, #3
	str r1, [r4, r0]
	movs r0, #0x1b
	str r0, [r4]
	ldr r0, _021D21F0 @ =0x000005ED
	bl FUN_02005748
	adds r0, r4, #0
	bl ov101_021D5244
	adds r0, r4, #0
	bl ov101_021D5010
	movs r0, #0
	pop {r4, pc}
_021D21E8:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_021D21EC: .4byte 0x0000045C
_021D21F0: .4byte 0x000005ED
	thumb_func_end ov101_021D2198

	thumb_func_start ov101_021D21F4
ov101_021D21F4: @ 0x021D21F4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #8
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D2210
	ldr r0, [r4, #0x60]
	adds r0, r0, #3
	str r0, [r4, #0x60]
	movs r0, #0x3f
	str r0, [r4]
	movs r0, #0
	pop {r4, pc}
_021D2210:
	movs r0, #0x12
	lsls r0, r0, #6
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D2224
	movs r0, #0x1c
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D2224:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D21F4

	thumb_func_start ov101_021D2228
ov101_021D2228: @ 0x021D2228
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D4394
	movs r1, #0x46
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	adds r0, r0, #1
	str r0, [r4, r1]
	adds r0, r1, #0
	adds r0, #8
	ldr r0, [r4, r0]
	adds r1, #8
	adds r0, r0, #1
	str r0, [r4, r1]
	movs r0, #0
	str r0, [r4, #0x70]
	ldr r1, [r4, #0x74]
	movs r0, #0x33
	tst r0, r1
	beq _021D2256
	movs r0, #1
	str r0, [r4, #0x70]
_021D2256:
	movs r0, #0
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _021D2264
	movs r0, #1
	str r0, [r4, #0x30]
_021D2264:
	adds r0, r4, #0
	movs r1, #0
	bl ov101_021D5938
	adds r0, r4, #0
	movs r1, #1
	bl ov101_021D5938
	adds r0, r4, #0
	movs r1, #2
	bl ov101_021D5938
	adds r0, r4, #0
	bl ov101_021D5010
	adds r0, r4, #0
	movs r1, #0
	bl ov101_021D2BDC
	adds r0, r4, #0
	movs r1, #1
	bl ov101_021D2BDC
	adds r0, r4, #0
	movs r1, #2
	bl ov101_021D2BDC
	adds r0, r4, #0
	bl ov101_021D5848
	adds r0, r4, #0
	movs r1, #9
	bl ov101_021D4798
	movs r1, #1
	adds r0, r4, #0
	str r1, [r4, #0x7c]
	adds r0, #0x80
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	str r1, [r0]
	movs r0, #0
	str r0, [r4, #0x6c]
	movs r0, #0x1d
	str r0, [r4]
	ldr r0, _021D22CC @ =0x000005EE
	bl FUN_02005748
	movs r0, #1
	pop {r4, pc}
	nop
_021D22CC: .4byte 0x000005EE
	thumb_func_end ov101_021D2228

	thumb_func_start ov101_021D22D0
ov101_021D22D0: @ 0x021D22D0
	movs r1, #1
	ldr r2, [r0, #0x6c]
	lsls r1, r1, #0xc
	adds r2, r2, r1
	lsls r1, r1, #3
	str r2, [r0, #0x6c]
	cmp r2, r1
	blt _021D22EC
	movs r1, #0
	str r1, [r0, #0x6c]
	movs r1, #0x1e
	str r1, [r0]
	movs r0, #1
	bx lr
_021D22EC:
	movs r0, #0
	bx lr
	thumb_func_end ov101_021D22D0

	thumb_func_start ov101_021D22F0
ov101_021D22F0: @ 0x021D22F0
	push {r4, lr}
	ldr r1, _021D23E0 @ =0x021BF67C
	adds r4, r0, #0
	ldr r2, [r1, #0x48]
	ldr r1, [r4, #0x7c]
	cmp r1, #1
	bne _021D2336
	movs r1, #2
	lsls r1, r1, #0xa
	adds r3, r2, #0
	tst r3, r1
	beq _021D2336
	movs r2, #2
	str r2, [r4, #0x7c]
	bl ov101_021D5858
	adds r0, r4, #0
	bl ov101_021D5880
	cmp r0, #0
	bne _021D231E
	movs r0, #0
	str r0, [r4, #0x70]
_021D231E:
	adds r0, r4, #0
	movs r1, #0
	bl ov101_021D58F4
	adds r0, r4, #0
	movs r1, #0
	bl ov101_021D2BF4
	ldr r0, _021D23E4 @ =0x00000626
	bl FUN_02005748
	b _021D23BE
_021D2336:
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #1
	bne _021D237A
	movs r1, #2
	adds r0, r2, #0
	tst r0, r1
	beq _021D237A
	adds r0, r4, #0
	adds r0, #0x80
	str r1, [r0]
	adds r0, r4, #0
	bl ov101_021D5858
	adds r0, r4, #0
	bl ov101_021D5880
	cmp r0, #0
	bne _021D2362
	movs r0, #0
	str r0, [r4, #0x70]
_021D2362:
	adds r0, r4, #0
	movs r1, #1
	bl ov101_021D58F4
	adds r0, r4, #0
	movs r1, #1
	bl ov101_021D2BF4
	ldr r0, _021D23E4 @ =0x00000626
	bl FUN_02005748
	b _021D23BE
_021D237A:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #1
	bne _021D23BE
	movs r1, #1
	adds r0, r2, #0
	tst r0, r1
	beq _021D23BE
	adds r0, r4, #0
	movs r2, #2
	adds r0, #0x84
	str r2, [r0]
	adds r0, r4, #0
	bl ov101_021D5858
	adds r0, r4, #0
	bl ov101_021D5880
	cmp r0, #0
	bne _021D23A8
	movs r0, #0
	str r0, [r4, #0x70]
_021D23A8:
	adds r0, r4, #0
	movs r1, #2
	bl ov101_021D58F4
	adds r0, r4, #0
	movs r1, #2
	bl ov101_021D2BF4
	ldr r0, _021D23E4 @ =0x00000626
	bl FUN_02005748
_021D23BE:
	ldr r0, [r4, #0x7c]
	cmp r0, #2
	bne _021D23DC
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #2
	bne _021D23DC
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #2
	bne _021D23DC
	movs r0, #0x1f
	str r0, [r4]
_021D23DC:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_021D23E0: .4byte 0x021BF67C
_021D23E4: .4byte 0x00000626
	thumb_func_end ov101_021D22F0

	thumb_func_start ov101_021D23E8
ov101_021D23E8: @ 0x021D23E8
	push {r4, lr}
	movs r1, #0
	adds r4, r0, #0
	bl ov101_021D2C04
	cmp r0, #1
	beq _021D240E
	adds r0, r4, #0
	movs r1, #1
	bl ov101_021D2C04
	cmp r0, #1
	beq _021D240E
	adds r0, r4, #0
	movs r1, #2
	bl ov101_021D2C04
	cmp r0, #1
	bne _021D2412
_021D240E:
	movs r0, #0
	pop {r4, pc}
_021D2412:
	adds r0, r4, #0
	bl ov101_021D4FF8
	movs r0, #0x20
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov101_021D23E8

	thumb_func_start ov101_021D2420
ov101_021D2420: @ 0x021D2420
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	ldr r1, [r4, #0x74]
	adds r2, #0x48
	bl ov101_021D5778
	str r0, [r4, #0x44]
	cmp r0, #6
	bne _021D243C
	movs r0, #0x21
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D243C:
	movs r1, #3
	ldr r2, [r4, #0x74]
	lsls r1, r1, #8
	tst r1, r2
	beq _021D244E
	movs r0, #0x27
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D244E:
	cmp r0, #2
	bne _021D245A
	movs r0, #0x25
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D245A:
	movs r0, #0x23
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D2420

	thumb_func_start ov101_021D2464
ov101_021D2464: @ 0x021D2464
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D4FF8
	adds r0, r4, #0
	movs r1, #7
	bl ov101_021D4798
	movs r0, #0
	str r0, [r4, #0x6c]
	movs r0, #0x22
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov101_021D2464

	thumb_func_start ov101_021D2480
ov101_021D2480: @ 0x021D2480
	movs r1, #1
	ldr r2, [r0, #0x6c]
	lsls r1, r1, #0xc
	adds r2, r2, r1
	lsls r1, r1, #3
	str r2, [r0, #0x6c]
	cmp r2, r1
	blt _021D249C
	movs r1, #0
	str r1, [r0, #0x6c]
	movs r1, #0x19
	str r1, [r0]
	movs r0, #1
	bx lr
_021D249C:
	movs r0, #0
	bx lr
	thumb_func_end ov101_021D2480

	thumb_func_start ov101_021D24A0
ov101_021D24A0: @ 0x021D24A0
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D597C
	ldr r1, _021D24CC @ =0x00000458
	str r0, [r4, #0x64]
	ldr r2, [r4, r1]
	adds r0, r2, r0
	str r0, [r4, r1]
	movs r0, #0
	str r0, [r4, #0x6c]
	movs r0, #0x24
	str r0, [r4]
	adds r0, r4, #0
	bl ov101_021D45F8
	adds r0, r4, #0
	movs r1, #0xa
	bl ov101_021D4798
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_021D24CC: .4byte 0x00000458
	thumb_func_end ov101_021D24A0

	thumb_func_start ov101_021D24D0
ov101_021D24D0: @ 0x021D24D0
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D460C
	cmp r0, #1
	bne _021D24EC
	adds r0, r4, #0
	movs r1, #7
	bl ov101_021D4798
	movs r0, #0x19
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D24EC:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D24D0

	thumb_func_start ov101_021D24F0
ov101_021D24F0: @ 0x021D24F0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	str r1, [r4, #0x64]
	str r1, [r4, #0x6c]
	movs r1, #0x26
	str r1, [r4]
	bl ov101_021D45F8
	adds r0, r4, #0
	movs r1, #0xa
	bl ov101_021D4798
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D24F0

	thumb_func_start ov101_021D2510
ov101_021D2510: @ 0x021D2510
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	ldr r2, [r4, #0x6c]
	lsls r1, r1, #0xc
	adds r2, r2, r1
	movs r1, #0xf
	lsls r1, r1, #0xc
	str r2, [r4, #0x6c]
	cmp r2, r1
	ble _021D2548
	bl ov101_021D460C
	cmp r0, #1
	bne _021D2548
	adds r0, r4, #0
	movs r1, #7
	bl ov101_021D4798
	adds r0, r4, #0
	bl ov101_021D4FF8
	movs r0, #0
	str r0, [r4, #0x6c]
	movs r0, #0x1c
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D2548:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D2510

	thumb_func_start ov101_021D254C
ov101_021D254C: @ 0x021D254C
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D597C
	ldr r1, _021D2590 @ =0x00000458
	str r0, [r4, #0x64]
	ldr r2, [r4, r1]
	adds r0, r2, r0
	str r0, [r4, r1]
	movs r0, #0
	str r0, [r4, #0x6c]
	movs r0, #0x28
	str r0, [r4]
	adds r0, r4, #0
	bl ov101_021D45F8
	adds r0, r4, #0
	movs r1, #0xa
	bl ov101_021D4798
	adds r0, r4, #0
	bl ov101_021D53B0
	adds r0, r4, #0
	movs r1, #2
	bl ov101_021D1894
	adds r0, r4, #0
	bl ov101_021D7B08
	ldr r1, _021D2594 @ =0x00000454
	str r0, [r4, r1]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_021D2590: .4byte 0x00000458
_021D2594: .4byte 0x00000454
	thumb_func_end ov101_021D254C

	thumb_func_start ov101_021D2598
ov101_021D2598: @ 0x021D2598
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D460C
	cmp r0, #1
	bne _021D25BC
	ldr r0, _021D25C0 @ =0x00000454
	ldr r0, [r4, r0]
	bl FUN_0207136C
	adds r0, r4, #0
	movs r1, #7
	bl ov101_021D4798
	movs r0, #0x29
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D25BC:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_021D25C0: .4byte 0x00000454
	thumb_func_end ov101_021D2598

	thumb_func_start ov101_021D25C4
ov101_021D25C4: @ 0x021D25C4
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D47B4
	movs r0, #0
	str r0, [r4, #0x1c]
	str r0, [r4, #0x14]
	movs r0, #1
	str r0, [r4, #8]
	movs r1, #0x2a
	str r1, [r4]
	pop {r4, pc}
	thumb_func_end ov101_021D25C4

	thumb_func_start ov101_021D25DC
ov101_021D25DC: @ 0x021D25DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	adds r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x1c]
	adds r1, r0, #1
	ldr r0, _021D2624 @ =0x000003E7
	str r1, [r4, #0x1c]
	cmp r1, r0
	bls _021D25F4
	str r0, [r4, #0x1c]
_021D25F4:
	ldr r1, [r4, #0x1c]
	adds r0, r4, #0
	bl ov101_021D79BC
	movs r0, #0x10
	str r0, [r4, #0x10]
	movs r0, #1
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	bl ov101_021D44E8
	cmp r0, #0
	bne _021D261A
	movs r0, #1
	str r0, [r4, #0x2c]
_021D261A:
	movs r0, #0x2b
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
	nop
_021D2624: .4byte 0x000003E7
	thumb_func_end ov101_021D25DC

	thumb_func_start ov101_021D2628
ov101_021D2628: @ 0x021D2628
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	subs r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, #1
	bge _021D263A
	bl FUN_02022974
_021D263A:
	adds r0, r4, #0
	movs r1, #0
	bl ov101_021D5938
	adds r0, r4, #0
	movs r1, #1
	bl ov101_021D5938
	adds r0, r4, #0
	movs r1, #2
	bl ov101_021D5938
	adds r0, r4, #0
	bl ov101_021D4FF8
	adds r0, r4, #0
	bl ov101_021D5200
	adds r0, r4, #0
	movs r1, #7
	bl ov101_021D4798
	movs r2, #0x2c
	str r2, [r4]
	ldr r1, [r4, #0x60]
	cmp r1, #0
	bne _021D267A
	movs r0, #0x3c
	str r0, [r4]
	movs r0, #0x3f
	str r0, [r4, #4]
	b _021D2694
_021D267A:
	cmp r1, #1
	bge _021D2688
	movs r0, #0x3c
	str r0, [r4]
	movs r0, #0x3f
	str r0, [r4, #4]
	b _021D2694
_021D2688:
	ldr r0, _021D2698 @ =0x0000C350
	cmp r1, r0
	blt _021D2694
	movs r0, #0x3d
	str r0, [r4]
	str r2, [r4, #4]
_021D2694:
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_021D2698: .4byte 0x0000C350
	thumb_func_end ov101_021D2628

	thumb_func_start ov101_021D269C
ov101_021D269C: @ 0x021D269C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #8
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D26B2
	movs r0, #0x3f
	str r0, [r4]
	movs r0, #0
	pop {r4, pc}
_021D26B2:
	movs r0, #1
	lsls r0, r0, #0xa
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D26F8
	ldr r0, [r4, #0x60]
	subs r0, r0, #1
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x14]
	subs r0, r0, #1
	str r0, [r4, #0x14]
	ldr r0, _021D26FC @ =0x0000045C
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bge _021D26DC
	movs r0, #0
	str r0, [r4, #0x14]
_021D26DC:
	movs r0, #0x2d
	str r0, [r4]
	ldr r0, _021D2700 @ =0x000005ED
	bl FUN_02005748
	adds r0, r4, #0
	bl ov101_021D5244
	adds r0, r4, #0
	movs r1, #0
	bl ov101_021D4FB8
	movs r0, #0
	pop {r4, pc}
_021D26F8:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_021D26FC: .4byte 0x0000045C
_021D2700: .4byte 0x000005ED
	thumb_func_end ov101_021D269C

	thumb_func_start ov101_021D2704
ov101_021D2704: @ 0x021D2704
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #8
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D2720
	ldr r0, [r4, #0x60]
	adds r0, r0, #1
	str r0, [r4, #0x60]
	movs r0, #0x3f
	str r0, [r4]
	movs r0, #0
	pop {r4, pc}
_021D2720:
	movs r0, #0x12
	lsls r0, r0, #6
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D2734
	movs r0, #0x2e
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D2734:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D2704

	thumb_func_start ov101_021D2738
ov101_021D2738: @ 0x021D2738
	push {r4, lr}
	movs r2, #0x46
	adds r4, r0, #0
	lsls r2, r2, #4
	ldr r1, [r4, r2]
	adds r1, r1, #1
	str r1, [r4, r2]
	adds r1, r2, #0
	adds r1, #0xc
	ldr r1, [r4, r1]
	adds r2, #0xc
	adds r1, r1, #1
	str r1, [r4, r2]
	movs r1, #1
	str r1, [r4, #0x74]
	str r1, [r4, #0x30]
	str r1, [r4, #0x70]
	movs r1, #0
	bl ov101_021D5938
	adds r0, r4, #0
	movs r1, #1
	bl ov101_021D5938
	adds r0, r4, #0
	movs r1, #2
	bl ov101_021D5938
	adds r0, r4, #0
	movs r1, #0
	bl ov101_021D4FB8
	adds r0, r4, #0
	movs r1, #0
	bl ov101_021D2BDC
	adds r0, r4, #0
	movs r1, #1
	bl ov101_021D2BDC
	adds r0, r4, #0
	movs r1, #2
	bl ov101_021D2BDC
	adds r0, r4, #0
	bl ov101_021D5848
	adds r0, r4, #0
	bl ov101_021D45B0
	movs r1, #1
	adds r0, r4, #0
	str r1, [r4, #0x7c]
	adds r0, #0x80
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	str r1, [r0]
	movs r0, #0
	str r0, [r4, #0x6c]
	movs r0, #0x2f
	str r0, [r4]
	ldr r0, _021D2820 @ =0x000005EE
	bl FUN_02005748
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _021D27EC
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _021D27EC
	adds r0, r4, #0
	bl ov101_021D44C4
	cmp r0, #1
	bne _021D27DE
	movs r0, #1
	str r0, [r4, #0x28]
	movs r0, #0x13
	lsls r0, r0, #6
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
_021D27DE:
	ldr r0, [r4, #0x28]
	cmp r0, #1
	bne _021D27EC
	adds r0, r4, #0
	movs r1, #1
	bl ov101_021D53F8
_021D27EC:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _021D281C
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _021D281C
	adds r0, r4, #0
	bl ov101_021D44A0
	cmp r0, #1
	bne _021D280E
	movs r0, #1
	str r0, [r4, #0x24]
	ldr r0, _021D2824 @ =0x000004BC
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
_021D280E:
	ldr r0, [r4, #0x24]
	cmp r0, #1
	bne _021D281C
	adds r0, r4, #0
	movs r1, #0
	bl ov101_021D53F8
_021D281C:
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_021D2820: .4byte 0x000005EE
_021D2824: .4byte 0x000004BC
	thumb_func_end ov101_021D2738

	thumb_func_start ov101_021D2828
ov101_021D2828: @ 0x021D2828
	push {r3, lr}
	movs r1, #1
	ldr r2, [r0, #0x6c]
	lsls r1, r1, #0xc
	adds r2, r2, r1
	lsls r1, r1, #3
	str r2, [r0, #0x6c]
	cmp r2, r1
	blt _021D284C
	movs r1, #0
	str r1, [r0, #0x6c]
	movs r1, #0x30
	str r1, [r0]
	movs r1, #6
	bl ov101_021D4798
	movs r0, #1
	pop {r3, pc}
_021D284C:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov101_021D2828

	thumb_func_start ov101_021D2850
ov101_021D2850: @ 0x021D2850
	push {r4, lr}
	ldr r1, _021D2948 @ =0x021BF67C
	adds r4, r0, #0
	ldr r2, [r1, #0x48]
	ldr r1, [r4, #0x7c]
	cmp r1, #1
	bne _021D2898
	movs r1, #2
	lsls r1, r1, #0xa
	adds r3, r2, #0
	tst r3, r1
	beq _021D2898
	movs r2, #2
	str r2, [r4, #0x7c]
	bl ov101_021D5858
	adds r0, r4, #0
	bl ov101_021D58C0
	cmp r0, #0
	bne _021D2880
	movs r0, #0
	str r0, [r4, #0x70]
	str r0, [r4, #0x30]
_021D2880:
	adds r0, r4, #0
	movs r1, #0
	bl ov101_021D58F4
	adds r0, r4, #0
	movs r1, #0
	bl ov101_021D2BF4
	ldr r0, _021D294C @ =0x000005F5
	bl FUN_02005748
	b _021D2924
_021D2898:
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #1
	bne _021D28DE
	movs r1, #2
	adds r0, r2, #0
	tst r0, r1
	beq _021D28DE
	adds r0, r4, #0
	adds r0, #0x80
	str r1, [r0]
	adds r0, r4, #0
	bl ov101_021D5858
	adds r0, r4, #0
	bl ov101_021D58C0
	cmp r0, #0
	bne _021D28C6
	movs r0, #0
	str r0, [r4, #0x70]
	str r0, [r4, #0x30]
_021D28C6:
	adds r0, r4, #0
	movs r1, #1
	bl ov101_021D58F4
	adds r0, r4, #0
	movs r1, #1
	bl ov101_021D2BF4
	ldr r0, _021D294C @ =0x000005F5
	bl FUN_02005748
	b _021D2924
_021D28DE:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #1
	bne _021D2924
	movs r1, #1
	adds r0, r2, #0
	tst r0, r1
	beq _021D2924
	adds r0, r4, #0
	movs r2, #2
	adds r0, #0x84
	str r2, [r0]
	adds r0, r4, #0
	bl ov101_021D5858
	adds r0, r4, #0
	bl ov101_021D58C0
	cmp r0, #0
	bne _021D290E
	movs r0, #0
	str r0, [r4, #0x70]
	str r0, [r4, #0x30]
_021D290E:
	adds r0, r4, #0
	movs r1, #2
	bl ov101_021D58F4
	adds r0, r4, #0
	movs r1, #2
	bl ov101_021D2BF4
	ldr r0, _021D294C @ =0x000005F5
	bl FUN_02005748
_021D2924:
	ldr r0, [r4, #0x7c]
	cmp r0, #2
	bne _021D2942
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #2
	bne _021D2942
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #2
	bne _021D2942
	movs r0, #0x31
	str r0, [r4]
_021D2942:
	movs r0, #0
	pop {r4, pc}
	nop
_021D2948: .4byte 0x021BF67C
_021D294C: .4byte 0x000005F5
	thumb_func_end ov101_021D2850

	thumb_func_start ov101_021D2950
ov101_021D2950: @ 0x021D2950
	push {r4, lr}
	movs r1, #0
	adds r4, r0, #0
	bl ov101_021D2C04
	cmp r0, #1
	beq _021D2976
	adds r0, r4, #0
	movs r1, #1
	bl ov101_021D2C04
	cmp r0, #1
	beq _021D2976
	adds r0, r4, #0
	movs r1, #2
	bl ov101_021D2C04
	cmp r0, #1
	bne _021D297A
_021D2976:
	movs r0, #0
	pop {r4, pc}
_021D297A:
	adds r0, r4, #0
	bl ov101_021D4FF8
	movs r0, #0x32
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov101_021D2950

	thumb_func_start ov101_021D2988
ov101_021D2988: @ 0x021D2988
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	ldr r1, [r4, #0x74]
	adds r2, #0x48
	bl ov101_021D57EC
	str r0, [r4, #0x44]
	cmp r0, #6
	ldr r0, [r4, #0x28]
	bne _021D29AE
	cmp r0, #1
	bne _021D29A6
	movs r0, #3
	str r0, [r4, #0x28]
_021D29A6:
	movs r0, #0x33
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D29AE:
	cmp r0, #1
	bne _021D29B6
	movs r0, #2
	str r0, [r4, #0x28]
_021D29B6:
	movs r0, #0x34
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D2988

	thumb_func_start ov101_021D29C0
ov101_021D29C0: @ 0x021D29C0
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D4FF8
	adds r0, r4, #0
	movs r1, #7
	bl ov101_021D4798
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bgt _021D29DA
	movs r0, #0x36
	b _021D29DC
_021D29DA:
	movs r0, #0x2b
_021D29DC:
	str r0, [r4]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D29C0

	thumb_func_start ov101_021D29E4
ov101_021D29E4: @ 0x021D29E4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x44]
	lsls r2, r1, #2
	ldr r1, _021D2A10 @ =0x021D94F0
	ldr r3, [r1, r2]
	ldr r1, _021D2A14 @ =0x00000458
	str r3, [r4, #0x64]
	ldr r2, [r4, r1]
	adds r2, r2, r3
	str r2, [r4, r1]
	bl ov101_021D45F8
	adds r0, r4, #0
	movs r1, #0xa
	bl ov101_021D4798
	movs r0, #0
	str r0, [r4, #0x6c]
	movs r1, #0x35
	str r1, [r4]
	pop {r4, pc}
	.align 2, 0
_021D2A10: .4byte 0x021D94F0
_021D2A14: .4byte 0x00000458
	thumb_func_end ov101_021D29E4

	thumb_func_start ov101_021D2A18
ov101_021D2A18: @ 0x021D2A18
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D460C
	cmp r0, #0
	bne _021D2A28
	movs r0, #0
	pop {r4, pc}
_021D2A28:
	adds r0, r4, #0
	movs r1, #7
	bl ov101_021D4798
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bgt _021D2A3A
	movs r0, #0x36
	b _021D2A3C
_021D2A3A:
	movs r0, #0x2b
_021D2A3C:
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D2A18

	thumb_func_start ov101_021D2A44
ov101_021D2A44: @ 0x021D2A44
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	subs r0, r0, #1
	str r0, [r4, #0x10]
	beq _021D2A54
	bl FUN_02022974
_021D2A54:
	ldr r0, [r4, #0x2c]
	cmp r0, #1
	bne _021D2A70
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _021D2A70
	adds r0, r4, #0
	movs r1, #8
	bl ov101_021D4798
	movs r0, #0x3a
	str r0, [r4]
	movs r0, #0
	pop {r4, pc}
_021D2A70:
	movs r0, #0x37
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov101_021D2A44

	thumb_func_start ov101_021D2A78
ov101_021D2A78: @ 0x021D2A78
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D44FC
	adds r0, r4, #0
	bl ov101_021D4550
	ldr r1, [r4, #0x24]
	cmp r1, #1
	bne _021D2A8E
	movs r0, #2
_021D2A8E:
	cmp r0, #2
	bne _021D2AA2
	adds r0, r4, #0
	movs r1, #5
	bl ov101_021D4798
	movs r0, #0x38
	str r0, [r4]
	movs r0, #0
	pop {r4, pc}
_021D2AA2:
	cmp r0, #1
	bne _021D2AB6
	adds r0, r4, #0
	movs r1, #0xc
	bl ov101_021D4798
	movs r0, #0x39
	str r0, [r4]
	movs r0, #0
	pop {r4, pc}
_021D2AB6:
	movs r0, #0x23
	movs r1, #0
	bl FUN_02005844
	movs r0, #0x2a
	str r0, [r4]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D2A78

	thumb_func_start ov101_021D2AC8
ov101_021D2AC8: @ 0x021D2AC8
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D47AC
	cmp r0, #0
	bne _021D2AD8
	movs r0, #0
	pop {r4, pc}
_021D2AD8:
	movs r0, #0x2a
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov101_021D2AC8

	thumb_func_start ov101_021D2AE0
ov101_021D2AE0: @ 0x021D2AE0
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D47AC
	cmp r0, #0
	bne _021D2AF0
	movs r0, #0
	pop {r4, pc}
_021D2AF0:
	movs r0, #0x2a
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov101_021D2AE0

	thumb_func_start ov101_021D2AF8
ov101_021D2AF8: @ 0x021D2AF8
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D47AC
	cmp r0, #0
	bne _021D2B08
	movs r0, #0
	pop {r4, pc}
_021D2B08:
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	bls _021D2B12
	str r1, [r4, #0x20]
_021D2B12:
	adds r0, r4, #0
	movs r1, #0
	bl ov101_021D1894
	adds r0, r4, #0
	bl ov101_021D53D4
	movs r0, #0
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov101_021D2AF8

	thumb_func_start ov101_021D2B28
ov101_021D2B28: @ 0x021D2B28
	push {r4, lr}
	movs r1, #0
	adds r4, r0, #0
	bl ov101_021D148C
	movs r0, #0x3e
	str r0, [r4]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D2B28

	thumb_func_start ov101_021D2B3C
ov101_021D2B3C: @ 0x021D2B3C
	push {r4, lr}
	movs r1, #2
	adds r4, r0, #0
	bl ov101_021D148C
	movs r0, #0x3e
	str r0, [r4]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D2B3C

	thumb_func_start ov101_021D2B50
ov101_021D2B50: @ 0x021D2B50
	push {r4, lr}
	movs r1, #1
	adds r4, r0, #0
	bl ov101_021D148C
	movs r0, #0x3e
	str r0, [r4]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D2B50

	thumb_func_start ov101_021D2B64
ov101_021D2B64: @ 0x021D2B64
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #3
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D2B7C
	adds r0, r4, #0
	bl ov101_021D14E4
	ldr r0, [r4, #4]
	str r0, [r4]
_021D2B7C:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D2B64

	thumb_func_start ov101_021D2B80
ov101_021D2B80: @ 0x021D2B80
	push {r3, lr}
	bl ov101_021D5244
	movs r0, #2
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov101_021D2B80

	thumb_func_start ov101_021D2B8C
ov101_021D2B8C: @ 0x021D2B8C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r7, #0
	adds r5, #0xb4
	movs r4, #0
	adds r6, r5, #0
_021D2B98:
	movs r0, #0
	str r0, [r5]
	adds r2, r4, #0
	str r4, [r5, #0x10]
	ldr r0, _021D2BBC @ =ov101_021D2C10
	adds r1, r6, #0
	adds r2, #0x81
	str r7, [r5, #0x20]
	bl FUN_0200D9E8
	str r0, [r5, #0x1c]
	adds r4, r4, #1
	adds r5, #0x24
	adds r6, #0x24
	cmp r4, #3
	blo _021D2B98
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2BBC: .4byte ov101_021D2C10
	thumb_func_end ov101_021D2B8C

	thumb_func_start ov101_021D2BC0
ov101_021D2BC0: @ 0x021D2BC0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_021D2BC6:
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r0, [r0]
	bl FUN_0200DA58
	adds r4, r4, #1
	adds r5, #0x24
	cmp r4, #3
	blo _021D2BC6
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov101_021D2BC0

	thumb_func_start ov101_021D2BDC
ov101_021D2BDC: @ 0x021D2BDC
	movs r2, #0x24
	adds r3, r1, #0
	muls r3, r2, r3
	adds r1, r0, r3
	adds r0, r0, r3
	movs r2, #1
	adds r1, #0xb4
	str r2, [r1]
	adds r0, #0xb8
	str r2, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov101_021D2BDC

	thumb_func_start ov101_021D2BF4
ov101_021D2BF4: @ 0x021D2BF4
	movs r2, #0x24
	muls r2, r1, r2
	adds r0, r0, r2
	movs r3, #2
	adds r0, #0xb4
	str r3, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov101_021D2BF4

	thumb_func_start ov101_021D2C04
ov101_021D2C04: @ 0x021D2C04
	movs r2, #0x24
	muls r2, r1, r2
	adds r0, r0, r2
	adds r0, #0xb8
	ldr r0, [r0]
	bx lr
	thumb_func_end ov101_021D2C04

	thumb_func_start ov101_021D2C10
ov101_021D2C10: @ 0x021D2C10
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	ldr r6, _021D2C2C @ =0x021D86C4
_021D2C18:
	ldr r2, [r5]
	adds r0, r5, #0
	lsls r2, r2, #2
	ldr r2, [r6, r2]
	adds r1, r4, #0
	blx r2
	cmp r0, #1
	beq _021D2C18
	pop {r4, r5, r6, pc}
	nop
_021D2C2C: .4byte 0x021D86C4
	thumb_func_end ov101_021D2C10

	thumb_func_start ov101_021D2C30
ov101_021D2C30: @ 0x021D2C30
	movs r0, #0
	bx lr
	thumb_func_end ov101_021D2C30

	thumb_func_start ov101_021D2C34
ov101_021D2C34: @ 0x021D2C34
	push {r3, lr}
	adds r2, r0, #0
	adds r0, r1, #0
	ldr r1, [r2, #0x10]
	adds r2, r0, #0
	adds r2, #0x8c
	ldr r2, [r2]
	bl ov101_021D3FE8
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov101_021D2C34

	thumb_func_start ov101_021D2C4C
ov101_021D2C4C: @ 0x021D2C4C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r2, [r5]
	adds r4, r1, #0
	adds r2, r2, #1
	str r2, [r5]
	movs r2, #0
	str r2, [r5, #0x14]
	str r2, [r5, #0x18]
	ldr r2, [r4, #0x30]
	cmp r2, #1
	ldr r2, [r4, #8]
	bne _021D2C96
	cmp r2, #0
	bne _021D2C80
	bl ov101_021D2D88
	cmp r0, #0
	bne _021D2CA4
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov101_021D3780
	movs r0, #0
	str r0, [r4, #0x30]
	b _021D2CA4
_021D2C80:
	bl ov101_021D2DC0
	cmp r0, #0
	bne _021D2CA4
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov101_021D3830
	movs r0, #0
	str r0, [r4, #0x30]
	b _021D2CA4
_021D2C96:
	cmp r2, #0
	bne _021D2CA0
	bl ov101_021D3780
	b _021D2CA4
_021D2CA0:
	bl ov101_021D3830
_021D2CA4:
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov101_021D2C4C

	thumb_func_start ov101_021D2CA8
ov101_021D2CA8: @ 0x021D2CA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	adds r3, r1, #0
	ldr r1, [r5, #0x10]
	adds r7, r3, #0
	lsls r0, r1, #2
	adds r7, #0x90
	str r0, [sp]
	ldr r0, [r7, r0]
	movs r4, #0
	lsrs r6, r0, #0x1f
	lsls r2, r0, #0xf
	subs r2, r2, r6
	movs r0, #0xf
	rors r2, r0
	adds r0, r6, r2
	beq _021D2CE2
	adds r2, r3, #0
	adds r2, #0x8c
	ldr r2, [r2]
	movs r4, #1
	cmp r0, r2
	bge _021D2CDA
	adds r2, r0, #0
_021D2CDA:
	adds r0, r3, #0
	bl ov101_021D4024
	b _021D2D08
_021D2CE2:
	ldr r2, [r5, #0x18]
	cmp r2, #0
	beq _021D2D08
	subs r0, r2, #1
	str r0, [r5, #0x18]
	adds r0, r3, #0
	adds r3, #0x8c
	ldr r2, [r3]
	movs r4, #1
	bl ov101_021D3FE8
	ldr r0, [sp]
	ldr r0, [r7, r0]
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0xf
	subs r1, r1, r2
	movs r0, #0xf
	rors r1, r0
	adds r0, r2, r1
_021D2D08:
	cmp r0, #0
	bne _021D2D44
	ldr r6, [r5, #0x18]
	cmp r6, #0
	bne _021D2D44
	ldr r3, _021D2D4C @ =0x021D86D8
	add r2, sp, #4
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	cmp r6, #4
	str r0, [r2]
	ble _021D2D28
	movs r6, #4
_021D2D28:
	lsls r1, r6, #2
	add r0, sp, #4
	ldr r0, [r0, r1]
	str r0, [r5, #8]
	movs r0, #0
	str r0, [r5, #0xc]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	cmp r4, #0
	bne _021D2D44
	add sp, #0x18
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D2D44:
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2D4C: .4byte 0x021D86D8
	thumb_func_end ov101_021D2CA8

	thumb_func_start ov101_021D2D50
ov101_021D2D50: @ 0x021D2D50
	push {r3, r4}
	ldr r2, [r0, #0x10]
	ldr r3, [r0, #8]
	adds r1, #0x9c
	lsls r2, r2, #2
	str r3, [r1, r2]
	ldr r3, [r0, #8]
	rsbs r3, r3, #0
	str r3, [r0, #8]
	ldr r3, [r0, #0xc]
	adds r4, r3, #1
	movs r3, #1
	str r4, [r0, #0xc]
	tst r3, r4
	bne _021D2D74
	ldr r3, [r0, #8]
	asrs r3, r3, #2
	str r3, [r0, #8]
_021D2D74:
	ldr r3, [r0, #8]
	cmp r3, #0
	bne _021D2D82
	movs r3, #0
	str r3, [r0]
	str r3, [r0, #4]
	str r3, [r1, r2]
_021D2D82:
	movs r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov101_021D2D50

	thumb_func_start ov101_021D2D88
ov101_021D2D88: @ 0x021D2D88
	push {r3, lr}
	ldr r2, [r1, #0x74]
	cmp r2, #0
	bne _021D2D94
	movs r0, #0
	pop {r3, pc}
_021D2D94:
	ldr r2, [r0, #0x10]
	cmp r2, #0
	beq _021D2DA4
	cmp r2, #1
	beq _021D2DAA
	cmp r2, #2
	beq _021D2DB0
	b _021D2DB6
_021D2DA4:
	bl ov101_021D2DE0
	pop {r3, pc}
_021D2DAA:
	bl ov101_021D2E1C
	pop {r3, pc}
_021D2DB0:
	bl ov101_021D2E58
	pop {r3, pc}
_021D2DB6:
	bl FUN_02022974
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov101_021D2D88

	thumb_func_start ov101_021D2DC0
ov101_021D2DC0: @ 0x021D2DC0
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0x74]
	cmp r0, #0
	bne _021D2DD0
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D2DD0:
	bl ov101_021D5618
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov101_021D3738
	pop {r3, r4, r5, pc}
	thumb_func_end ov101_021D2DC0

	thumb_func_start ov101_021D2DE0
ov101_021D2DE0: @ 0x021D2DE0
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0x74]
	bl ov101_021D5618
	adds r6, r0, #0
	cmp r6, #6
	bne _021D2DF6
	movs r0, #0
	pop {r4, r5, r6, pc}
_021D2DF6:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov101_021D38FC
	cmp r0, #1
	bne _021D2E0E
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov101_021D2E94
	pop {r4, r5, r6, pc}
_021D2E0E:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov101_021D2FAC
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov101_021D2DE0

	thumb_func_start ov101_021D2E1C
ov101_021D2E1C: @ 0x021D2E1C
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0x74]
	bl ov101_021D5618
	adds r6, r0, #0
	cmp r6, #6
	bne _021D2E32
	movs r0, #0
	pop {r4, r5, r6, pc}
_021D2E32:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov101_021D38FC
	cmp r0, #1
	bne _021D2E4A
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov101_021D32EC
	pop {r4, r5, r6, pc}
_021D2E4A:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov101_021D3394
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov101_021D2E1C

	thumb_func_start ov101_021D2E58
ov101_021D2E58: @ 0x021D2E58
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0x74]
	bl ov101_021D5618
	adds r6, r0, #0
	cmp r6, #6
	bne _021D2E6E
	movs r0, #0
	pop {r4, r5, r6, pc}
_021D2E6E:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov101_021D38FC
	cmp r0, #1
	bne _021D2E86
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov101_021D32EC
	pop {r4, r5, r6, pc}
_021D2E86:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov101_021D3394
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov101_021D2E58

	thumb_func_start ov101_021D2E94
ov101_021D2E94: @ 0x021D2E94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	ldr r0, [r0, #0x10]
	adds r4, r1, #0
	adds r6, r2, #0
	str r0, [sp, #8]
	movs r7, #1
_021D2EA4:
	ldr r1, [sp, #8]
	adds r0, r4, #0
	adds r2, r7, #0
	bl ov101_021D55D4
	cmp r6, r0
	bne _021D2EDC
	movs r5, #0
	cmp r7, #3
	bgt _021D2EDC
_021D2EB8:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D2ED4
	ldr r0, [sp]
	adds r1, r7, r5
	str r1, [r0, #0x14]
	str r5, [r0, #0x18]
	add sp, #0x14
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_021D2ED4:
	adds r5, r5, #1
	adds r0, r7, r5
	cmp r0, #3
	ble _021D2EB8
_021D2EDC:
	adds r7, r7, #1
	cmp r7, #3
	ble _021D2EA4
	movs r0, #4
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x70]
	cmp r0, #1
	bne _021D2EF0
	movs r0, #0x15
	str r0, [sp, #0x10]
_021D2EF0:
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r7, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	cmp r0, #1
	blt _021D2FA4
_021D2F00:
	movs r2, #1
	ldr r1, [sp, #8]
	adds r0, r4, #0
	subs r2, r2, r7
	bl ov101_021D55D4
	cmp r6, r0
	bne _021D2F9C
	movs r5, #0
_021D2F12:
	adds r0, r7, r5
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D2F96
	cmp r5, #0
	bne _021D2F58
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	lsrs r0, r0, #0x1f
	lsls r2, r1, #0x1e
	subs r2, r2, r0
	movs r1, #0x1e
	rors r2, r1
	adds r0, r0, r2
	bne _021D2F86
	adds r0, r4, #0
	adds r1, r7, #2
	adds r2, r6, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D2F86
	ldr r0, [sp]
	movs r1, #3
	str r1, [r0, #0x14]
	adds r1, r7, #2
	str r1, [r0, #0x18]
	add sp, #0x14
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_021D2F58:
	cmp r5, #1
	bne _021D2F86
	ldr r0, [sp, #0xc]
	movs r1, #6
	blx FUN_020E1F6C
	cmp r1, #2
	bge _021D2F86
	adds r0, r4, #0
	adds r1, r7, #2
	adds r2, r6, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D2F86
	ldr r0, [sp]
	movs r1, #3
	str r1, [r0, #0x14]
	adds r1, r7, #2
	str r1, [r0, #0x18]
	add sp, #0x14
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_021D2F86:
	ldr r0, [sp]
	adds r1, r5, #1
	str r1, [r0, #0x14]
	ldr r1, [sp, #4]
	add sp, #0x14
	str r1, [r0, #0x18]
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_021D2F96:
	adds r5, r5, #1
	cmp r5, #3
	blt _021D2F12
_021D2F9C:
	ldr r0, [sp, #0x10]
	adds r7, r7, #1
	cmp r7, r0
	ble _021D2F00
_021D2FA4:
	movs r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov101_021D2E94

	thumb_func_start ov101_021D2FAC
ov101_021D2FAC: @ 0x021D2FAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r4, r2, #0
	adds r2, r0, #0
	ldr r7, [r2, #0x10]
	add r2, sp, #0xc
	str r2, [sp]
	add r2, sp, #0x14
	add r3, sp, #0x10
	str r0, [sp, #4]
	adds r5, r1, #0
	bl ov101_021D394C
	cmp r0, #0
	bne _021D2FD0
	add sp, #0x18
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D2FD0:
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D3040
	ldr r2, [sp, #0x14]
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D2FFC
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	movs r1, #0
	str r1, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D2FFC:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	beq _021D301E
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D301E
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	movs r1, #0
	str r1, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D301E:
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _021D3040
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D3040
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	movs r1, #0
	str r1, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3040:
	movs r0, #4
	str r0, [sp, #8]
	ldr r0, [r5, #0x70]
	cmp r0, #1
	bne _021D304E
	movs r0, #0x15
	str r0, [sp, #8]
_021D304E:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _021D3096
	ldr r0, [sp, #8]
	movs r6, #1
	cmp r0, #1
	blt _021D3090
_021D305C:
	ldr r2, [sp, #0x14]
	adds r0, r5, #0
	adds r1, r7, #0
	subs r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D3088
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D3088
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3088:
	ldr r0, [sp, #8]
	adds r6, r6, #1
	cmp r6, r0
	ble _021D305C
_021D3090:
	add sp, #0x18
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D3096:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _021D3168
	ldr r0, [sp, #8]
	movs r6, #1
	cmp r0, #1
	blt _021D3162
_021D30A4:
	movs r0, #1
	tst r0, r6
	beq _021D3102
	ldr r2, [sp, #0x14]
	adds r0, r5, #0
	adds r1, r7, #0
	subs r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D30D6
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D30D6
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D30D6:
	ldr r2, [sp, #0x10]
	adds r0, r5, #0
	adds r1, r7, #0
	subs r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D315A
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D315A
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3102:
	ldr r2, [sp, #0x10]
	adds r0, r5, #0
	adds r1, r7, #0
	subs r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D312E
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D312E
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D312E:
	ldr r2, [sp, #0x14]
	adds r0, r5, #0
	adds r1, r7, #0
	subs r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D315A
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D315A
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D315A:
	ldr r0, [sp, #8]
	adds r6, r6, #1
	cmp r6, r0
	ble _021D30A4
_021D3162:
	add sp, #0x18
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D3168:
	ldr r0, [sp, #8]
	movs r6, #1
	cmp r0, #1
	bge _021D3172
	b _021D32E6
_021D3172:
	movs r0, #3
	ands r0, r6
	bne _021D31FC
	ldr r2, [sp, #0x14]
	adds r0, r5, #0
	adds r1, r7, #0
	subs r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D31A4
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D31A4
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D31A4:
	ldr r2, [sp, #0x10]
	adds r0, r5, #0
	adds r1, r7, #0
	subs r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D31D0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D31D0
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D31D0:
	ldr r2, [sp, #0xc]
	adds r0, r5, #0
	adds r1, r7, #0
	subs r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D32DC
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D32DC
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D31FC:
	cmp r0, #1
	bne _021D3258
	ldr r2, [sp, #0x10]
	adds r0, r5, #0
	adds r1, r7, #0
	subs r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D322C
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D322C
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D322C:
	ldr r2, [sp, #0x14]
	adds r0, r5, #0
	adds r1, r7, #0
	subs r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D32DC
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D32DC
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3258:
	ldr r2, [sp, #0xc]
	adds r0, r5, #0
	adds r1, r7, #0
	subs r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D3284
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D3284
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3284:
	ldr r2, [sp, #0x14]
	adds r0, r5, #0
	adds r1, r7, #0
	subs r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D32B0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D32B0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D32B0:
	ldr r2, [sp, #0x10]
	adds r0, r5, #0
	adds r1, r7, #0
	subs r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D32DC
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D32DC
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D32DC:
	ldr r0, [sp, #8]
	adds r6, r6, #1
	cmp r6, r0
	bgt _021D32E6
	b _021D3172
_021D32E6:
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D2FAC

	thumb_func_start ov101_021D32EC
ov101_021D32EC: @ 0x021D32EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, [r0, #0x10]
	str r0, [sp]
	adds r4, r1, #0
	adds r6, r2, #0
	movs r5, #1
_021D32FA:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl ov101_021D55D4
	cmp r6, r0
	bne _021D3316
	ldr r0, [sp]
	movs r1, #0
	str r5, [r0, #0x14]
	str r1, [r0, #0x18]
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3316:
	adds r5, r5, #1
	cmp r5, #3
	ble _021D32FA
	movs r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0x70]
	cmp r0, #1
	bne _021D332A
	movs r0, #0x15
	str r0, [sp, #4]
_021D332A:
	ldr r0, [sp, #4]
	movs r5, #1
	cmp r0, #1
	blt _021D338C
_021D3332:
	movs r2, #1
	adds r0, r4, #0
	adds r1, r7, #0
	subs r2, r2, r5
	bl ov101_021D55D4
	cmp r6, r0
	bne _021D3384
	lsrs r2, r5, #0x1f
	lsls r1, r5, #0x1e
	subs r1, r1, r2
	movs r0, #0x1e
	rors r1, r0
	adds r0, r2, r1
	cmp r0, #1
	bne _021D3362
	ldr r0, [sp]
	movs r1, #3
	str r1, [r0, #0x14]
	adds r1, r5, #2
	str r1, [r0, #0x18]
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3362:
	subs r0, r0, #2
	cmp r0, #1
	bhi _021D3378
	ldr r0, [sp]
	movs r1, #2
	str r1, [r0, #0x14]
	adds r1, r5, #1
	str r1, [r0, #0x18]
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3378:
	ldr r1, [sp]
	movs r0, #1
	str r0, [r1, #0x14]
	add sp, #8
	str r5, [r1, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_021D3384:
	ldr r0, [sp, #4]
	adds r5, r5, #1
	cmp r5, r0
	ble _021D3332
_021D338C:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov101_021D32EC

	thumb_func_start ov101_021D3394
ov101_021D3394: @ 0x021D3394
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	adds r5, r2, #0
	adds r2, r0, #0
	ldr r7, [r2, #0x10]
	add r2, sp, #0x3c
	str r2, [sp]
	add r2, sp, #0x44
	add r3, sp, #0x40
	str r0, [sp, #4]
	adds r6, r1, #0
	bl ov101_021D394C
	cmp r0, #0
	bne _021D33B8
	add sp, #0x48
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D33B8:
	ldr r2, [sp, #0x44]
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D33D6
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #4]
	add sp, #0x48
	str r1, [r0, #0x14]
	movs r1, #0
	str r1, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D33D6:
	ldr r2, [sp, #0x40]
	cmp r2, #0
	beq _021D33F8
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D33F8
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #4]
	add sp, #0x48
	str r1, [r0, #0x14]
	movs r1, #0
	str r1, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D33F8:
	ldr r2, [sp, #0x3c]
	cmp r2, #0
	beq _021D341A
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D341A
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #4]
	add sp, #0x48
	str r1, [r0, #0x14]
	movs r1, #0
	str r1, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D341A:
	ldr r0, [r6, #0x70]
	movs r4, #4
	cmp r0, #1
	bne _021D3424
	movs r4, #0x15
_021D3424:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	bne _021D3464
	movs r0, #1
	str r0, [sp, #0x38]
	cmp r4, #1
	blt _021D345E
_021D3432:
	ldr r3, [sp, #0x44]
	ldr r2, [sp, #0x38]
	adds r0, r6, #0
	adds r1, r7, #0
	subs r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D3454
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x38]
	add sp, #0x48
	str r1, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3454:
	ldr r0, [sp, #0x38]
	adds r0, r0, #1
	str r0, [sp, #0x38]
	cmp r0, r4
	ble _021D3432
_021D345E:
	add sp, #0x48
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D3464:
	lsls r0, r7, #2
	adds r0, r6, r0
	adds r0, #0xa8
	ldr r1, [sp, #0x3c]
	ldr r0, [r0]
	cmp r1, #0
	bne _021D354A
	movs r1, #1
	str r1, [sp, #8]
	tst r0, r1
	beq _021D34E0
	cmp r4, #1
	blt _021D34AA
_021D347E:
	ldr r3, [sp, #0x44]
	ldr r2, [sp, #8]
	adds r0, r6, #0
	adds r1, r7, #0
	subs r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D34A0
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #8]
	add sp, #0x48
	str r1, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D34A0:
	ldr r0, [sp, #8]
	adds r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r4
	ble _021D347E
_021D34AA:
	movs r0, #1
	str r0, [sp, #0xc]
	cmp r4, #1
	blt _021D3544
_021D34B2:
	ldr r3, [sp, #0x40]
	ldr r2, [sp, #0xc]
	adds r0, r6, #0
	adds r1, r7, #0
	subs r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D34D4
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0xc]
	add sp, #0x48
	str r1, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D34D4:
	ldr r0, [sp, #0xc]
	adds r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, r4
	ble _021D34B2
	b _021D3544
_021D34E0:
	cmp r4, #1
	blt _021D3510
_021D34E4:
	ldr r3, [sp, #0x40]
	ldr r2, [sp, #8]
	adds r0, r6, #0
	adds r1, r7, #0
	subs r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D3506
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #8]
	add sp, #0x48
	str r1, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3506:
	ldr r0, [sp, #8]
	adds r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r4
	ble _021D34E4
_021D3510:
	movs r0, #1
	str r0, [sp, #0x10]
	cmp r4, #1
	blt _021D3544
_021D3518:
	ldr r3, [sp, #0x44]
	ldr r2, [sp, #0x10]
	adds r0, r6, #0
	adds r1, r7, #0
	subs r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D353A
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x10]
	add sp, #0x48
	str r1, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D353A:
	ldr r0, [sp, #0x10]
	adds r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, r4
	ble _021D3518
_021D3544:
	add sp, #0x48
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D354A:
	movs r1, #3
	blx FUN_020E1F6C
	cmp r1, #0
	bne _021D35F2
	movs r0, #1
	str r0, [sp, #0x14]
	cmp r4, #1
	blt _021D3588
_021D355C:
	ldr r3, [sp, #0x44]
	ldr r2, [sp, #0x14]
	adds r0, r6, #0
	adds r1, r7, #0
	subs r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D357E
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x14]
	add sp, #0x48
	str r1, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D357E:
	ldr r0, [sp, #0x14]
	adds r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, r4
	ble _021D355C
_021D3588:
	movs r0, #1
	str r0, [sp, #0x18]
	cmp r4, #1
	blt _021D35BC
_021D3590:
	ldr r3, [sp, #0x40]
	ldr r2, [sp, #0x18]
	adds r0, r6, #0
	adds r1, r7, #0
	subs r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D35B2
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x18]
	add sp, #0x48
	str r1, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D35B2:
	ldr r0, [sp, #0x18]
	adds r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r4
	ble _021D3590
_021D35BC:
	movs r0, #1
	str r0, [sp, #0x1c]
	cmp r4, #1
	blt _021D35F0
_021D35C4:
	ldr r3, [sp, #0x3c]
	ldr r2, [sp, #0x1c]
	adds r0, r6, #0
	adds r1, r7, #0
	subs r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D35E6
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x1c]
	add sp, #0x48
	str r1, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D35E6:
	ldr r0, [sp, #0x1c]
	adds r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, r4
	ble _021D35C4
_021D35F0:
	b _021D3730
_021D35F2:
	cmp r1, #1
	bne _021D3694
	movs r0, #1
	str r0, [sp, #0x20]
	cmp r4, #1
	blt _021D362A
_021D35FE:
	ldr r3, [sp, #0x40]
	ldr r2, [sp, #0x20]
	adds r0, r6, #0
	adds r1, r7, #0
	subs r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D3620
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x20]
	add sp, #0x48
	str r1, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3620:
	ldr r0, [sp, #0x20]
	adds r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, r4
	ble _021D35FE
_021D362A:
	movs r0, #1
	str r0, [sp, #0x24]
	cmp r4, #1
	blt _021D365E
_021D3632:
	ldr r3, [sp, #0x3c]
	ldr r2, [sp, #0x24]
	adds r0, r6, #0
	adds r1, r7, #0
	subs r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D3654
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x24]
	add sp, #0x48
	str r1, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3654:
	ldr r0, [sp, #0x24]
	adds r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, r4
	ble _021D3632
_021D365E:
	movs r0, #1
	str r0, [sp, #0x28]
	cmp r4, #1
	blt _021D3730
_021D3666:
	ldr r3, [sp, #0x44]
	ldr r2, [sp, #0x28]
	adds r0, r6, #0
	adds r1, r7, #0
	subs r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D3688
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x28]
	add sp, #0x48
	str r1, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3688:
	ldr r0, [sp, #0x28]
	adds r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, r4
	ble _021D3666
	b _021D3730
_021D3694:
	movs r0, #1
	str r0, [sp, #0x2c]
	cmp r4, #1
	blt _021D36C8
_021D369C:
	ldr r3, [sp, #0x3c]
	ldr r2, [sp, #0x2c]
	adds r0, r6, #0
	adds r1, r7, #0
	subs r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D36BE
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x2c]
	add sp, #0x48
	str r1, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D36BE:
	ldr r0, [sp, #0x2c]
	adds r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, r4
	ble _021D369C
_021D36C8:
	movs r0, #1
	str r0, [sp, #0x30]
	cmp r4, #1
	blt _021D36FC
_021D36D0:
	ldr r3, [sp, #0x44]
	ldr r2, [sp, #0x30]
	adds r0, r6, #0
	adds r1, r7, #0
	subs r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D36F2
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x30]
	add sp, #0x48
	str r1, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D36F2:
	ldr r0, [sp, #0x30]
	adds r0, r0, #1
	str r0, [sp, #0x30]
	cmp r0, r4
	ble _021D36D0
_021D36FC:
	movs r0, #1
	str r0, [sp, #0x34]
	cmp r4, #1
	blt _021D3730
_021D3704:
	ldr r3, [sp, #0x40]
	ldr r2, [sp, #0x34]
	adds r0, r6, #0
	adds r1, r7, #0
	subs r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D3726
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x34]
	add sp, #0x48
	str r1, [r0, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3726:
	ldr r0, [sp, #0x34]
	adds r0, r0, #1
	str r0, [sp, #0x34]
	cmp r0, r4
	ble _021D3704
_021D3730:
	movs r0, #0
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov101_021D3394

	thumb_func_start ov101_021D3738
ov101_021D3738: @ 0x021D3738
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldr r0, [r0, #0x10]
	adds r6, r1, #0
	str r0, [sp, #4]
	ldr r0, [r6, #0x70]
	adds r7, r2, #0
	movs r5, #4
	cmp r0, #1
	bne _021D3750
	movs r5, #0x15
_021D3750:
	movs r4, #0
	cmp r5, #0
	blt _021D377A
_021D3756:
	movs r2, #2
	ldr r1, [sp, #4]
	adds r0, r6, #0
	subs r2, r2, r4
	bl ov101_021D55D4
	cmp r7, r0
	bne _021D3774
	ldr r0, [sp]
	movs r1, #2
	str r1, [r0, #0x14]
	str r4, [r0, #0x18]
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3774:
	adds r4, r4, #1
	cmp r4, r5
	ble _021D3756
_021D377A:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D3738

	thumb_func_start ov101_021D3780
ov101_021D3780: @ 0x021D3780
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r6, r0, #0
	adds r0, r4, #0
	bl ov101_021D38E4
	ldr r1, [r6, #0x10]
	cmp r1, #0
	beq _021D3796
	cmp r0, #2
	blt _021D382C
_021D3796:
	cmp r1, #0
	bne _021D37BC
	cmp r0, #2
	bge _021D37BC
	movs r5, #0
_021D37A0:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov101_021D3AF0
	cmp r0, #0
	bne _021D37B0
	str r5, [r6, #0x18]
	pop {r4, r5, r6, pc}
_021D37B0:
	adds r5, r5, #1
	cmp r5, #0x15
	ble _021D37A0
	bl FUN_02022974
	pop {r4, r5, r6, pc}
_021D37BC:
	cmp r1, #0
	beq _021D37CA
	cmp r1, #1
	beq _021D37EA
	cmp r1, #2
	beq _021D380A
	b _021D3828
_021D37CA:
	movs r5, #1
_021D37CC:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl ov101_021D3B50
	cmp r0, #0
	bne _021D37DE
	str r5, [r6, #0x18]
	pop {r4, r5, r6, pc}
_021D37DE:
	adds r5, r5, #1
	cmp r5, #0x15
	ble _021D37CC
	bl FUN_02022974
	pop {r4, r5, r6, pc}
_021D37EA:
	movs r5, #1
_021D37EC:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl ov101_021D3C9C
	cmp r0, #0
	bne _021D37FE
	str r5, [r6, #0x18]
	pop {r4, r5, r6, pc}
_021D37FE:
	adds r5, r5, #1
	cmp r5, #0x15
	ble _021D37EC
	bl FUN_02022974
	b _021D3828
_021D380A:
	movs r5, #1
_021D380C:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl ov101_021D3DD4
	cmp r0, #0
	bne _021D381E
	str r5, [r6, #0x18]
	pop {r4, r5, r6, pc}
_021D381E:
	adds r5, r5, #1
	cmp r5, #0x15
	ble _021D380C
	bl FUN_02022974
_021D3828:
	bl FUN_02022974
_021D382C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov101_021D3780

	thumb_func_start ov101_021D3830
ov101_021D3830: @ 0x021D3830
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r6, r0, #0
	adds r0, r4, #0
	bl ov101_021D38E4
	ldr r1, [r6, #0x10]
	cmp r1, #0
	beq _021D3846
	cmp r0, #2
	blt _021D38E0
_021D3846:
	cmp r1, #0
	bne _021D386E
	cmp r0, #2
	bge _021D386E
	movs r5, #0
	movs r7, #2
_021D3852:
	adds r0, r4, #0
	movs r1, #0
	subs r2, r7, r5
	bl ov101_021D55D4
	cmp r0, #3
	beq _021D3864
	str r5, [r6, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_021D3864:
	adds r5, r5, #1
	cmp r5, #0x15
	blt _021D3852
	bl FUN_02022974
_021D386E:
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _021D387E
	cmp r0, #1
	beq _021D389E
	cmp r0, #2
	beq _021D38BE
	b _021D38DC
_021D387E:
	movs r5, #0
_021D3880:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl ov101_021D3F0C
	cmp r0, #0
	bne _021D3892
	str r5, [r6, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_021D3892:
	adds r5, r5, #1
	cmp r5, #0x15
	blt _021D3880
	bl FUN_02022974
	pop {r3, r4, r5, r6, r7, pc}
_021D389E:
	movs r5, #0
_021D38A0:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl ov101_021D3F58
	cmp r0, #0
	bne _021D38B2
	str r5, [r6, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_021D38B2:
	adds r5, r5, #1
	cmp r5, #0x15
	ble _021D38A0
	bl FUN_02022974
	pop {r3, r4, r5, r6, r7, pc}
_021D38BE:
	movs r5, #0
_021D38C0:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl ov101_021D3FA0
	cmp r0, #0
	bne _021D38D2
	str r5, [r6, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_021D38D2:
	adds r5, r5, #1
	cmp r5, #0x15
	ble _021D38C0
	bl FUN_02022974
_021D38DC:
	bl FUN_02022974
_021D38E0:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov101_021D3830

	thumb_func_start ov101_021D38E4
ov101_021D38E4: @ 0x021D38E4
	movs r2, #0
	adds r3, r2, #0
_021D38E8:
	ldr r1, [r0, #0x7c]
	cmp r1, #1
	beq _021D38F0
	adds r3, r3, #1
_021D38F0:
	adds r2, r2, #1
	adds r0, r0, #4
	cmp r2, #3
	blt _021D38E8
	adds r0, r3, #0
	bx lr
	thumb_func_end ov101_021D38E4

	thumb_func_start ov101_021D38FC
ov101_021D38FC: @ 0x021D38FC
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _021D390C
	cmp r0, #1
	beq _021D3922
	cmp r0, #2
	beq _021D3934
	b _021D3946
_021D390C:
	adds r0, r1, #0
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #1
	bne _021D391E
	adds r1, #0x84
	ldr r0, [r1]
	cmp r0, #1
	beq _021D3946
_021D391E:
	movs r0, #0
	bx lr
_021D3922:
	ldr r0, [r1, #0x7c]
	cmp r0, #1
	bne _021D3930
	adds r1, #0x84
	ldr r0, [r1]
	cmp r0, #1
	beq _021D3946
_021D3930:
	movs r0, #0
	bx lr
_021D3934:
	ldr r0, [r1, #0x7c]
	cmp r0, #1
	bne _021D3942
	adds r1, #0x80
	ldr r0, [r1]
	cmp r0, #1
	beq _021D3946
_021D3942:
	movs r0, #0
	bx lr
_021D3946:
	movs r0, #1
	bx lr
	.align 2, 0
	thumb_func_end ov101_021D38FC

	thumb_func_start ov101_021D394C
ov101_021D394C: @ 0x021D394C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	adds r5, r1, #0
	ldr r0, [sp, #0x20]
	adds r1, r3, #0
	str r0, [sp, #0x20]
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	ldr r7, [r5, #0x7c]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r3, #0
	mov ip, r0
	adds r0, r5, #0
	adds r0, #0xc8
	ldr r4, [r0]
	adds r0, r5, #0
	adds r0, #0xec
	ldr r6, [r0]
	movs r0, #0x11
	lsls r0, r0, #4
	ldr r5, [r5, r0]
	ldr r0, [sp, #0x20]
	str r3, [r2]
	str r3, [r1]
	str r3, [r0]
	ldr r0, [sp]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _021D399A
	cmp r0, #1
	beq _021D3A04
	cmp r0, #2
	beq _021D3A80
	b _021D3AE4
_021D399A:
	ldr r0, [sp, #4]
	cmp r0, #1
	beq _021D39C8
	mov r0, ip
	cmp r0, #1
	beq _021D39C8
	cmp r6, r5
	bne _021D39B2
	add sp, #8
	str r6, [r2]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D39B2:
	cmp r5, #1
	bne _021D39C0
	movs r0, #3
	str r0, [r2]
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D39C0:
	movs r0, #1
	str r0, [r2]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021D39C8:
	ldr r0, [sp, #4]
	cmp r0, #1
	beq _021D39EC
	cmp r6, #2
	bne _021D39E4
	movs r0, #1
	str r0, [r2]
	movs r2, #2
	str r2, [r1]
	ldr r1, [sp, #0x20]
	movs r2, #3
	str r2, [r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021D39E4:
	add sp, #8
	str r6, [r2]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D39EC:
	cmp r5, #2
	bne _021D39F8
	add sp, #8
	str r5, [r2]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D39F8:
	movs r0, #1
	str r0, [r2]
	movs r2, #3
	str r2, [r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021D3A04:
	cmp r7, #1
	beq _021D3A24
	mov r0, ip
	cmp r0, #1
	beq _021D3A24
	cmp r4, r5
	bne _021D3A1A
	add sp, #8
	str r4, [r2]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3A1A:
	movs r0, #2
	str r0, [r2]
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3A24:
	cmp r7, #1
	beq _021D3A54
	cmp r4, #2
	bne _021D3A36
	movs r0, #2
	str r0, [r2]
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3A36:
	cmp r4, #1
	bne _021D3A46
	movs r0, #1
	str r0, [r2]
	movs r2, #2
	str r2, [r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021D3A46:
	movs r0, #2
	str r0, [r2]
	movs r0, #3
	str r0, [r1]
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3A54:
	cmp r5, #2
	bne _021D3A62
	movs r0, #2
	str r0, [r2]
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3A62:
	cmp r5, #1
	bne _021D3A72
	movs r0, #1
	str r0, [r2]
	movs r2, #2
	str r2, [r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021D3A72:
	movs r0, #2
	str r0, [r2]
	movs r0, #3
	str r0, [r1]
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3A80:
	cmp r7, #1
	beq _021D3AA8
	ldr r0, [sp, #4]
	cmp r0, #1
	beq _021D3AA8
	cmp r4, r6
	bne _021D3A96
	add sp, #8
	str r4, [r2]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3A96:
	cmp r4, #1
	bne _021D3A9E
	movs r0, #3
	b _021D3AA0
_021D3A9E:
	movs r0, #1
_021D3AA0:
	str r0, [r2]
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3AA8:
	cmp r7, #1
	beq _021D3AC6
	cmp r4, #2
	bne _021D3ABA
	movs r0, #2
	str r0, [r2]
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3ABA:
	movs r0, #1
	str r0, [r2]
	movs r2, #3
	str r2, [r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021D3AC6:
	cmp r6, #2
	bne _021D3ADC
	movs r0, #1
	str r0, [r2]
	movs r2, #2
	str r2, [r1]
	ldr r1, [sp, #0x20]
	movs r2, #3
	str r2, [r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021D3ADC:
	add sp, #8
	str r6, [r2]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3AE4:
	bl FUN_02022974
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov101_021D394C

	thumb_func_start ov101_021D3AF0
ov101_021D3AF0: @ 0x021D3AF0
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	movs r2, #1
	movs r1, #0
	subs r2, r2, r4
	adds r5, r0, #0
	bl ov101_021D55D4
	cmp r0, #3
	bne _021D3B08
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D3B08:
	movs r2, #2
	adds r0, r5, #0
	movs r1, #0
	subs r2, r2, r4
	bl ov101_021D55D4
	cmp r0, #3
	bne _021D3B1C
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D3B1C:
	movs r2, #3
	adds r0, r5, #0
	movs r1, #0
	subs r2, r2, r4
	bl ov101_021D55D4
	cmp r0, #3
	bne _021D3B30
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D3B30:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov101_021D3AF0

	thumb_func_start ov101_021D3B34
ov101_021D3B34: @ 0x021D3B34
	push {r3, lr}
	cmp r2, #3
	bne _021D3B3E
	movs r0, #1
	pop {r3, pc}
_021D3B3E:
	bl ov101_021D3AF0
	cmp r0, #0
	bne _021D3B4A
	movs r0, #1
	pop {r3, pc}
_021D3B4A:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov101_021D3B34

	thumb_func_start ov101_021D3B50
ov101_021D3B50: @ 0x021D3B50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r4, r1, #0
	adds r0, r4, #0
	adds r0, #0xf0
	ldr r7, [r0]
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r6, [r4, r0]
	movs r1, #1
	adds r0, r2, #0
	subs r0, r1, r0
	str r0, [sp, #0x10]
	str r2, [sp]
	ldr r2, [sp, #0x10]
	adds r0, r4, #0
	movs r1, #0
	bl ov101_021D55D4
	movs r1, #1
	adds r5, r0, #0
	adds r0, r4, #0
	subs r2, r1, r7
	bl ov101_021D55D4
	str r0, [sp, #0x14]
	movs r0, #1
	subs r0, r0, r6
	str r0, [sp, #4]
	ldr r2, [sp, #4]
	adds r0, r4, #0
	movs r1, #2
	bl ov101_021D55D4
	cmp r5, #3
	beq _021D3BA2
	ldr r1, [sp, #0x14]
	cmp r5, r1
	bne _021D3BA8
	cmp r5, r0
	bne _021D3BA8
_021D3BA2:
	add sp, #0x20
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3BA8:
	ldr r2, [sp]
	movs r3, #2
	adds r0, r4, #0
	movs r1, #0
	subs r2, r3, r2
	bl ov101_021D55D4
	adds r5, r0, #0
	movs r0, #2
	subs r0, r0, r7
	str r0, [sp, #0xc]
	ldr r2, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl ov101_021D55D4
	movs r1, #2
	str r0, [sp, #0x18]
	adds r0, r4, #0
	subs r2, r1, r6
	bl ov101_021D55D4
	cmp r5, #3
	beq _021D3BE2
	ldr r1, [sp, #0x18]
	cmp r5, r1
	bne _021D3BE8
	cmp r5, r0
	bne _021D3BE8
_021D3BE2:
	add sp, #0x20
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3BE8:
	ldr r0, [sp]
	movs r1, #3
	subs r0, r1, r0
	str r0, [sp, #8]
	ldr r2, [sp, #8]
	adds r0, r4, #0
	movs r1, #0
	bl ov101_021D55D4
	movs r2, #3
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #1
	subs r2, r2, r7
	bl ov101_021D55D4
	adds r7, r0, #0
	movs r0, #3
	subs r0, r0, r6
	str r0, [sp, #0x1c]
	ldr r2, [sp, #0x1c]
	adds r0, r4, #0
	movs r1, #2
	bl ov101_021D55D4
	cmp r5, #3
	beq _021D3C26
	cmp r5, r7
	bne _021D3C2C
	cmp r5, r0
	bne _021D3C2C
_021D3C26:
	add sp, #0x20
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3C2C:
	ldr r2, [sp, #0x10]
	adds r0, r4, #0
	movs r1, #0
	bl ov101_021D55D4
	adds r5, r0, #0
	ldr r2, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl ov101_021D55D4
	adds r6, r0, #0
	ldr r2, [sp, #0x1c]
	adds r0, r4, #0
	movs r1, #2
	bl ov101_021D55D4
	cmp r5, #3
	beq _021D3C5A
	cmp r5, r6
	bne _021D3C60
	cmp r5, r0
	bne _021D3C60
_021D3C5A:
	add sp, #0x20
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3C60:
	ldr r2, [sp, #8]
	adds r0, r4, #0
	movs r1, #0
	bl ov101_021D55D4
	adds r5, r0, #0
	ldr r2, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl ov101_021D55D4
	adds r6, r0, #0
	ldr r2, [sp, #4]
	adds r0, r4, #0
	movs r1, #2
	bl ov101_021D55D4
	cmp r5, #3
	beq _021D3C8E
	cmp r5, r6
	bne _021D3C94
	cmp r5, r0
	bne _021D3C94
_021D3C8E:
	add sp, #0x20
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3C94:
	movs r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov101_021D3B50

	thumb_func_start ov101_021D3C9C
ov101_021D3C9C: @ 0x021D3C9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r5, r1, #0
	adds r0, r5, #0
	adds r0, #0xcc
	ldr r6, [r0]
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r4, [r5, r0]
	movs r0, #1
	subs r0, r0, r6
	str r0, [sp, #0xc]
	adds r7, r2, #0
	ldr r2, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #0
	bl ov101_021D55D4
	movs r1, #1
	str r0, [sp, #0x10]
	adds r0, r5, #0
	subs r2, r1, r7
	bl ov101_021D55D4
	str r0, [sp, #0x14]
	movs r0, #1
	subs r0, r0, r4
	str r0, [sp]
	ldr r2, [sp]
	adds r0, r5, #0
	movs r1, #2
	bl ov101_021D55D4
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	cmp r2, r1
	bne _021D3CF2
	adds r1, r2, #0
	cmp r1, r0
	bne _021D3CF2
	add sp, #0x24
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_021D3CF2:
	movs r2, #2
	adds r0, r5, #0
	movs r1, #0
	subs r2, r2, r6
	bl ov101_021D55D4
	str r0, [sp, #0x18]
	movs r0, #2
	subs r0, r0, r7
	str r0, [sp, #8]
	ldr r2, [sp, #8]
	adds r0, r5, #0
	movs r1, #1
	bl ov101_021D55D4
	movs r1, #2
	str r0, [sp, #0x1c]
	adds r0, r5, #0
	subs r2, r1, r4
	bl ov101_021D55D4
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	cmp r2, r1
	bne _021D3D30
	adds r1, r2, #0
	cmp r1, r0
	bne _021D3D30
	add sp, #0x24
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_021D3D30:
	movs r0, #3
	subs r0, r0, r6
	str r0, [sp, #4]
	ldr r2, [sp, #4]
	adds r0, r5, #0
	movs r1, #0
	bl ov101_021D55D4
	movs r2, #3
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #1
	subs r2, r2, r7
	bl ov101_021D55D4
	str r0, [sp, #0x20]
	movs r0, #3
	subs r7, r0, r4
	adds r0, r5, #0
	movs r1, #2
	adds r2, r7, #0
	bl ov101_021D55D4
	ldr r1, [sp, #0x20]
	cmp r6, r1
	bne _021D3D6E
	cmp r6, r0
	bne _021D3D6E
	add sp, #0x24
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_021D3D6E:
	ldr r2, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #0
	bl ov101_021D55D4
	adds r4, r0, #0
	ldr r2, [sp, #8]
	adds r0, r5, #0
	movs r1, #1
	bl ov101_021D55D4
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #2
	adds r2, r7, #0
	bl ov101_021D55D4
	cmp r4, r6
	bne _021D3D9E
	cmp r4, r0
	bne _021D3D9E
	add sp, #0x24
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_021D3D9E:
	ldr r2, [sp, #4]
	adds r0, r5, #0
	movs r1, #0
	bl ov101_021D55D4
	adds r4, r0, #0
	ldr r2, [sp, #8]
	adds r0, r5, #0
	movs r1, #1
	bl ov101_021D55D4
	adds r6, r0, #0
	ldr r2, [sp]
	adds r0, r5, #0
	movs r1, #2
	bl ov101_021D55D4
	cmp r4, r6
	bne _021D3DCE
	cmp r4, r0
	bne _021D3DCE
	add sp, #0x24
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_021D3DCE:
	movs r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D3C9C

	thumb_func_start ov101_021D3DD4
ov101_021D3DD4: @ 0x021D3DD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r1, #0
	adds r0, r5, #0
	adds r0, #0xcc
	ldr r6, [r0]
	adds r0, r5, #0
	adds r0, #0xf0
	ldr r4, [r0]
	movs r0, #1
	subs r0, r0, r6
	str r0, [sp, #0xc]
	adds r7, r2, #0
	ldr r2, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #0
	bl ov101_021D55D4
	movs r1, #1
	str r0, [sp, #0x10]
	adds r0, r5, #0
	subs r2, r1, r4
	bl ov101_021D55D4
	str r0, [sp, #0x14]
	movs r0, #1
	subs r0, r0, r7
	str r0, [sp]
	ldr r2, [sp]
	adds r0, r5, #0
	movs r1, #2
	bl ov101_021D55D4
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	cmp r2, r1
	bne _021D3E2A
	adds r1, r2, #0
	cmp r1, r0
	bne _021D3E2A
	add sp, #0x20
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3E2A:
	movs r2, #2
	adds r0, r5, #0
	movs r1, #0
	subs r2, r2, r6
	bl ov101_021D55D4
	str r0, [sp, #0x18]
	movs r0, #2
	subs r0, r0, r4
	str r0, [sp, #8]
	ldr r2, [sp, #8]
	adds r0, r5, #0
	movs r1, #1
	bl ov101_021D55D4
	movs r1, #2
	str r0, [sp, #0x1c]
	adds r0, r5, #0
	subs r2, r1, r7
	bl ov101_021D55D4
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	cmp r2, r1
	bne _021D3E68
	adds r1, r2, #0
	cmp r1, r0
	bne _021D3E68
	add sp, #0x20
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3E68:
	movs r0, #3
	subs r0, r0, r6
	str r0, [sp, #4]
	ldr r2, [sp, #4]
	adds r0, r5, #0
	movs r1, #0
	bl ov101_021D55D4
	movs r2, #3
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #1
	subs r2, r2, r4
	bl ov101_021D55D4
	adds r4, r0, #0
	movs r0, #3
	subs r7, r0, r7
	adds r0, r5, #0
	movs r1, #2
	adds r2, r7, #0
	bl ov101_021D55D4
	cmp r6, r4
	bne _021D3EA4
	cmp r6, r0
	bne _021D3EA4
	add sp, #0x20
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3EA4:
	ldr r2, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #0
	bl ov101_021D55D4
	adds r4, r0, #0
	ldr r2, [sp, #8]
	adds r0, r5, #0
	movs r1, #1
	bl ov101_021D55D4
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #2
	adds r2, r7, #0
	bl ov101_021D55D4
	cmp r4, r6
	bne _021D3ED4
	cmp r4, r0
	bne _021D3ED4
	add sp, #0x20
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3ED4:
	ldr r2, [sp, #4]
	adds r0, r5, #0
	movs r1, #0
	bl ov101_021D55D4
	adds r4, r0, #0
	ldr r2, [sp, #8]
	adds r0, r5, #0
	movs r1, #1
	bl ov101_021D55D4
	adds r6, r0, #0
	ldr r2, [sp]
	adds r0, r5, #0
	movs r1, #2
	bl ov101_021D55D4
	cmp r4, r6
	bne _021D3F04
	cmp r4, r0
	bne _021D3F04
	add sp, #0x20
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3F04:
	movs r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov101_021D3DD4

	thumb_func_start ov101_021D3F0C
ov101_021D3F0C: @ 0x021D3F0C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	adds r0, #0xf0
	ldr r7, [r0]
	movs r0, #0x45
	lsls r0, r0, #2
	movs r3, #2
	ldr r6, [r5, r0]
	adds r0, r5, #0
	movs r1, #0
	subs r2, r3, r2
	bl ov101_021D55D4
	movs r2, #2
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #1
	subs r2, r2, r7
	bl ov101_021D55D4
	movs r1, #2
	adds r7, r0, #0
	adds r0, r5, #0
	subs r2, r1, r6
	bl ov101_021D55D4
	cmp r4, #3
	beq _021D3F4E
	cmp r4, r7
	bne _021D3F52
	cmp r4, r0
	bne _021D3F52
_021D3F4E:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3F52:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov101_021D3F0C

	thumb_func_start ov101_021D3F58
ov101_021D3F58: @ 0x021D3F58
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r2, #0
	adds r2, r5, #0
	adds r2, #0xcc
	movs r0, #0x45
	ldr r3, [r2]
	lsls r0, r0, #2
	movs r2, #2
	ldr r6, [r5, r0]
	adds r0, r5, #0
	movs r1, #0
	subs r2, r2, r3
	bl ov101_021D55D4
	movs r2, #2
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #1
	subs r2, r2, r7
	bl ov101_021D55D4
	movs r1, #2
	adds r7, r0, #0
	adds r0, r5, #0
	subs r2, r1, r6
	bl ov101_021D55D4
	cmp r4, r7
	bne _021D3F9C
	cmp r4, r0
	bne _021D3F9C
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3F9C:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D3F58

	thumb_func_start ov101_021D3FA0
ov101_021D3FA0: @ 0x021D3FA0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r2, #0
	adds r2, r5, #0
	adds r2, #0xcc
	adds r0, r5, #0
	ldr r3, [r2]
	adds r0, #0xf0
	movs r2, #2
	ldr r6, [r0]
	adds r0, r5, #0
	movs r1, #0
	subs r2, r2, r3
	bl ov101_021D55D4
	movs r2, #2
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #1
	subs r2, r2, r6
	bl ov101_021D55D4
	movs r1, #2
	adds r6, r0, #0
	adds r0, r5, #0
	subs r2, r1, r7
	bl ov101_021D55D4
	cmp r4, r6
	bne _021D3FE4
	cmp r4, r0
	bne _021D3FE4
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3FE4:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D3FA0

	thumb_func_start ov101_021D3FE8
ov101_021D3FE8: @ 0x021D3FE8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r6, #0
	lsls r5, r1, #2
	adds r4, #0x90
	ldr r0, [r4, r5]
	movs r1, #0x2a
	adds r0, r0, r2
	str r0, [r4, r5]
	ldr r0, [r4, r5]
	lsls r1, r1, #0x10
	blx FUN_020E1F6C
	str r1, [r4, r5]
	ldr r1, [r4, r5]
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r1, r0, #0xc
	asrs r0, r1, #4
	lsrs r0, r0, #0x1b
	adds r0, r1, r0
	asrs r1, r0, #5
	movs r0, #0x15
	subs r1, r0, r1
	adds r0, r6, r5
	adds r0, #0xa8
	str r1, [r0]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov101_021D3FE8

	thumb_func_start ov101_021D4024
ov101_021D4024: @ 0x021D4024
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r7, #0
	adds r5, #0x90
	lsls r4, r1, #2
	ldr r0, [r5, r4]
	lsrs r6, r0, #0x1f
	lsls r3, r0, #0xf
	subs r3, r3, r6
	movs r0, #0xf
	rors r3, r0
	adds r0, r6, r3
	beq _021D4058
	cmp r0, r2
	bge _021D4044
	adds r2, r0, #0
_021D4044:
	adds r0, r7, #0
	bl ov101_021D3FE8
	ldr r0, [r5, r4]
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0xf
	subs r1, r1, r2
	movs r0, #0xf
	rors r1, r0
	adds r0, r2, r1
_021D4058:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov101_021D4024

	thumb_func_start ov101_021D405C
ov101_021D405C: @ 0x021D405C
	push {r3, lr}
	bl FUN_0201D2E8
	movs r1, #0x64
	blx FUN_020E2178
	adds r0, r1, #0
	pop {r3, pc}
	thumb_func_end ov101_021D405C

	thumb_func_start ov101_021D406C
ov101_021D406C: @ 0x021D406C
	ldr r3, [r1]
	subs r2, r3, r0
	str r2, [r1]
	bpl _021D4078
	movs r2, #0
	str r2, [r1]
_021D4078:
	cmp r3, r0
	bhs _021D4080
	movs r0, #1
	bx lr
_021D4080:
	movs r0, #0
	bx lr
	thumb_func_end ov101_021D406C

	thumb_func_start ov101_021D4084
ov101_021D4084: @ 0x021D4084
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D405C
	adds r4, #0x88
	ldr r1, [r4]
	lsls r2, r1, #2
	ldr r1, _021D40A4 @ =0x021D9520
	ldr r1, [r1, r2]
	cmp r1, r0
	bls _021D409E
	movs r0, #1
	pop {r4, pc}
_021D409E:
	movs r0, #0
	pop {r4, pc}
	nop
_021D40A4: .4byte 0x021D9520
	thumb_func_end ov101_021D4084

	thumb_func_start ov101_021D40A8
ov101_021D40A8: @ 0x021D40A8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0
	str r1, [r5, #0x74]
	bl ov101_021D4084
	cmp r0, #1
	beq _021D40BA
	b _021D41CC
_021D40BA:
	adds r0, r5, #0
	bl ov101_021D405C
	adds r1, r5, #0
	str r0, [sp]
	adds r1, #0x88
	ldr r1, [r1]
	ldr r0, _021D41D0 @ =0x021D95C8
	lsls r3, r1, #4
	movs r1, #0x47
	lsls r1, r1, #4
	ldr r2, [r5, r1]
	adds r4, r0, r3
	adds r2, r2, #1
	str r2, [r5, r1]
	ldrh r0, [r0, r3]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #0
	beq _021D40FA
	ldr r1, [r5, #0x74]
	movs r0, #8
	orrs r0, r1
	str r0, [r5, #0x74]
	movs r0, #0x4a
	lsls r0, r0, #4
	ldr r1, [r5, r0]
	adds r1, r1, #1
	str r1, [r5, r0]
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D40FA:
	ldrh r0, [r4, #2]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #0
	beq _021D411A
	ldr r1, [r5, #0x74]
	movs r0, #4
	orrs r0, r1
	str r0, [r5, #0x74]
	ldr r0, _021D41D4 @ =0x0000049C
	ldr r1, [r5, r0]
	adds r1, r1, #1
	str r1, [r5, r0]
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D411A:
	ldrh r0, [r4, #4]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #0
	beq _021D413C
	ldr r1, [r5, #0x74]
	movs r0, #0x80
	orrs r0, r1
	str r0, [r5, #0x74]
	movs r0, #0x4b
	lsls r0, r0, #4
	ldr r1, [r5, r0]
	adds r1, r1, #1
	str r1, [r5, r0]
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D413C:
	ldrh r0, [r4, #6]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #0
	beq _021D415C
	ldr r1, [r5, #0x74]
	movs r0, #0x40
	orrs r0, r1
	str r0, [r5, #0x74]
	ldr r0, _021D41D8 @ =0x000004AC
	ldr r1, [r5, r0]
	adds r1, r1, #1
	str r1, [r5, r0]
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D415C:
	ldrh r0, [r4, #8]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #0
	beq _021D417C
	ldr r1, [r5, #0x74]
	movs r0, #0x20
	orrs r0, r1
	str r0, [r5, #0x74]
	ldr r0, _021D41DC @ =0x000004A8
	ldr r1, [r5, r0]
	adds r1, r1, #1
	str r1, [r5, r0]
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D417C:
	ldrh r0, [r4, #0xa]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #0
	beq _021D419C
	ldr r1, [r5, #0x74]
	movs r0, #0x10
	orrs r0, r1
	str r0, [r5, #0x74]
	ldr r0, _021D41E0 @ =0x000004A4
	ldr r1, [r5, r0]
	adds r1, r1, #1
	str r1, [r5, r0]
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D419C:
	ldrh r0, [r4, #0xc]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #0
	ldr r1, [r5, #0x74]
	beq _021D41BC
	movs r0, #2
	orrs r0, r1
	str r0, [r5, #0x74]
	ldr r0, _021D41E4 @ =0x00000498
	ldr r1, [r5, r0]
	adds r1, r1, #1
	str r1, [r5, r0]
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D41BC:
	movs r0, #1
	orrs r1, r0
	str r1, [r5, #0x74]
	ldr r1, _021D41E8 @ =0x00000494
	ldr r2, [r5, r1]
	adds r2, r2, #1
	str r2, [r5, r1]
	pop {r3, r4, r5, pc}
_021D41CC:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D41D0: .4byte 0x021D95C8
_021D41D4: .4byte 0x0000049C
_021D41D8: .4byte 0x000004AC
_021D41DC: .4byte 0x000004A8
_021D41E0: .4byte 0x000004A4
_021D41E4: .4byte 0x00000498
_021D41E8: .4byte 0x00000494
	thumb_func_end ov101_021D40A8

	thumb_func_start ov101_021D41EC
ov101_021D41EC: @ 0x021D41EC
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D405C
	adds r4, #0x88
	ldr r1, [r4]
	lsls r2, r1, #2
	ldr r1, _021D420C @ =0x021D94D8
	ldr r1, [r1, r2]
	cmp r0, r1
	bhs _021D4206
	movs r0, #1
	pop {r4, pc}
_021D4206:
	movs r0, #0
	pop {r4, pc}
	nop
_021D420C: .4byte 0x021D94D8
	thumb_func_end ov101_021D41EC

	thumb_func_start ov101_021D4210
ov101_021D4210: @ 0x021D4210
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	bl ov101_021D405C
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0x88
	ldr r1, [r0]
	movs r0, #0x48
	ldr r2, _021D42C0 @ =0x021D9934
	muls r0, r1, r0
	adds r0, r2, r0
	str r0, [sp]
	movs r6, #0
	adds r4, r0, #0
	add r7, sp, #4
_021D4232:
	ldr r0, [r4]
	adds r1, r7, #0
	bl ov101_021D406C
	cmp r0, #1
	bne _021D4292
	movs r0, #0xc
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, [sp]
	adds r1, r0, r1
	ldr r0, [r1, #4]
	str r0, [r5, #0x50]
	ldr r0, [r1, #8]
	str r0, [r5, #0x4c]
	ldr r0, [r5, #0x50]
	lsls r1, r0, #2
	ldr r0, _021D42C4 @ =0x021D9568
	ldr r0, [r0, r1]
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	beq _021D426C
	cmp r0, #1
	beq _021D4278
	cmp r0, #2
	beq _021D4284
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021D426C:
	ldr r0, _021D42C8 @ =0x00000478
	add sp, #8
	ldr r1, [r5, r0]
	adds r1, r1, #1
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021D4278:
	ldr r0, _021D42CC @ =0x0000047C
	add sp, #8
	ldr r1, [r5, r0]
	adds r1, r1, #1
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021D4284:
	movs r0, #0x12
	lsls r0, r0, #6
	ldr r1, [r5, r0]
	add sp, #8
	adds r1, r1, #1
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021D4292:
	adds r6, r6, #1
	adds r4, #0xc
	cmp r6, #6
	blt _021D4232
	subs r1, r6, #1
	movs r0, #0xc
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, [sp]
	adds r1, r0, r2
	ldr r0, [r1, #4]
	str r0, [r5, #0x50]
	ldr r0, [r1, #8]
	str r0, [r5, #0x4c]
	ldr r0, [r5, #0x50]
	lsls r1, r0, #2
	ldr r0, _021D42C4 @ =0x021D9568
	ldr r0, [r0, r1]
	str r0, [r5, #0x18]
	bl FUN_02022974
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D42C0: .4byte 0x021D9934
_021D42C4: .4byte 0x021D9568
_021D42C8: .4byte 0x00000478
_021D42CC: .4byte 0x0000047C
	thumb_func_end ov101_021D4210

	thumb_func_start ov101_021D42D0
ov101_021D42D0: @ 0x021D42D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	movs r4, #0
	bl ov101_021D405C
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r0, #0x88
	ldr r1, [r0]
	movs r0, #0x48
	muls r0, r1, r0
	ldr r2, _021D4360 @ =0x021D9784
	ldr r1, [r6, #0x4c]
	adds r2, r2, r0
	movs r0, #0x18
	muls r0, r1, r0
	adds r5, r2, r0
	str r5, [sp]
	add r7, sp, #4
_021D42F8:
	ldr r0, [r5]
	adds r1, r7, #0
	bl ov101_021D406C
	cmp r0, #1
	bne _021D4348
	ldr r0, [sp]
	lsls r1, r4, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	movs r0, #0x56
	lsls r0, r0, #2
	str r1, [r6, r0]
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _021D4324
	cmp r0, #1
	beq _021D4330
	cmp r0, #2
	beq _021D433C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021D4324:
	ldr r0, _021D4364 @ =0x00000488
	add sp, #8
	ldr r1, [r6, r0]
	adds r1, r1, #1
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021D4330:
	ldr r0, _021D4368 @ =0x00000484
	add sp, #8
	ldr r1, [r6, r0]
	adds r1, r1, #1
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021D433C:
	ldr r0, _021D436C @ =0x0000048C
	add sp, #8
	ldr r1, [r6, r0]
	adds r1, r1, #1
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021D4348:
	adds r4, r4, #1
	adds r5, #8
	cmp r4, #3
	blo _021D42F8
	movs r0, #0x56
	movs r1, #1
	lsls r0, r0, #2
	str r1, [r6, r0]
	bl FUN_02022974
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D4360: .4byte 0x021D9784
_021D4364: .4byte 0x00000488
_021D4368: .4byte 0x00000484
_021D436C: .4byte 0x0000048C
	thumb_func_end ov101_021D42D0

	thumb_func_start ov101_021D4370
ov101_021D4370: @ 0x021D4370
	push {r4, lr}
	adds r1, r0, #0
	adds r1, #0x88
	ldr r1, [r1]
	lsls r2, r1, #2
	ldr r1, _021D4390 @ =0x021D9538
	ldr r4, [r1, r2]
	bl ov101_021D405C
	cmp r0, r4
	bhs _021D438A
	movs r0, #1
	pop {r4, pc}
_021D438A:
	movs r0, #0
	pop {r4, pc}
	nop
_021D4390: .4byte 0x021D9538
	thumb_func_end ov101_021D4370

	thumb_func_start ov101_021D4394
ov101_021D4394: @ 0x021D4394
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x88
	ldr r1, [r1]
	ldr r2, _021D4488 @ =0x021D9628
	lsls r1, r1, #4
	adds r5, r2, r1
	bl ov101_021D405C
	str r0, [sp]
	movs r0, #0
	str r0, [r4, #0x74]
	adds r0, r4, #0
	bl ov101_021D4370
	cmp r0, #0
	bne _021D441E
	ldr r0, _021D448C @ =0x00000474
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, #0x50]
	cmp r1, #5
	bhi _021D440E
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D43D2: @ jump table
	.2byte _021D43DE - _021D43D2 - 2 @ case 0
	.2byte _021D43DE - _021D43D2 - 2 @ case 1
	.2byte _021D43DE - _021D43D2 - 2 @ case 2
	.2byte _021D43F6 - _021D43D2 - 2 @ case 3
	.2byte _021D43F6 - _021D43D2 - 2 @ case 4
	.2byte _021D43F6 - _021D43D2 - 2 @ case 5
_021D43DE:
	movs r1, #2
	ldr r2, [r4, #0x74]
	lsls r1, r1, #8
	orrs r1, r2
	str r1, [r4, #0x74]
	adds r1, r0, #0
	adds r1, #0x44
	ldr r1, [r4, r1]
	adds r0, #0x44
	adds r1, r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D43F6:
	movs r1, #1
	ldr r2, [r4, #0x74]
	lsls r1, r1, #8
	orrs r1, r2
	str r1, [r4, #0x74]
	adds r1, r0, #0
	adds r1, #0x40
	ldr r1, [r4, r1]
	adds r0, #0x40
	adds r1, r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D440E:
	bl FUN_02022974
	movs r0, #2
	ldr r1, [r4, #0x74]
	lsls r0, r0, #8
	orrs r0, r1
	str r0, [r4, #0x74]
	pop {r3, r4, r5, pc}
_021D441E:
	ldr r0, [r5]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #1
	bne _021D443C
	ldr r1, [r4, #0x74]
	movs r0, #4
	orrs r0, r1
	str r0, [r4, #0x74]
	ldr r0, _021D4490 @ =0x0000049C
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D443C:
	ldr r0, [r5, #4]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #1
	bne _021D445A
	ldr r1, [r4, #0x74]
	movs r0, #0x40
	orrs r0, r1
	str r0, [r4, #0x74]
	ldr r0, _021D4494 @ =0x000004AC
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D445A:
	ldr r0, [r5, #4]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #1
	bne _021D4478
	ldr r1, [r4, #0x74]
	movs r0, #0x10
	orrs r0, r1
	str r0, [r4, #0x74]
	ldr r0, _021D4498 @ =0x000004A4
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D4478:
	movs r0, #1
	str r0, [r4, #0x74]
	ldr r0, _021D449C @ =0x00000494
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
	nop
_021D4488: .4byte 0x021D9628
_021D448C: .4byte 0x00000474
_021D4490: .4byte 0x0000049C
_021D4494: .4byte 0x000004AC
_021D4498: .4byte 0x000004A4
_021D449C: .4byte 0x00000494
	thumb_func_end ov101_021D4394

	thumb_func_start ov101_021D44A0
ov101_021D44A0: @ 0x021D44A0
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D405C
	adds r4, #0x88
	ldr r1, [r4]
	lsls r2, r1, #2
	ldr r1, _021D44C0 @ =0x021D9580
	ldr r1, [r1, r2]
	cmp r0, r1
	bhs _021D44BA
	movs r0, #1
	pop {r4, pc}
_021D44BA:
	movs r0, #0
	pop {r4, pc}
	nop
_021D44C0: .4byte 0x021D9580
	thumb_func_end ov101_021D44A0

	thumb_func_start ov101_021D44C4
ov101_021D44C4: @ 0x021D44C4
	push {r4, lr}
	adds r4, r0, #0
	bl ov101_021D405C
	adds r4, #0x88
	ldr r1, [r4]
	lsls r2, r1, #2
	ldr r1, _021D44E4 @ =0x021D9508
	ldr r1, [r1, r2]
	cmp r0, r1
	bhs _021D44DE
	movs r0, #1
	pop {r4, pc}
_021D44DE:
	movs r0, #0
	pop {r4, pc}
	nop
_021D44E4: .4byte 0x021D9508
	thumb_func_end ov101_021D44C4

	thumb_func_start ov101_021D44E8
ov101_021D44E8: @ 0x021D44E8
	push {r4, lr}
	ldr r4, [r0, #0x18]
	bl ov101_021D405C
	cmp r0, r4
	bhs _021D44F8
	movs r0, #1
	pop {r4, pc}
_021D44F8:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D44E8

	thumb_func_start ov101_021D44FC
ov101_021D44FC: @ 0x021D44FC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, [r5, #0x18]
	bl ov101_021D405C
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x88
	ldr r0, [r0]
	ldr r1, _021D454C @ =0x021D9598
	lsls r0, r0, #3
	adds r6, r1, r0
	ldr r0, [r5, #0x28]
	cmp r0, #2
	bne _021D4520
	subs r4, #0xa
	b _021D453E
_021D4520:
	ldr r0, [r6]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #1
	bne _021D4530
	subs r4, #0xa
	b _021D453E
_021D4530:
	ldr r0, [r6, #4]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #1
	bne _021D453E
	subs r4, r4, #5
_021D453E:
	cmp r4, #0
	bge _021D4544
	movs r4, #0
_021D4544:
	str r4, [r5, #0x18]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021D454C: .4byte 0x021D9598
	thumb_func_end ov101_021D44FC

	thumb_func_start ov101_021D4550
ov101_021D4550: @ 0x021D4550
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x18]
	bl ov101_021D405C
	str r0, [sp]
	adds r5, #0x88
	ldr r1, [r5]
	movs r0, #0x90
	muls r0, r1, r0
	ldr r2, _021D45AC @ =0x021D9AE4
	movs r1, #0
	adds r5, r2, r0
	adds r2, r5, #0
_021D456C:
	ldr r0, [r2]
	cmp r4, r0
	blo _021D459C
	lsls r4, r1, #4
	adds r0, r5, r4
	ldr r0, [r0, #4]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #1
	bne _021D4586
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D4586:
	adds r0, r5, r4
	ldr r0, [r0, #8]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #1
	bne _021D4598
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D4598:
	movs r0, #2
	pop {r3, r4, r5, pc}
_021D459C:
	adds r1, r1, #1
	adds r2, #0x10
	cmp r1, #9
	blt _021D456C
	bl FUN_02022974
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D45AC: .4byte 0x021D9AE4
	thumb_func_end ov101_021D4550

	thumb_func_start ov101_021D45B0
ov101_021D45B0: @ 0x021D45B0
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0201D2E8
	movs r1, #6
	blx FUN_020E1F6C
	str r1, [r4, #0x34]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D45B0

	thumb_func_start ov101_021D45C4
ov101_021D45C4: @ 0x021D45C4
	push {r4, lr}
	movs r1, #0x12
	lsls r1, r1, #4
	adds r4, r0, r1
	movs r1, #0
	str r1, [r4]
	str r1, [r4, #4]
	str r0, [r4, #0xc]
	ldr r0, _021D45E4 @ =ov101_021D4614
	adds r1, r4, #0
	movs r2, #0x8a
	bl FUN_0200D9E8
	str r0, [r4, #0x10]
	pop {r4, pc}
	nop
_021D45E4: .4byte ov101_021D4614
	thumb_func_end ov101_021D45C4

	thumb_func_start ov101_021D45E8
ov101_021D45E8: @ 0x021D45E8
	movs r1, #0x13
	lsls r1, r1, #4
	ldr r3, _021D45F4 @ =FUN_0200DA58
	ldr r0, [r0, r1]
	bx r3
	nop
_021D45F4: .4byte FUN_0200DA58
	thumb_func_end ov101_021D45E8

	thumb_func_start ov101_021D45F8
ov101_021D45F8: @ 0x021D45F8
	movs r1, #0x49
	lsls r1, r1, #2
	movs r3, #0
	str r3, [r0, r1]
	adds r2, r1, #4
	str r3, [r0, r2]
	movs r2, #1
	subs r1, r1, #4
	str r2, [r0, r1]
	bx lr
	thumb_func_end ov101_021D45F8

	thumb_func_start ov101_021D460C
ov101_021D460C: @ 0x021D460C
	movs r1, #0x49
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov101_021D460C

	thumb_func_start ov101_021D4614
ov101_021D4614: @ 0x021D4614
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r0, [r5]
	ldr r4, [r5, #0xc]
	cmp r0, #3
	bhi _021D4702
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D462C: @ jump table
	.2byte _021D4702 - _021D462C - 2 @ case 0
	.2byte _021D4634 - _021D462C - 2 @ case 1
	.2byte _021D4642 - _021D462C - 2 @ case 2
	.2byte _021D4664 - _021D462C - 2 @ case 3
_021D4634:
	adds r0, r5, #0
	bl ov101_021D4714
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D4642:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021D4650
	bl ov101_021D505C
	cmp r0, #1
	bne _021D4702
_021D4650:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _021D465E
	bl ov101_021D505C
	cmp r0, #1
	bne _021D4702
_021D465E:
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
_021D4664:
	movs r0, #1
	lsls r0, r0, #0xa
	bl ov101_021D55F8
	cmp r0, #0
	bne _021D4676
	ldr r0, [r4, #0x64]
	cmp r0, #0
	bne _021D46C4
_021D4676:
	ldr r0, _021D4704 @ =0x0000062D
	bl FUN_02005748
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	adds r1, r1, r0
	ldr r0, _021D4708 @ =0x0000C350
	str r1, [r4, #0x60]
	cmp r1, r0
	blt _021D468C
	str r0, [r4, #0x60]
_021D468C:
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _021D469A
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x64]
	adds r0, r1, r0
	str r0, [r4, #0x14]
_021D469A:
	movs r0, #0
	str r0, [r4, #0x64]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021D46AC
	bl FUN_0207136C
	movs r0, #0
	str r0, [r5, #0x14]
_021D46AC:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _021D46BA
	bl FUN_0207136C
	movs r0, #0
	str r0, [r5, #0x18]
_021D46BA:
	movs r0, #1
	str r0, [r5, #4]
	movs r0, #0
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021D46C4:
	ldr r1, _021D470C @ =0x021BF67C
	movs r0, #3
	ldr r2, [r1, #0x44]
	ldr r1, _021D4710 @ =0x00000C03
	tst r1, r2
	beq _021D46D2
	movs r0, #1
_021D46D2:
	ldr r1, [r5, #8]
	adds r1, r1, #1
	str r1, [r5, #8]
	tst r0, r1
	bne _021D4702
	ldr r0, [r4, #0x64]
	subs r0, r0, #1
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x60]
	adds r1, r0, #1
	ldr r0, _021D4708 @ =0x0000C350
	str r1, [r4, #0x60]
	cmp r1, r0
	blt _021D46F0
	str r0, [r4, #0x60]
_021D46F0:
	ldr r0, _021D4704 @ =0x0000062D
	bl FUN_02005748
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _021D4702
	ldr r0, [r4, #0x14]
	adds r0, r0, #1
	str r0, [r4, #0x14]
_021D4702:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D4704: .4byte 0x0000062D
_021D4708: .4byte 0x0000C350
_021D470C: .4byte 0x021BF67C
_021D4710: .4byte 0x00000C03
	thumb_func_end ov101_021D4614

	thumb_func_start ov101_021D4714
ov101_021D4714: @ 0x021D4714
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, [r5, #0xc]
	ldr r6, [r7, #0x48]
	cmp r6, #0
	bne _021D4724
	bl FUN_02022974
_021D4724:
	movs r4, #0
_021D4726:
	movs r0, #1
	tst r0, r6
	beq _021D4758
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _021D4740
	ldr r2, [r7, #0x64]
	adds r0, r7, #0
	adds r1, r4, #0
	bl ov101_021D5028
	str r0, [r5, #0x14]
	b _021D4758
_021D4740:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _021D4754
	ldr r2, [r7, #0x64]
	adds r0, r7, #0
	adds r1, r4, #0
	bl ov101_021D5028
	str r0, [r5, #0x18]
	b _021D4758
_021D4754:
	bl FUN_02022974
_021D4758:
	adds r4, r4, #1
	lsrs r6, r6, #1
	cmp r4, #5
	blt _021D4726
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov101_021D4714

	thumb_func_start ov101_021D4764
ov101_021D4764: @ 0x021D4764
	push {r4, lr}
	movs r1, #0x4f
	lsls r1, r1, #2
	adds r4, r0, r1
	movs r1, #0
	str r1, [r4]
	str r1, [r4, #4]
	str r0, [r4, #0x20]
	ldr r0, _021D4784 @ =ov101_021D4824
	adds r1, r4, #0
	movs r2, #0x84
	bl FUN_0200D9E8
	str r0, [r4, #0x24]
	pop {r4, pc}
	nop
_021D4784: .4byte ov101_021D4824
	thumb_func_end ov101_021D4764

	thumb_func_start ov101_021D4788
ov101_021D4788: @ 0x021D4788
	movs r1, #0x16
	lsls r1, r1, #4
	ldr r3, _021D4794 @ =FUN_0200DA58
	ldr r0, [r0, r1]
	bx r3
	nop
_021D4794: .4byte FUN_0200DA58
	thumb_func_end ov101_021D4788

	thumb_func_start ov101_021D4798
ov101_021D4798: @ 0x021D4798
	movs r2, #0x4f
	lsls r2, r2, #2
	adds r2, r0, r2
	str r1, [r2]
	movs r0, #0
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r2, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end ov101_021D4798

	thumb_func_start ov101_021D47AC
ov101_021D47AC: @ 0x021D47AC
	movs r1, #0x51
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov101_021D47AC

	thumb_func_start ov101_021D47B4
ov101_021D47B4: @ 0x021D47B4
	push {r4, lr}
	movs r1, #0x52
	adds r4, r0, #0
	movs r2, #0
	lsls r1, r1, #2
	str r2, [r4, r1]
	bl ov101_021D7228
	movs r1, #0x5d
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r4, #0
	bl ov101_021D73B4
	movs r1, #0x5e
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r4, #0
	bl ov101_021D7550
	movs r1, #0x5f
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r4, #0
	bl ov101_021D76B4
	movs r1, #6
	lsls r1, r1, #6
	str r0, [r4, r1]
	pop {r4, pc}
	thumb_func_end ov101_021D47B4

	thumb_func_start ov101_021D47F0
ov101_021D47F0: @ 0x021D47F0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x52
	movs r1, #1
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, #0x2c
	ldr r0, [r4, r0]
	bl FUN_0207136C
	movs r0, #0x5e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0207136C
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0207136C
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	bl FUN_0207136C
	pop {r4, pc}
	thumb_func_end ov101_021D47F0

	thumb_func_start ov101_021D4824
ov101_021D4824: @ 0x021D4824
	push {r3, r4, r5, lr}
	ldr r4, _021D4840 @ =0x021D8774
	adds r5, r1, #0
_021D482A:
	ldr r1, [r5]
	adds r0, r5, #0
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	ldr r1, [r5, #4]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	blx r1
	cmp r0, #1
	beq _021D482A
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D4840: .4byte 0x021D8774
	thumb_func_end ov101_021D4824

	thumb_func_start ov101_021D4844
ov101_021D4844: @ 0x021D4844
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x18]
	bl ov101_021D5D58
	str r0, [r4, #0x28]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D4844

	thumb_func_start ov101_021D485C
ov101_021D485C: @ 0x021D485C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x28]
	bl ov101_021D5DC4
	cmp r0, #0
	bne _021D486E
	movs r0, #0
	pop {r4, pc}
_021D486E:
	ldr r0, [r4, #0x28]
	movs r1, #1
	bl ov101_021D5D90
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D485C

	thumb_func_start ov101_021D4880
ov101_021D4880: @ 0x021D4880
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x28]
	bl ov101_021D5DC4
	cmp r0, #0
	bne _021D4892
	movs r0, #0
	pop {r4, pc}
_021D4892:
	ldr r0, [r4, #0x28]
	movs r1, #5
	bl ov101_021D5D90
	movs r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D4880

	thumb_func_start ov101_021D48A8
ov101_021D48A8: @ 0x021D48A8
	movs r0, #0
	bx lr
	thumb_func_end ov101_021D48A8

	thumb_func_start ov101_021D48AC
ov101_021D48AC: @ 0x021D48AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x28]
	movs r1, #4
	bl ov101_021D5D90
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D48AC

	thumb_func_start ov101_021D48C4
ov101_021D48C4: @ 0x021D48C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x28]
	bl ov101_021D5DC4
	cmp r0, #1
	bne _021D48E2
	ldr r0, [r4, #0x28]
	bl FUN_0207136C
	movs r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
_021D48E2:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D48C4

	thumb_func_start ov101_021D48E8
ov101_021D48E8: @ 0x021D48E8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x28]
	movs r1, #2
	bl ov101_021D5D90
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D48E8

	thumb_func_start ov101_021D4900
ov101_021D4900: @ 0x021D4900
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x28]
	bl ov101_021D5DC4
	cmp r0, #1
	bne _021D4926
	ldr r0, [r4, #0x20]
	bl ov101_021D6484
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	bl ov101_021D6764
	str r0, [r4, #0x30]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
_021D4926:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D4900

	thumb_func_start ov101_021D492C
ov101_021D492C: @ 0x021D492C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	bl ov101_021D67B0
	cmp r0, #1
	bne _021D4950
	ldr r0, [r4, #0x30]
	movs r1, #1
	bl ov101_021D679C
	ldr r0, [r4, #0x28]
	movs r1, #1
	bl ov101_021D5DA4
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
_021D4950:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D492C

	thumb_func_start ov101_021D4954
ov101_021D4954: @ 0x021D4954
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	bl ov101_021D67B0
	cmp r0, #1
	bne _021D4972
	ldr r0, [r4, #0x2c]
	bl FUN_0207136C
	movs r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
_021D4972:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D4954

	thumb_func_start ov101_021D4978
ov101_021D4978: @ 0x021D4978
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	bl ov101_021D6484
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	movs r1, #2
	bl ov101_021D679C
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D4978

	thumb_func_start ov101_021D4998
ov101_021D4998: @ 0x021D4998
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	bl ov101_021D67B0
	cmp r0, #1
	bne _021D49C8
	ldr r0, [r4, #0x30]
	bl FUN_0207136C
	ldr r0, [r4, #0x2c]
	bl FUN_0207136C
	ldr r0, [r4, #0x28]
	movs r1, #0
	bl ov101_021D5DA4
	ldr r0, [r4, #0x28]
	movs r1, #3
	bl ov101_021D5D90
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
_021D49C8:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D4998

	thumb_func_start ov101_021D49CC
ov101_021D49CC: @ 0x021D49CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x28]
	bl ov101_021D5DC4
	cmp r0, #1
	bne _021D49E8
	ldr r0, [r4, #0x28]
	movs r1, #4
	bl ov101_021D5D90
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
_021D49E8:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D49CC

	thumb_func_start ov101_021D49EC
ov101_021D49EC: @ 0x021D49EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x28]
	bl ov101_021D5DC4
	cmp r0, #1
	bne _021D4A0A
	ldr r0, [r4, #0x28]
	bl FUN_0207136C
	movs r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
_021D4A0A:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D49EC

	thumb_func_start ov101_021D4A10
ov101_021D4A10: @ 0x021D4A10
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	movs r1, #3
	bl ov101_021D679C
	ldr r0, [r4, #0x20]
	bl ov101_021D6DF0
	str r0, [r4, #0x34]
	movs r0, #0
	str r0, [r4, #0x10]
	ldr r1, [r4, #4]
	adds r1, r1, #1
	str r1, [r4, #4]
	pop {r4, pc}
	thumb_func_end ov101_021D4A10

	thumb_func_start ov101_021D4A30
ov101_021D4A30: @ 0x021D4A30
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	adds r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, #0x30
	blt _021D4A56
	movs r1, #0
	str r1, [r4, #0x10]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #0x23
	bl FUN_02005844
	ldr r0, [r4, #0x30]
	movs r1, #4
	bl ov101_021D679C
_021D4A56:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D4A30

	thumb_func_start ov101_021D4A5C
ov101_021D4A5C: @ 0x021D4A5C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x34]
	bl ov101_021D6E1C
	cmp r0, #1
	bne _021D4A86
	ldr r0, [r4, #0x30]
	movs r1, #3
	bl ov101_021D679C
	ldr r0, [r4, #0x34]
	bl FUN_0207136C
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r4, #0x10]
	movs r0, #1
	str r0, [r4, #8]
_021D4A86:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D4A5C

	thumb_func_start ov101_021D4A8C
ov101_021D4A8C: @ 0x021D4A8C
	push {r3, lr}
	ldr r1, [r0, #0x20]
	ldr r3, _021D4AB4 @ =0x021D87A8
	ldr r2, [r1, #0x34]
	movs r1, #0x18
	muls r1, r2, r1
	adds r2, r3, r1
	ldr r1, [r0, #4]
	adds r1, r1, #1
	str r1, [r0, #4]
	movs r1, #0
	str r1, [r0, #0x14]
	lsls r1, r1, #2
	adds r1, r2, r1
	ldr r0, [r0, #0x30]
	ldr r1, [r1, #0xc]
	bl ov101_021D679C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_021D4AB4: .4byte 0x021D87A8
	thumb_func_end ov101_021D4A8C

	thumb_func_start ov101_021D4AB8
ov101_021D4AB8: @ 0x021D4AB8
	push {r3, r4, r5, lr}
	ldr r2, [r0, #0x20]
	movs r1, #0
	adds r4, r1, #0
	adds r5, r2, #0
_021D4AC2:
	ldr r3, [r5, #0x7c]
	cmp r3, #1
	beq _021D4ACA
	adds r1, r1, #1
_021D4ACA:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _021D4AC2
	ldr r3, [r0, #0x14]
	cmp r3, #2
	bge _021D4AF4
	cmp r3, r1
	beq _021D4AF4
	ldr r3, [r2, #0x34]
	movs r2, #0x18
	ldr r4, _021D4AF8 @ =0x021D87A8
	str r1, [r0, #0x14]
	muls r2, r3, r2
	adds r2, r4, r2
	lsls r1, r1, #2
	adds r1, r2, r1
	ldr r0, [r0, #0x30]
	ldr r1, [r1, #0xc]
	bl ov101_021D679C
_021D4AF4:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D4AF8: .4byte 0x021D87A8
	thumb_func_end ov101_021D4AB8

	thumb_func_start ov101_021D4AFC
ov101_021D4AFC: @ 0x021D4AFC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	movs r1, #3
	bl ov101_021D679C
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D4AFC

	thumb_func_start ov101_021D4B14
ov101_021D4B14: @ 0x021D4B14
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	bl ov101_021D47F0
	ldr r0, [r4, #0x20]
	bl ov101_021D6484
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	movs r1, #2
	bl ov101_021D679C
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D4B14

	thumb_func_start ov101_021D4B38
ov101_021D4B38: @ 0x021D4B38
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	bl ov101_021D67B0
	cmp r0, #1
	bne _021D4B68
	ldr r0, [r4, #0x30]
	bl FUN_0207136C
	ldr r0, [r4, #0x2c]
	bl FUN_0207136C
	ldr r0, [r4, #0x28]
	movs r1, #0
	bl ov101_021D5DA4
	ldr r0, [r4, #0x28]
	movs r1, #3
	bl ov101_021D5D90
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
_021D4B68:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D4B38

	thumb_func_start ov101_021D4B6C
ov101_021D4B6C: @ 0x021D4B6C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x28]
	bl ov101_021D5DC4
	cmp r0, #1
	bne _021D4B9C
	ldr r0, [r4, #0x20]
	bl ov101_021D72D4
	ldr r0, [r4, #0x20]
	bl ov101_021D7460
	ldr r0, [r4, #0x20]
	movs r1, #0
	bl ov101_021D77E4
	ldr r0, [r4, #0x20]
	movs r1, #1
	bl ov101_021D77E4
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
_021D4B9C:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D4B6C

	thumb_func_start ov101_021D4BA0
ov101_021D4BA0: @ 0x021D4BA0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	adds r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, #0x2d
	blt _021D4BC0
	movs r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x28]
	movs r1, #4
	bl ov101_021D5D90
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
_021D4BC0:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D4BA0

	thumb_func_start ov101_021D4BC4
ov101_021D4BC4: @ 0x021D4BC4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x28]
	bl ov101_021D5DC4
	cmp r0, #1
	bne _021D4BE2
	ldr r0, [r4, #0x28]
	bl FUN_0207136C
	movs r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
_021D4BE2:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D4BC4

	thumb_func_start ov101_021D4BE8
ov101_021D4BE8: @ 0x021D4BE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	movs r1, #4
	bl ov101_021D679C
	movs r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D4BE8

	thumb_func_start ov101_021D4C04
ov101_021D4C04: @ 0x021D4C04
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	movs r1, #8
	bl ov101_021D679C
	movs r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D4C04

	thumb_func_start ov101_021D4C20
ov101_021D4C20: @ 0x021D4C20
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x28]
	movs r1, #6
	bl ov101_021D5D90
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #1
	str r0, [r4, #8]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D4C20

	thumb_func_start ov101_021D4C3C
ov101_021D4C3C: @ 0x021D4C3C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	bl ov101_021D6484
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	movs r1, #2
	bl ov101_021D679C
	movs r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D4C3C

	thumb_func_start ov101_021D4C60
ov101_021D4C60: @ 0x021D4C60
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	bl ov101_021D67B0
	cmp r0, #1
	bne _021D4C94
	ldr r0, [r4, #0x2c]
	bl FUN_0207136C
	ldr r0, [r4, #0x30]
	bl FUN_0207136C
	ldr r0, [r4, #0x28]
	movs r1, #0
	bl ov101_021D5DA4
	ldr r0, [r4, #0x28]
	movs r1, #3
	bl ov101_021D5D90
	movs r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
_021D4C94:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D4C60

	thumb_func_start ov101_021D4C98
ov101_021D4C98: @ 0x021D4C98
	push {r3, lr}
	ldr r1, [r0, #0x10]
	adds r1, r1, #1
	str r1, [r0, #0x10]
	cmp r1, #0x1e
	blt _021D4CB6
	movs r1, #0
	str r1, [r0, #0x10]
	ldr r1, [r0, #4]
	adds r1, r1, #1
	str r1, [r0, #4]
	ldr r0, [r0, #0x28]
	movs r1, #2
	bl ov101_021D5D90
_021D4CB6:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov101_021D4C98

	thumb_func_start ov101_021D4CBC
ov101_021D4CBC: @ 0x021D4CBC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x28]
	bl ov101_021D5DC4
	cmp r0, #1
	bne _021D4CE6
	ldr r0, [r4, #0x20]
	bl ov101_021D6484
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	bl ov101_021D6764
	str r0, [r4, #0x30]
	movs r0, #0
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
_021D4CE6:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D4CBC

	thumb_func_start ov101_021D4CEC
ov101_021D4CEC: @ 0x021D4CEC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	bl ov101_021D67B0
	cmp r0, #1
	bne _021D4D10
	ldr r0, [r4, #0x30]
	movs r1, #1
	bl ov101_021D679C
	ldr r0, [r4, #0x28]
	movs r1, #1
	bl ov101_021D5DA4
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
_021D4D10:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D4CEC

	thumb_func_start ov101_021D4D14
ov101_021D4D14: @ 0x021D4D14
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	bl ov101_021D67B0
	cmp r0, #1
	bne _021D4D32
	ldr r0, [r4, #0x2c]
	bl FUN_0207136C
	movs r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
_021D4D32:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D4D14

	thumb_func_start ov101_021D4D38
ov101_021D4D38: @ 0x021D4D38
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	movs r1, #0x61
	adds r5, r0, #0
	lsls r1, r1, #2
	adds r4, r5, r1
	movs r1, #3
	movs r2, #0
	str r5, [r4]
	bl ov101_021D19E4
	add r1, sp, #0
	adds r6, r0, #0
	blx FUN_020A71B0
	ldr r0, [sp]
	movs r1, #1
	adds r2, r4, #4
	bl ov101_021D4EA8
	adds r2, r4, #0
	ldr r0, [sp]
	movs r1, #2
	adds r2, #0xa4
	bl ov101_021D4EA8
	adds r2, r4, #0
	ldr r0, [sp]
	movs r1, #3
	adds r2, #0xc4
	bl ov101_021D4EA8
	adds r2, r4, #0
	ldr r0, [sp]
	movs r1, #3
	adds r2, #0xe4
	bl ov101_021D4EA8
	movs r2, #0x41
	lsls r2, r2, #2
	ldr r0, [sp]
	movs r1, #4
	adds r2, r4, r2
	bl ov101_021D4EA8
	movs r2, #0x49
	lsls r2, r2, #2
	ldr r0, [sp]
	movs r1, #4
	adds r2, r4, r2
	bl ov101_021D4EA8
	adds r0, r6, #0
	bl FUN_020181C4
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0
	bl ov101_021D19E4
	add r1, sp, #0
	adds r6, r0, #0
	blx FUN_020A71B0
	adds r2, r4, #0
	ldr r0, [sp]
	movs r1, #0
	adds r2, #0x24
	bl ov101_021D4EA8
	adds r0, r6, #0
	bl FUN_020181C4
	adds r0, r5, #0
	movs r1, #6
	movs r2, #0
	bl ov101_021D19E4
	add r1, sp, #0
	adds r6, r0, #0
	blx FUN_020A71B0
	adds r2, r4, #0
	ldr r0, [sp]
	movs r1, #0
	adds r2, #0x44
	bl ov101_021D4EA8
	adds r0, r6, #0
	bl FUN_020181C4
	adds r0, r5, #0
	movs r1, #7
	movs r2, #0
	bl ov101_021D19E4
	add r1, sp, #0
	adds r6, r0, #0
	blx FUN_020A71B0
	adds r2, r4, #0
	ldr r0, [sp]
	movs r1, #0
	adds r2, #0x64
	bl ov101_021D4EA8
	adds r0, r6, #0
	bl FUN_020181C4
	adds r0, r5, #0
	movs r1, #0x4a
	movs r2, #0
	bl ov101_021D19E4
	add r1, sp, #0
	adds r6, r0, #0
	blx FUN_020A71B0
	movs r2, #0x51
	lsls r2, r2, #2
	ldr r0, [sp]
	movs r1, #0
	adds r2, r4, r2
	bl ov101_021D4EA8
	adds r0, r6, #0
	bl FUN_020181C4
	adds r0, r5, #0
	movs r1, #0x4b
	movs r2, #0
	bl ov101_021D19E4
	add r1, sp, #0
	adds r6, r0, #0
	blx FUN_020A71B0
	movs r2, #0x59
	lsls r2, r2, #2
	ldr r0, [sp]
	movs r1, #0
	adds r2, r4, r2
	bl ov101_021D4EA8
	movs r2, #0x61
	lsls r2, r2, #2
	ldr r0, [sp]
	movs r1, #0
	adds r2, r4, r2
	bl ov101_021D4EA8
	adds r0, r6, #0
	bl FUN_020181C4
	adds r0, r5, #0
	movs r1, #0x4c
	movs r2, #0
	bl ov101_021D19E4
	add r1, sp, #0
	adds r5, r0, #0
	blx FUN_020A71B0
	movs r2, #0x69
	lsls r2, r2, #2
	ldr r0, [sp]
	movs r1, #0
	adds r2, r4, r2
	bl ov101_021D4EA8
	movs r2, #0x71
	lsls r2, r2, #2
	ldr r0, [sp]
	movs r1, #0
	adds r2, r4, r2
	bl ov101_021D4EA8
	adds r0, r5, #0
	bl FUN_020181C4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov101_021D4D38

	thumb_func_start ov101_021D4EA4
ov101_021D4EA4: @ 0x021D4EA4
	bx lr
	.align 2, 0
	thumb_func_end ov101_021D4EA4

	thumb_func_start ov101_021D4EA8
ov101_021D4EA8: @ 0x021D4EA8
	ldr r3, [r0, #0xc]
	lsls r0, r1, #5
	adds r3, r3, r0
	movs r1, #0
_021D4EB0:
	ldrh r0, [r3]
	adds r1, r1, #1
	adds r3, r3, #2
	strh r0, [r2]
	adds r2, r2, #2
	cmp r1, #0x10
	blt _021D4EB0
	bx lr
	thumb_func_end ov101_021D4EA8

	thumb_func_start ov101_021D4EC0
ov101_021D4EC0: @ 0x021D4EC0
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6}
	adds r1, r2, #0
	adds r0, r3, #0
	add r2, sp, #0x10
	add r3, sp, #0x14
	cmp r1, #0x10
	bls _021D4ED2
	movs r1, #0x10
_021D4ED2:
	ldrh r4, [r2]
	ldrh r3, [r3]
	lsls r2, r4, #0x16
	lsrs r6, r2, #0x1b
	lsls r2, r4, #0x1b
	lsrs r5, r2, #0x1b
	lsls r2, r4, #0x11
	lsls r4, r3, #0x11
	lsrs r2, r2, #0x1b
	lsrs r4, r4, #0x1b
	subs r4, r4, r2
	muls r4, r1, r4
	asrs r4, r4, #4
	adds r2, r2, r4
	lsls r4, r2, #0xa
	lsls r2, r3, #0x1b
	lsls r3, r3, #0x16
	lsrs r3, r3, #0x1b
	lsrs r2, r2, #0x1b
	subs r3, r3, r6
	subs r2, r2, r5
	muls r2, r1, r2
	muls r3, r1, r3
	asrs r1, r3, #4
	asrs r2, r2, #4
	adds r1, r6, r1
	adds r2, r5, r2
	lsls r1, r1, #5
	orrs r1, r2
	orrs r1, r4
	strh r1, [r0]
	pop {r3, r4, r5, r6}
	add sp, #0x10
	bx lr
	.align 2, 0
	thumb_func_end ov101_021D4EC0

	thumb_func_start ov101_021D4F18
ov101_021D4F18: @ 0x021D4F18
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	str r2, [sp]
	adds r6, r3, #0
	movs r7, #0
_021D4F24:
	ldrh r0, [r5]
	ldrh r1, [r4]
	ldr r2, [sp]
	adds r3, r6, #0
	bl ov101_021D4EC0
	adds r7, r7, #1
	adds r6, r6, #2
	adds r4, r4, #2
	adds r5, r5, #2
	cmp r7, #0x10
	blt _021D4F24
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov101_021D4F18

	thumb_func_start ov101_021D4F40
ov101_021D4F40: @ 0x021D4F40
	push {r4, lr}
	adds r4, r2, #0
	lsls r0, r1, #0x18
	adds r1, r3, #0
	lsls r3, r4, #0x15
	lsrs r0, r0, #0x18
	movs r2, #0x20
	lsrs r3, r3, #0x10
	bl FUN_0201972C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D4F40

	thumb_func_start ov101_021D4F58
ov101_021D4F58: @ 0x021D4F58
	push {r4, lr}
	adds r3, r1, #0
	lsls r4, r3, #2
	ldr r2, _021D4F74 @ =0x021D9E60
	lsls r3, r3, #5
	ldr r2, [r2, r4]
	movs r4, #0x8a
	lsls r4, r4, #2
	adds r4, r0, r4
	movs r1, #1
	adds r3, r4, r3
	bl ov101_021D4F40
	pop {r4, pc}
	.align 2, 0
_021D4F74: .4byte 0x021D9E60
	thumb_func_end ov101_021D4F58

	thumb_func_start ov101_021D4F78
ov101_021D4F78: @ 0x021D4F78
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r2, #0x61
	lsls r2, r2, #2
	ldr r0, _021D4FB4 @ =0x021D9E60
	lsls r4, r1, #2
	ldr r6, [r0, r4]
	adds r0, r2, #0
	adds r3, r7, r2
	adds r0, #0x60
	adds r4, r3, r0
	adds r0, r3, #0
	subs r2, #0x40
	lsls r5, r1, #5
	adds r1, r3, r2
	adds r0, #0xa4
	adds r0, r0, r5
	adds r1, r1, r5
	movs r2, #0xa
	adds r3, r4, r5
	bl ov101_021D4F18
	adds r0, r7, #0
	movs r1, #1
	adds r2, r6, #0
	adds r3, r4, r5
	bl ov101_021D4F40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D4FB4: .4byte 0x021D9E60
	thumb_func_end ov101_021D4F78

	thumb_func_start ov101_021D4FB8
ov101_021D4FB8: @ 0x021D4FB8
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r2, #0x61
	lsls r2, r2, #2
	ldr r0, _021D4FF4 @ =0x021D9E60
	lsls r4, r1, #2
	ldr r6, [r0, r4]
	adds r0, r2, #0
	adds r3, r7, r2
	adds r0, #0x60
	adds r4, r3, r0
	adds r0, r3, #0
	subs r2, #0x40
	lsls r5, r1, #5
	adds r1, r3, r2
	adds r0, #0xa4
	adds r0, r0, r5
	adds r1, r1, r5
	movs r2, #0xc
	adds r3, r4, r5
	bl ov101_021D4F18
	adds r0, r7, #0
	movs r1, #1
	adds r2, r6, #0
	adds r3, r4, r5
	bl ov101_021D4F40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D4FF4: .4byte 0x021D9E60
	thumb_func_end ov101_021D4FB8

	thumb_func_start ov101_021D4FF8
ov101_021D4FF8: @ 0x021D4FF8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_021D4FFE:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov101_021D4F58
	adds r4, r4, #1
	cmp r4, #5
	blt _021D4FFE
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov101_021D4FF8

	thumb_func_start ov101_021D5010
ov101_021D5010: @ 0x021D5010
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_021D5016:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov101_021D4F78
	adds r4, r4, #1
	cmp r4, #5
	blt _021D5016
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov101_021D5010

	thumb_func_start ov101_021D5028
ov101_021D5028: @ 0x021D5028
	push {r4, lr}
	sub sp, #0x20
	add r4, sp, #0x14
	movs r3, #0
	str r3, [r4]
	str r3, [r4, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [r4, #8]
	str r0, [sp, #0x10]
	add r1, sp, #8
	str r1, [sp]
	movs r1, #0x8f
	str r1, [sp, #4]
	ldr r1, _021D5054 @ =0x0000044C
	adds r2, r4, #0
	ldr r0, [r0, r1]
	ldr r1, _021D5058 @ =0x021D86B0
	bl FUN_02071330
	add sp, #0x20
	pop {r4, pc}
	.align 2, 0
_021D5054: .4byte 0x0000044C
_021D5058: .4byte 0x021D86B0
	thumb_func_end ov101_021D5028

	thumb_func_start ov101_021D505C
ov101_021D505C: @ 0x021D505C
	push {r3, lr}
	bl FUN_02071598
	ldr r0, [r0, #0xc]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov101_021D505C

	thumb_func_start ov101_021D5068
ov101_021D5068: @ 0x021D5068
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_020715BC
	ldr r1, [r0, #8]
	str r1, [r4, #0x1c]
	ldr r1, [r0]
	str r1, [r4, #0x10]
	ldr r0, [r0, #4]
	str r0, [r4, #0x14]
	movs r0, #0x61
	ldr r1, [r4, #0x1c]
	lsls r0, r0, #2
	adds r0, r1, r0
	str r0, [r4, #0x20]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D5068

	thumb_func_start ov101_021D508C
ov101_021D508C: @ 0x021D508C
	ldr r3, _021D5094 @ =ov101_021D4F58
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x10]
	bx r3
	.align 2, 0
_021D5094: .4byte ov101_021D4F58
	thumb_func_end ov101_021D508C

	thumb_func_start ov101_021D5098
ov101_021D5098: @ 0x021D5098
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	ldr r2, [r4, #0x10]
	ldr r0, _021D51FC @ =0x021D9E60
	lsls r1, r2, #2
	ldr r0, [r0, r1]
	lsls r5, r2, #5
	movs r1, #0x79
	ldr r2, [r4, #0x20]
	lsls r1, r1, #2
	adds r6, r2, r1
	subs r1, #0xa0
	str r0, [sp]
	adds r0, r2, #0
	adds r1, r2, r1
	ldr r2, [r4]
	adds r0, #0xa4
	cmp r2, #4
	bls _021D50C0
	b _021D51FA
_021D50C0:
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021D50CC: @ jump table
	.2byte _021D50D6 - _021D50CC - 2 @ case 0
	.2byte _021D5118 - _021D50CC - 2 @ case 1
	.2byte _021D517C - _021D50CC - 2 @ case 2
	.2byte _021D51BE - _021D50CC - 2 @ case 3
	.2byte _021D51FA - _021D50CC - 2 @ case 4
_021D50D6:
	movs r7, #1
	ldr r2, [r4, #0x18]
	lsls r7, r7, #0xe
	adds r3, r2, r7
	lsls r2, r7, #2
	str r3, [r4, #0x18]
	cmp r3, r2
	ble _021D50E8
	str r2, [r4, #0x18]
_021D50E8:
	ldr r2, [r4, #0x18]
	asrs r3, r2, #0xb
	lsrs r3, r3, #0x14
	adds r3, r2, r3
	asrs r2, r3, #0xc
	cmp r2, #0x10
	bne _021D50FC
	ldr r3, [r4]
	adds r3, r3, #1
	str r3, [r4]
_021D50FC:
	lsls r2, r2, #0x10
	adds r0, r0, r5
	adds r1, r1, r5
	lsrs r2, r2, #0x10
	adds r3, r6, r5
	bl ov101_021D4F18
	ldr r0, [r4, #0x1c]
	ldr r2, [sp]
	movs r1, #1
	adds r3, r6, r5
	bl ov101_021D4F40
	pop {r3, r4, r5, r6, r7, pc}
_021D5118:
	movs r2, #1
	ldr r3, [r4, #0x18]
	lsls r2, r2, #0xe
	subs r2, r3, r2
	str r2, [r4, #0x18]
	bpl _021D5128
	movs r2, #0
	str r2, [r4, #0x18]
_021D5128:
	ldr r2, [r4, #0x18]
	asrs r3, r2, #0xb
	lsrs r3, r3, #0x14
	adds r3, r2, r3
	asrs r2, r3, #0xc
	bne _021D5160
	ldr r3, [r4, #4]
	adds r3, r3, #1
	str r3, [r4, #4]
	cmp r3, #4
	blt _021D515A
	ldr r3, [r4, #0x14]
	cmp r3, #0
	beq _021D5150
	ldr r3, [r4]
	adds r3, r3, #1
	str r3, [r4]
	movs r3, #1
	str r3, [r4, #0xc]
	b _021D5160
_021D5150:
	movs r3, #4
	str r3, [r4]
	movs r3, #1
	str r3, [r4, #0xc]
	b _021D5160
_021D515A:
	ldr r3, [r4]
	subs r3, r3, #1
	str r3, [r4]
_021D5160:
	lsls r2, r2, #0x10
	adds r0, r0, r5
	adds r1, r1, r5
	lsrs r2, r2, #0x10
	adds r3, r6, r5
	bl ov101_021D4F18
	ldr r0, [r4, #0x1c]
	ldr r2, [sp]
	movs r1, #1
	adds r3, r6, r5
	bl ov101_021D4F40
	pop {r3, r4, r5, r6, r7, pc}
_021D517C:
	movs r7, #2
	ldr r2, [r4, #0x18]
	lsls r7, r7, #0xe
	adds r3, r2, r7
	lsls r2, r7, #1
	str r3, [r4, #0x18]
	cmp r3, r2
	ble _021D518E
	str r2, [r4, #0x18]
_021D518E:
	ldr r2, [r4, #0x18]
	asrs r3, r2, #0xb
	lsrs r3, r3, #0x14
	adds r3, r2, r3
	asrs r2, r3, #0xc
	cmp r2, #0x10
	bne _021D51A2
	ldr r3, [r4]
	adds r3, r3, #1
	str r3, [r4]
_021D51A2:
	lsls r2, r2, #0x10
	adds r0, r0, r5
	adds r1, r1, r5
	lsrs r2, r2, #0x10
	adds r3, r6, r5
	bl ov101_021D4F18
	ldr r0, [r4, #0x1c]
	ldr r2, [sp]
	movs r1, #1
	adds r3, r6, r5
	bl ov101_021D4F40
	pop {r3, r4, r5, r6, r7, pc}
_021D51BE:
	movs r2, #2
	ldr r3, [r4, #0x18]
	lsls r2, r2, #0xe
	subs r2, r3, r2
	str r2, [r4, #0x18]
	bpl _021D51CE
	movs r2, #0
	str r2, [r4, #0x18]
_021D51CE:
	ldr r2, [r4, #0x18]
	asrs r3, r2, #0xb
	lsrs r3, r3, #0x14
	adds r3, r2, r3
	asrs r2, r3, #0xc
	bne _021D51E0
	ldr r3, [r4]
	subs r3, r3, #1
	str r3, [r4]
_021D51E0:
	lsls r2, r2, #0x10
	adds r0, r0, r5
	adds r1, r1, r5
	lsrs r2, r2, #0x10
	adds r3, r6, r5
	bl ov101_021D4F18
	ldr r0, [r4, #0x1c]
	ldr r2, [sp]
	movs r1, #1
	adds r3, r6, r5
	bl ov101_021D4F40
_021D51FA:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D51FC: .4byte 0x021D9E60
	thumb_func_end ov101_021D5098

	thumb_func_start ov101_021D5200
ov101_021D5200: @ 0x021D5200
	push {r3, r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	add r1, sp, #8
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	movs r0, #0x4d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D521E
	bl FUN_02022974
_021D521E:
	str r4, [sp]
	movs r0, #0x8f
	str r0, [sp, #4]
	ldr r0, _021D523C @ =0x0000044C
	ldr r1, _021D5240 @ =0x021D8700
	ldr r0, [r4, r0]
	add r2, sp, #8
	movs r3, #0
	bl FUN_02071330
	movs r1, #0x4d
	lsls r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x14
	pop {r3, r4, pc}
	.align 2, 0
_021D523C: .4byte 0x0000044C
_021D5240: .4byte 0x021D8700
	thumb_func_end ov101_021D5200

	thumb_func_start ov101_021D5244
ov101_021D5244: @ 0x021D5244
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x4d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D525E
	bl FUN_0207136C
	movs r0, #0x4d
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
_021D525E:
	adds r0, r4, #0
	bl ov101_021D4FF8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D5244

	thumb_func_start ov101_021D5268
ov101_021D5268: @ 0x021D5268
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	ldr r0, [r6, #4]
	ldr r1, _021D5380 @ =0x021D8938
	lsls r0, r0, #4
	adds r4, r1, r0
	movs r0, #1
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _021D5384 @ =0x021D9E60
	adds r5, r6, #0
	str r0, [sp]
	movs r7, #0
_021D5284:
	ldr r1, [r4]
	ldr r0, [sp, #0xc]
	tst r0, r1
	beq _021D5310
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _021D529C
	ldr r0, [r4, #4]
	str r0, [r5, #0x14]
	movs r0, #0
	str r0, [sp, #8]
	b _021D52D0
_021D529C:
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	cmp r1, r0
	ldr r1, [r5, #0x14]
	bge _021D52BC
	ldr r0, [r4, #0xc]
	adds r1, r1, r0
	str r1, [r5, #0x14]
	ldr r0, [r4, #8]
	cmp r1, r0
	blt _021D52B6
	str r0, [r5, #0x14]
	b _021D52D0
_021D52B6:
	movs r0, #0
	str r0, [sp, #8]
	b _021D52D0
_021D52BC:
	ldr r0, [r4, #0xc]
	subs r1, r1, r0
	str r1, [r5, #0x14]
	ldr r0, [r4, #8]
	cmp r1, r0
	bgt _021D52CC
	str r0, [r5, #0x14]
	b _021D52D0
_021D52CC:
	movs r0, #0
	str r0, [sp, #8]
_021D52D0:
	ldr r0, [sp]
	movs r2, #0x51
	ldr r0, [r0]
	ldr r1, [r6, #0x2c]
	str r0, [sp, #4]
	movs r0, #0x79
	lsls r0, r0, #2
	adds r0, r1, r0
	str r0, [sp, #0x10]
	adds r0, r1, #0
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r3, [r5, #0x14]
	adds r0, #0xa4
	asrs r2, r3, #0xb
	lsrs r2, r2, #0x14
	adds r2, r3, r2
	ldr r3, [sp, #0x10]
	lsls r2, r2, #4
	adds r0, r0, r7
	adds r1, r1, r7
	lsrs r2, r2, #0x10
	adds r3, r3, r7
	bl ov101_021D4F18
	ldr r3, [sp, #0x10]
	ldr r0, [r6, #0x28]
	ldr r2, [sp, #4]
	movs r1, #1
	adds r3, r3, r7
	bl ov101_021D4F40
_021D5310:
	ldr r0, [sp]
	adds r5, r5, #4
	adds r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #0xc]
	adds r7, #0x20
	lsls r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #0x10
	bls _021D5284
	cmp r0, #0x20
	bhi _021D535A
	adds r5, r6, #0
	movs r7, #1
	adds r5, #0xc
	movs r1, #0
	lsls r7, r7, #0xc
	movs r0, #0x20
_021D5334:
	ldr r2, [r4]
	tst r2, r0
	beq _021D5350
	ldr r2, [r5]
	adds r2, r2, r7
	str r2, [r5]
	ldr r3, [r6, #0xc]
	ldr r2, [r4, #4]
	cmp r3, r2
	blt _021D534C
	str r1, [r6, #0xc]
	b _021D5350
_021D534C:
	movs r2, #0
	str r2, [sp, #8]
_021D5350:
	ldr r2, [sp, #0xc]
	lsls r2, r2, #1
	str r2, [sp, #0xc]
	cmp r2, #0x20
	bls _021D5334
_021D535A:
	movs r0, #1
	str r0, [r6, #8]
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _021D537A
	movs r3, #0
	str r3, [r6, #8]
	ldr r0, [r6, #4]
	ldr r1, _021D5380 @ =0x021D8938
	adds r0, r0, #1
	str r0, [r6, #4]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0x40
	bne _021D537A
	str r3, [r6, #4]
_021D537A:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D5380: .4byte 0x021D8938
_021D5384: .4byte 0x021D9E60
	thumb_func_end ov101_021D5268

	thumb_func_start ov101_021D5388
ov101_021D5388: @ 0x021D5388
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_020715BC
	movs r1, #0x61
	lsls r1, r1, #2
	str r0, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D5388

	thumb_func_start ov101_021D53A0
ov101_021D53A0: @ 0x021D53A0
	bx lr
	.align 2, 0
	thumb_func_end ov101_021D53A0

	thumb_func_start ov101_021D53A4
ov101_021D53A4: @ 0x021D53A4
	ldr r3, _021D53AC @ =ov101_021D5268
	adds r0, r1, #0
	bx r3
	nop
_021D53AC: .4byte ov101_021D5268
	thumb_func_end ov101_021D53A4

	thumb_func_start ov101_021D53B0
ov101_021D53B0: @ 0x021D53B0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x4f
	movs r1, #0x10
	bl FUN_02018184
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	ldr r0, _021D53D0 @ =ov101_021D542C
	movs r2, #0x8f
	str r4, [r1, #0xc]
	bl FUN_0200D9E8
	pop {r4, pc}
	.align 2, 0
_021D53D0: .4byte ov101_021D542C
	thumb_func_end ov101_021D53B0

	thumb_func_start ov101_021D53D4
ov101_021D53D4: @ 0x021D53D4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x4f
	movs r1, #0x10
	bl FUN_02018184
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	ldr r0, _021D53F4 @ =ov101_021D548C
	movs r2, #0x8f
	str r4, [r1, #0xc]
	bl FUN_0200D9E8
	pop {r4, pc}
	.align 2, 0
_021D53F4: .4byte ov101_021D548C
	thumb_func_end ov101_021D53D4

	thumb_func_start ov101_021D53F8
ov101_021D53F8: @ 0x021D53F8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0x4f
	movs r1, #0x10
	bl FUN_02018184
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1]
	movs r0, #2
	str r4, [r1, #8]
	lsls r0, r0, #0xe
	str r0, [r1, #4]
	ldr r0, _021D5428 @ =ov101_021D54EC
	movs r2, #0x8f
	str r5, [r1, #0xc]
	bl FUN_0200D9E8
	movs r0, #0x5f
	lsls r0, r0, #4
	bl FUN_02005748
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D5428: .4byte ov101_021D54EC
	thumb_func_end ov101_021D53F8

	thumb_func_start ov101_021D542C
ov101_021D542C: @ 0x021D542C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r0, #0
	movs r0, #0x61
	ldr r1, [r5, #0xc]
	lsls r0, r0, #2
	adds r2, r1, r0
	movs r0, #2
	ldr r3, [r5, #4]
	lsls r0, r0, #0xa
	adds r0, r3, r0
	asrs r3, r0, #0xb
	lsrs r3, r3, #0x14
	adds r1, r2, #0
	adds r6, r2, #0
	adds r3, r0, r3
	str r0, [r5, #4]
	lsls r0, r3, #4
	lsrs r4, r0, #0x10
	adds r1, #0x24
	adds r6, #0x84
	cmp r4, #0x10
	bls _021D545C
	movs r4, #0x10
_021D545C:
	adds r0, r2, #4
	adds r2, r4, #0
	adds r3, r6, #0
	bl ov101_021D4F18
	ldr r0, [r5, #0xc]
	movs r1, #7
	movs r2, #1
	adds r3, r6, #0
	bl ov101_021D4F40
	cmp r4, #0x10
	beq _021D547E
	ldr r0, [r5, #0xc]
	ldr r0, [r0]
	cmp r0, #0x3f
	bne _021D548A
_021D547E:
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r7, #0
	bl FUN_0200DA58
_021D548A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D542C

	thumb_func_start ov101_021D548C
ov101_021D548C: @ 0x021D548C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r0, #0
	movs r0, #0x61
	ldr r1, [r5, #0xc]
	lsls r0, r0, #2
	adds r2, r1, r0
	movs r1, #2
	ldr r3, [r5, #4]
	lsls r1, r1, #0xa
	adds r1, r3, r1
	asrs r3, r1, #0xb
	lsrs r3, r3, #0x14
	adds r0, r2, #0
	adds r6, r2, #0
	adds r3, r1, r3
	str r1, [r5, #4]
	lsls r1, r3, #4
	lsrs r4, r1, #0x10
	adds r0, #0x24
	adds r6, #0x84
	cmp r4, #0x10
	bls _021D54BC
	movs r4, #0x10
_021D54BC:
	adds r1, r2, #4
	adds r2, r4, #0
	adds r3, r6, #0
	bl ov101_021D4F18
	ldr r0, [r5, #0xc]
	movs r1, #7
	movs r2, #1
	adds r3, r6, #0
	bl ov101_021D4F40
	cmp r4, #0x10
	beq _021D54DE
	ldr r0, [r5, #0xc]
	ldr r0, [r0]
	cmp r0, #0x3f
	bne _021D54EA
_021D54DE:
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r7, #0
	bl FUN_0200DA58
_021D54EA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D548C

	thumb_func_start ov101_021D54EC
ov101_021D54EC: @ 0x021D54EC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	ldr r1, [r5, #0xc]
	movs r2, #0x61
	lsls r2, r2, #2
	adds r7, r0, #0
	adds r0, r1, r2
	adds r6, r1, r2
	ldr r3, [r1]
	adds r0, #0x24
	adds r6, #0x84
	cmp r3, #0x3f
	bne _021D5514
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r7, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
_021D5514:
	ldr r3, [r5, #8]
	cmp r3, #0
	bne _021D5520
	adds r1, r1, r2
	adds r1, #0x44
	b _021D5524
_021D5520:
	adds r1, r1, r2
	adds r1, #0x64
_021D5524:
	ldr r2, [r5]
	cmp r2, #0
	beq _021D5530
	cmp r2, #1
	beq _021D5566
	pop {r3, r4, r5, r6, r7, pc}
_021D5530:
	movs r2, #1
	ldr r3, [r5, #4]
	lsls r2, r2, #0xc
	adds r3, r3, r2
	asrs r2, r3, #0xb
	lsrs r2, r2, #0x14
	adds r2, r3, r2
	asrs r2, r2, #0xc
	str r3, [r5, #4]
	cmp r2, #0x10
	ble _021D554E
	ldr r3, [r5]
	movs r2, #0x10
	adds r3, r3, #1
	str r3, [r5]
_021D554E:
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r3, r6, #0
	bl ov101_021D4F18
	ldr r0, [r5, #0xc]
	movs r1, #7
	movs r2, #1
	adds r3, r6, #0
	bl ov101_021D4F40
	pop {r3, r4, r5, r6, r7, pc}
_021D5566:
	movs r2, #1
	ldr r3, [r5, #4]
	lsls r2, r2, #0xa
	subs r2, r3, r2
	asrs r3, r2, #0xb
	lsrs r3, r3, #0x14
	adds r3, r2, r3
	str r2, [r5, #4]
	asrs r4, r3, #0xc
	bpl _021D557C
	movs r4, #0
_021D557C:
	lsls r2, r4, #0x10
	lsrs r2, r2, #0x10
	adds r3, r6, #0
	bl ov101_021D4F18
	ldr r0, [r5, #0xc]
	movs r1, #7
	movs r2, #1
	adds r3, r6, #0
	bl ov101_021D4F40
	cmp r4, #0
	bne _021D55A2
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r7, #0
	bl FUN_0200DA58
_021D55A2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D54EC

	thumb_func_start ov101_021D55A4
ov101_021D55A4: @ 0x021D55A4
	push {r4, lr}
	adds r4, r1, #0
	lsls r1, r4, #2
	adds r0, r0, r1
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #0x15
	adds r0, r2, r0
	blx FUN_020E1F6C
	cmp r1, #0
	bge _021D55BE
	adds r1, #0x15
_021D55BE:
	movs r0, #0x54
	adds r2, r4, #0
	muls r2, r0, r2
	ldr r0, _021D55D0 @ =0x021D9688
	lsls r1, r1, #2
	adds r0, r0, r2
	ldr r0, [r1, r0]
	pop {r4, pc}
	nop
_021D55D0: .4byte 0x021D9688
	thumb_func_end ov101_021D55A4

	thumb_func_start ov101_021D55D4
ov101_021D55D4: @ 0x021D55D4
	push {r4, r5, r6, lr}
	lsls r4, r1, #2
	adds r4, r0, r4
	adds r4, #0x90
	ldr r4, [r4]
	movs r3, #0
	lsrs r6, r4, #0x1f
	lsls r5, r4, #0xf
	subs r5, r5, r6
	movs r4, #0xf
	rors r5, r4
	adds r4, r6, r5
	beq _021D55F0
	subs r3, r3, #1
_021D55F0:
	adds r2, r2, r3
	bl ov101_021D55A4
	pop {r4, r5, r6, pc}
	thumb_func_end ov101_021D55D4

	thumb_func_start ov101_021D55F8
ov101_021D55F8: @ 0x021D55F8
	ldr r1, _021D5614 @ =0x021BF67C
	ldr r1, [r1, #0x48]
	ands r1, r0
	cmp r1, r0
	bne _021D5606
	movs r0, #2
	bx lr
_021D5606:
	tst r0, r1
	beq _021D560E
	movs r0, #1
	bx lr
_021D560E:
	movs r0, #0
	bx lr
	nop
_021D5614: .4byte 0x021BF67C
	thumb_func_end ov101_021D55F8

	thumb_func_start ov101_021D5618
ov101_021D5618: @ 0x021D5618
	movs r2, #3
	adds r1, r0, #0
	tst r1, r2
	beq _021D5624
	movs r0, #2
	bx lr
_021D5624:
	movs r1, #0xc
	tst r1, r0
	beq _021D562E
	adds r0, r2, #0
	bx lr
_021D562E:
	movs r1, #0x30
	tst r1, r0
	beq _021D5638
	movs r0, #4
	bx lr
_021D5638:
	movs r1, #0xc0
	adds r2, r0, #0
	tst r2, r1
	beq _021D5644
	movs r0, #5
	bx lr
_021D5644:
	adds r1, #0x40
	tst r1, r0
	beq _021D564E
	movs r0, #1
	bx lr
_021D564E:
	movs r1, #2
	lsls r1, r1, #8
	tst r0, r1
	beq _021D565A
	movs r0, #0
	bx lr
_021D565A:
	movs r0, #6
	bx lr
	.align 2, 0
	thumb_func_end ov101_021D5618

	thumb_func_start ov101_021D5660
ov101_021D5660: @ 0x021D5660
	push {r4, r5, r6, lr}
	movs r1, #0
	movs r2, #1
	adds r5, r0, #0
	bl ov101_021D55D4
	movs r1, #1
	adds r4, r0, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov101_021D55D4
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #2
	movs r2, #1
	bl ov101_021D55D4
	cmp r4, #3
	beq _021D5690
	cmp r4, r6
	bne _021D5694
	cmp r4, r0
	bne _021D5694
_021D5690:
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
_021D5694:
	movs r0, #6
	pop {r4, r5, r6, pc}
	thumb_func_end ov101_021D5660

	thumb_func_start ov101_021D5698
ov101_021D5698: @ 0x021D5698
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0
	movs r2, #2
	bl ov101_021D55D4
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	bl ov101_021D55D4
	movs r1, #2
	adds r6, r0, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov101_021D55D4
	cmp r4, #3
	beq _021D56C8
	cmp r4, r6
	bne _021D56CC
	cmp r4, r0
	bne _021D56CC
_021D56C8:
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
_021D56CC:
	movs r0, #6
	pop {r4, r5, r6, pc}
	thumb_func_end ov101_021D5698

	thumb_func_start ov101_021D56D0
ov101_021D56D0: @ 0x021D56D0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0
	movs r2, #3
	bl ov101_021D55D4
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #1
	movs r2, #3
	bl ov101_021D55D4
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #2
	movs r2, #3
	bl ov101_021D55D4
	cmp r4, #3
	beq _021D5700
	cmp r4, r6
	bne _021D5704
	cmp r4, r0
	bne _021D5704
_021D5700:
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
_021D5704:
	movs r0, #6
	pop {r4, r5, r6, pc}
	thumb_func_end ov101_021D56D0

	thumb_func_start ov101_021D5708
ov101_021D5708: @ 0x021D5708
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0
	movs r2, #1
	bl ov101_021D55D4
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	bl ov101_021D55D4
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #2
	movs r2, #3
	bl ov101_021D55D4
	cmp r4, #3
	beq _021D5738
	cmp r4, r6
	bne _021D573C
	cmp r4, r0
	bne _021D573C
_021D5738:
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
_021D573C:
	movs r0, #6
	pop {r4, r5, r6, pc}
	thumb_func_end ov101_021D5708

	thumb_func_start ov101_021D5740
ov101_021D5740: @ 0x021D5740
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0
	movs r2, #3
	bl ov101_021D55D4
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	bl ov101_021D55D4
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #2
	movs r2, #1
	bl ov101_021D55D4
	cmp r4, #3
	beq _021D5770
	cmp r4, r6
	bne _021D5774
	cmp r4, r0
	bne _021D5774
_021D5770:
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
_021D5774:
	movs r0, #6
	pop {r4, r5, r6, pc}
	thumb_func_end ov101_021D5740

	thumb_func_start ov101_021D5778
ov101_021D5778: @ 0x021D5778
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	movs r1, #0
	adds r5, r0, #0
	str r1, [r4]
	movs r6, #6
	bl ov101_021D5660
	cmp r0, #6
	beq _021D5796
	ldr r1, [r4]
	adds r6, r0, #0
	movs r0, #2
	orrs r0, r1
	str r0, [r4]
_021D5796:
	adds r0, r5, #0
	bl ov101_021D5698
	cmp r0, #6
	beq _021D57AA
	ldr r1, [r4]
	adds r6, r0, #0
	movs r0, #1
	orrs r0, r1
	str r0, [r4]
_021D57AA:
	adds r0, r5, #0
	bl ov101_021D56D0
	cmp r0, #6
	beq _021D57BE
	ldr r1, [r4]
	adds r6, r0, #0
	movs r0, #4
	orrs r0, r1
	str r0, [r4]
_021D57BE:
	adds r0, r5, #0
	bl ov101_021D5708
	cmp r0, #6
	beq _021D57D2
	ldr r1, [r4]
	adds r6, r0, #0
	movs r0, #8
	orrs r0, r1
	str r0, [r4]
_021D57D2:
	adds r0, r5, #0
	bl ov101_021D5740
	cmp r0, #6
	beq _021D57E6
	ldr r1, [r4]
	adds r6, r0, #0
	movs r0, #0x10
	orrs r0, r1
	str r0, [r4]
_021D57E6:
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov101_021D5778

	thumb_func_start ov101_021D57EC
ov101_021D57EC: @ 0x021D57EC
	push {r3, r4, r5, lr}
	adds r5, r2, #0
	movs r1, #0
	str r1, [r5]
	bl ov101_021D5698
	adds r4, r0, #0
	cmp r4, #6
	beq _021D580E
	cmp r4, #2
	beq _021D5806
	bl FUN_02022974
_021D5806:
	ldr r1, [r5]
	movs r0, #1
	orrs r0, r1
	str r0, [r5]
_021D580E:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov101_021D57EC

	thumb_func_start ov101_021D5814
ov101_021D5814: @ 0x021D5814
	push {r3, lr}
	movs r2, #3
	adds r1, r0, #0
	tst r1, r2
	beq _021D5822
	movs r0, #1
	pop {r3, pc}
_021D5822:
	movs r1, #0xc
	tst r1, r0
	beq _021D582C
	movs r0, #0
	pop {r3, pc}
_021D582C:
	movs r1, #0x30
	tst r1, r0
	beq _021D5836
	movs r0, #2
	pop {r3, pc}
_021D5836:
	movs r1, #0xc0
	tst r0, r1
	beq _021D5840
	adds r0, r2, #0
	pop {r3, pc}
_021D5840:
	bl FUN_02022974
	movs r0, #4
	pop {r3, pc}
	thumb_func_end ov101_021D5814

	thumb_func_start ov101_021D5848
ov101_021D5848: @ 0x021D5848
	movs r2, #0
	adds r1, r2, #0
_021D584C:
	adds r2, r2, #1
	str r1, [r0, #0x54]
	adds r0, r0, #4
	cmp r2, #3
	blt _021D584C
	bx lr
	thumb_func_end ov101_021D5848

	thumb_func_start ov101_021D5858
ov101_021D5858: @ 0x021D5858
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
	adds r1, r5, #0
_021D5862:
	ldr r0, [r1, #0x54]
	cmp r0, #0
	beq _021D5870
	adds r4, r4, #1
	adds r1, r1, #4
	cmp r4, #3
	blt _021D5862
_021D5870:
	cmp r4, #3
	blt _021D5878
	bl FUN_02022974
_021D5878:
	lsls r0, r4, #2
	adds r0, r5, r0
	str r6, [r0, #0x54]
	pop {r4, r5, r6, pc}
	thumb_func_end ov101_021D5858

	thumb_func_start ov101_021D5880
ov101_021D5880: @ 0x021D5880
	push {r4, r5, r6}
	sub sp, #0xc
	ldr r6, _021D58BC @ =0x021D866C
	adds r4, r0, #0
	ldm r6!, {r0, r1}
	add r5, sp, #0
	adds r3, r5, #0
	stm r5!, {r0, r1}
	ldr r0, [r6]
	movs r2, #0
	str r0, [r5]
_021D5896:
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _021D58AA
	ldr r0, [r3]
	cmp r1, r0
	beq _021D58AA
	add sp, #0xc
	movs r0, #0
	pop {r4, r5, r6}
	bx lr
_021D58AA:
	adds r2, r2, #1
	adds r4, r4, #4
	adds r3, r3, #4
	cmp r2, #3
	blt _021D5896
	movs r0, #1
	add sp, #0xc
	pop {r4, r5, r6}
	bx lr
	.align 2, 0
_021D58BC: .4byte 0x021D866C
	thumb_func_end ov101_021D5880

	thumb_func_start ov101_021D58C0
ov101_021D58C0: @ 0x021D58C0
	push {r3, r4}
	ldr r2, [r0, #0x34]
	movs r1, #0x18
	ldr r3, _021D58F0 @ =0x021D87A8
	muls r1, r2, r1
	movs r4, #0
	adds r3, r3, r1
_021D58CE:
	ldr r2, [r0, #0x54]
	cmp r2, #0
	beq _021D58E0
	ldr r1, [r3]
	cmp r2, r1
	beq _021D58E0
	movs r0, #0
	pop {r3, r4}
	bx lr
_021D58E0:
	adds r4, r4, #1
	adds r0, r0, #4
	adds r3, r3, #4
	cmp r4, #3
	blt _021D58CE
	movs r0, #1
	pop {r3, r4}
	bx lr
	.align 2, 0
_021D58F0: .4byte 0x021D87A8
	thumb_func_end ov101_021D58C0

	thumb_func_start ov101_021D58F4
ov101_021D58F4: @ 0x021D58F4
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #3
	str r0, [sp]
	movs r0, #2
	lsls r2, r1, #3
	ldr r3, _021D5930 @ =0x021D8740
	str r0, [sp, #4]
	movs r0, #6
	str r0, [sp, #8]
	adds r5, r3, r2
	ldr r2, [r3, r2]
	ldr r0, _021D5934 @ =0x0000043C
	ldr r3, [r5, #4]
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	ldr r0, [r4, r0]
	movs r1, #1
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_02019E2C
	ldr r0, _021D5934 @ =0x0000043C
	movs r1, #1
	ldr r0, [r4, r0]
	bl FUN_0201C3C0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_021D5930: .4byte 0x021D8740
_021D5934: .4byte 0x0000043C
	thumb_func_end ov101_021D58F4

	thumb_func_start ov101_021D5938
ov101_021D5938: @ 0x021D5938
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #3
	str r0, [sp]
	movs r0, #2
	lsls r2, r1, #3
	ldr r3, _021D5974 @ =0x021D8740
	str r0, [sp, #4]
	movs r0, #5
	str r0, [sp, #8]
	adds r5, r3, r2
	ldr r2, [r3, r2]
	ldr r0, _021D5978 @ =0x0000043C
	ldr r3, [r5, #4]
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	ldr r0, [r4, r0]
	movs r1, #1
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_02019E2C
	ldr r0, _021D5978 @ =0x0000043C
	movs r1, #1
	ldr r0, [r4, r0]
	bl FUN_0201C3C0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_021D5974: .4byte 0x021D8740
_021D5978: .4byte 0x0000043C
	thumb_func_end ov101_021D5938

	thumb_func_start ov101_021D597C
ov101_021D597C: @ 0x021D597C
	push {r3, r4, r5, lr}
	ldr r4, [r0, #0x44]
	ldr r5, [r0, #0x48]
	cmp r4, #6
	bne _021D598A
	bl FUN_02022974
_021D598A:
	ldr r3, _021D59A8 @ =0x021D9550
	lsls r2, r4, #2
	movs r1, #0
	ldr r3, [r3, r2]
	adds r0, r1, #0
	movs r2, #1
_021D5996:
	adds r4, r5, #0
	tst r4, r2
	beq _021D599E
	adds r0, r0, r3
_021D599E:
	adds r1, r1, #1
	lsrs r5, r5, #1
	cmp r1, #5
	blt _021D5996
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D59A8: .4byte 0x021D9550
	thumb_func_end ov101_021D597C

	thumb_func_start ov101_021D59AC
ov101_021D59AC: @ 0x021D59AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r7, r0, #0
	movs r4, #0
	add r0, sp, #8
	str r4, [r0]
	str r4, [r0, #4]
	movs r6, #0x11
	lsls r6, r6, #0xe
	str r4, [r0, #8]
	str r7, [sp, #0x14]
	cmp r4, #3
	bge _021D59FE
_021D59C6:
	movs r5, #0
_021D59C8:
	str r6, [sp, #8]
	str r4, [sp, #0x1c]
	str r5, [sp, #0x18]
	add r0, sp, #0x14
	str r0, [sp]
	movs r0, #0x8b
	str r0, [sp, #4]
	ldr r0, _021D5A04 @ =0x0000044C
	ldr r1, _021D5A08 @ =0x021D91DC
	ldr r0, [r7, r0]
	add r2, sp, #8
	movs r3, #0
	bl FUN_02071330
	movs r0, #2
	lsls r0, r0, #0x10
	adds r5, r5, r0
	movs r0, #0xa
	lsls r0, r0, #0x10
	cmp r5, r0
	blt _021D59C8
	movs r0, #0xf
	lsls r0, r0, #0xe
	adds r4, r4, #1
	adds r6, r6, r0
	cmp r4, #3
	blt _021D59C6
_021D59FE:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D5A04: .4byte 0x0000044C
_021D5A08: .4byte 0x021D91DC
	thumb_func_end ov101_021D59AC

	thumb_func_start ov101_021D5A0C
ov101_021D5A0C: @ 0x021D5A0C
	push {r3, r4, r5, lr}
	sub sp, #0x28
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_020715BC
	adds r3, r0, #0
	ldm r3!, {r0, r1}
	adds r2, r4, #0
	stm r2!, {r0, r1}
	ldr r0, [r3]
	add r1, sp, #0x1c
	str r0, [r2]
	adds r0, r5, #0
	bl FUN_020715E4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #3
	str r0, [sp, #0x14]
	movs r0, #2
	str r0, [sp, #0x18]
	movs r0, #0x45
	ldr r1, [r4]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	adds r1, r4, #0
	adds r1, #0xc
	add r2, sp, #0x1c
	movs r3, #1
	bl ov101_021D84A4
	ldr r0, [r4, #0x10]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #1
	add sp, #0x28
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov101_021D5A0C

	thumb_func_start ov101_021D5A64
ov101_021D5A64: @ 0x021D5A64
	ldr r3, _021D5A6C @ =ov101_021D8544
	adds r1, #0xc
	adds r0, r1, #0
	bx r3
	.align 2, 0
_021D5A6C: .4byte ov101_021D8544
	thumb_func_end ov101_021D5A64

	thumb_func_start ov101_021D5A70
ov101_021D5A70: @ 0x021D5A70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r1, #0
	ldr r7, [r5, #8]
	str r0, [sp]
	ldr r0, [r5]
	lsls r6, r7, #2
	adds r0, r0, r6
	adds r0, #0x90
	ldr r1, [r5, #4]
	ldr r0, [r0]
	adds r0, r1, r0
	movs r1, #0xa
	lsls r1, r1, #0x10
	blx FUN_020E1F6C
	adds r4, r1, #0
	ldr r0, [sp]
	add r1, sp, #4
	bl FUN_020715E4
	ldr r1, [r5]
	movs r0, #1
	adds r1, r1, r6
	adds r1, #0x9c
	lsls r0, r0, #0x10
	ldr r1, [r1]
	adds r0, r4, r0
	adds r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [r5, #0x10]
	add r1, sp, #4
	bl FUN_02021C50
	asrs r2, r4, #0x10
	lsrs r2, r2, #0xf
	adds r2, r4, r2
	ldr r0, [r5]
	adds r1, r7, #0
	asrs r2, r2, #0x11
	bl ov101_021D55A4
	lsls r1, r0, #2
	ldr r0, _021D5AE8 @ =0x021D927C
	ldr r4, [r0, r1]
	ldr r0, [r5, #0x10]
	bl FUN_02021E24
	cmp r4, r0
	beq _021D5AE4
	ldr r0, [r5, #0x10]
	adds r1, r4, #0
	bl FUN_02021D6C
	ldr r0, [r5, #0x10]
	movs r1, #0
	bl FUN_02021E50
_021D5AE4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D5AE8: .4byte 0x021D927C
	thumb_func_end ov101_021D5A70

	thumb_func_start ov101_021D5AEC
ov101_021D5AEC: @ 0x021D5AEC
	bx lr
	.align 2, 0
	thumb_func_end ov101_021D5AEC

	thumb_func_start ov101_021D5AF0
ov101_021D5AF0: @ 0x021D5AF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r3, _021D5B34 @ =0x021D8ECC
	adds r5, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #8
	adds r6, r2, #0
	stm r2!, {r0, r1}
	ldr r0, [r3]
	movs r4, #1
	str r0, [r2]
	movs r7, #0x8d
_021D5B08:
	str r5, [sp]
	ldr r0, _021D5B38 @ =0x0000044C
	str r7, [sp, #4]
	ldr r0, [r5, r0]
	ldr r1, _021D5B3C @ =0x021D91F0
	adds r2, r6, #0
	adds r3, r4, #0
	bl FUN_02071330
	movs r0, #0xa
	muls r4, r0, r4
	movs r0, #2
	ldr r1, [sp, #8]
	lsls r0, r0, #0xe
	subs r0, r1, r0
	str r0, [sp, #8]
	ldr r0, _021D5B40 @ =0x000186A0
	cmp r4, r0
	blo _021D5B08
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D5B34: .4byte 0x021D8ECC
_021D5B38: .4byte 0x0000044C
_021D5B3C: .4byte 0x021D91F0
_021D5B40: .4byte 0x000186A0
	thumb_func_end ov101_021D5AF0

	thumb_func_start ov101_021D5B44
ov101_021D5B44: @ 0x021D5B44
	push {r3, r4, r5, lr}
	sub sp, #0x28
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_020715B4
	movs r1, #0xa
	str r0, [r4, #4]
	muls r1, r0, r1
	str r1, [r4, #8]
	adds r0, r5, #0
	bl FUN_020715BC
	str r0, [r4]
	adds r0, r5, #0
	add r1, sp, #0x1c
	bl FUN_020715E4
	movs r0, #0
	str r0, [sp]
	movs r3, #1
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	movs r0, #0x45
	ldr r1, [r4]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	adds r1, r4, #0
	adds r1, #0xc
	add r2, sp, #0x1c
	bl ov101_021D84A4
	ldr r0, [r4, #0x10]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #1
	add sp, #0x28
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov101_021D5B44

	thumb_func_start ov101_021D5B9C
ov101_021D5B9C: @ 0x021D5B9C
	ldr r3, _021D5BA4 @ =ov101_021D8544
	adds r1, #0xc
	adds r0, r1, #0
	bx r3
	.align 2, 0
_021D5BA4: .4byte ov101_021D8544
	thumb_func_end ov101_021D5B9C

	thumb_func_start ov101_021D5BA8
ov101_021D5BA8: @ 0x021D5BA8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r1, #0
	adds r6, r0, #0
	ldr r0, [r5]
	ldr r4, [r0, #0x60]
	ldr r0, [r5, #4]
	cmp r0, #1
	bls _021D5BCA
	cmp r4, r0
	bhs _021D5BCA
	ldr r0, [r5, #0x10]
	movs r1, #0
	bl FUN_02021CAC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021D5BCA:
	ldr r0, [r5, #0x10]
	movs r1, #1
	bl FUN_02021CAC
	ldr r1, [r5, #8]
	adds r0, r4, #0
	blx FUN_020E2178
	adds r4, r1, #0
	ldr r1, [r5, #4]
	adds r0, r4, #0
	blx FUN_020E2178
	adds r4, r0, #0
	ldr r0, [r5, #0x10]
	bl FUN_02021E24
	cmp r4, r0
	beq _021D5BFE
	ldr r0, [r5, #0x10]
	adds r1, r4, #0
	bl FUN_02021D6C
	ldr r0, [r5, #0x10]
	bl FUN_02021DE0
_021D5BFE:
	adds r0, r6, #0
	add r1, sp, #0
	bl FUN_020715E4
	ldr r0, _021D5C20 @ =0x021D937C
	lsls r1, r4, #2
	ldr r0, [r0, r1]
	ldr r2, [sp]
	add r1, sp, #0
	adds r0, r2, r0
	str r0, [sp]
	ldr r0, [r5, #0x10]
	bl FUN_02021C50
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021D5C20: .4byte 0x021D937C
	thumb_func_end ov101_021D5BA8

	thumb_func_start ov101_021D5C24
ov101_021D5C24: @ 0x021D5C24
	bx lr
	.align 2, 0
	thumb_func_end ov101_021D5C24

	thumb_func_start ov101_021D5C28
ov101_021D5C28: @ 0x021D5C28
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r3, _021D5C6C @ =0x021D8F98
	adds r5, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #8
	adds r6, r2, #0
	stm r2!, {r0, r1}
	ldr r0, [r3]
	movs r4, #1
	str r0, [r2]
	movs r7, #0x8d
_021D5C40:
	str r5, [sp]
	ldr r0, _021D5C70 @ =0x0000044C
	str r7, [sp, #4]
	ldr r0, [r5, r0]
	ldr r1, _021D5C74 @ =0x021D9204
	adds r2, r6, #0
	adds r3, r4, #0
	bl FUN_02071330
	movs r0, #0xa
	muls r4, r0, r4
	movs r0, #2
	ldr r1, [sp, #8]
	lsls r0, r0, #0xe
	subs r0, r1, r0
	str r0, [sp, #8]
	ldr r0, _021D5C78 @ =0x000186A0
	cmp r4, r0
	blo _021D5C40
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D5C6C: .4byte 0x021D8F98
_021D5C70: .4byte 0x0000044C
_021D5C74: .4byte 0x021D9204
_021D5C78: .4byte 0x000186A0
	thumb_func_end ov101_021D5C28

	thumb_func_start ov101_021D5C7C
ov101_021D5C7C: @ 0x021D5C7C
	push {r3, r4, r5, lr}
	sub sp, #0x28
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_020715B4
	movs r1, #0xa
	str r0, [r4, #4]
	muls r1, r0, r1
	str r1, [r4, #8]
	adds r0, r5, #0
	bl FUN_020715BC
	str r0, [r4]
	adds r0, r5, #0
	add r1, sp, #0x1c
	bl FUN_020715E4
	movs r0, #0
	str r0, [sp]
	movs r3, #1
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	movs r0, #0x45
	ldr r1, [r4]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	adds r1, r4, #0
	adds r1, #0xc
	add r2, sp, #0x1c
	bl ov101_021D84A4
	ldr r0, [r4, #0x10]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #1
	add sp, #0x28
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov101_021D5C7C

	thumb_func_start ov101_021D5CD4
ov101_021D5CD4: @ 0x021D5CD4
	ldr r3, _021D5CDC @ =ov101_021D8544
	adds r1, #0xc
	adds r0, r1, #0
	bx r3
	.align 2, 0
_021D5CDC: .4byte ov101_021D8544
	thumb_func_end ov101_021D5CD4

	thumb_func_start ov101_021D5CE0
ov101_021D5CE0: @ 0x021D5CE0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r1, #0
	adds r6, r0, #0
	ldr r0, [r5]
	ldr r4, [r0, #0x64]
	ldr r0, [r5, #4]
	cmp r4, r0
	ldr r0, [r5, #0x10]
	bhs _021D5CFE
	movs r1, #0
	bl FUN_02021CAC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021D5CFE:
	movs r1, #1
	bl FUN_02021CAC
	ldr r1, [r5, #8]
	adds r0, r4, #0
	blx FUN_020E2178
	adds r4, r1, #0
	ldr r1, [r5, #4]
	adds r0, r4, #0
	blx FUN_020E2178
	adds r4, r0, #0
	ldr r0, [r5, #0x10]
	bl FUN_02021E24
	cmp r4, r0
	beq _021D5D30
	ldr r0, [r5, #0x10]
	adds r1, r4, #0
	bl FUN_02021D6C
	ldr r0, [r5, #0x10]
	bl FUN_02021DE0
_021D5D30:
	adds r0, r6, #0
	add r1, sp, #0
	bl FUN_020715E4
	ldr r0, _021D5D50 @ =0x021D9354
	lsls r1, r4, #2
	ldr r0, [r0, r1]
	ldr r2, [sp]
	add r1, sp, #0
	adds r0, r2, r0
	str r0, [sp]
	ldr r0, [r5, #0x10]
	bl FUN_02021C50
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D5D50: .4byte 0x021D9354
	thumb_func_end ov101_021D5CE0

	thumb_func_start ov101_021D5D54
ov101_021D5D54: @ 0x021D5D54
	bx lr
	.align 2, 0
	thumb_func_end ov101_021D5D54

	thumb_func_start ov101_021D5D58
ov101_021D5D58: @ 0x021D5D58
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	ldr r6, _021D5D84 @ =0x021D90AC
	add r5, sp, #8
	adds r4, r0, #0
	adds r3, r1, #0
	ldm r6!, {r0, r1}
	adds r2, r5, #0
	stm r5!, {r0, r1}
	ldr r0, [r6]
	ldr r1, _021D5D88 @ =0x021D9218
	str r0, [r5]
	str r4, [sp]
	movs r0, #0x86
	str r0, [sp, #4]
	ldr r0, _021D5D8C @ =0x0000044C
	ldr r0, [r4, r0]
	bl FUN_02071330
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021D5D84: .4byte 0x021D90AC
_021D5D88: .4byte 0x021D9218
_021D5D8C: .4byte 0x0000044C
	thumb_func_end ov101_021D5D58

	thumb_func_start ov101_021D5D90
ov101_021D5D90: @ 0x021D5D90
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_02071598
	str r4, [r0]
	movs r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0x30]
	pop {r4, pc}
	thumb_func_end ov101_021D5D90

	thumb_func_start ov101_021D5DA4
ov101_021D5DA4: @ 0x021D5DA4
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_02071598
	cmp r4, #1
	ldr r0, [r0, #0x40]
	bne _021D5DBA
	movs r1, #0
	bl FUN_02021CAC
	pop {r4, pc}
_021D5DBA:
	movs r1, #1
	bl FUN_02021CAC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D5DA4

	thumb_func_start ov101_021D5DC4
ov101_021D5DC4: @ 0x021D5DC4
	push {r3, lr}
	bl FUN_02071598
	ldr r0, [r0, #8]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov101_021D5DC4

	thumb_func_start ov101_021D5DD0
ov101_021D5DD0: @ 0x021D5DD0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_020715BC
	str r0, [r4, #0x38]
	adds r0, r5, #0
	bl FUN_020715B4
	str r0, [r4, #0x10]
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov101_021D5DD0

	thumb_func_start ov101_021D5DE8
ov101_021D5DE8: @ 0x021D5DE8
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _021D5E00
	ldr r0, [r4, #0x38]
	bl ov101_021D63A4
	adds r4, #0x3c
	adds r0, r4, #0
	bl ov101_021D8544
_021D5E00:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D5DE8

	thumb_func_start ov101_021D5E04
ov101_021D5E04: @ 0x021D5E04
	push {r3, r4, r5, lr}
	ldr r4, _021D5E20 @ =0x021D9294
	adds r5, r1, #0
_021D5E0A:
	ldr r1, [r5]
	adds r0, r5, #0
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	ldr r1, [r5, #4]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	blx r1
	cmp r0, #1
	beq _021D5E0A
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D5E20: .4byte 0x021D9294
	thumb_func_end ov101_021D5E04

	thumb_func_start ov101_021D5E24
ov101_021D5E24: @ 0x021D5E24
	bx lr
	.align 2, 0
	thumb_func_end ov101_021D5E24

	thumb_func_start ov101_021D5E28
ov101_021D5E28: @ 0x021D5E28
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x10]
	bl ov101_021D630C
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D5E28

	thumb_func_start ov101_021D5E3C
ov101_021D5E3C: @ 0x021D5E3C
	ldr r1, [r0, #0xc]
	cmp r1, #2
	bne _021D5E48
	ldr r1, [r0, #4]
	adds r1, r1, #1
	str r1, [r0, #4]
_021D5E48:
	movs r0, #0
	bx lr
	thumb_func_end ov101_021D5E3C

	thumb_func_start ov101_021D5E4C
ov101_021D5E4C: @ 0x021D5E4C
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r5, _021D5E7C @ =0x021D90C4
	adds r4, r0, #0
	ldm r5!, {r0, r1}
	add r3, sp, #0
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	adds r1, r4, #0
	str r0, [r3]
	ldr r0, [r4, #0x38]
	adds r1, #0x3c
	bl ov101_021D6410
	movs r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D5E7C: .4byte 0x021D90C4
	thumb_func_end ov101_021D5E4C

	thumb_func_start ov101_021D5E80
ov101_021D5E80: @ 0x021D5E80
	movs r0, #0
	bx lr
	thumb_func_end ov101_021D5E80

	thumb_func_start ov101_021D5E84
ov101_021D5E84: @ 0x021D5E84
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021D5EE0 @ =0x021D9088
	adds r4, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0xc
	stm r2!, {r0, r1}
	ldr r0, [r3]
	ldr r5, _021D5EE4 @ =0x021D8FB0
	str r0, [r2]
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	adds r1, r2, #0
	str r0, [r3]
	ldr r0, [r4, #0x40]
	bl FUN_02021C70
	ldr r0, [r4, #0x40]
	movs r1, #0
	bl FUN_02021C94
	ldr r0, [r4, #0x40]
	add r1, sp, #0xc
	bl FUN_02021C50
	ldr r0, [r4, #0x40]
	movs r1, #0
	bl FUN_02021D6C
	ldr r0, [r4, #0x40]
	movs r1, #0
	bl FUN_02021E50
	ldr r0, _021D5EE8 @ =0x00000624
	bl FUN_02005748
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021D5EE0: .4byte 0x021D9088
_021D5EE4: .4byte 0x021D8FB0
_021D5EE8: .4byte 0x00000624
	thumb_func_end ov101_021D5E84

	thumb_func_start ov101_021D5EEC
ov101_021D5EEC: @ 0x021D5EEC
	push {r4, lr}
	sub sp, #0x18
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	add r1, sp, #0xc
	bl ov101_021D8560
	ldr r0, [r4, #0x40]
	add r1, sp, #0
	bl ov101_021D8574
	movs r0, #1
	ldr r1, [sp, #0x10]
	lsls r0, r0, #0xe
	subs r1, r1, r0
	str r1, [sp, #0x10]
	ldr r2, [sp]
	ldr r1, _021D5F50 @ =0x000001C7
	subs r2, r2, r1
	str r2, [sp]
	ldr r2, [sp, #4]
	subs r1, r2, r1
	str r1, [sp, #4]
	ldr r1, [r4, #0x30]
	adds r1, r1, #1
	str r1, [r4, #0x30]
	cmp r1, #9
	blo _021D5F3A
	movs r1, #0x16
	lsrs r0, r0, #2
	lsls r1, r1, #0x10
	str r1, [sp, #0x10]
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [r4, #0x30]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
_021D5F3A:
	ldr r0, [r4, #0x40]
	add r1, sp, #0xc
	bl FUN_02021C50
	ldr r0, [r4, #0x40]
	add r1, sp, #0
	bl FUN_02021C70
	movs r0, #0
	add sp, #0x18
	pop {r4, pc}
	.align 2, 0
_021D5F50: .4byte 0x000001C7
	thumb_func_end ov101_021D5EEC

	thumb_func_start ov101_021D5F54
ov101_021D5F54: @ 0x021D5F54
	ldr r1, [r0, #0x30]
	adds r1, r1, #1
	str r1, [r0, #0x30]
	cmp r1, #3
	blo _021D5F6C
	movs r1, #0
	str r1, [r0, #0x30]
	movs r1, #1
	str r1, [r0, #8]
	ldr r1, [r0, #4]
	adds r1, r1, #1
	str r1, [r0, #4]
_021D5F6C:
	movs r0, #0
	bx lr
	thumb_func_end ov101_021D5F54

	thumb_func_start ov101_021D5F70
ov101_021D5F70: @ 0x021D5F70
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	movs r1, #1
	bl FUN_02021D6C
	ldr r0, [r4, #0x40]
	bl FUN_02021DE0
	ldr r0, [r4, #0x40]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0x6d
	lsls r0, r0, #4
	bl FUN_02005748
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D5F70

	thumb_func_start ov101_021D5F9C
ov101_021D5F9C: @ 0x021D5F9C
	ldr r1, [r0, #0x30]
	adds r1, r1, #1
	str r1, [r0, #0x30]
	cmp r1, #4
	blo _021D5FB4
	movs r1, #0
	str r1, [r0, #0x30]
	movs r1, #1
	str r1, [r0, #8]
	ldr r1, [r0, #4]
	adds r1, r1, #1
	str r1, [r0, #4]
_021D5FB4:
	movs r0, #0
	bx lr
	thumb_func_end ov101_021D5F9C

	thumb_func_start ov101_021D5FB8
ov101_021D5FB8: @ 0x021D5FB8
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021D6018 @ =0x021D8FF8
	adds r4, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0xc
	stm r2!, {r0, r1}
	ldr r0, [r3]
	ldr r5, _021D601C @ =0x021D8F14
	str r0, [r2]
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	adds r5, r2, #0
	str r0, [r3]
	adds r3, r4, #0
	ldm r5!, {r0, r1}
	adds r3, #0x14
	stm r3!, {r0, r1}
	ldr r0, [r5]
	adds r1, r2, #0
	str r0, [r3]
	ldr r0, [r4, #0x40]
	bl FUN_02021C50
	ldr r0, [r4, #0x40]
	add r1, sp, #0xc
	bl FUN_02021C70
	ldr r0, [r4, #0x40]
	movs r1, #0
	bl FUN_02021C94
	ldr r0, [r4, #0x40]
	movs r1, #3
	bl FUN_02021D6C
	ldr r0, [r4, #0x40]
	bl FUN_02021DE0
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #1
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D6018: .4byte 0x021D8FF8
_021D601C: .4byte 0x021D8F14
	thumb_func_end ov101_021D5FB8

	thumb_func_start ov101_021D6020
ov101_021D6020: @ 0x021D6020
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	ldr r5, _021D6080 @ =0x021D92B0
	adds r4, r0, #0
	add r2, sp, #0
	ldm r5!, {r0, r1}
	adds r3, r2, #0
	stm r2!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r5!, {r0, r1}
	adds r6, r4, #0
	adds r6, #0x14
	stm r2!, {r0, r1}
	add r5, sp, #0x20
	ldm r6!, {r0, r1}
	adds r2, r5, #0
	stm r5!, {r0, r1}
	ldr r0, [r6]
	str r0, [r5]
	ldr r1, [r4, #0x30]
	ldr r0, [sp, #0x24]
	lsrs r1, r1, #1
	lsls r1, r1, #2
	ldr r1, [r3, r1]
	adds r0, r0, r1
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x40]
	adds r1, r2, #0
	bl FUN_02021C50
	ldr r0, [r4, #0x30]
	adds r0, r0, #1
	str r0, [r4, #0x30]
	cmp r0, #0x10
	blo _021D607A
	movs r0, #0
	str r0, [r4, #0x30]
	movs r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
_021D607A:
	movs r0, #0
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D6080: .4byte 0x021D92B0
	thumb_func_end ov101_021D6020

	thumb_func_start ov101_021D6084
ov101_021D6084: @ 0x021D6084
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021D60E4 @ =0x021D8EE4
	adds r4, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0xc
	stm r2!, {r0, r1}
	ldr r0, [r3]
	ldr r5, _021D60E8 @ =0x021D8FD4
	str r0, [r2]
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	adds r5, r2, #0
	str r0, [r3]
	adds r3, r4, #0
	ldm r5!, {r0, r1}
	adds r3, #0x14
	stm r3!, {r0, r1}
	ldr r0, [r5]
	adds r1, r2, #0
	str r0, [r3]
	ldr r0, [r4, #0x40]
	bl FUN_02021C50
	ldr r0, [r4, #0x40]
	add r1, sp, #0xc
	bl FUN_02021C70
	ldr r0, [r4, #0x40]
	movs r1, #0
	bl FUN_02021C94
	ldr r0, [r4, #0x40]
	movs r1, #4
	bl FUN_02021D6C
	ldr r0, [r4, #0x40]
	bl FUN_02021DE0
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #1
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D60E4: .4byte 0x021D8EE4
_021D60E8: .4byte 0x021D8FD4
	thumb_func_end ov101_021D6084

	thumb_func_start ov101_021D60EC
ov101_021D60EC: @ 0x021D60EC
	push {r4, lr}
	sub sp, #0x18
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	add r1, sp, #0xc
	bl ov101_021D8560
	ldr r0, [r4, #0x40]
	add r1, sp, #0
	bl ov101_021D8574
	movs r0, #1
	ldr r1, [sp, #0x10]
	lsls r0, r0, #0xe
	adds r1, r1, r0
	str r1, [sp, #0x10]
	ldr r2, [sp]
	ldr r1, _021D6154 @ =0x000001C7
	adds r2, r2, r1
	str r2, [sp]
	ldr r2, [sp, #4]
	adds r1, r2, r1
	str r1, [sp, #4]
	ldr r1, [r4, #0x30]
	adds r1, r1, #1
	str r1, [r4, #0x30]
	cmp r1, #0xa
	blo _021D613E
	movs r1, #7
	lsrs r0, r0, #2
	lsls r1, r1, #0x12
	str r1, [sp, #0x10]
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [r4, #0x30]
	movs r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
_021D613E:
	ldr r0, [r4, #0x40]
	add r1, sp, #0xc
	bl FUN_02021C50
	ldr r0, [r4, #0x40]
	add r1, sp, #0
	bl FUN_02021C70
	movs r0, #0
	add sp, #0x18
	pop {r4, pc}
	.align 2, 0
_021D6154: .4byte 0x000001C7
	thumb_func_end ov101_021D60EC

	thumb_func_start ov101_021D6158
ov101_021D6158: @ 0x021D6158
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r3, _021D61D8 @ =0x021D8F50
	adds r4, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0x18
	stm r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021D61DC @ =0x021D8EC0
	str r0, [r2]
	add r2, sp, #0xc
	ldm r3!, {r0, r1}
	adds r6, r2, #0
	stm r2!, {r0, r1}
	ldr r0, [r3]
	add r5, sp, #0
	movs r7, #0
	str r7, [r5]
	str r0, [r2]
	adds r3, r6, #0
	str r7, [r5, #4]
	adds r2, r4, #0
	ldm r3!, {r0, r1}
	str r7, [r5, #8]
	adds r2, #0x14
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	adds r2, r4, #0
	ldm r5!, {r0, r1}
	adds r2, #0x20
	stm r2!, {r0, r1}
	ldr r0, [r5]
	adds r1, r6, #0
	str r0, [r2]
	str r7, [r4, #0x30]
	str r7, [r4, #0x34]
	str r7, [r4, #0x2c]
	movs r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #0x40]
	bl FUN_02021C50
	ldr r0, [r4, #0x40]
	add r1, sp, #0x18
	bl FUN_02021C70
	ldr r0, [r4, #0x40]
	adds r1, r7, #0
	bl FUN_02021C94
	ldr r0, [r4, #0x40]
	movs r1, #2
	bl FUN_02021D6C
	ldr r0, [r4, #0x40]
	bl FUN_02021DE0
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D61D8: .4byte 0x021D8F50
_021D61DC: .4byte 0x021D8EC0
	thumb_func_end ov101_021D6158

	thumb_func_start ov101_021D61E0
ov101_021D61E0: @ 0x021D61E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	ldr r3, _021D627C @ =0x021D92D0
	adds r4, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0x40
	adds r6, r2, #0
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r3, _021D6280 @ =0x021D92F0
	add r2, sp, #0x20
	ldm r3!, {r0, r1}
	adds r5, r2, #0
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r3, _021D6284 @ =0x021D9310
	add r2, sp, #0
	adds r7, r2, #0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r1, [r4, #0x34]
	ldr r0, [r4, #0x2c]
	lsls r1, r1, #2
	ldr r1, [r6, r1]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x14]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r0, r1, r0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x30]
	adds r2, r0, #1
	str r2, [r4, #0x30]
	ldr r1, [r4, #0x34]
	lsls r0, r1, #2
	ldr r0, [r7, r0]
	cmp r2, r0
	blo _021D6260
	adds r0, r1, #1
	str r0, [r4, #0x34]
	cmp r0, #8
	blt _021D625C
	movs r0, #0
	str r0, [r4, #0x34]
_021D625C:
	movs r0, #0
	str r0, [r4, #0x30]
_021D6260:
	adds r1, r4, #0
	ldr r0, [r4, #0x40]
	adds r1, #0x14
	bl FUN_02021C50
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0x40]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl FUN_02021C94
	movs r0, #0
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D627C: .4byte 0x021D92D0
_021D6280: .4byte 0x021D92F0
_021D6284: .4byte 0x021D9310
	thumb_func_end ov101_021D61E0

	thumb_func_start ov101_021D6288
ov101_021D6288: @ 0x021D6288
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	ldr r3, _021D6304 @ =0x021D8E9C
	adds r4, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0x18
	stm r2!, {r0, r1}
	ldr r0, [r3]
	ldr r5, _021D6308 @ =0x021D8EFC
	str r0, [r2]
	add r2, sp, #0xc
	adds r3, r2, #0
	ldm r5!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r5]
	adds r5, r4, #0
	str r0, [r2]
	add r2, sp, #0
	movs r0, #0
	str r0, [r2]
	str r0, [r2, #4]
	adds r6, r3, #0
	str r0, [r2, #8]
	ldm r6!, {r0, r1}
	adds r5, #0x14
	stm r5!, {r0, r1}
	ldr r0, [r6]
	str r0, [r5]
	adds r5, r4, #0
	ldm r2!, {r0, r1}
	adds r5, #0x20
	stm r5!, {r0, r1}
	ldr r0, [r2]
	adds r1, r3, #0
	str r0, [r5]
	movs r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #0x40]
	bl FUN_02021C50
	ldr r0, [r4, #0x40]
	add r1, sp, #0x18
	bl FUN_02021C70
	ldr r0, [r4, #0x40]
	movs r1, #0
	bl FUN_02021C94
	ldr r0, [r4, #0x40]
	movs r1, #2
	bl FUN_02021D6C
	ldr r0, [r4, #0x40]
	bl FUN_02021DE0
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	movs r0, #1
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	nop
_021D6304: .4byte 0x021D8E9C
_021D6308: .4byte 0x021D8EFC
	thumb_func_end ov101_021D6288

	thumb_func_start ov101_021D630C
ov101_021D630C: @ 0x021D630C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r4, [r6, #0x38]
	cmp r5, #5
	blt _021D631C
	bl FUN_02022974
_021D631C:
	movs r1, #2
	movs r2, #0x45
	ldr r7, _021D6394 @ =0x021D93D4
	lsls r3, r5, #4
	str r1, [sp]
	lsls r2, r2, #4
	ldr r0, [r4, r2]
	subs r2, #0x18
	adds r5, r7, r3
	ldr r2, [r4, r2]
	ldr r3, [r7, r3]
	bl ov101_021D80E4
	movs r1, #2
	movs r2, #0x45
	str r1, [sp]
	lsls r2, r2, #4
	ldr r0, [r4, r2]
	subs r2, #0x18
	ldr r2, [r4, r2]
	ldr r3, [r5, #4]
	bl ov101_021D81B4
	movs r1, #0x45
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	subs r1, #0x18
	ldr r1, [r4, r1]
	ldr r2, [r5, #8]
	movs r3, #2
	bl ov101_021D8288
	movs r1, #0x45
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	subs r1, #0x18
	ldr r1, [r4, r1]
	ldr r2, [r5, #0xc]
	movs r3, #2
	bl ov101_021D82F0
	ldr r0, _021D6398 @ =ov101_021D63BC
	ldr r2, _021D639C @ =0x00000101
	adds r1, r6, #0
	bl FUN_0200DA04
	cmp r0, #0
	bne _021D6380
	bl FUN_02022974
_021D6380:
	ldr r0, _021D63A0 @ =ov101_021D63E8
	ldr r2, _021D639C @ =0x00000101
	adds r1, r6, #0
	bl FUN_0200DA3C
	cmp r0, #0
	bne _021D6392
	bl FUN_02022974
_021D6392:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D6394: .4byte 0x021D93D4
_021D6398: .4byte ov101_021D63BC
_021D639C: .4byte 0x00000101
_021D63A0: .4byte ov101_021D63E8
	thumb_func_end ov101_021D630C

	thumb_func_start ov101_021D63A4
ov101_021D63A4: @ 0x021D63A4
	push {r3, lr}
	movs r1, #2
	movs r2, #0x45
	str r1, [sp]
	lsls r2, r2, #4
	ldr r0, [r0, r2]
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov101_021D8358
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov101_021D63A4

	thumb_func_start ov101_021D63BC
ov101_021D63BC: @ 0x021D63BC
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r0, #0
	movs r0, #0x45
	ldr r4, [r5, #0x38]
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #2
	bl ov101_021D814C
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #2
	bl ov101_021D8220
	movs r0, #1
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl FUN_0200DA58
	pop {r4, r5, r6, pc}
	thumb_func_end ov101_021D63BC

	thumb_func_start ov101_021D63E8
ov101_021D63E8: @ 0x021D63E8
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x38]
	cmp r0, #1
	bne _021D640C
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #2
	bl ov101_021D8254
	movs r0, #2
	str r0, [r4, #0xc]
	adds r0, r5, #0
	bl FUN_0200DA58
_021D640C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov101_021D63E8

	thumb_func_start ov101_021D6410
ov101_021D6410: @ 0x021D6410
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	adds r5, r0, #0
	adds r4, r1, #0
	add r1, sp, #0x28
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	ldr r6, _021D6480 @ =0x021D9100
	str r0, [r1, #8]
	ldm r6!, {r0, r1}
	add r3, sp, #0x1c
	stm r3!, {r0, r1}
	ldr r0, [r6]
	adds r1, r4, #0
	str r0, [r3]
	movs r0, #1
	str r0, [sp]
	movs r3, #2
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r3, [sp, #0x14]
	movs r0, #7
	str r0, [sp, #0x18]
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl ov101_021D84A4
	ldr r0, [r4, #4]
	movs r1, #2
	bl FUN_02021CF8
	ldr r0, [r4, #4]
	add r1, sp, #0x28
	bl FUN_02021C60
	ldr r0, [r4, #4]
	add r1, sp, #0x1c
	bl FUN_02021C70
	movs r0, #0
	bl FUN_0201D2A4
	adds r1, r0, #0
	ldr r0, [r4, #4]
	bl FUN_02021C94
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_02021CC8
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D6480: .4byte 0x021D9100
	thumb_func_end ov101_021D6410

	thumb_func_start ov101_021D6484
ov101_021D6484: @ 0x021D6484
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _021D64B0 @ =0x021D8F8C
	adds r3, r0, #0
	ldm r5!, {r0, r1}
	add r4, sp, #8
	adds r2, r4, #0
	stm r4!, {r0, r1}
	ldr r0, [r5]
	ldr r1, _021D64B4 @ =0x021D9150
	str r0, [r4]
	str r3, [sp]
	movs r0, #0x87
	str r0, [sp, #4]
	ldr r0, _021D64B8 @ =0x0000044C
	ldr r0, [r3, r0]
	movs r3, #0
	bl FUN_02071330
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_021D64B0: .4byte 0x021D8F8C
_021D64B4: .4byte 0x021D9150
_021D64B8: .4byte 0x0000044C
	thumb_func_end ov101_021D6484

	thumb_func_start ov101_021D64BC
ov101_021D64BC: @ 0x021D64BC
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_020715BC
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl ov101_021D65F4
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov101_021D64BC

	thumb_func_start ov101_021D64D0
ov101_021D64D0: @ 0x021D64D0
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021D64F8
	movs r1, #3
	str r1, [sp]
	movs r0, #0x45
	ldr r2, [r4, #0x10]
	lsls r0, r0, #4
	ldr r0, [r2, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov101_021D8358
	adds r4, #0x14
	adds r0, r4, #0
	bl ov101_021D8544
_021D64F8:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov101_021D64D0

	thumb_func_start ov101_021D64FC
ov101_021D64FC: @ 0x021D64FC
	push {r4, lr}
	sub sp, #0x28
	adds r4, r1, #0
	ldr r1, [r4]
	cmp r1, #3
	bhi _021D6598
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D6514: @ jump table
	.2byte _021D651C - _021D6514 - 2 @ case 0
	.2byte _021D655E - _021D6514 - 2 @ case 1
	.2byte _021D6576 - _021D6514 - 2 @ case 2
	.2byte _021D6598 - _021D6514 - 2 @ case 3
_021D651C:
	ldr r1, [r4, #0xc]
	cmp r1, #2
	bne _021D6598
	add r1, sp, #0x1c
	bl FUN_020715E4
	movs r0, #1
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r3, #2
	str r3, [sp, #0x14]
	movs r0, #5
	str r0, [sp, #0x18]
	movs r0, #0x45
	ldr r1, [r4, #0x10]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	adds r1, r4, #0
	adds r1, #0x14
	add r2, sp, #0x1c
	bl ov101_021D84A4
	ldr r0, [r4, #0x18]
	movs r1, #1
	bl FUN_02021CC8
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_021D655E:
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xf
	blo _021D6598
	ldr r0, [r4]
	add sp, #0x28
	adds r0, r0, #1
	str r0, [r4]
	movs r0, #1
	str r0, [r4, #4]
	pop {r4, pc}
_021D6576:
	movs r1, #3
	str r1, [sp]
	movs r0, #0x45
	ldr r2, [r4, #0x10]
	lsls r0, r0, #4
	ldr r0, [r2, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov101_021D8358
	adds r0, r4, #0
	adds r0, #0x14
	bl ov101_021D8544
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_021D6598:
	add sp, #0x28
	pop {r4, pc}
	thumb_func_end ov101_021D64FC

	thumb_func_start ov101_021D659C
ov101_021D659C: @ 0x021D659C
	bx lr
	.align 2, 0
	thumb_func_end ov101_021D659C

	thumb_func_start ov101_021D65A0
ov101_021D65A0: @ 0x021D65A0
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r0, #0
	movs r0, #0x45
	ldr r4, [r5, #0x10]
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #3
	bl ov101_021D814C
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #3
	bl ov101_021D8220
	movs r0, #1
	str r0, [r5, #0xc]
	adds r0, r6, #0
	bl FUN_0200DA58
	pop {r4, r5, r6, pc}
	thumb_func_end ov101_021D65A0

	thumb_func_start ov101_021D65CC
ov101_021D65CC: @ 0x021D65CC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	cmp r0, #1
	bne _021D65F0
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #3
	bl ov101_021D8254
	movs r0, #2
	str r0, [r4, #0xc]
	adds r0, r5, #0
	bl FUN_0200DA58
_021D65F0:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov101_021D65CC

	thumb_func_start ov101_021D65F4
ov101_021D65F4: @ 0x021D65F4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r2, #0x45
	ldr r4, [r5, #0x10]
	movs r0, #3
	lsls r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	subs r2, #0x18
	ldr r2, [r4, r2]
	movs r1, #2
	movs r3, #0x2c
	bl ov101_021D80E4
	movs r2, #0x45
	movs r0, #3
	lsls r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	subs r2, #0x18
	ldr r2, [r4, r2]
	movs r1, #2
	movs r3, #0x2f
	bl ov101_021D81B4
	movs r1, #0x45
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	subs r1, #0x18
	ldr r1, [r4, r1]
	movs r2, #0x2d
	movs r3, #3
	bl ov101_021D8288
	movs r1, #0x45
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	subs r1, #0x18
	ldr r1, [r4, r1]
	movs r2, #0x2e
	movs r3, #3
	bl ov101_021D82F0
	ldr r0, _021D6670 @ =ov101_021D65A0
	ldr r2, _021D6674 @ =0x00000101
	adds r1, r5, #0
	bl FUN_0200DA04
	cmp r0, #0
	bne _021D665C
	bl FUN_02022974
_021D665C:
	ldr r0, _021D6678 @ =ov101_021D65CC
	ldr r2, _021D6674 @ =0x00000101
	adds r1, r5, #0
	bl FUN_0200DA3C
	cmp r0, #0
	bne _021D666E
	bl FUN_02022974
_021D666E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D6670: .4byte ov101_021D65A0
_021D6674: .4byte 0x00000101
_021D6678: .4byte ov101_021D65CC
	thumb_func_end ov101_021D65F4

	thumb_func_start ov101_021D667C
ov101_021D667C: @ 0x021D667C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r0, #0
	movs r0, #0x45
	ldr r4, [r5, #0x20]
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #4
	bl ov101_021D814C
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #4
	bl ov101_021D8220
	movs r0, #1
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl FUN_0200DA58
	pop {r4, r5, r6, pc}
	thumb_func_end ov101_021D667C

	thumb_func_start ov101_021D66A8
ov101_021D66A8: @ 0x021D66A8
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x20]
	cmp r0, #1
	bne _021D66CC
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #4
	bl ov101_021D8254
	movs r0, #2
	str r0, [r4, #0x10]
	adds r0, r5, #0
	bl FUN_0200DA58
_021D66CC:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov101_021D66A8

	thumb_func_start ov101_021D66D0
ov101_021D66D0: @ 0x021D66D0
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r6, #0x18]
	movs r2, #0x45
	lsls r3, r0, #4
	ldr r7, _021D6754 @ =0x021D93A4
	ldr r4, [r6, #0x20]
	movs r0, #4
	lsls r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	subs r2, #0x18
	adds r5, r7, r3
	ldr r2, [r4, r2]
	ldr r3, [r7, r3]
	movs r1, #2
	bl ov101_021D80E4
	movs r2, #0x45
	movs r0, #4
	str r0, [sp]
	lsls r2, r2, #4
	ldr r0, [r4, r2]
	subs r2, #0x18
	ldr r2, [r4, r2]
	ldr r3, [r5, #4]
	movs r1, #2
	bl ov101_021D81B4
	movs r1, #0x45
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	subs r1, #0x18
	ldr r1, [r4, r1]
	ldr r2, [r5, #8]
	movs r3, #4
	bl ov101_021D8288
	movs r1, #0x45
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	subs r1, #0x18
	ldr r1, [r4, r1]
	ldr r2, [r5, #0xc]
	movs r3, #4
	bl ov101_021D82F0
	ldr r0, _021D6758 @ =ov101_021D667C
	ldr r2, _021D675C @ =0x00000101
	adds r1, r6, #0
	bl FUN_0200DA04
	cmp r0, #0
	bne _021D6740
	bl FUN_02022974
_021D6740:
	ldr r0, _021D6760 @ =ov101_021D66A8
	ldr r2, _021D675C @ =0x00000101
	adds r1, r6, #0
	bl FUN_0200DA3C
	cmp r0, #0
	bne _021D6752
	bl FUN_02022974
_021D6752:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D6754: .4byte 0x021D93A4
_021D6758: .4byte ov101_021D667C
_021D675C: .4byte 0x00000101
_021D6760: .4byte ov101_021D66A8
	thumb_func_end ov101_021D66D0

	thumb_func_start ov101_021D6764
ov101_021D6764: @ 0x021D6764
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	ldr r6, _021D6790 @ =0x021D90DC
	add r5, sp, #8
	adds r4, r0, #0
	adds r3, r1, #0
	ldm r6!, {r0, r1}
	adds r2, r5, #0
	stm r5!, {r0, r1}
	ldr r0, [r6]
	ldr r1, _021D6794 @ =0x021D9164
	str r0, [r5]
	str r4, [sp]
	movs r0, #0x89
	str r0, [sp, #4]
	ldr r0, _021D6798 @ =0x0000044C
	ldr r0, [r4, r0]
	bl FUN_02071330
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021D6790: .4byte 0x021D90DC
_021D6794: .4byte 0x021D9164
_021D6798: .4byte 0x0000044C
	thumb_func_end ov101_021D6764

	thumb_func_start ov101_021D679C
ov101_021D679C: @ 0x021D679C
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_02071598
	str r4, [r0, #4]
	movs r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x14]
	pop {r4, pc}
	thumb_func_end ov101_021D679C

	thumb_func_start ov101_021D67B0
ov101_021D67B0: @ 0x021D67B0
	push {r3, lr}
	bl FUN_02071598
	ldr r0, [r0, #0xc]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov101_021D67B0

	thumb_func_start ov101_021D67BC
ov101_021D67BC: @ 0x021D67BC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_020715BC
	str r0, [r4, #0x20]
	adds r0, r5, #0
	bl FUN_020715B4
	str r0, [r4, #0x18]
	adds r0, r4, #0
	bl ov101_021D66D0
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov101_021D67BC

	thumb_func_start ov101_021D67DC
ov101_021D67DC: @ 0x021D67DC
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021D6804
	movs r1, #4
	str r1, [sp]
	movs r0, #0x45
	ldr r2, [r4, #0x20]
	lsls r0, r0, #4
	ldr r0, [r2, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov101_021D8358
	adds r4, #0x24
	adds r0, r4, #0
	bl ov101_021D8544
_021D6804:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov101_021D67DC

	thumb_func_start ov101_021D6808
ov101_021D6808: @ 0x021D6808
	push {r3, r4, r5, lr}
	ldr r4, _021D6824 @ =0x021D9330
	adds r5, r1, #0
_021D680E:
	ldr r1, [r5, #4]
	adds r0, r5, #0
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	ldr r1, [r5, #8]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	blx r1
	cmp r0, #1
	beq _021D680E
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D6824: .4byte 0x021D9330
	thumb_func_end ov101_021D6808

	thumb_func_start ov101_021D6828
ov101_021D6828: @ 0x021D6828
	bx lr
	.align 2, 0
	thumb_func_end ov101_021D6828

	thumb_func_start ov101_021D682C
ov101_021D682C: @ 0x021D682C
	push {r4, r5, lr}
	sub sp, #0x34
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #2
	bne _021D689E
	ldr r5, _021D68A4 @ =0x021D8F74
	add r3, sp, #0x28
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	add r1, sp, #0x1c
	str r0, [r3]
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	movs r0, #1
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r3, #2
	str r3, [sp, #0x14]
	movs r0, #6
	str r0, [sp, #0x18]
	movs r0, #0x45
	ldr r1, [r4, #0x20]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	adds r1, r4, #0
	adds r1, #0x24
	bl ov101_021D84A4
	ldr r0, [r4, #0x28]
	movs r1, #2
	bl FUN_02021CF8
	ldr r0, [r4, #0x28]
	add r1, sp, #0x1c
	bl FUN_02021C60
	movs r0, #0
	bl FUN_0201D2A4
	adds r1, r0, #0
	ldr r0, [r4, #0x28]
	bl FUN_02021C94
	movs r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_021D689E:
	movs r0, #0
	add sp, #0x34
	pop {r4, r5, pc}
	.align 2, 0
_021D68A4: .4byte 0x021D8F74
	thumb_func_end ov101_021D682C

	thumb_func_start ov101_021D68A8
ov101_021D68A8: @ 0x021D68A8
	movs r0, #0
	bx lr
	thumb_func_end ov101_021D68A8

	thumb_func_start ov101_021D68AC
ov101_021D68AC: @ 0x021D68AC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021D6900 @ =0x021D90A0
	adds r4, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0xc
	stm r2!, {r0, r1}
	ldr r0, [r3]
	ldr r5, _021D6904 @ =0x021D9094
	str r0, [r2]
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	adds r1, r2, #0
	str r0, [r3]
	ldr r0, [r4, #0x28]
	bl FUN_02021C70
	ldr r0, [r4, #0x28]
	add r1, sp, #0xc
	bl FUN_02021C50
	ldr r0, [r4, #0x28]
	movs r1, #1
	bl FUN_02021D6C
	ldr r0, [r4, #0x28]
	movs r1, #0
	bl FUN_02021CE4
	ldr r0, [r4, #0x28]
	movs r1, #0
	bl FUN_02021CC8
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D6900: .4byte 0x021D90A0
_021D6904: .4byte 0x021D9094
	thumb_func_end ov101_021D68AC

	thumb_func_start ov101_021D6908
ov101_021D6908: @ 0x021D6908
	push {r4, lr}
	sub sp, #0x18
	adds r4, r0, #0
	ldr r0, [r4, #0x28]
	add r1, sp, #0xc
	bl ov101_021D8560
	ldr r0, [r4, #0x28]
	add r1, sp, #0
	bl ov101_021D8574
	ldr r0, [sp]
	adds r0, #0xc0
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r0, #0xc0
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	adds r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #0x10
	blt _021D6952
	movs r0, #5
	lsls r0, r0, #0x12
	str r0, [sp, #0x10]
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp]
	str r0, [sp, #4]
	movs r1, #0
	str r1, [r4, #0x14]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	movs r0, #0x23
	bl FUN_02005844
_021D6952:
	ldr r0, [r4, #0x28]
	add r1, sp, #0
	bl FUN_02021C70
	ldr r0, [r4, #0x28]
	add r1, sp, #0xc
	bl FUN_02021C50
	movs r0, #0
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end ov101_021D6908

	thumb_func_start ov101_021D6968
ov101_021D6968: @ 0x021D6968
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	ldr r0, [r4, #0x28]
	lsls r1, r1, #0xc
	bl FUN_02021E2C
	ldr r0, [r4, #0x14]
	adds r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #9
	blt _021D698E
	movs r0, #0
	str r0, [r4, #0x14]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	movs r0, #1
	str r0, [r4, #0xc]
_021D698E:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D6968

	thumb_func_start ov101_021D6994
ov101_021D6994: @ 0x021D6994
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021D69F0 @ =0x021D907C
	adds r4, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0xc
	stm r2!, {r0, r1}
	ldr r0, [r3]
	ldr r5, _021D69F4 @ =0x021D9070
	str r0, [r2]
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	adds r1, r2, #0
	str r0, [r3]
	ldr r0, [r4, #0x28]
	bl FUN_02021C70
	ldr r0, [r4, #0x28]
	add r1, sp, #0xc
	bl FUN_02021C50
	ldr r0, [r4, #0x28]
	movs r1, #1
	bl FUN_02021D6C
	ldr r0, [r4, #0x28]
	movs r1, #0
	bl FUN_02021CE4
	ldr r0, [r4, #0x28]
	movs r1, #0
	bl FUN_02021CC8
	ldr r0, _021D69F8 @ =0x000006D1
	bl FUN_02005748
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021D69F0: .4byte 0x021D907C
_021D69F4: .4byte 0x021D9070
_021D69F8: .4byte 0x000006D1
	thumb_func_end ov101_021D6994

	thumb_func_start ov101_021D69FC
ov101_021D69FC: @ 0x021D69FC
	push {r4, lr}
	sub sp, #0x18
	adds r4, r0, #0
	ldr r0, [r4, #0x28]
	add r1, sp, #0xc
	bl ov101_021D8560
	ldr r0, [r4, #0x28]
	add r1, sp, #0
	bl ov101_021D8574
	movs r0, #6
	ldr r1, [sp]
	lsls r0, r0, #6
	subs r1, r1, r0
	str r1, [sp]
	ldr r1, [sp, #4]
	subs r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	adds r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #8
	blt _021D6A48
	movs r0, #0x1d
	lsls r0, r0, #0x10
	str r0, [sp, #0x10]
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [r4, #0x14]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	movs r0, #1
	str r0, [r4, #0xc]
_021D6A48:
	ldr r0, [r4, #0x28]
	add r1, sp, #0
	bl FUN_02021C70
	ldr r0, [r4, #0x28]
	add r1, sp, #0xc
	bl FUN_02021C50
	movs r0, #0
	add sp, #0x18
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D69FC

	thumb_func_start ov101_021D6A60
ov101_021D6A60: @ 0x021D6A60
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021D6AC0 @ =0x021D9058
	adds r4, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0xc
	stm r2!, {r0, r1}
	ldr r0, [r3]
	ldr r5, _021D6AC4 @ =0x021D904C
	str r0, [r2]
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	adds r1, r2, #0
	str r0, [r3]
	ldr r0, [r4, #0x28]
	bl FUN_02021C70
	ldr r0, [r4, #0x28]
	add r1, sp, #0xc
	bl FUN_02021C50
	ldr r0, [r4, #0x28]
	movs r1, #0
	bl FUN_02021D6C
	ldr r0, [r4, #0x28]
	movs r1, #0
	bl FUN_02021CC8
	ldr r0, [r4, #0x28]
	movs r1, #0
	bl FUN_02021CE4
	ldr r0, [r4, #0x28]
	bl FUN_02021DE0
	movs r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021D6AC0: .4byte 0x021D9058
_021D6AC4: .4byte 0x021D904C
	thumb_func_end ov101_021D6A60

	thumb_func_start ov101_021D6AC8
ov101_021D6AC8: @ 0x021D6AC8
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021D6B34 @ =0x021D9004
	adds r4, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0xc
	stm r2!, {r0, r1}
	ldr r0, [r3]
	ldr r5, _021D6B38 @ =0x021D8F80
	str r0, [r2]
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	adds r1, r2, #0
	str r0, [r3]
	ldr r0, [r4, #0x28]
	bl FUN_02021C70
	ldr r0, [r4, #0x28]
	add r1, sp, #0xc
	bl FUN_02021C50
	ldr r0, [r4, #0x28]
	movs r1, #1
	bl FUN_02021CC8
	movs r1, #2
	ldr r0, [r4, #0x28]
	lsls r1, r1, #0xa
	bl FUN_02021CE4
	ldr r0, [r4, #0x28]
	bl FUN_02021E24
	cmp r0, #2
	beq _021D6B22
	ldr r0, [r4, #0x28]
	movs r1, #2
	bl FUN_02021D6C
	ldr r0, [r4, #0x28]
	bl FUN_02021DE0
_021D6B22:
	movs r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021D6B34: .4byte 0x021D9004
_021D6B38: .4byte 0x021D8F80
	thumb_func_end ov101_021D6AC8

	thumb_func_start ov101_021D6B3C
ov101_021D6B3C: @ 0x021D6B3C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021D6B9C @ =0x021D8F20
	adds r4, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0xc
	stm r2!, {r0, r1}
	ldr r0, [r3]
	ldr r5, _021D6BA0 @ =0x021D90F4
	str r0, [r2]
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	adds r1, r2, #0
	str r0, [r3]
	ldr r0, [r4, #0x28]
	bl FUN_02021C70
	ldr r0, [r4, #0x28]
	add r1, sp, #0xc
	bl FUN_02021C50
	ldr r0, [r4, #0x28]
	movs r1, #5
	bl FUN_02021D6C
	ldr r0, [r4, #0x28]
	movs r1, #1
	bl FUN_02021CC8
	movs r1, #1
	ldr r0, [r4, #0x28]
	lsls r1, r1, #0xc
	bl FUN_02021CE4
	ldr r0, [r4, #0x28]
	bl FUN_02021DE0
	movs r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D6B9C: .4byte 0x021D8F20
_021D6BA0: .4byte 0x021D90F4
	thumb_func_end ov101_021D6B3C

	thumb_func_start ov101_021D6BA4
ov101_021D6BA4: @ 0x021D6BA4
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021D6C04 @ =0x021D8F2C
	adds r4, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0xc
	stm r2!, {r0, r1}
	ldr r0, [r3]
	ldr r5, _021D6C08 @ =0x021D8FE0
	str r0, [r2]
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	adds r1, r2, #0
	str r0, [r3]
	ldr r0, [r4, #0x28]
	bl FUN_02021C70
	ldr r0, [r4, #0x28]
	add r1, sp, #0xc
	bl FUN_02021C50
	ldr r0, [r4, #0x28]
	movs r1, #4
	bl FUN_02021D6C
	ldr r0, [r4, #0x28]
	movs r1, #1
	bl FUN_02021CC8
	movs r1, #1
	ldr r0, [r4, #0x28]
	lsls r1, r1, #0xc
	bl FUN_02021CE4
	ldr r0, [r4, #0x28]
	bl FUN_02021DE0
	movs r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D6C04: .4byte 0x021D8F2C
_021D6C08: .4byte 0x021D8FE0
	thumb_func_end ov101_021D6BA4

	thumb_func_start ov101_021D6C0C
ov101_021D6C0C: @ 0x021D6C0C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021D6C6C @ =0x021D8FBC
	adds r4, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0xc
	stm r2!, {r0, r1}
	ldr r0, [r3]
	ldr r5, _021D6C70 @ =0x021D8FC8
	str r0, [r2]
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	adds r1, r2, #0
	str r0, [r3]
	ldr r0, [r4, #0x28]
	bl FUN_02021C70
	ldr r0, [r4, #0x28]
	add r1, sp, #0xc
	bl FUN_02021C50
	ldr r0, [r4, #0x28]
	movs r1, #3
	bl FUN_02021D6C
	ldr r0, [r4, #0x28]
	movs r1, #1
	bl FUN_02021CC8
	movs r1, #1
	ldr r0, [r4, #0x28]
	lsls r1, r1, #0xc
	bl FUN_02021CE4
	ldr r0, [r4, #0x28]
	bl FUN_02021DE0
	movs r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D6C6C: .4byte 0x021D8FBC
_021D6C70: .4byte 0x021D8FC8
	thumb_func_end ov101_021D6C0C

	thumb_func_start ov101_021D6C74
ov101_021D6C74: @ 0x021D6C74
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _021D6CD8 @ =0x021D901C
	adds r4, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0xc
	stm r2!, {r0, r1}
	ldr r0, [r3]
	ldr r5, _021D6CDC @ =0x021D8EA8
	str r0, [r2]
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	adds r1, r2, #0
	str r0, [r3]
	ldr r0, [r4, #0x28]
	bl FUN_02021C70
	ldr r0, [r4, #0x28]
	add r1, sp, #0xc
	bl FUN_02021C50
	ldr r0, [r4, #0x28]
	movs r1, #0
	bl FUN_02021CC8
	movs r1, #1
	ldr r0, [r4, #0x28]
	lsls r1, r1, #0xc
	bl FUN_02021CE4
	ldr r0, [r4, #0x28]
	movs r1, #5
	bl FUN_02021D6C
	ldr r0, [r4, #0x28]
	bl FUN_02021DE0
	movs r0, #0
	str r0, [r4, #0x14]
	movs r1, #1
	str r1, [r4, #0xc]
	ldr r1, [r4, #8]
	adds r1, r1, #1
	str r1, [r4, #8]
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021D6CD8: .4byte 0x021D901C
_021D6CDC: .4byte 0x021D8EA8
	thumb_func_end ov101_021D6C74

	thumb_func_start ov101_021D6CE0
ov101_021D6CE0: @ 0x021D6CE0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	ldr r0, [r4, #0x28]
	lsls r1, r1, #0xc
	bl FUN_02021E2C
	ldr r0, [r4, #0x28]
	bl FUN_02021FD0
	cmp r0, #0
	bne _021D6D0C
	ldr r0, [r4, #0x14]
	adds r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #8
	blt _021D6D0C
	movs r0, #0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x28]
	bl FUN_02021DE0
_021D6D0C:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D6CE0

	thumb_func_start ov101_021D6D10
ov101_021D6D10: @ 0x021D6D10
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r0, #0
	movs r0, #0x45
	ldr r4, [r5, #0x2c]
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #5
	bl ov101_021D814C
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #5
	bl ov101_021D8220
	movs r0, #1
	str r0, [r5, #0x10]
	adds r0, r6, #0
	bl FUN_0200DA58
	pop {r4, r5, r6, pc}
	thumb_func_end ov101_021D6D10

	thumb_func_start ov101_021D6D3C
ov101_021D6D3C: @ 0x021D6D3C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r1, [r4, #0x2c]
	adds r5, r0, #0
	movs r0, #1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021D6D64
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #5
	bl ov101_021D8254
	movs r0, #2
	str r0, [r4, #0x10]
	adds r0, r5, #0
	bl FUN_0200DA58
_021D6D64:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov101_021D6D3C

	thumb_func_start ov101_021D6D68
ov101_021D6D68: @ 0x021D6D68
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r2, #0x45
	ldr r4, [r5, #0x2c]
	movs r0, #5
	lsls r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	subs r2, #0x18
	ldr r2, [r4, r2]
	movs r1, #2
	movs r3, #0x38
	bl ov101_021D80E4
	movs r2, #0x45
	movs r0, #5
	lsls r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	subs r2, #0x18
	ldr r2, [r4, r2]
	movs r1, #2
	movs r3, #0x3b
	bl ov101_021D81B4
	movs r1, #0x45
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	subs r1, #0x18
	ldr r1, [r4, r1]
	movs r2, #0x39
	movs r3, #5
	bl ov101_021D8288
	movs r1, #0x45
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	subs r1, #0x18
	ldr r1, [r4, r1]
	movs r2, #0x3a
	movs r3, #5
	bl ov101_021D82F0
	ldr r0, _021D6DE4 @ =ov101_021D6D10
	ldr r2, _021D6DE8 @ =0x00000101
	adds r1, r5, #0
	bl FUN_0200DA04
	cmp r0, #0
	bne _021D6DD0
	bl FUN_02022974
_021D6DD0:
	ldr r0, _021D6DEC @ =ov101_021D6D3C
	ldr r2, _021D6DE8 @ =0x00000101
	adds r1, r5, #0
	bl FUN_0200DA3C
	cmp r0, #0
	bne _021D6DE2
	bl FUN_02022974
_021D6DE2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D6DE4: .4byte ov101_021D6D10
_021D6DE8: .4byte 0x00000101
_021D6DEC: .4byte ov101_021D6D3C
	thumb_func_end ov101_021D6D68

	thumb_func_start ov101_021D6DF0
ov101_021D6DF0: @ 0x021D6DF0
	push {lr}
	sub sp, #0x14
	add r2, sp, #8
	movs r3, #0
	str r3, [r2]
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r0, [sp]
	movs r1, #0x88
	str r1, [sp, #4]
	ldr r1, _021D6E14 @ =0x0000044C
	ldr r0, [r0, r1]
	ldr r1, _021D6E18 @ =0x021D9178
	bl FUN_02071330
	add sp, #0x14
	pop {pc}
	nop
_021D6E14: .4byte 0x0000044C
_021D6E18: .4byte 0x021D9178
	thumb_func_end ov101_021D6DF0

	thumb_func_start ov101_021D6E1C
ov101_021D6E1C: @ 0x021D6E1C
	push {r3, lr}
	bl FUN_02071598
	ldr r0, [r0, #4]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov101_021D6E1C

	thumb_func_start ov101_021D6E28
ov101_021D6E28: @ 0x021D6E28
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_020715BC
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	bl ov101_021D6D68
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov101_021D6E28

	thumb_func_start ov101_021D6E3C
ov101_021D6E3C: @ 0x021D6E3C
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021D6E72
	movs r1, #5
	str r1, [sp]
	movs r0, #0x45
	ldr r2, [r4, #0x2c]
	lsls r0, r0, #4
	ldr r0, [r2, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov101_021D8358
	adds r0, r4, #0
	adds r0, #0x30
	bl ov101_021D8544
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _021D6E72
	adds r4, #0x3c
	adds r0, r4, #0
	bl ov101_021D8544
_021D6E72:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov101_021D6E3C

	thumb_func_start ov101_021D6E78
ov101_021D6E78: @ 0x021D6E78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r1, #0
	add r1, sp, #0xc
	adds r7, r0, #0
	adds r4, r2, #0
	adds r6, r3, #0
	bl FUN_020715E4
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	adds r0, r0, r6
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	adds r0, r1, r0
	str r0, [sp, #0x10]
	adds r0, r7, #0
	add r1, sp, #0xc
	bl FUN_020715D4
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bne _021D6EAE
	ldr r0, [sp, #0xc]
	adds r0, r5, r0
	str r0, [sp]
	b _021D6EB4
_021D6EAE:
	ldr r0, [sp, #0xc]
	subs r0, r5, r0
	str r0, [sp]
_021D6EB4:
	ldr r0, [sp, #0x10]
	add r1, sp, #0
	subs r0, r4, r0
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	bl FUN_02021C50
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov101_021D6E78

	thumb_func_start ov101_021D6EC8
ov101_021D6EC8: @ 0x021D6EC8
	push {r4, r5, r6, lr}
	sub sp, #0x40
	adds r4, r1, #0
	ldr r1, [r4]
	adds r6, r0, #0
	cmp r1, #0xa
	bls _021D6ED8
	b _021D7210
_021D6ED8:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D6EE4: @ jump table
	.2byte _021D6EFA - _021D6EE4 - 2 @ case 0
	.2byte _021D6F6C - _021D6EE4 - 2 @ case 1
	.2byte _021D6FF4 - _021D6EE4 - 2 @ case 2
	.2byte _021D7008 - _021D6EE4 - 2 @ case 3
	.2byte _021D703A - _021D6EE4 - 2 @ case 4
	.2byte _021D706C - _021D6EE4 - 2 @ case 5
	.2byte _021D709E - _021D6EE4 - 2 @ case 6
	.2byte _021D70E6 - _021D6EE4 - 2 @ case 7
	.2byte _021D70FC - _021D6EE4 - 2 @ case 8
	.2byte _021D7148 - _021D6EE4 - 2 @ case 9
	.2byte _021D71A8 - _021D6EE4 - 2 @ case 10
_021D6EFA:
	ldr r0, [r4, #0x10]
	cmp r0, #2
	beq _021D6F02
	b _021D7210
_021D6F02:
	ldr r5, _021D7214 @ =0x021D90D0
	add r3, sp, #0x34
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	movs r0, #1
	str r0, [sp]
	movs r0, #5
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r3, #2
	str r3, [sp, #0x14]
	movs r0, #4
	str r0, [sp, #0x18]
	movs r0, #0x45
	ldr r1, [r4, #0x2c]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	adds r1, r4, #0
	adds r1, #0x30
	bl ov101_021D84A4
	movs r0, #1
	str r0, [sp]
	movs r0, #5
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r3, #2
	str r3, [sp, #0x14]
	movs r0, #4
	str r0, [sp, #0x18]
	movs r0, #0x45
	ldr r1, [r4, #0x2c]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	adds r1, r4, #0
	adds r1, #0x3c
	add r2, sp, #0x34
	bl ov101_021D84A4
	ldr r0, [r4, #0x40]
	movs r1, #1
	bl FUN_02021D0C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_021D6F6C:
	adds r0, r6, #0
	add r1, sp, #0x28
	movs r5, #0
	bl FUN_020715E4
	movs r1, #2
	ldr r2, [sp, #0x2c]
	lsls r1, r1, #0xe
	ldr r0, [sp, #0x28]
	adds r2, r2, r1
	adds r0, r0, r1
	str r2, [sp, #0x2c]
	lsls r2, r1, #3
	str r0, [sp, #0x28]
	cmp r0, r2
	blt _021D6F92
	adds r0, r2, #0
	str r0, [sp, #0x28]
	adds r5, r5, #1
_021D6F92:
	movs r0, #0xe
	ldr r1, [sp, #0x2c]
	lsls r0, r0, #0xe
	cmp r1, r0
	blt _021D6FA4
	movs r0, #1
	lsls r0, r0, #0x12
	str r0, [sp, #0x2c]
	adds r5, r5, #1
_021D6FA4:
	adds r0, r6, #0
	add r1, sp, #0x28
	bl FUN_020715D4
	movs r0, #2
	ldr r1, [sp, #0x28]
	lsls r0, r0, #0x10
	subs r0, r1, r0
	str r0, [sp, #0x1c]
	movs r0, #0x69
	ldr r1, [sp, #0x2c]
	lsls r0, r0, #0xe
	subs r0, r0, r1
	str r0, [sp, #0x20]
	ldr r0, [r4, #0x34]
	add r1, sp, #0x1c
	bl FUN_02021C50
	movs r0, #0x12
	ldr r1, [sp, #0x28]
	lsls r0, r0, #0x10
	subs r0, r0, r1
	str r0, [sp, #0x1c]
	movs r0, #0x69
	ldr r1, [sp, #0x2c]
	lsls r0, r0, #0xe
	subs r0, r0, r1
	str r0, [sp, #0x20]
	ldr r0, [r4, #0x40]
	add r1, sp, #0x1c
	bl FUN_02021C50
	cmp r5, #2
	beq _021D6FEA
	b _021D7210
_021D6FEA:
	ldr r0, [r4]
	add sp, #0x40
	adds r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021D6FF4:
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #8
	blo _021D70F0
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_021D7008:
	ldr r3, _021D7218 @ =0xFFFFC000
	movs r2, #0x69
	str r3, [sp]
	ldr r0, [r4, #0x34]
	lsls r1, r3, #3
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r6, #0
	lsls r2, r2, #0xe
	asrs r3, r3, #1
	bl ov101_021D6E78
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #4
	blo _021D70F0
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	add sp, #0x40
	adds r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021D703A:
	movs r3, #1
	lsls r3, r3, #0xe
	str r3, [sp]
	ldr r1, [r4, #0x34]
	movs r2, #0x69
	str r1, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	ldr r1, _021D721C @ =0xFFFE0000
	lsls r2, r2, #0xe
	lsrs r3, r3, #1
	bl ov101_021D6E78
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #4
	blo _021D70F0
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	add sp, #0x40
	adds r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021D706C:
	ldr r3, _021D7218 @ =0xFFFFC000
	movs r2, #0x69
	str r3, [sp]
	ldr r1, [r4, #0x40]
	lsls r2, r2, #0xe
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r1, #0x12
	lsls r1, r1, #0x10
	asrs r3, r3, #1
	bl ov101_021D6E78
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #4
	blo _021D70F0
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	add sp, #0x40
	adds r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021D709E:
	movs r1, #1
	lsls r1, r1, #0xe
	str r1, [sp]
	ldr r1, [r4, #0x40]
	movs r2, #0x69
	str r1, [sp, #4]
	movs r3, #1
	movs r1, #0x12
	str r3, [sp, #8]
	lsls r1, r1, #0x10
	lsls r2, r2, #0xe
	lsls r3, r3, #0xd
	bl ov101_021D6E78
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #4
	blo _021D70F0
	movs r1, #0
	str r1, [r4, #8]
	ldr r0, [r4, #0xc]
	adds r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #2
	bhs _021D70DA
	movs r0, #3
	add sp, #0x40
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021D70DA:
	str r1, [r4, #0xc]
	ldr r0, [r4]
	add sp, #0x40
	adds r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021D70E6:
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #8
	bhs _021D70F2
_021D70F0:
	b _021D7210
_021D70F2:
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_021D70FC:
	ldr r3, _021D7218 @ =0xFFFFC000
	movs r2, #0x69
	str r3, [sp]
	ldr r0, [r4, #0x34]
	lsls r1, r3, #3
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r6, #0
	lsls r2, r2, #0xe
	asrs r3, r3, #1
	bl ov101_021D6E78
	movs r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x40]
	movs r1, #0x12
	str r0, [sp, #4]
	movs r0, #1
	movs r2, #0x69
	str r0, [sp, #8]
	adds r0, r6, #0
	lsls r1, r1, #0x10
	lsls r2, r2, #0xe
	bl ov101_021D6E78
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #4
	blo _021D7210
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	add sp, #0x40
	adds r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021D7148:
	movs r3, #1
	lsls r3, r3, #0xe
	str r3, [sp]
	ldr r1, [r4, #0x34]
	movs r2, #0x69
	str r1, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	ldr r1, _021D721C @ =0xFFFE0000
	lsls r2, r2, #0xe
	lsrs r3, r3, #1
	bl ov101_021D6E78
	movs r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x40]
	movs r1, #0x12
	str r0, [sp, #4]
	movs r0, #1
	movs r2, #0x69
	str r0, [sp, #8]
	adds r0, r6, #0
	lsls r1, r1, #0x10
	lsls r2, r2, #0xe
	bl ov101_021D6E78
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #4
	blo _021D7210
	movs r1, #0
	str r1, [r4, #8]
	ldr r0, [r4, #0xc]
	adds r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #2
	bhs _021D719C
	movs r0, #8
	add sp, #0x40
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021D719C:
	str r1, [r4, #0xc]
	ldr r0, [r4]
	add sp, #0x40
	adds r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021D71A8:
	ldr r3, _021D7220 @ =0xFFFF8000
	movs r2, #0x69
	str r3, [sp]
	ldr r1, [r4, #0x34]
	lsls r2, r2, #0xe
	str r1, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	lsls r1, r3, #2
	bl ov101_021D6E78
	movs r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x40]
	movs r1, #0x12
	str r0, [sp, #4]
	movs r0, #1
	movs r2, #0x69
	str r0, [sp, #8]
	adds r0, r6, #0
	lsls r1, r1, #0x10
	lsls r2, r2, #0xe
	bl ov101_021D6E78
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #4
	blo _021D7206
	adds r0, r4, #0
	adds r0, #0x30
	bl ov101_021D8544
	adds r0, r4, #0
	adds r0, #0x3c
	bl ov101_021D8544
	movs r1, #5
	str r1, [sp]
	movs r0, #0x45
	ldr r2, [r4, #0x2c]
	lsls r0, r0, #4
	ldr r0, [r2, r0]
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov101_021D8358
_021D7206:
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	movs r0, #1
	str r0, [r4, #4]
_021D7210:
	add sp, #0x40
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D7214: .4byte 0x021D90D0
_021D7218: .4byte 0xFFFFC000
_021D721C: .4byte 0xFFFE0000
_021D7220: .4byte 0xFFFF8000
	thumb_func_end ov101_021D6EC8

	thumb_func_start ov101_021D7224
ov101_021D7224: @ 0x021D7224
	bx lr
	.align 2, 0
	thumb_func_end ov101_021D7224

	thumb_func_start ov101_021D7228
ov101_021D7228: @ 0x021D7228
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _021D7254 @ =0x021D8F5C
	adds r3, r0, #0
	ldm r5!, {r0, r1}
	add r4, sp, #8
	adds r2, r4, #0
	stm r4!, {r0, r1}
	ldr r0, [r5]
	ldr r1, _021D7258 @ =0x021D918C
	str r0, [r4]
	str r3, [sp]
	movs r0, #0x8e
	str r0, [sp, #4]
	ldr r0, _021D725C @ =0x0000044C
	ldr r0, [r3, r0]
	movs r3, #0
	bl FUN_02071330
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_021D7254: .4byte 0x021D8F5C
_021D7258: .4byte 0x021D918C
_021D725C: .4byte 0x0000044C
	thumb_func_end ov101_021D7228

	thumb_func_start ov101_021D7260
ov101_021D7260: @ 0x021D7260
	push {r3, r4, r5, lr}
	sub sp, #0x28
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_020715BC
	str r0, [r4]
	adds r0, r5, #0
	add r1, sp, #0x1c
	bl FUN_020715E4
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r3, #2
	str r3, [sp, #0x14]
	movs r0, #3
	str r0, [sp, #0x18]
	movs r0, #0x45
	ldr r1, [r4]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	adds r1, r4, #4
	add r2, sp, #0x1c
	bl ov101_021D84A4
	ldr r0, [r4, #8]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #1
	add sp, #0x28
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov101_021D7260

	thumb_func_start ov101_021D72AC
ov101_021D72AC: @ 0x021D72AC
	ldr r3, _021D72B4 @ =ov101_021D8544
	adds r0, r1, #4
	bx r3
	nop
_021D72B4: .4byte ov101_021D8544
	thumb_func_end ov101_021D72AC

	thumb_func_start ov101_021D72B8
ov101_021D72B8: @ 0x021D72B8
	movs r0, #0x52
	ldr r2, [r1]
	lsls r0, r0, #2
	ldr r0, [r2, r0]
	movs r3, #1
	cmp r0, #1
	bne _021D72C8
	movs r3, #0
_021D72C8:
	ldr r0, [r1, #8]
	adds r1, r3, #0
	ldr r3, _021D72D0 @ =FUN_02021CAC
	bx r3
	.align 2, 0
_021D72D0: .4byte FUN_02021CAC
	thumb_func_end ov101_021D72B8

	thumb_func_start ov101_021D72D4
ov101_021D72D4: @ 0x021D72D4
	push {lr}
	sub sp, #0x14
	movs r1, #0x15
	lsls r1, r1, #0xe
	str r1, [sp, #8]
	movs r1, #0x13
	lsls r1, r1, #0x10
	str r1, [sp, #0xc]
	str r0, [sp]
	movs r1, #0x8e
	str r1, [sp, #4]
	ldr r1, _021D72FC @ =0x0000044C
	add r2, sp, #8
	ldr r0, [r0, r1]
	ldr r1, _021D7300 @ =0x021D91C8
	movs r3, #0
	bl FUN_02071330
	add sp, #0x14
	pop {pc}
	.align 2, 0
_021D72FC: .4byte 0x0000044C
_021D7300: .4byte 0x021D91C8
	thumb_func_end ov101_021D72D4

	thumb_func_start ov101_021D7304
ov101_021D7304: @ 0x021D7304
	push {r3, r4, r5, lr}
	sub sp, #0x40
	adds r5, r0, #0
	adds r4, r1, #0
	add r1, sp, #0x28
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	ldr r3, _021D7390 @ =0x021D8F44
	str r0, [r1, #8]
	ldm r3!, {r0, r1}
	add r2, sp, #0x1c
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	adds r0, r5, #0
	bl FUN_020715BC
	str r0, [r4, #4]
	adds r0, r5, #0
	add r1, sp, #0x34
	bl FUN_020715E4
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r3, #2
	str r3, [sp, #0x14]
	movs r0, #3
	str r0, [sp, #0x18]
	movs r0, #0x45
	ldr r1, [r4, #4]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	adds r1, r4, #0
	adds r1, #8
	add r2, sp, #0x34
	bl ov101_021D84A4
	ldr r0, [r4, #0xc]
	movs r1, #2
	bl FUN_02021CF8
	ldr r0, [r4, #0xc]
	add r1, sp, #0x28
	bl FUN_02021C60
	ldr r0, [r4, #0xc]
	add r1, sp, #0x1c
	bl FUN_02021C70
	movs r0, #0
	bl FUN_0201D2A4
	adds r1, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_02021C94
	ldr r0, [r4, #0xc]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #1
	add sp, #0x40
	pop {r3, r4, r5, pc}
	nop
_021D7390: .4byte 0x021D8F44
	thumb_func_end ov101_021D7304

	thumb_func_start ov101_021D7394
ov101_021D7394: @ 0x021D7394
	ldr r3, _021D739C @ =ov101_021D8544
	adds r1, #8
	adds r0, r1, #0
	bx r3
	.align 2, 0
_021D739C: .4byte ov101_021D8544
	thumb_func_end ov101_021D7394

	thumb_func_start ov101_021D73A0
ov101_021D73A0: @ 0x021D73A0
	push {r3, lr}
	ldr r2, [r1]
	adds r2, r2, #1
	str r2, [r1]
	cmp r2, #0x2d
	blt _021D73B0
	bl FUN_0207136C
_021D73B0:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov101_021D73A0

	thumb_func_start ov101_021D73B4
ov101_021D73B4: @ 0x021D73B4
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _021D73E0 @ =0x021D9034
	adds r3, r0, #0
	ldm r5!, {r0, r1}
	add r4, sp, #8
	adds r2, r4, #0
	stm r4!, {r0, r1}
	ldr r0, [r5]
	ldr r1, _021D73E4 @ =0x021D922C
	str r0, [r4]
	str r3, [sp]
	movs r0, #0x8e
	str r0, [sp, #4]
	ldr r0, _021D73E8 @ =0x0000044C
	ldr r0, [r3, r0]
	movs r3, #0
	bl FUN_02071330
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_021D73E0: .4byte 0x021D9034
_021D73E4: .4byte 0x021D922C
_021D73E8: .4byte 0x0000044C
	thumb_func_end ov101_021D73B4

	thumb_func_start ov101_021D73EC
ov101_021D73EC: @ 0x021D73EC
	push {r3, r4, r5, lr}
	sub sp, #0x28
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_020715BC
	str r0, [r4]
	adds r0, r5, #0
	add r1, sp, #0x1c
	bl FUN_020715E4
	movs r0, #0
	str r0, [sp]
	movs r1, #7
	str r1, [sp, #4]
	movs r0, #6
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r3, #2
	str r3, [sp, #0x14]
	movs r0, #3
	str r0, [sp, #0x18]
	movs r0, #0x45
	ldr r1, [r4]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	adds r1, r4, #4
	add r2, sp, #0x1c
	bl ov101_021D84A4
	ldr r0, [r4, #8]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #1
	add sp, #0x28
	pop {r3, r4, r5, pc}
	thumb_func_end ov101_021D73EC

	thumb_func_start ov101_021D7438
ov101_021D7438: @ 0x021D7438
	ldr r3, _021D7440 @ =ov101_021D8544
	adds r0, r1, #4
	bx r3
	nop
_021D7440: .4byte ov101_021D8544
	thumb_func_end ov101_021D7438

	thumb_func_start ov101_021D7444
ov101_021D7444: @ 0x021D7444
	movs r0, #0x52
	ldr r2, [r1]
	lsls r0, r0, #2
	ldr r0, [r2, r0]
	movs r3, #1
	cmp r0, #1
	bne _021D7454
	movs r3, #0
_021D7454:
	ldr r0, [r1, #8]
	adds r1, r3, #0
	ldr r3, _021D745C @ =FUN_02021CAC
	bx r3
	.align 2, 0
_021D745C: .4byte FUN_02021CAC
	thumb_func_end ov101_021D7444

	thumb_func_start ov101_021D7460
ov101_021D7460: @ 0x021D7460
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _021D7494 @ =0x021D8EF0
	adds r3, r0, #0
	ldm r5!, {r0, r1}
	add r4, sp, #8
	adds r2, r4, #0
	stm r4!, {r0, r1}
	ldr r0, [r5]
	ldr r1, _021D7498 @ =0x021D9254
	str r0, [r4]
	movs r0, #0x11
	lsls r0, r0, #0xe
	str r0, [sp, #8]
	lsls r0, r0, #2
	str r0, [sp, #0xc]
	str r3, [sp]
	movs r0, #0x8e
	str r0, [sp, #4]
	ldr r0, _021D749C @ =0x0000044C
	ldr r0, [r3, r0]
	movs r3, #0
	bl FUN_02071330
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_021D7494: .4byte 0x021D8EF0
_021D7498: .4byte 0x021D9254
_021D749C: .4byte 0x0000044C
	thumb_func_end ov101_021D7460

	thumb_func_start ov101_021D74A0
ov101_021D74A0: @ 0x021D74A0
	push {r3, r4, r5, lr}
	sub sp, #0x40
	adds r5, r0, #0
	adds r4, r1, #0
	add r1, sp, #0x28
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	ldr r3, _021D752C @ =0x021D8FEC
	str r0, [r1, #8]
	ldm r3!, {r0, r1}
	add r2, sp, #0x1c
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	adds r0, r5, #0
	bl FUN_020715BC
	str r0, [r4, #4]
	adds r0, r5, #0
	add r1, sp, #0x34
	bl FUN_020715E4
	movs r0, #0
	str r0, [sp]
	movs r1, #7
	str r1, [sp, #4]
	movs r0, #6
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r3, #2
	str r3, [sp, #0x14]
	movs r0, #3
	str r0, [sp, #0x18]
	movs r0, #0x45
	ldr r1, [r4, #4]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	adds r1, r4, #0
	adds r1, #8
	add r2, sp, #0x34
	bl ov101_021D84A4
	ldr r0, [r4, #0xc]
	movs r1, #2
	bl FUN_02021CF8
	ldr r0, [r4, #0xc]
	add r1, sp, #0x28
	bl FUN_02021C60
	ldr r0, [r4, #0xc]
	add r1, sp, #0x1c
	bl FUN_02021C70
	movs r0, #0
	bl FUN_0201D2A4
	adds r1, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_02021C94
	ldr r0, [r4, #0xc]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #1
	add sp, #0x40
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D752C: .4byte 0x021D8FEC
	thumb_func_end ov101_021D74A0

	thumb_func_start ov101_021D7530
ov101_021D7530: @ 0x021D7530
	ldr r3, _021D7538 @ =ov101_021D8544
	adds r1, #8
	adds r0, r1, #0
	bx r3
	.align 2, 0
_021D7538: .4byte ov101_021D8544
	thumb_func_end ov101_021D7530

	thumb_func_start ov101_021D753C
ov101_021D753C: @ 0x021D753C
	push {r3, lr}
	ldr r2, [r1]
	adds r2, r2, #1
	str r2, [r1]
	cmp r2, #0x2d
	blt _021D754C
	bl FUN_0207136C
_021D754C:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov101_021D753C

	thumb_func_start ov101_021D7550
ov101_021D7550: @ 0x021D7550
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _021D757C @ =0x021D8EB4
	adds r3, r0, #0
	ldm r5!, {r0, r1}
	add r4, sp, #8
	adds r2, r4, #0
	stm r4!, {r0, r1}
	ldr r0, [r5]
	ldr r1, _021D7580 @ =0x021D913C
	str r0, [r4]
	str r3, [sp]
	movs r0, #0x8e
	str r0, [sp, #4]
	ldr r0, _021D7584 @ =0x0000044C
	ldr r0, [r3, r0]
	movs r3, #0
	bl FUN_02071330
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_021D757C: .4byte 0x021D8EB4
_021D7580: .4byte 0x021D913C
_021D7584: .4byte 0x0000044C
	thumb_func_end ov101_021D7550

	thumb_func_start ov101_021D7588
ov101_021D7588: @ 0x021D7588
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r4, r0, #0
	adds r7, r1, #0
	bl FUN_020715BC
	str r0, [r7]
	adds r0, r4, #0
	add r1, sp, #0x1c
	bl FUN_020715E4
	movs r6, #0
	adds r4, r7, #4
	adds r5, r7, #0
_021D75A4:
	movs r0, #0
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #6
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #2
	str r0, [sp, #0x14]
	movs r0, #3
	str r0, [sp, #0x18]
	movs r0, #0x45
	ldr r1, [r7]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	adds r1, r4, #0
	add r2, sp, #0x1c
	movs r3, #2
	bl ov101_021D84A4
	ldr r0, [r5, #8]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [r5, #8]
	movs r1, #1
	bl FUN_02021CC8
	adds r6, r6, #1
	adds r4, #0xc
	adds r5, #0xc
	cmp r6, #2
	blt _021D75A4
	movs r0, #1
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D7588

	thumb_func_start ov101_021D75F0
ov101_021D75F0: @ 0x021D75F0
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #4
	bl ov101_021D8544
	adds r4, #0x10
	adds r0, r4, #0
	bl ov101_021D8544
	pop {r4, pc}
	thumb_func_end ov101_021D75F0

	thumb_func_start ov101_021D7604
ov101_021D7604: @ 0x021D7604
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r1, #0
	movs r0, #0x4f
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r4, r1, r0
	ldr r0, [r5, #8]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [r5, #0x14]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _021D76AA
	ldr r3, _021D76B0 @ =0x021D9010
	add r2, sp, #0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	movs r6, #0
	str r0, [r2]
	ldr r0, [r5]
	ldr r7, [r0, #0x10]
	cmp r7, #0x63
	bls _021D7640
	movs r7, #0x63
_021D7640:
	adds r0, r7, #0
	movs r1, #0x64
	blx FUN_020E2178
	adds r0, r1, #0
	movs r1, #0xa
	blx FUN_020E2178
	adds r4, r0, #0
	beq _021D767E
	ldr r0, [r5, #8]
	add r1, sp, #0
	bl FUN_02021C50
	ldr r0, [r5, #8]
	adds r1, r4, #0
	bl FUN_02021D6C
	ldr r0, [r5, #8]
	bl FUN_02021DE0
	ldr r0, [r5, #8]
	movs r1, #1
	bl FUN_02021CAC
	movs r0, #2
	ldr r1, [sp]
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp]
	adds r6, r6, #1
_021D767E:
	movs r0, #0xc
	adds r4, r6, #0
	adds r5, #8
	muls r4, r0, r4
	ldr r0, [r5, r4]
	add r1, sp, #0
	bl FUN_02021C50
	adds r0, r7, #0
	movs r1, #0xa
	blx FUN_020E2178
	ldr r0, [r5, r4]
	bl FUN_02021D6C
	ldr r0, [r5, r4]
	bl FUN_02021DE0
	ldr r0, [r5, r4]
	movs r1, #1
	bl FUN_02021CAC
_021D76AA:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021D76B0: .4byte 0x021D9010
	thumb_func_end ov101_021D7604

	thumb_func_start ov101_021D76B4
ov101_021D76B4: @ 0x021D76B4
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _021D76E0 @ =0x021D90E8
	adds r3, r0, #0
	ldm r5!, {r0, r1}
	add r4, sp, #8
	adds r2, r4, #0
	stm r4!, {r0, r1}
	ldr r0, [r5]
	ldr r1, _021D76E4 @ =0x021D91A0
	str r0, [r4]
	str r3, [sp]
	movs r0, #0x8e
	str r0, [sp, #4]
	ldr r0, _021D76E8 @ =0x0000044C
	ldr r0, [r3, r0]
	movs r3, #0
	bl FUN_02071330
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_021D76E0: .4byte 0x021D90E8
_021D76E4: .4byte 0x021D91A0
_021D76E8: .4byte 0x0000044C
	thumb_func_end ov101_021D76B4

	thumb_func_start ov101_021D76EC
ov101_021D76EC: @ 0x021D76EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r3, _021D7750 @ =0x021D8F68
	adds r4, r0, #0
	adds r6, r1, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0x1c
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	adds r0, r4, #0
	bl FUN_020715BC
	str r0, [r6]
	movs r4, #0
	adds r5, r6, #4
	movs r7, #2
_021D770E:
	movs r0, #0
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #6
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	movs r0, #3
	str r0, [sp, #0x18]
	movs r0, #0x45
	ldr r1, [r6]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	adds r1, r5, #0
	add r2, sp, #0x1c
	adds r3, r7, #0
	bl ov101_021D84A4
	movs r0, #2
	ldr r1, [sp, #0x1c]
	lsls r0, r0, #0xe
	adds r0, r1, r0
	adds r4, r4, #1
	adds r5, #0xc
	str r0, [sp, #0x1c]
	cmp r4, #5
	blt _021D770E
	movs r0, #1
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D7750: .4byte 0x021D8F68
	thumb_func_end ov101_021D76EC

	thumb_func_start ov101_021D7754
ov101_021D7754: @ 0x021D7754
	push {r3, r4, r5, lr}
	movs r4, #0
	adds r5, r1, #4
_021D775A:
	adds r0, r5, #0
	bl ov101_021D8544
	adds r4, r4, #1
	adds r5, #0xc
	cmp r4, #5
	blt _021D775A
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov101_021D7754

	thumb_func_start ov101_021D776C
ov101_021D776C: @ 0x021D776C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	movs r0, #0x52
	ldr r1, [r5]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r7, #1
	cmp r0, #1
	bne _021D7780
	movs r7, #0
_021D7780:
	movs r6, #0
	adds r4, r5, #0
_021D7784:
	ldr r0, [r4, #8]
	adds r1, r7, #0
	bl FUN_02021CAC
	adds r6, r6, #1
	adds r4, #0xc
	cmp r6, #5
	blt _021D7784
	cmp r7, #0
	beq _021D77D8
	ldr r0, [r5]
	ldr r6, [r0, #0x14]
	ldr r0, _021D77DC @ =0x0000C350
	cmp r6, r0
	ble _021D77A4
	adds r6, r0, #0
_021D77A4:
	ldr r4, _021D77E0 @ =0x00002710
	movs r7, #0xa
_021D77A8:
	adds r1, r4, #0
	adds r0, r6, #0
	muls r1, r7, r1
	blx FUN_020E1F6C
	adds r0, r1, #0
	adds r1, r4, #0
	blx FUN_020E1F6C
	adds r1, r0, #0
	ldr r0, [r5, #8]
	bl FUN_02021D6C
	ldr r0, [r5, #8]
	bl FUN_02021DE0
	adds r0, r4, #0
	movs r1, #0xa
	blx FUN_020E1F6C
	adds r4, r0, #0
	adds r5, #0xc
	cmp r4, #1
	bge _021D77A8
_021D77D8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D77DC: .4byte 0x0000C350
_021D77E0: .4byte 0x00002710
	thumb_func_end ov101_021D776C

	thumb_func_start ov101_021D77E4
ov101_021D77E4: @ 0x021D77E4
	push {lr}
	sub sp, #0x14
	adds r3, r1, #0
	add r2, sp, #8
	movs r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	str r1, [r2, #8]
	str r0, [sp]
	movs r1, #0x8e
	str r1, [sp, #4]
	ldr r1, _021D7808 @ =0x0000044C
	ldr r0, [r0, r1]
	ldr r1, _021D780C @ =0x021D9240
	bl FUN_02071330
	add sp, #0x14
	pop {pc}
	.align 2, 0
_021D7808: .4byte 0x0000044C
_021D780C: .4byte 0x021D9240
	thumb_func_end ov101_021D77E4

	thumb_func_start ov101_021D7810
ov101_021D7810: @ 0x021D7810
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	adds r6, r0, #0
	adds r5, r1, #0
	add r1, sp, #0x2c
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	ldr r3, _021D7974 @ =0x021D9040
	str r0, [r1, #8]
	ldm r3!, {r0, r1}
	add r2, sp, #0x20
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	adds r0, r6, #0
	bl FUN_020715BC
	adds r4, r0, #0
	adds r0, r6, #0
	bl FUN_020715B4
	str r0, [r5]
	str r4, [r5, #0x14]
	ldr r0, [r5]
	cmp r0, #0
	bne _021D787A
	ldr r1, [r4, #0x1c]
	ldr r0, _021D7978 @ =0x000003E7
	str r1, [r5, #4]
	cmp r1, r0
	bls _021D7852
	str r0, [r5, #4]
_021D7852:
	ldr r0, [r5, #4]
	cmp r0, #0x64
	blo _021D785E
	movs r0, #3
	str r0, [r5, #8]
	b _021D786C
_021D785E:
	cmp r0, #0xa
	blo _021D7868
	movs r0, #2
	str r0, [r5, #8]
	b _021D786C
_021D7868:
	movs r0, #1
	str r0, [r5, #8]
_021D786C:
	movs r0, #0x32
	lsls r0, r0, #0xe
	str r0, [sp, #0x38]
	movs r0, #0x13
	lsls r0, r0, #0x10
	str r0, [sp, #0x3c]
	b _021D78C6
_021D787A:
	ldr r1, [r4, #0x14]
	ldr r0, _021D797C @ =0x0001869F
	str r1, [r5, #4]
	cmp r1, r0
	bls _021D7886
	str r0, [r5, #4]
_021D7886:
	ldr r1, [r5, #4]
	ldr r0, _021D7980 @ =0x00002710
	cmp r1, r0
	blo _021D7894
	movs r0, #5
	str r0, [r5, #8]
	b _021D78BA
_021D7894:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	blo _021D78A2
	movs r0, #4
	str r0, [r5, #8]
	b _021D78BA
_021D78A2:
	cmp r1, #0x64
	blo _021D78AC
	movs r0, #3
	str r0, [r5, #8]
	b _021D78BA
_021D78AC:
	cmp r1, #0xa
	blo _021D78B6
	movs r0, #2
	str r0, [r5, #8]
	b _021D78BA
_021D78B6:
	movs r0, #1
	str r0, [r5, #8]
_021D78BA:
	movs r0, #0x32
	lsls r0, r0, #0xe
	str r0, [sp, #0x38]
	movs r0, #0x11
	lsls r0, r0, #0x10
	str r0, [sp, #0x3c]
_021D78C6:
	ldr r0, [r5, #8]
	movs r7, #0
	movs r6, #1
	cmp r0, #0
	bls _021D796A
	adds r0, r5, #0
	str r0, [sp, #0x1c]
	adds r0, #0x18
	str r0, [sp, #0x1c]
	adds r4, r5, #0
_021D78DA:
	movs r0, #0
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #6
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #2
	str r0, [sp, #0x14]
	movs r0, #3
	str r0, [sp, #0x18]
	movs r0, #0x45
	ldr r1, [r5, #0x14]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x1c]
	add r2, sp, #0x38
	movs r3, #2
	bl ov101_021D84A4
	ldr r0, [r4, #0x1c]
	movs r1, #2
	bl FUN_02021CF8
	ldr r0, [r4, #0x1c]
	add r1, sp, #0x2c
	bl FUN_02021C60
	ldr r0, [r4, #0x1c]
	add r1, sp, #0x20
	bl FUN_02021C70
	movs r0, #0
	bl FUN_0201D2A4
	adds r1, r0, #0
	ldr r0, [r4, #0x1c]
	bl FUN_02021C94
	movs r1, #0xa
	ldr r0, [r5, #4]
	muls r1, r6, r1
	blx FUN_020E2178
	adds r0, r1, #0
	adds r1, r6, #0
	blx FUN_020E2178
	adds r1, r0, #0
	ldr r0, [r4, #0x1c]
	bl FUN_02021D6C
	ldr r0, [r4, #0x1c]
	bl FUN_02021DE0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x38]
	adds r0, #0xc
	str r0, [sp, #0x1c]
	movs r0, #0xa
	muls r6, r0, r6
	movs r0, #1
	lsls r0, r0, #0x10
	subs r0, r1, r0
	str r0, [sp, #0x38]
	ldr r0, [r5, #8]
	adds r7, r7, #1
	adds r4, #0xc
	cmp r7, r0
	blo _021D78DA
_021D796A:
	str r7, [r5, #0x10]
	movs r0, #1
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021D7974: .4byte 0x021D9040
_021D7978: .4byte 0x000003E7
_021D797C: .4byte 0x0001869F
_021D7980: .4byte 0x00002710
	thumb_func_end ov101_021D7810

	thumb_func_start ov101_021D7984
ov101_021D7984: @ 0x021D7984
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	ldr r0, [r6, #0x10]
	movs r4, #0
	cmp r0, #0
	ble _021D79A4
	adds r5, r6, #0
	adds r5, #0x18
_021D7994:
	adds r0, r5, #0
	bl ov101_021D8544
	ldr r0, [r6, #0x10]
	adds r4, r4, #1
	adds r5, #0xc
	cmp r4, r0
	blt _021D7994
_021D79A4:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov101_021D7984

	thumb_func_start ov101_021D79A8
ov101_021D79A8: @ 0x021D79A8
	push {r3, lr}
	ldr r2, [r1, #0xc]
	adds r2, r2, #1
	str r2, [r1, #0xc]
	cmp r2, #0x2d
	blt _021D79B8
	bl FUN_0207136C
_021D79B8:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov101_021D79A8

	thumb_func_start ov101_021D79BC
ov101_021D79BC: @ 0x021D79BC
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _021D79F0 @ =0x021D8F08
	adds r2, r0, #0
	adds r3, r1, #0
	ldm r5!, {r0, r1}
	add r4, sp, #8
	stm r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	ldr r0, _021D79F4 @ =0x000003E7
	cmp r3, r0
	bls _021D79D8
	adds r3, r0, #0
_021D79D8:
	str r2, [sp]
	movs r0, #0x8e
	str r0, [sp, #4]
	ldr r0, _021D79F8 @ =0x0000044C
	ldr r1, _021D79FC @ =0x021D9268
	ldr r0, [r2, r0]
	add r2, sp, #8
	bl FUN_02071330
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_021D79F0: .4byte 0x021D8F08
_021D79F4: .4byte 0x000003E7
_021D79F8: .4byte 0x0000044C
_021D79FC: .4byte 0x021D9268
	thumb_func_end ov101_021D79BC

	thumb_func_start ov101_021D7A00
ov101_021D7A00: @ 0x021D7A00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r4, r0, #0
	adds r5, r1, #0
	bl FUN_020715BC
	str r0, [r5, #8]
	adds r0, r4, #0
	bl FUN_020715B4
	str r0, [sp, #0x20]
	adds r0, r4, #0
	add r1, sp, #0x24
	bl FUN_020715E4
	ldr r0, [sp, #0x20]
	cmp r0, #0x64
	blo _021D7A36
	movs r0, #3
	str r0, [r5, #4]
	movs r0, #1
	ldr r1, [sp, #0x24]
	lsls r0, r0, #0x10
	subs r0, r1, r0
	movs r4, #0x64
	str r0, [sp, #0x24]
	b _021D7A4E
_021D7A36:
	cmp r0, #0xa
	blo _021D7A4A
	movs r0, #2
	str r0, [r5, #4]
	ldr r1, [sp, #0x24]
	lsls r0, r0, #0xe
	subs r0, r1, r0
	movs r4, #0xa
	str r0, [sp, #0x24]
	b _021D7A4E
_021D7A4A:
	movs r4, #1
	str r4, [r5, #4]
_021D7A4E:
	ldr r0, [r5, #4]
	movs r6, #0
	cmp r0, #0
	ble _021D7ACA
	adds r0, r5, #0
	str r0, [sp, #0x1c]
	adds r0, #0xc
	str r0, [sp, #0x1c]
	adds r7, r5, #0
_021D7A60:
	movs r0, #0
	str r0, [sp]
	movs r0, #9
	str r0, [sp, #4]
	movs r0, #7
	str r0, [sp, #8]
	movs r0, #9
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #2
	str r0, [sp, #0x14]
	movs r0, #3
	str r0, [sp, #0x18]
	movs r0, #0x45
	ldr r1, [r5, #8]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x1c]
	add r2, sp, #0x24
	movs r3, #2
	bl ov101_021D84A4
	movs r1, #0xa
	ldr r0, [sp, #0x20]
	muls r1, r4, r1
	blx FUN_020E2178
	adds r0, r1, #0
	adds r1, r4, #0
	blx FUN_020E2178
	adds r1, r0, #0
	ldr r0, [r7, #0x10]
	bl FUN_02021D6C
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x24]
	adds r0, #0xc
	str r0, [sp, #0x1c]
	movs r0, #1
	lsls r0, r0, #0x10
	adds r0, r1, r0
	str r0, [sp, #0x24]
	adds r0, r4, #0
	movs r1, #0xa
	adds r7, #0xc
	adds r6, r6, #1
	blx FUN_020E2178
	adds r4, r0, #0
	ldr r0, [r5, #4]
	cmp r6, r0
	blt _021D7A60
_021D7ACA:
	movs r0, #1
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D7A00

	thumb_func_start ov101_021D7AD0
ov101_021D7AD0: @ 0x021D7AD0
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	ldr r0, [r6, #4]
	movs r4, #0
	cmp r0, #0
	ble _021D7AF0
	adds r5, r6, #0
	adds r5, #0xc
_021D7AE0:
	adds r0, r5, #0
	bl ov101_021D8544
	ldr r0, [r6, #4]
	adds r4, r4, #1
	adds r5, #0xc
	cmp r4, r0
	blt _021D7AE0
_021D7AF0:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov101_021D7AD0

	thumb_func_start ov101_021D7AF4
ov101_021D7AF4: @ 0x021D7AF4
	push {r3, lr}
	ldr r2, [r1]
	adds r2, r2, #1
	str r2, [r1]
	cmp r2, #0x3c
	blt _021D7B04
	bl FUN_0207136C
_021D7B04:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov101_021D7AF4

	thumb_func_start ov101_021D7B08
ov101_021D7B08: @ 0x021D7B08
	push {lr}
	sub sp, #0x14
	add r2, sp, #8
	movs r3, #0
	str r3, [r2]
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r0, [sp]
	movs r1, #0x8c
	str r1, [sp, #4]
	ldr r1, _021D7B2C @ =0x0000044C
	ldr r0, [r0, r1]
	ldr r1, _021D7B30 @ =0x021D91B4
	bl FUN_02071330
	add sp, #0x14
	pop {pc}
	nop
_021D7B2C: .4byte 0x0000044C
_021D7B30: .4byte 0x021D91B4
	thumb_func_end ov101_021D7B08

	thumb_func_start ov101_021D7B34
ov101_021D7B34: @ 0x021D7B34
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_020715BC
	str r0, [r4, #0x44]
	ldr r0, [r0, #0x44]
	adds r3, r4, #0
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x44]
	adds r3, #0x1c
	ldr r0, [r0, #0x48]
	movs r1, #1
_021D7B4C:
	adds r2, r0, #0
	tst r2, r1
	bne _021D7B60
	ldr r2, [r3]
	lsrs r0, r0, #1
	adds r2, r2, #1
	str r2, [r3]
	ldr r2, [r4, #0x1c]
	cmp r2, #5
	blt _021D7B4C
_021D7B60:
	ldr r0, [r4, #0x1c]
	cmp r0, #5
	blt _021D7B6A
	bl FUN_02022974
_021D7B6A:
	adds r0, r4, #0
	bl ov101_021D7D94
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov101_021D7B34

	thumb_func_start ov101_021D7B74
ov101_021D7B74: @ 0x021D7B74
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	ldr r0, [r7, #0x14]
	cmp r0, #0
	bne _021D7BB0
	adds r5, r7, #0
	movs r6, #0
	adds r4, r7, #0
	adds r5, #0x20
_021D7B86:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021D7B92
	adds r0, r5, #0
	bl ov101_021D8544
_021D7B92:
	adds r6, r6, #1
	adds r4, #0xc
	adds r5, #0xc
	cmp r6, #3
	blt _021D7B86
	movs r1, #0xa
	str r1, [sp]
	movs r0, #0x45
	ldr r2, [r7, #0x44]
	lsls r0, r0, #4
	ldr r0, [r2, r0]
	movs r2, #8
	adds r3, r1, #0
	bl ov101_021D8358
_021D7BB0:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov101_021D7B74

	thumb_func_start ov101_021D7BB4
ov101_021D7BB4: @ 0x021D7BB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r5, r1, #0
	ldr r0, [r5]
	cmp r0, #5
	bhi _021D7BDE
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D7BCC: @ jump table
	.2byte _021D7BD8 - _021D7BCC - 2 @ case 0
	.2byte _021D7C52 - _021D7BCC - 2 @ case 1
	.2byte _021D7C9C - _021D7BCC - 2 @ case 2
	.2byte _021D7CB4 - _021D7BCC - 2 @ case 3
	.2byte _021D7CF8 - _021D7BCC - 2 @ case 4
	.2byte _021D7D10 - _021D7BCC - 2 @ case 5
_021D7BD8:
	ldr r0, [r5, #8]
	cmp r0, #2
	beq _021D7BE0
_021D7BDE:
	b _021D7D44
_021D7BE0:
	movs r4, #0
	adds r7, r5, #0
	str r4, [sp, #0x20]
	adds r7, #0x20
	adds r6, r5, #0
_021D7BEA:
	ldr r1, [r5, #0x1c]
	movs r0, #0x24
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, _021D7D48 @ =0x021D9424
	adds r0, r0, r2
	adds r3, r4, r0
	add r2, sp, #0x24
	ldm r3!, {r0, r1}
	mov ip, r2
	stm r2!, {r0, r1}
	ldr r0, [r3]
	movs r3, #3
	str r0, [r2]
	movs r0, #0
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x18]
	movs r0, #0x45
	ldr r1, [r5, #0x44]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	adds r1, r7, #0
	mov r2, ip
	bl ov101_021D84A4
	ldr r0, [r6, #0x24]
	movs r1, #1
	bl FUN_02021CC8
	ldr r0, [sp, #0x20]
	adds r4, #0xc
	adds r0, r0, #1
	adds r7, #0xc
	adds r6, #0xc
	str r0, [sp, #0x20]
	cmp r0, #3
	blt _021D7BEA
	ldr r0, [r5]
	add sp, #0x30
	adds r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021D7C52:
	movs r6, #0
	str r6, [sp, #0x1c]
	adds r4, r5, #0
	add r7, sp, #0x24
_021D7C5A:
	ldr r0, [r4, #0x24]
	adds r1, r7, #0
	bl ov101_021D8560
	movs r0, #1
	ldr r1, [sp, #0x28]
	lsls r0, r0, #0xe
	adds r1, r1, r0
	movs r0, #0xf
	lsls r0, r0, #0x10
	str r1, [sp, #0x28]
	cmp r1, r0
	blt _021D7C78
	str r0, [sp, #0x28]
	b _021D7C7C
_021D7C78:
	movs r0, #1
	str r0, [sp, #0x1c]
_021D7C7C:
	ldr r0, [r4, #0x24]
	adds r1, r7, #0
	bl FUN_02021C50
	adds r6, r6, #1
	adds r4, #0xc
	cmp r6, #3
	blt _021D7C5A
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _021D7D44
	ldr r0, [r5]
	add sp, #0x30
	adds r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021D7C9C:
	ldr r0, [r5, #0xc]
	adds r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #0x1e
	blt _021D7D44
	movs r0, #0
	str r0, [r5, #0xc]
	ldr r0, [r5]
	add sp, #0x30
	adds r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021D7CB4:
	ldr r0, [r5, #0xc]
	adds r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #0xc
	blt _021D7CC2
	movs r7, #1
	b _021D7CC4
_021D7CC2:
	movs r7, #0
_021D7CC4:
	movs r6, #0
	adds r4, r5, #0
_021D7CC8:
	ldr r0, [r4, #0x24]
	adds r1, r7, #0
	bl FUN_02021CAC
	adds r6, r6, #1
	adds r4, #0xc
	cmp r6, #3
	blt _021D7CC8
	ldr r0, [r5, #0xc]
	cmp r0, #0x1e
	blt _021D7D44
	movs r1, #0
	str r1, [r5, #0xc]
	ldr r0, [r5, #0x10]
	adds r0, r0, #1
	str r0, [r5, #0x10]
	cmp r0, #3
	blt _021D7D44
	str r1, [r5, #0x10]
	ldr r0, [r5]
	add sp, #0x30
	adds r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021D7CF8:
	ldr r0, [r5, #0xc]
	adds r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #0x1e
	blt _021D7D44
	movs r0, #0
	str r0, [r5, #0xc]
	ldr r0, [r5]
	add sp, #0x30
	adds r0, r0, #1
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021D7D10:
	adds r4, r5, #0
	movs r6, #0
	adds r4, #0x20
_021D7D16:
	adds r0, r4, #0
	bl ov101_021D8544
	adds r6, r6, #1
	adds r4, #0xc
	cmp r6, #3
	blt _021D7D16
	movs r1, #0xa
	str r1, [sp]
	movs r0, #0x45
	ldr r2, [r5, #0x44]
	lsls r0, r0, #4
	ldr r0, [r2, r0]
	movs r2, #8
	adds r3, r1, #0
	bl ov101_021D8358
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	movs r0, #1
	str r0, [r5, #4]
	str r0, [r5, #0x14]
_021D7D44:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D7D48: .4byte 0x021D9424
	thumb_func_end ov101_021D7BB4

	thumb_func_start ov101_021D7D4C
ov101_021D7D4C: @ 0x021D7D4C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	movs r0, #0x45
	ldr r1, [r4, #0x44]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #0xa
	bl ov101_021D814C
	movs r0, #1
	str r0, [r4, #8]
	adds r0, r5, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov101_021D7D4C

	thumb_func_start ov101_021D7D6C
ov101_021D7D6C: @ 0x021D7D6C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x44]
	cmp r0, #1
	bne _021D7D90
	movs r0, #0x45
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #0xa
	bl ov101_021D8180
	movs r0, #2
	str r0, [r4, #8]
	adds r0, r5, #0
	bl FUN_0200DA58
_021D7D90:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov101_021D7D6C

	thumb_func_start ov101_021D7D94
ov101_021D7D94: @ 0x021D7D94
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x18]
	ldr r4, [r5, #0x44]
	cmp r0, #0
	bne _021D7DDC
	movs r2, #0x45
	movs r0, #0xa
	lsls r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	subs r2, #0x18
	ldr r2, [r4, r2]
	movs r1, #3
	movs r3, #0xe
	bl ov101_021D80E4
	movs r1, #0x45
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	subs r1, #0x18
	ldr r1, [r4, r1]
	movs r2, #0xf
	movs r3, #0xa
	bl ov101_021D8288
	movs r1, #0x45
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	subs r1, #0x18
	ldr r1, [r4, r1]
	movs r2, #0x10
	movs r3, #0xa
	bl ov101_021D82F0
	b _021D7E16
_021D7DDC:
	movs r2, #0x45
	movs r0, #0xa
	lsls r2, r2, #4
	str r0, [sp]
	ldr r0, [r4, r2]
	subs r2, #0x18
	ldr r2, [r4, r2]
	movs r1, #3
	movs r3, #0x11
	bl ov101_021D80E4
	movs r1, #0x45
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	subs r1, #0x18
	ldr r1, [r4, r1]
	movs r2, #0x12
	movs r3, #0xa
	bl ov101_021D8288
	movs r1, #0x45
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	subs r1, #0x18
	ldr r1, [r4, r1]
	movs r2, #0x13
	movs r3, #0xa
	bl ov101_021D82F0
_021D7E16:
	ldr r0, _021D7E3C @ =ov101_021D7D4C
	ldr r2, _021D7E40 @ =0x00000101
	adds r1, r5, #0
	bl FUN_0200DA04
	cmp r0, #0
	bne _021D7E28
	bl FUN_02022974
_021D7E28:
	ldr r0, _021D7E44 @ =ov101_021D7D6C
	ldr r2, _021D7E40 @ =0x00000101
	adds r1, r5, #0
	bl FUN_0200DA3C
	cmp r0, #0
	bne _021D7E3A
	bl FUN_02022974
_021D7E3A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D7E3C: .4byte ov101_021D7D4C
_021D7E40: .4byte 0x00000101
_021D7E44: .4byte ov101_021D7D6C
	thumb_func_end ov101_021D7D94

	thumb_func_start ov101_021D7E48
ov101_021D7E48: @ 0x021D7E48
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	ldr r1, [sp, #0x28]
	str r0, [sp]
	str r1, [sp, #0x28]
	movs r1, #0x57
	lsls r1, r1, #2
	str r2, [sp, #8]
	adds r7, r3, #0
	ldr r5, [sp, #0x20]
	ldr r6, [sp, #0x24]
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D7E6C
	bl FUN_02022974
_021D7E6C:
	ldr r0, [sp]
	adds r1, r4, #0
	str r0, [r4]
	strb r7, [r4, #4]
	strb r5, [r4, #5]
	ldr r0, [sp, #0x28]
	strb r6, [r4, #6]
	strb r0, [r4, #7]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp]
	strb r0, [r4, #8]
	ldr r0, [sp, #0x30]
	adds r1, #0x10
	strb r0, [r4, #9]
	ldr r0, [sp, #0x34]
	strb r0, [r4, #0xa]
	ldr r0, [sp, #0x38]
	strb r0, [r4, #0xb]
	ldr r0, [sp, #4]
	bl FUN_020095C4
	str r0, [r4, #0xc]
	ldr r0, [sp, #8]
	ldr r1, [sp]
	bl FUN_0201DCC8
	movs r1, #0x4e
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #8]
	ldr r1, [sp]
	bl FUN_0201DBEC
	ldr r2, [sp]
	adds r0, r7, #0
	movs r1, #0
	bl FUN_02009714
	movs r1, #0x4f
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r2, [sp]
	adds r0, r5, #0
	movs r1, #1
	bl FUN_02009714
	movs r1, #5
	lsls r1, r1, #6
	str r0, [r4, r1]
	ldr r2, [sp]
	adds r0, r6, #0
	movs r1, #2
	bl FUN_02009714
	movs r1, #0x51
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #0x28]
	ldr r2, [sp]
	movs r1, #3
	bl FUN_02009714
	movs r1, #0x52
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp]
	lsls r1, r7, #3
	bl FUN_02018144
	movs r1, #0x53
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp]
	lsls r1, r5, #3
	bl FUN_02018144
	movs r1, #0x15
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [sp]
	lsls r1, r6, #3
	bl FUN_02018144
	movs r1, #0x55
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [sp, #0x28]
	ldr r0, [sp]
	lsls r1, r1, #3
	bl FUN_02018144
	movs r1, #0x56
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r1, #0
	cmp r7, #0
	bls _021D7F48
	bls _021D7F48
	ldr r0, [sp, #0x2c]
	adds r2, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_021D7F38:
	movs r3, #0x53
	lsls r3, r3, #2
	ldr r3, [r4, r3]
	adds r1, r1, #1
	strh r0, [r3, r2]
	adds r2, #8
	cmp r1, r7
	blo _021D7F38
_021D7F48:
	movs r3, #0
	cmp r5, #0
	bls _021D7F68
	bls _021D7F68
	ldr r0, [sp, #0x30]
	movs r7, #0x15
	lsls r0, r0, #0x10
	adds r2, r3, #0
	lsrs r1, r0, #0x10
	lsls r7, r7, #4
_021D7F5C:
	ldr r0, [r4, r7]
	adds r3, r3, #1
	strh r1, [r0, r2]
	adds r2, #8
	cmp r3, r5
	blo _021D7F5C
_021D7F68:
	movs r1, #0
	cmp r6, #0
	bls _021D7F88
	bls _021D7F88
	ldr r2, [sp, #0x34]
	adds r0, r1, #0
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	movs r2, #0x55
	lsls r2, r2, #2
_021D7F7C:
	ldr r3, [r4, r2]
	adds r1, r1, #1
	strh r5, [r3, r0]
	adds r0, #8
	cmp r1, r6
	blo _021D7F7C
_021D7F88:
	ldr r0, [sp, #0x28]
	movs r1, #0
	cmp r0, #0
	bls _021D7FAC
	bls _021D7FAC
	ldr r2, [sp, #0x38]
	movs r3, #0x56
	lsls r2, r2, #0x10
	adds r0, r1, #0
	lsrs r5, r2, #0x10
	lsls r3, r3, #2
_021D7F9E:
	ldr r2, [r4, r3]
	adds r1, r1, #1
	strh r5, [r2, r0]
	ldr r2, [sp, #0x28]
	adds r0, #8
	cmp r1, r2
	blo _021D7F9E
_021D7FAC:
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov101_021D7E48

	thumb_func_start ov101_021D7FB4
ov101_021D7FB4: @ 0x021D7FB4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #4]
	movs r6, #0
	cmp r0, #0
	bls _021D7FE2
	movs r7, #0x53
	adds r4, r6, #0
	lsls r7, r7, #2
_021D7FC6:
	ldr r1, [r5, r7]
	ldrb r2, [r5, #8]
	adds r0, r1, r4
	ldrh r1, [r1, r4]
	cmp r2, r1
	beq _021D7FD8
	ldr r0, [r0, #4]
	bl FUN_0200A4E4
_021D7FD8:
	ldrb r0, [r5, #4]
	adds r6, r6, #1
	adds r4, #8
	cmp r6, r0
	blo _021D7FC6
_021D7FE2:
	ldrb r0, [r5, #5]
	movs r6, #0
	cmp r0, #0
	bls _021D800C
	movs r7, #0x15
	adds r4, r6, #0
	lsls r7, r7, #4
_021D7FF0:
	ldr r1, [r5, r7]
	ldrb r2, [r5, #9]
	adds r0, r1, r4
	ldrh r1, [r1, r4]
	cmp r2, r1
	beq _021D8002
	ldr r0, [r0, #4]
	bl FUN_0200A6DC
_021D8002:
	ldrb r0, [r5, #5]
	adds r6, r6, #1
	adds r4, #8
	cmp r6, r0
	blo _021D7FF0
_021D800C:
	ldrb r0, [r5, #6]
	movs r6, #0
	cmp r0, #0
	bls _021D8036
	movs r7, #0x55
	adds r4, r6, #0
	lsls r7, r7, #2
_021D801A:
	ldr r1, [r5, r7]
	ldrb r2, [r5, #0xa]
	adds r0, r1, r4
	ldrh r1, [r1, r4]
	cmp r2, r1
	beq _021D802C
	ldr r0, [r0, #4]
	bl FUN_02009D4C
_021D802C:
	ldrb r0, [r5, #6]
	adds r6, r6, #1
	adds r4, #8
	cmp r6, r0
	blo _021D801A
_021D8036:
	ldrb r0, [r5, #7]
	movs r6, #0
	cmp r0, #0
	bls _021D8060
	movs r7, #0x56
	adds r4, r6, #0
	lsls r7, r7, #2
_021D8044:
	ldr r1, [r5, r7]
	ldrb r2, [r5, #0xb]
	adds r0, r1, r4
	ldrh r1, [r1, r4]
	cmp r2, r1
	beq _021D8056
	ldr r0, [r0, #4]
	bl FUN_02009D4C
_021D8056:
	ldrb r0, [r5, #7]
	adds r6, r6, #1
	adds r4, #8
	cmp r6, r0
	blo _021D8044
_021D8060:
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02009754
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	bl FUN_02009754
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02009754
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02009754
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_020181C4
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_020181C4
	movs r0, #0x55
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_020181C4
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_020181C4
	bl FUN_0201DC3C
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0201DCF0
	ldr r0, [r5, #0xc]
	bl FUN_020219C0
	ldr r0, [r5, #0xc]
	bl FUN_02021964
	adds r0, r5, #0
	bl FUN_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov101_021D7FB4

	thumb_func_start ov101_021D80D4
ov101_021D80D4: @ 0x021D80D4
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl FUN_020219F8
	bl FUN_0201DCE8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov101_021D80D4

	thumb_func_start ov101_021D80E4
ov101_021D80E4: @ 0x021D80E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r5, [r4, #4]
	adds r7, r1, #0
	movs r1, #0
	str r2, [sp, #0xc]
	mov ip, r3
	cmp r5, #0
	bls _021D8144
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r6, [r4, r0]
	ldrb r3, [r4, #8]
	adds r2, r6, #0
_021D8102:
	ldrh r0, [r2]
	cmp r3, r0
	bne _021D813C
	ldr r0, [sp, #0x28]
	lsls r5, r1, #3
	movs r1, #0x53
	strh r0, [r6, r5]
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	movs r3, #0
	adds r2, r2, r5
	strh r3, [r2, #2]
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r4]
	subs r1, #0x10
	str r0, [sp, #8]
	ldr r0, [r4, r1]
	ldr r1, [sp, #0xc]
	mov r2, ip
	bl FUN_02009A4C
	movs r1, #0x53
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	add sp, #0x10
	adds r1, r1, r5
	str r0, [r1, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021D813C:
	adds r1, r1, #1
	adds r2, #8
	cmp r1, r5
	blo _021D8102
_021D8144:
	bl FUN_02022974
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D80E4

	thumb_func_start ov101_021D814C
ov101_021D814C: @ 0x021D814C
	push {r3, r4, r5, lr}
	ldrb r2, [r0, #4]
	movs r4, #0
	cmp r2, #0
	bls _021D8178
	movs r3, #0x53
	lsls r3, r3, #2
	ldr r5, [r0, r3]
	adds r3, r5, #0
_021D815E:
	ldrh r0, [r3]
	cmp r1, r0
	bne _021D8170
	lsls r0, r4, #3
	adds r0, r5, r0
	ldr r0, [r0, #4]
	bl FUN_0200A3DC
	pop {r3, r4, r5, pc}
_021D8170:
	adds r4, r4, #1
	adds r3, #8
	cmp r4, r2
	blo _021D815E
_021D8178:
	bl FUN_02022974
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov101_021D814C

	thumb_func_start ov101_021D8180
ov101_021D8180: @ 0x021D8180
	push {r3, r4, r5, lr}
	ldrb r2, [r0, #4]
	movs r4, #0
	cmp r2, #0
	bls _021D81AC
	movs r3, #0x53
	lsls r3, r3, #2
	ldr r5, [r0, r3]
	adds r3, r5, #0
_021D8192:
	ldrh r0, [r3]
	cmp r1, r0
	bne _021D81A4
	lsls r0, r4, #3
	adds r0, r5, r0
	ldr r0, [r0, #4]
	bl FUN_02009D4C
	pop {r3, r4, r5, pc}
_021D81A4:
	adds r4, r4, #1
	adds r3, #8
	cmp r4, r2
	blo _021D8192
_021D81AC:
	bl FUN_02022974
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov101_021D8180

	thumb_func_start ov101_021D81B4
ov101_021D81B4: @ 0x021D81B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldrb r5, [r4, #4]
	adds r7, r1, #0
	movs r1, #0
	str r2, [sp, #0x10]
	mov ip, r3
	cmp r5, #0
	bls _021D8218
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r6, [r4, r0]
	ldrb r3, [r4, #9]
	adds r2, r6, #0
_021D81D2:
	ldrh r0, [r2]
	cmp r3, r0
	bne _021D8210
	ldr r0, [sp, #0x28]
	lsls r5, r1, #3
	movs r1, #0x15
	strh r0, [r6, r5]
	lsls r1, r1, #4
	ldr r2, [r4, r1]
	movs r3, #0
	adds r2, r2, r5
	strh r3, [r2, #2]
	str r0, [sp]
	str r7, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	ldr r0, [r4]
	subs r1, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4, r1]
	ldr r1, [sp, #0x10]
	mov r2, ip
	bl FUN_02009B04
	movs r1, #0x15
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	add sp, #0x14
	adds r1, r1, r5
	str r0, [r1, #4]
	pop {r4, r5, r6, r7, pc}
_021D8210:
	adds r1, r1, #1
	adds r2, #8
	cmp r1, r5
	blo _021D81D2
_021D8218:
	bl FUN_02022974
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D81B4

	thumb_func_start ov101_021D8220
ov101_021D8220: @ 0x021D8220
	push {r3, r4, r5, lr}
	ldrb r2, [r0, #5]
	movs r4, #0
	cmp r2, #0
	bls _021D824C
	movs r3, #0x15
	lsls r3, r3, #4
	ldr r5, [r0, r3]
	adds r3, r5, #0
_021D8232:
	ldrh r0, [r3]
	cmp r1, r0
	bne _021D8244
	lsls r0, r4, #3
	adds r0, r5, r0
	ldr r0, [r0, #4]
	bl FUN_0200A640
	pop {r3, r4, r5, pc}
_021D8244:
	adds r4, r4, #1
	adds r3, #8
	cmp r4, r2
	blo _021D8232
_021D824C:
	bl FUN_02022974
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov101_021D8220

	thumb_func_start ov101_021D8254
ov101_021D8254: @ 0x021D8254
	push {r3, r4, r5, lr}
	ldrb r2, [r0, #5]
	movs r4, #0
	cmp r2, #0
	bls _021D8280
	movs r3, #0x15
	lsls r3, r3, #4
	ldr r5, [r0, r3]
	adds r3, r5, #0
_021D8266:
	ldrh r0, [r3]
	cmp r1, r0
	bne _021D8278
	lsls r0, r4, #3
	adds r0, r5, r0
	ldr r0, [r0, #4]
	bl FUN_02009D4C
	pop {r3, r4, r5, pc}
_021D8278:
	adds r4, r4, #1
	adds r3, #8
	cmp r4, r2
	blo _021D8266
_021D8280:
	bl FUN_02022974
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov101_021D8254

	thumb_func_start ov101_021D8288
ov101_021D8288: @ 0x021D8288
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r5, [r4, #4]
	str r1, [sp, #0xc]
	mov ip, r2
	adds r6, r3, #0
	movs r1, #0
	cmp r5, #0
	bls _021D82E8
	movs r0, #0x55
	lsls r0, r0, #2
	ldr r7, [r4, r0]
	ldrb r3, [r4, #0xa]
	adds r2, r7, #0
_021D82A6:
	ldrh r0, [r2]
	cmp r3, r0
	bne _021D82E0
	lsls r5, r1, #3
	movs r0, #0x55
	strh r6, [r7, r5]
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	movs r3, #0
	adds r1, r1, r5
	strh r3, [r1, #2]
	str r6, [sp]
	movs r1, #2
	str r1, [sp, #4]
	ldr r1, [r4]
	subs r0, #0x10
	str r1, [sp, #8]
	ldr r0, [r4, r0]
	ldr r1, [sp, #0xc]
	mov r2, ip
	bl FUN_02009BC4
	movs r1, #0x55
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	add sp, #0x10
	adds r1, r1, r5
	str r0, [r1, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021D82E0:
	adds r1, r1, #1
	adds r2, #8
	cmp r1, r5
	blo _021D82A6
_021D82E8:
	bl FUN_02022974
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D8288

	thumb_func_start ov101_021D82F0
ov101_021D82F0: @ 0x021D82F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r5, [r4, #4]
	str r1, [sp, #0xc]
	mov ip, r2
	adds r6, r3, #0
	movs r1, #0
	cmp r5, #0
	bls _021D8350
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r7, [r4, r0]
	ldrb r3, [r4, #0xb]
	adds r2, r7, #0
_021D830E:
	ldrh r0, [r2]
	cmp r3, r0
	bne _021D8348
	lsls r5, r1, #3
	movs r0, #0x56
	strh r6, [r7, r5]
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	movs r3, #0
	adds r1, r1, r5
	strh r3, [r1, #2]
	str r6, [sp]
	movs r1, #3
	str r1, [sp, #4]
	ldr r1, [r4]
	subs r0, #0x10
	str r1, [sp, #8]
	ldr r0, [r4, r0]
	ldr r1, [sp, #0xc]
	mov r2, ip
	bl FUN_02009BC4
	movs r1, #0x56
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	add sp, #0x10
	adds r1, r1, r5
	str r0, [r1, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021D8348:
	adds r1, r1, #1
	adds r2, #8
	cmp r1, r5
	blo _021D830E
_021D8350:
	bl FUN_02022974
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D82F0

	thumb_func_start ov101_021D8358
ov101_021D8358: @ 0x021D8358
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r0, r1, #0
	ldrb r1, [r4, #8]
	adds r7, r2, #0
	str r3, [sp]
	ldr r6, [sp, #0x20]
	cmp r0, r1
	beq _021D83B4
	ldrb r5, [r4, #4]
	movs r2, #0
	cmp r5, #0
	bls _021D83B4
	movs r1, #0x53
	lsls r1, r1, #2
	ldr r3, [r4, r1]
	mov ip, r3
_021D837C:
	ldrh r1, [r3]
	cmp r0, r1
	bne _021D83AC
	lsls r5, r2, #3
	mov r0, ip
	adds r0, r0, r5
	ldr r0, [r0, #4]
	bl FUN_0200A4E4
	movs r1, #0x4f
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	adds r1, #0x10
	ldr r1, [r4, r1]
	adds r1, r1, r5
	ldr r1, [r1, #4]
	bl FUN_02009D68
	movs r0, #0x53
	lsls r0, r0, #2
	ldrb r1, [r4, #8]
	ldr r0, [r4, r0]
	strh r1, [r0, r5]
	b _021D83B4
_021D83AC:
	adds r2, r2, #1
	adds r3, #8
	cmp r2, r5
	blo _021D837C
_021D83B4:
	ldrb r0, [r4, #9]
	cmp r7, r0
	beq _021D8402
	ldrb r0, [r4, #5]
	movs r1, #0
	cmp r0, #0
	bls _021D8402
	movs r2, #0x15
	lsls r2, r2, #4
	ldr r3, [r4, r2]
	str r3, [sp, #4]
_021D83CA:
	ldrh r2, [r3]
	cmp r7, r2
	bne _021D83FA
	ldr r0, [sp, #4]
	lsls r5, r1, #3
	adds r0, r0, r5
	ldr r0, [r0, #4]
	bl FUN_0200A6DC
	movs r1, #5
	lsls r1, r1, #6
	ldr r0, [r4, r1]
	adds r1, #0x10
	ldr r1, [r4, r1]
	adds r1, r1, r5
	ldr r1, [r1, #4]
	bl FUN_02009D68
	movs r0, #0x15
	lsls r0, r0, #4
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	strh r1, [r0, r5]
	b _021D8402
_021D83FA:
	adds r1, r1, #1
	adds r3, #8
	cmp r1, r0
	blo _021D83CA
_021D8402:
	ldrb r1, [r4, #0xa]
	ldr r0, [sp]
	cmp r0, r1
	beq _021D8452
	ldrb r3, [r4, #6]
	movs r5, #0
	cmp r3, #0
	bls _021D8452
	movs r0, #0x55
	lsls r0, r0, #2
	ldr r7, [r4, r0]
	adds r2, r7, #0
_021D841A:
	ldrh r1, [r2]
	ldr r0, [sp]
	cmp r0, r1
	bne _021D844A
	lsls r5, r5, #3
	adds r0, r7, r5
	ldr r0, [r0, #4]
	bl FUN_02009D4C
	movs r1, #0x51
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	adds r1, #0x10
	ldr r1, [r4, r1]
	adds r1, r1, r5
	ldr r1, [r1, #4]
	bl FUN_02009D68
	movs r0, #0x55
	lsls r0, r0, #2
	ldrb r1, [r4, #0xa]
	ldr r0, [r4, r0]
	strh r1, [r0, r5]
	b _021D8452
_021D844A:
	adds r5, r5, #1
	adds r2, #8
	cmp r5, r3
	blo _021D841A
_021D8452:
	ldrb r0, [r4, #0xb]
	cmp r6, r0
	beq _021D84A0
	ldrb r1, [r4, #7]
	movs r2, #0
	cmp r1, #0
	bls _021D84A0
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r5, r0, #0
_021D8468:
	ldrh r3, [r5]
	cmp r6, r3
	bne _021D8498
	lsls r5, r2, #3
	adds r0, r0, r5
	ldr r0, [r0, #4]
	bl FUN_02009D4C
	movs r1, #0x52
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	adds r1, #0x10
	ldr r1, [r4, r1]
	adds r1, r1, r5
	ldr r1, [r1, #4]
	bl FUN_02009D68
	movs r0, #0x56
	lsls r0, r0, #2
	ldrb r1, [r4, #0xb]
	ldr r0, [r4, r0]
	add sp, #8
	strh r1, [r0, r5]
	pop {r3, r4, r5, r6, r7, pc}
_021D8498:
	adds r2, r2, #1
	adds r5, #8
	cmp r2, r1
	blo _021D8468
_021D84A0:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D8358

	thumb_func_start ov101_021D84A4
ov101_021D84A4: @ 0x021D84A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	adds r4, r1, #0
	ldr r1, [sp, #0x98]
	adds r6, r2, #0
	adds r7, r3, #0
	cmp r1, r0
	bne _021D84BE
	movs r0, #0
	mvns r0, r0
	str r0, [sp, #0x98]
_021D84BE:
	ldr r0, [sp, #0x98]
	movs r1, #0x4f
	str r0, [sp]
	movs r0, #0
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x88]
	lsls r1, r1, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x9c]
	ldr r2, [sp, #0x90]
	str r0, [sp, #0x10]
	ldr r0, [r5, r1]
	ldr r3, [sp, #0x94]
	str r0, [sp, #0x14]
	adds r0, r1, #4
	ldr r0, [r5, r0]
	str r0, [sp, #0x18]
	adds r0, r1, #0
	adds r0, #8
	ldr r0, [r5, r0]
	adds r1, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x8c]
	str r0, [sp, #0x20]
	movs r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x4c
	bl FUN_020093B4
	ldr r0, [sp, #0x88]
	cmp r0, #1
	bne _021D850E
	ldr r0, [sp, #0x4c]
	str r0, [r4, #8]
	movs r0, #1
	b _021D8510
_021D850E:
	movs r0, #0
_021D8510:
	str r0, [r4]
	ldr r0, [r5, #0xc]
	add r2, sp, #0x34
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	ldm r6!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r6]
	str r0, [r2]
	ldr r0, [sp, #0xa0]
	str r7, [sp, #0x44]
	str r0, [sp, #0x40]
	ldr r0, [r5]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	bl FUN_02021B90
	str r0, [r4, #4]
	cmp r0, #0
	bne _021D853E
	bl FUN_02022974
_021D853E:
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov101_021D84A4

	thumb_func_start ov101_021D8544
ov101_021D8544: @ 0x021D8544
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #1
	bne _021D8554
	ldr r0, [r4, #8]
	bl FUN_0200A5B4
_021D8554:
	ldr r0, [r4, #4]
	bl FUN_02021BD4
	movs r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	thumb_func_end ov101_021D8544

	thumb_func_start ov101_021D8560
ov101_021D8560: @ 0x021D8560
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_02021D28
	adds r2, r0, #0
	ldm r2!, {r0, r1}
	stm r4!, {r0, r1}
	ldr r0, [r2]
	str r0, [r4]
	pop {r4, pc}
	thumb_func_end ov101_021D8560

	thumb_func_start ov101_021D8574
ov101_021D8574: @ 0x021D8574
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_02021D2C
	adds r2, r0, #0
	ldm r2!, {r0, r1}
	stm r4!, {r0, r1}
	ldr r0, [r2]
	str r0, [r4]
	pop {r4, pc}
	thumb_func_end ov101_021D8574
	@ 0x021D8588
