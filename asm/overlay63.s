	.include "macros/function.inc"


	.text

	thumb_func_start ov63_0222AE60
ov63_0222AE60: @ 0x0222AE60
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r6, r3, #0
	adds r4, r0, #0
	ldr r1, _0222AF04 @ =0x0000229C
	adds r0, r6, #0
	str r2, [sp]
	bl FUN_02018144
	ldr r2, _0222AF04 @ =0x0000229C
	adds r7, r0, #0
	movs r1, #0
	blx FUN_020D5124
	str r4, [r7]
	movs r0, #0x92
	adds r1, r6, #0
	str r5, [r7, #4]
	bl FUN_02006C24
	ldr r1, _0222AF08 @ =0x00002294
	str r0, [r7, r1]
	movs r0, #0x99
	adds r1, r6, #0
	bl FUN_02006C24
	ldr r1, _0222AF0C @ =0x00002298
	movs r4, #0
	str r0, [r7, r1]
	adds r5, r7, #0
_0222AE9C:
	movs r0, #0x98
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_02009714
	movs r1, #0x8a
	lsls r1, r1, #6
	str r0, [r5, r1]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _0222AE9C
	movs r5, #0
	adds r4, r7, #0
_0222AEB8:
	movs r0, #0x17
	adds r1, r5, #2
	adds r2, r6, #0
	bl FUN_02009714
	ldr r1, _0222AF10 @ =0x00002288
	adds r5, r5, #1
	str r0, [r4, r1]
	adds r4, r4, #4
	cmp r5, #2
	blt _0222AEB8
	movs r4, #0
_0222AED0:
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov63_0222B374
	adds r4, r4, #1
	cmp r4, #3
	blt _0222AED0
	ldr r0, [sp]
	ldr r2, [sp]
	movs r1, #0x18
	str r0, [r7, #0xc]
	adds r0, r6, #0
	muls r1, r2, r1
	bl FUN_02018144
	str r0, [r7, #8]
	ldr r3, [r7, #0xc]
	movs r2, #0x18
	movs r1, #0
	muls r2, r3, r2
	blx FUN_020D5124
	adds r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222AF04: .4byte 0x0000229C
_0222AF08: .4byte 0x00002294
_0222AF0C: .4byte 0x00002298
_0222AF10: .4byte 0x00002288
	thumb_func_end ov63_0222AE60

	thumb_func_start ov63_0222AF14
ov63_0222AF14: @ 0x0222AF14
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	movs r6, #0
	cmp r0, #0
	bls _0222AF40
	adds r4, r6, #0
_0222AF22:
	ldr r0, [r5, #8]
	adds r0, r0, r4
	bl ov63_0222BC70
	cmp r0, #0
	bne _0222AF36
	ldr r0, [r5, #8]
	adds r0, r0, r4
	bl ov63_0222B210
_0222AF36:
	ldr r0, [r5, #0xc]
	adds r6, r6, #1
	adds r4, #0x18
	cmp r6, r0
	blo _0222AF22
_0222AF40:
	movs r4, #0
_0222AF42:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov63_0222B404
	adds r4, r4, #1
	cmp r4, #3
	blt _0222AF42
	adds r0, r5, #0
	bl ov63_0222AFF8
	ldr r0, _0222AF8C @ =0x00002294
	ldr r0, [r5, r0]
	bl FUN_02006CA8
	ldr r0, _0222AF90 @ =0x00002298
	ldr r0, [r5, r0]
	bl FUN_02006CA8
	movs r7, #0x8a
	movs r6, #0
	adds r4, r5, #0
	lsls r7, r7, #6
_0222AF6E:
	ldr r0, [r4, r7]
	bl FUN_02009754
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #4
	blt _0222AF6E
	ldr r0, [r5, #8]
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222AF8C: .4byte 0x00002294
_0222AF90: .4byte 0x00002298
	thumb_func_end ov63_0222AF14

	thumb_func_start ov63_0222AF94
ov63_0222AF94: @ 0x0222AF94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r7, r3, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r7, #0
	adds r6, r2, #0
	bl ov63_0222B47C
	cmp r0, #0
	bne _0222AFB0
	bl FUN_02022974
_0222AFB0:
	adds r0, r4, #0
	bl ov63_0222B450
	adds r1, r0, #0
	ldr r0, [sp, #0x20]
	adds r2, r6, #0
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r3, r7, #0
	bl ov63_0222B4CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov63_0222AF94

	thumb_func_start ov63_0222AFD0
ov63_0222AFD0: @ 0x0222AFD0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl ov63_0222B450
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov63_0222B738
	pop {r4, pc}
	thumb_func_end ov63_0222AFD0

	thumb_func_start ov63_0222AFE4
ov63_0222AFE4: @ 0x0222AFE4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl ov63_0222B450
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov63_0222B7D4
	pop {r4, pc}
	thumb_func_end ov63_0222AFE4

	thumb_func_start ov63_0222AFF8
ov63_0222AFF8: @ 0x0222AFF8
	push {r3, r4, r5, lr}
	ldr r1, _0222B028 @ =0x00002290
	adds r4, r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _0222B008
	bl ov63_0222B078
_0222B008:
	movs r5, #0
_0222B00A:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov63_0222B7D4
	cmp r0, #1
	bne _0222B01E
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov63_0222B738
_0222B01E:
	adds r5, r5, #1
	cmp r5, #0x97
	blt _0222B00A
	pop {r3, r4, r5, pc}
	nop
_0222B028: .4byte 0x00002290
	thumb_func_end ov63_0222AFF8

	thumb_func_start ov63_0222B02C
ov63_0222B02C: @ 0x0222B02C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	adds r6, r3, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	adds r0, r2, #0
	bne _0222B040
	bl FUN_02022974
_0222B040:
	ldr r1, [sp, #8]
	adds r0, r7, #0
	adds r2, r6, #0
	bl ov63_0222B97C
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov63_0222BA20
	ldr r5, _0222B074 @ =0x0222D910
	movs r4, #0
_0222B056:
	str r6, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldrb r1, [r5]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	adds r0, r7, #0
	bl ov63_0222B4CC
	adds r4, r4, #1
	adds r5, r5, #1
	cmp r4, #0x10
	blt _0222B056
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222B074: .4byte 0x0222D910
	thumb_func_end ov63_0222B02C

	thumb_func_start ov63_0222B078
ov63_0222B078: @ 0x0222B078
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl ov63_0222B9EC
	adds r0, r6, #0
	bl ov63_0222BAB0
	ldr r5, _0222B09C @ =0x0222D910
	movs r4, #0
_0222B08A:
	ldrb r1, [r5]
	adds r0, r6, #0
	bl ov63_0222B738
	adds r4, r4, #1
	adds r5, r5, #1
	cmp r4, #0x10
	blt _0222B08A
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222B09C: .4byte 0x0222D910
	thumb_func_end ov63_0222B078

	thumb_func_start ov63_0222B0A0
ov63_0222B0A0: @ 0x0222B0A0
	push {r3, r4, r5, lr}
	adds r4, r2, #0
	adds r2, r3, #0
	adds r5, r0, #0
	bl ov63_0222B7E8
	ldr r0, _0222B0B4 @ =0x0000227C
	str r4, [r5, r0]
	pop {r3, r4, r5, pc}
	nop
_0222B0B4: .4byte 0x0000227C
	thumb_func_end ov63_0222B0A0

	thumb_func_start ov63_0222B0B8
ov63_0222B0B8: @ 0x0222B0B8
	ldr r3, _0222B0BC @ =ov63_0222B914
	bx r3
	.align 2, 0
_0222B0BC: .4byte ov63_0222B914
	thumb_func_end ov63_0222B0B8

	thumb_func_start ov63_0222B0C0
ov63_0222B0C0: @ 0x0222B0C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r7, r2, #0
	adds r5, r0, #0
	adds r6, r1, #0
	str r3, [sp]
	bl ov63_0222BB00
	adds r4, r0, #0
	adds r0, r7, #0
	bl ov63_0222B450
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	adds r0, r5, #0
	bl ov63_0222B7D4
	cmp r0, #1
	beq _0222B0EA
	bl FUN_02022974
_0222B0EA:
	movs r0, #0
	add r2, sp, #0xc
	adds r1, r0, #0
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r1, [r5]
	movs r2, #0x38
	str r1, [sp, #0xc]
	ldr r1, [sp, #4]
	adds r7, r1, #0
	adds r1, r5, #0
	muls r7, r2, r7
	adds r1, #0x24
	adds r1, r1, r7
	str r1, [sp, #0x10]
	ldrsh r0, [r6, r0]
	lsls r0, r0, #0xc
	str r0, [sp, #0x14]
	movs r0, #2
	ldrsh r1, [r6, r0]
	lsls r1, r1, #0xc
	str r1, [sp, #0x18]
	lsls r1, r0, #0xb
	str r1, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	movs r1, #4
	ldrsh r1, [r6, r1]
	str r1, [sp, #0x30]
	ldr r1, [sp]
	str r1, [sp, #0x38]
	adds r1, r5, #0
	str r1, [sp, #8]
	adds r1, #0x1c
	str r1, [sp, #8]
	ldr r1, [r1, r7]
	cmp r1, #3
	beq _0222B142
	cmp r1, #1
	bne _0222B148
_0222B142:
	movs r0, #1
	str r0, [sp, #0x34]
	b _0222B14A
_0222B148:
	str r0, [sp, #0x34]
_0222B14A:
	add r0, sp, #0xc
	bl FUN_02021AA0
	str r0, [r4, #4]
	movs r1, #6
	ldrsh r1, [r6, r1]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_02021E80
	adds r0, r5, r7
	ldr r0, [r0, #0x20]
	cmp r0, #1
	ldr r0, [r4, #4]
	bne _0222B170
	movs r1, #6
	bl FUN_02021D6C
	b _0222B176
_0222B170:
	movs r1, #1
	bl FUN_02021D6C
_0222B176:
	movs r0, #9
	str r0, [r4, #0xc]
	movs r0, #0
	strh r0, [r4, #0x14]
	movs r0, #1
	str r0, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r0, r7
	str r0, [r4]
	ldr r0, _0222B208 @ =0x00002248
	adds r0, r5, r0
	bl ov63_0222B96C
	cmp r0, #0
	beq _0222B1FC
	movs r0, #0
	add r2, sp, #0xc
	adds r1, r0, #0
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r1, [r5]
	str r1, [sp, #0xc]
	ldr r1, _0222B20C @ =0x00002258
	adds r2, r5, r1
	str r2, [sp, #0x10]
	ldrsh r0, [r6, r0]
	adds r1, #0x24
	lsls r0, r0, #0xc
	str r0, [sp, #0x14]
	movs r0, #2
	ldrsh r2, [r6, r0]
	lsls r2, r2, #0xc
	str r2, [sp, #0x18]
	lsls r2, r0, #0xb
	str r2, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	ldr r1, [r5, r1]
	str r1, [sp, #0x30]
	ldr r1, [sp]
	str r1, [sp, #0x38]
	ldr r1, [sp, #8]
	ldr r1, [r1, r7]
	cmp r1, #3
	beq _0222B1DE
	cmp r1, #1
	bne _0222B1E4
_0222B1DE:
	movs r0, #1
	str r0, [sp, #0x34]
	b _0222B1E6
_0222B1E4:
	str r0, [sp, #0x34]
_0222B1E6:
	add r0, sp, #0xc
	bl FUN_02021AA0
	str r0, [r4, #8]
	movs r1, #6
	ldrsh r1, [r6, r1]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_02021E80
	b _0222B200
_0222B1FC:
	movs r0, #0
	str r0, [r4, #8]
_0222B200:
	adds r0, r4, #0
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_0222B208: .4byte 0x00002248
_0222B20C: .4byte 0x00002258
	thumb_func_end ov63_0222B0C0

	thumb_func_start ov63_0222B210
ov63_0222B210: @ 0x0222B210
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0222B21E
	bl FUN_02021BD4
_0222B21E:
	ldr r0, [r4, #4]
	bl FUN_02021BD4
	movs r1, #0x18
	movs r0, #0
_0222B228:
	strb r0, [r4]
	adds r4, r4, #1
	subs r1, r1, #1
	bne _0222B228
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov63_0222B210

	thumb_func_start ov63_0222B234
ov63_0222B234: @ 0x0222B234
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end ov63_0222B234

	thumb_func_start ov63_0222B238
ov63_0222B238: @ 0x0222B238
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	lsls r0, r1, #0xc
	str r0, [sp]
	lsls r0, r2, #0xc
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl FUN_02021C50
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0222B274
	movs r0, #2
	ldr r1, [sp]
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp]
	movs r0, #0xe
	ldr r1, [sp, #4]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	add r1, sp, #0
	bl FUN_02021C50
_0222B274:
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov63_0222B238

	thumb_func_start ov63_0222B278
ov63_0222B278: @ 0x0222B278
	ldr r3, _0222B280 @ =FUN_02021F58
	ldr r0, [r0, #4]
	bx r3
	nop
_0222B280: .4byte FUN_02021F58
	thumb_func_end ov63_0222B278

	thumb_func_start ov63_0222B284
ov63_0222B284: @ 0x0222B284
	push {r3, lr}
	ldr r0, [r0, #4]
	bl FUN_02021F74
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov63_0222B284

	thumb_func_start ov63_0222B294
ov63_0222B294: @ 0x0222B294
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r4, r1, #0
	bl FUN_02021CAC
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0222B2AC
	adds r1, r4, #0
	bl FUN_02021CAC
_0222B2AC:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov63_0222B294

	thumb_func_start ov63_0222B2B0
ov63_0222B2B0: @ 0x0222B2B0
	ldr r3, _0222B2B8 @ =FUN_02021D34
	ldr r0, [r0, #4]
	bx r3
	nop
_0222B2B8: .4byte FUN_02021D34
	thumb_func_end ov63_0222B2B0

	thumb_func_start ov63_0222B2BC
ov63_0222B2BC: @ 0x0222B2BC
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end ov63_0222B2BC

	thumb_func_start ov63_0222B2C4
ov63_0222B2C4: @ 0x0222B2C4
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov63_0222B2C4

	thumb_func_start ov63_0222B2C8
ov63_0222B2C8: @ 0x0222B2C8
	ldr r3, _0222B2D0 @ =FUN_02021E50
	ldr r0, [r0, #4]
	bx r3
	nop
_0222B2D0: .4byte FUN_02021E50
	thumb_func_end ov63_0222B2C8

	thumb_func_start ov63_0222B2D4
ov63_0222B2D4: @ 0x0222B2D4
	ldr r3, _0222B2DC @ =FUN_02021E74
	ldr r0, [r0, #4]
	bx r3
	nop
_0222B2DC: .4byte FUN_02021E74
	thumb_func_end ov63_0222B2D4

	thumb_func_start ov63_0222B2E0
ov63_0222B2E0: @ 0x0222B2E0
	push {lr}
	sub sp, #0xc
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _0222B302
	adds r1, #8
	lsls r1, r1, #0xc
	adds r2, #0xe
	str r1, [sp]
	lsls r1, r2, #0xc
	str r1, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	ldr r0, [r0, #8]
	add r1, sp, #0
	bl FUN_02021C50
_0222B302:
	add sp, #0xc
	pop {pc}
	.align 2, 0
	thumb_func_end ov63_0222B2E0

	thumb_func_start ov63_0222B308
ov63_0222B308: @ 0x0222B308
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	cmp r4, #0xa
	blt _0222B318
	bl FUN_02022974
_0222B318:
	cmp r6, #4
	blt _0222B320
	bl FUN_02022974
_0222B320:
	str r4, [r5, #0xc]
	movs r0, #0
	strh r0, [r5, #0x14]
	ldr r0, _0222B338 @ =0x0222D920
	lsls r1, r4, #2
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _0222B336
	adds r0, r5, #0
	adds r1, r6, #0
	blx r2
_0222B336:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222B338: .4byte 0x0222D920
	thumb_func_end ov63_0222B308

	thumb_func_start ov63_0222B33C
ov63_0222B33C: @ 0x0222B33C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0xc]
	ldr r1, _0222B370 @ =0x0222D904
	movs r0, #0
	ldrb r2, [r1, r2]
	cmp r2, #0xff
	bne _0222B350
	movs r0, #1
	b _0222B35C
_0222B350:
	movs r1, #0x14
	ldrsh r1, [r4, r1]
	adds r1, r1, #1
	cmp r2, r1
	blt _0222B35C
	movs r0, #1
_0222B35C:
	cmp r0, #1
	bne _0222B36E
	adds r0, r4, #0
	bl ov63_0222BB38
	movs r0, #0x14
	ldrsh r0, [r4, r0]
	adds r0, r0, #1
	strh r0, [r4, #0x14]
_0222B36E:
	pop {r4, pc}
	.align 2, 0
_0222B370: .4byte 0x0222D904
	thumb_func_end ov63_0222B33C

	thumb_func_start ov63_0222B374
ov63_0222B374: @ 0x0222B374
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0xc]
	adds r0, r1, #0
	lsls r5, r0, #4
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x10]
	adds r1, r0, r5
	ldr r0, _0222B3F4 @ =0x00002118
	str r2, [sp, #0x14]
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0222B392
	bl FUN_02022974
_0222B392:
	ldr r0, _0222B3F8 @ =0x0222D970
	ldr r6, _0222B3FC @ =0x0222D900
	adds r4, r0, r5
	ldr r0, [sp, #0xc]
	movs r7, #0
	adds r5, r0, r5
	ldr r0, [sp, #0x10]
	lsls r1, r0, #1
	movs r0, #1
	lsls r0, r0, #8
	adds r0, r1, r0
	str r0, [sp, #0x18]
_0222B3AA:
	lsrs r2, r7, #0x1f
	lsls r1, r7, #0x1f
	subs r1, r1, r2
	movs r0, #0x1f
	rors r1, r0
	adds r0, r2, r1
	ldrb r2, [r6]
	ldr r1, [sp, #0x18]
	adds r0, r0, #2
	adds r1, r2, r1
	str r1, [sp]
	ldr r1, [sp, #0x14]
	str r0, [sp, #4]
	str r1, [sp, #8]
	lsls r1, r0, #2
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0xc]
	adds r1, r0, r1
	movs r0, #0x8a
	lsls r0, r0, #6
	ldr r0, [r1, r0]
	ldr r1, _0222B400 @ =0x00002294
	movs r3, #0
	ldr r1, [r2, r1]
	ldr r2, [r4]
	bl FUN_02009BC4
	ldr r1, _0222B3F4 @ =0x00002118
	adds r7, r7, #1
	str r0, [r5, r1]
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, r5, #4
	cmp r7, #4
	blt _0222B3AA
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0222B3F4: .4byte 0x00002118
_0222B3F8: .4byte 0x0222D970
_0222B3FC: .4byte 0x0222D900
_0222B400: .4byte 0x00002294
	thumb_func_end ov63_0222B374

	thumb_func_start ov63_0222B404
ov63_0222B404: @ 0x0222B404
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	lsls r5, r1, #4
	ldr r0, _0222B44C @ =0x00002118
	adds r1, r6, r5
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0222B418
	bl FUN_02022974
_0222B418:
	movs r4, #0
	adds r5, r6, r5
	adds r7, r4, #0
_0222B41E:
	lsrs r2, r4, #0x1f
	lsls r1, r4, #0x1f
	subs r1, r1, r2
	movs r0, #0x1f
	rors r1, r0
	adds r0, r2, r1
	adds r0, r0, #2
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r0, #0x8a
	lsls r0, r0, #6
	ldr r0, [r1, r0]
	ldr r1, _0222B44C @ =0x00002118
	ldr r1, [r5, r1]
	bl FUN_02009D68
	ldr r0, _0222B44C @ =0x00002118
	adds r4, r4, #1
	str r7, [r5, r0]
	adds r5, r5, #4
	cmp r4, #4
	blt _0222B41E
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222B44C: .4byte 0x00002118
	thumb_func_end ov63_0222B404

	thumb_func_start ov63_0222B450
ov63_0222B450: @ 0x0222B450
	push {r3, lr}
	ldr r3, _0222B474 @ =0x0222D9A0
	movs r2, #0
_0222B456:
	ldrh r1, [r3]
	cmp r0, r1
	bne _0222B464
	ldr r0, _0222B478 @ =0x0222D9A2
	lsls r1, r2, #2
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0222B464:
	adds r2, r2, #1
	adds r3, r3, #4
	cmp r2, #0x97
	blt _0222B456
	bl FUN_02022974
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_0222B474: .4byte 0x0222D9A0
_0222B478: .4byte 0x0222D9A2
	thumb_func_end ov63_0222B450

	thumb_func_start ov63_0222B47C
ov63_0222B47C: @ 0x0222B47C
	cmp r1, #0
	bne _0222B496
	cmp r0, #0
	beq _0222B48E
	cmp r0, #0x61
	beq _0222B48E
	subs r0, #0xfc
	cmp r0, #1
	bhi _0222B492
_0222B48E:
	movs r0, #1
	bx lr
_0222B492:
	movs r0, #0
	bx lr
_0222B496:
	movs r0, #1
	bx lr
	.align 2, 0
	thumb_func_end ov63_0222B47C

	thumb_func_start ov63_0222B49C
ov63_0222B49C: @ 0x0222B49C
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	cmp r4, #2
	beq _0222B4B0
	cmp r4, #3
	beq _0222B4B0
	bl FUN_02022974
_0222B4B0:
	subs r1, r4, #2
	cmp r6, #0
	bne _0222B4B8
	adds r1, r1, #2
_0222B4B8:
	ldr r0, _0222B4C8 @ =0x0222D900
	ldrb r2, [r0, r1]
	movs r0, #1
	lsls r1, r5, #1
	lsls r0, r0, #8
	adds r0, r1, r0
	adds r0, r2, r0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222B4C8: .4byte 0x0222D900
	thumb_func_end ov63_0222B49C

	thumb_func_start ov63_0222B4CC
ov63_0222B4CC: @ 0x0222B4CC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0x38
	muls r0, r4, r0
	adds r0, r5, r0
	ldr r0, [r0, #0x14]
	adds r6, r2, #0
	adds r7, r3, #0
	cmp r0, #0
	beq _0222B4E6
	bl FUN_02022974
_0222B4E6:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0222B4FE
	ldr r0, [sp, #0x18]
	adds r1, r4, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl ov63_0222B510
	pop {r3, r4, r5, r6, r7, pc}
_0222B4FE:
	ldr r0, [sp, #0x18]
	adds r1, r4, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl ov63_0222B664
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov63_0222B4CC

	thumb_func_start ov63_0222B510
ov63_0222B510: @ 0x0222B510
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	adds r5, r0, #0
	ldr r0, [sp, #0x58]
	adds r6, r5, #0
	str r0, [sp, #0x40]
	movs r0, #2
	lsls r0, r0, #8
	adds r0, r1, r0
	str r0, [sp, #0x38]
	lsls r0, r1, #1
	str r0, [sp, #0x3c]
	adds r4, r1, #0
	movs r0, #0x38
	muls r4, r0, r4
	ldr r0, [sp, #0x38]
	movs r1, #0x8a
	str r0, [sp]
	adds r0, r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	str r2, [sp, #0x2c]
	ldr r2, [sp, #0x3c]
	str r3, [sp, #0x30]
	lsls r1, r1, #6
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	adds r1, #0x14
	ldr r1, [r5, r1]
	adds r6, #0x14
	adds r2, #0xe
	movs r3, #0
	bl FUN_02009A4C
	str r0, [r6, r4]
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x3c]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	adds r7, r5, #0
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	adds r2, #0xd
	ldr r1, _0222B660 @ =0x00002284
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	adds r1, #0x10
	ldr r1, [r5, r1]
	adds r7, #0x18
	movs r3, #0
	str r2, [sp, #0x3c]
	bl FUN_02009B04
	str r0, [r7, r4]
	ldr r0, [r6, r4]
	bl FUN_02009E1C
	movs r1, #6
	ldr r2, [r0, #0x10]
	lsls r1, r1, #0xa
	cmp r2, r1
	beq _0222B596
	movs r1, #1
	str r1, [sp, #0x34]
	b _0222B59A
_0222B596:
	movs r1, #0
	str r1, [sp, #0x34]
_0222B59A:
	ldr r1, [sp, #0x30]
	cmp r1, #2
	bne _0222B5A8
	movs r1, #2
	lsls r1, r1, #0xa
	str r1, [r0, #0x10]
	b _0222B5C0
_0222B5A8:
	cmp r1, #1
	bne _0222B5C0
	ldr r1, [sp, #0x34]
	cmp r1, #0
	beq _0222B5BA
	movs r1, #5
	lsls r1, r1, #0xa
	str r1, [r0, #0x10]
	b _0222B5C0
_0222B5BA:
	movs r1, #6
	lsls r1, r1, #0xa
	str r1, [r0, #0x10]
_0222B5C0:
	ldr r0, [r6, r4]
	bl FUN_0200A450
	cmp r0, #0
	bne _0222B5CE
	bl FUN_02022974
_0222B5CE:
	ldr r0, [r7, r4]
	bl FUN_0200A640
	cmp r0, #0
	bne _0222B5DC
	bl FUN_02022974
_0222B5DC:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0222B5EC
	ldr r1, [r7, r4]
	adds r0, r5, #0
	movs r2, #1
	bl ov63_0222BC80
_0222B5EC:
	ldr r0, [r6, r4]
	bl FUN_02009D4C
	ldr r0, [r7, r4]
	bl FUN_02009D4C
	ldr r0, [sp, #0x2c]
	adds r1, r5, r4
	str r0, [r1, #0x1c]
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x34]
	str r0, [r1, #0x20]
	movs r0, #0
	str r0, [r1, #0x10]
	ldr r0, [sp, #0x30]
	movs r1, #2
	bl ov63_0222B49C
	adds r6, r0, #0
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x34]
	movs r1, #3
	bl ov63_0222B49C
	str r0, [sp]
	movs r0, #0
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r2, #0x8a
	str r0, [sp, #0x10]
	lsls r2, r2, #6
	ldr r1, [r5, r2]
	adds r3, r6, #0
	str r1, [sp, #0x14]
	adds r1, r2, #4
	ldr r1, [r5, r1]
	str r1, [sp, #0x18]
	adds r1, r2, #0
	adds r1, #8
	ldr r1, [r5, r1]
	adds r2, #0xc
	str r1, [sp, #0x1c]
	ldr r1, [r5, r2]
	adds r5, #0x24
	str r1, [sp, #0x20]
	ldr r1, [sp, #0x38]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	adds r0, r5, r4
	adds r2, r1, #0
	bl FUN_020093B4
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_0222B660: .4byte 0x00002284
	thumb_func_end ov63_0222B510

	thumb_func_start ov63_0222B664
ov63_0222B664: @ 0x0222B664
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r7, r1, #0
	adds r5, r0, #0
	subs r0, r7, #2
	str r0, [sp, #0x38]
	movs r0, #2
	lsls r0, r0, #8
	adds r0, r7, r0
	str r0, [sp, #0x34]
	movs r0, #0x38
	adds r4, r7, #0
	muls r4, r0, r4
	ldr r0, [sp, #0x34]
	movs r1, #0x8a
	str r0, [sp]
	adds r0, r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x50]
	adds r6, r5, #0
	str r2, [sp, #0x2c]
	str r3, [sp, #0x30]
	lsls r1, r1, #6
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	adds r1, #0x18
	ldr r1, [r5, r1]
	adds r6, #0x14
	subs r2, r7, #1
	movs r3, #0
	bl FUN_02009A4C
	str r0, [r6, r4]
	ldr r0, [sp, #0x30]
	cmp r0, #2
	bne _0222B6BA
	ldr r0, [r6, r4]
	bl FUN_02009E1C
	movs r1, #2
	lsls r1, r1, #0xa
	str r1, [r0, #0x10]
	b _0222B6CA
_0222B6BA:
	cmp r0, #1
	bne _0222B6CA
	ldr r0, [r6, r4]
	bl FUN_02009E1C
	movs r1, #5
	lsls r1, r1, #0xa
	str r1, [r0, #0x10]
_0222B6CA:
	ldr r0, [r6, r4]
	bl FUN_0200A450
	cmp r0, #0
	bne _0222B6D8
	bl FUN_02022974
_0222B6D8:
	ldr r0, [r6, r4]
	bl FUN_02009D4C
	movs r0, #0
	adds r2, r5, r4
	ldr r1, [sp, #0x2c]
	str r0, [r2, #0x18]
	str r1, [r2, #0x1c]
	ldr r1, [sp, #0x30]
	movs r6, #1
	str r1, [r2, #0x20]
	str r6, [r2, #0x10]
	movs r2, #6
	ldr r1, [sp, #0x38]
	lsls r2, r2, #6
	adds r3, r1, r2
	movs r2, #0x8a
	str r3, [sp]
	subs r1, r6, #2
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsls r2, r2, #6
	ldr r1, [r5, r2]
	str r1, [sp, #0x14]
	adds r1, r2, #4
	ldr r1, [r5, r1]
	str r1, [sp, #0x18]
	adds r1, r2, #0
	adds r1, #8
	ldr r1, [r5, r1]
	adds r2, #0xc
	str r1, [sp, #0x1c]
	ldr r1, [r5, r2]
	adds r5, #0x24
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x34]
	ldr r2, _0222B734 @ =0x00000402
	adds r0, r5, r4
	bl FUN_020093B4
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0222B734: .4byte 0x00000402
	thumb_func_end ov63_0222B664

	thumb_func_start ov63_0222B738
ov63_0222B738: @ 0x0222B738
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	movs r0, #0x38
	adds r4, r6, #0
	muls r4, r0, r4
	adds r0, r5, r4
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0222B750
	bl FUN_02022974
_0222B750:
	adds r0, r5, r4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _0222B762
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov63_0222B76C
	pop {r4, r5, r6, pc}
_0222B762:
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov63_0222B7AC
	pop {r4, r5, r6, pc}
	thumb_func_end ov63_0222B738

	thumb_func_start ov63_0222B76C
ov63_0222B76C: @ 0x0222B76C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	movs r0, #0x38
	adds r4, r1, #0
	muls r4, r0, r4
	adds r6, #0x14
	ldr r0, [r6, r4]
	bl FUN_0200A4E4
	adds r7, r5, #0
	adds r7, #0x18
	ldr r0, [r7, r4]
	bl FUN_0200A6DC
	movs r0, #0x8a
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	ldr r1, [r6, r4]
	bl FUN_02009D68
	ldr r0, _0222B7A8 @ =0x00002284
	ldr r1, [r7, r4]
	ldr r0, [r5, r0]
	bl FUN_02009D68
	movs r0, #0
	str r0, [r6, r4]
	str r0, [r7, r4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222B7A8: .4byte 0x00002284
	thumb_func_end ov63_0222B76C

	thumb_func_start ov63_0222B7AC
ov63_0222B7AC: @ 0x0222B7AC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	movs r0, #0x38
	adds r4, r1, #0
	adds r5, #0x14
	muls r4, r0, r4
	ldr r0, [r5, r4]
	bl FUN_0200A4E4
	movs r0, #0x8a
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	ldr r1, [r5, r4]
	bl FUN_02009D68
	movs r0, #0
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov63_0222B7AC

	thumb_func_start ov63_0222B7D4
ov63_0222B7D4: @ 0x0222B7D4
	movs r2, #0x38
	muls r2, r1, r2
	adds r0, r0, r2
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0222B7E4
	movs r0, #1
	bx lr
_0222B7E4:
	movs r0, #0
	bx lr
	thumb_func_end ov63_0222B7D4

	thumb_func_start ov63_0222B7E8
ov63_0222B7E8: @ 0x0222B7E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r6, r0, #0
	ldr r0, _0222B904 @ =0x00002248
	str r1, [sp, #0x2c]
	ldr r0, [r6, r0]
	adds r7, r2, #0
	cmp r0, #0
	beq _0222B7FE
	bl FUN_02022974
_0222B7FE:
	movs r4, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov63_0222B7D4
	cmp r0, #1
	bne _0222B814
	adds r0, r4, #0
	str r0, [sp, #0x30]
	movs r4, #1
	b _0222B84C
_0222B814:
	adds r0, r6, #0
	movs r1, #1
	bl ov63_0222B7D4
	cmp r0, #1
	bne _0222B826
	movs r4, #1
	str r4, [sp, #0x30]
	b _0222B84C
_0222B826:
	adds r0, r6, #0
	movs r1, #0x95
	bl ov63_0222B7D4
	cmp r0, #1
	bne _0222B83A
	movs r0, #0x95
	str r0, [sp, #0x30]
	movs r4, #1
	b _0222B84C
_0222B83A:
	adds r0, r6, #0
	movs r1, #0x96
	bl ov63_0222B7D4
	cmp r0, #1
	bne _0222B84C
	movs r0, #0x96
	str r0, [sp, #0x30]
	movs r4, #1
_0222B84C:
	cmp r4, #1
	beq _0222B854
	bl FUN_02022974
_0222B854:
	movs r4, #0
	adds r5, r6, #0
_0222B858:
	movs r0, #0x12
	lsls r0, r0, #4
	str r0, [sp]
	adds r0, r4, #2
	str r0, [sp, #4]
	ldr r0, _0222B908 @ =0x00002288
	str r7, [sp, #8]
	ldr r1, _0222B90C @ =0x00002294
	ldr r0, [r5, r0]
	ldr r1, [r6, r1]
	adds r2, r4, #0
	movs r3, #0
	bl FUN_02009BC4
	ldr r1, _0222B910 @ =0x00002250
	adds r4, r4, #1
	str r0, [r5, r1]
	adds r5, r5, #4
	cmp r4, #2
	blt _0222B858
	movs r0, #0x12
	lsls r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	adds r1, #0x30
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r6, r1]
	adds r1, #0x14
	ldr r1, [r6, r1]
	movs r2, #2
	movs r3, #0
	bl FUN_02009A4C
	ldr r1, _0222B904 @ =0x00002248
	str r0, [r6, r1]
	ldr r0, [r6, r1]
	bl FUN_0200A450
	cmp r0, #0
	bne _0222B8AE
	bl FUN_02022974
_0222B8AE:
	ldr r0, _0222B904 @ =0x00002248
	ldr r0, [r6, r0]
	bl FUN_02009D4C
	movs r1, #0x12
	lsls r1, r1, #4
	movs r0, #0
	movs r3, #0x8a
	str r1, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsls r3, r3, #6
	ldr r2, [r6, r3]
	str r2, [sp, #0x14]
	adds r2, r3, #4
	ldr r2, [r6, r2]
	str r2, [sp, #0x18]
	adds r2, r3, #0
	adds r2, #8
	ldr r2, [r6, r2]
	str r2, [sp, #0x1c]
	adds r2, r3, #0
	adds r2, #0xc
	ldr r2, [r6, r2]
	subs r3, #0x28
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	adds r0, r6, r3
	adds r3, r1, #0
	ldr r2, [sp, #0x30]
	adds r3, #0xe0
	adds r2, r2, r3
	adds r3, r1, #0
	bl FUN_020093B4
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0222B904: .4byte 0x00002248
_0222B908: .4byte 0x00002288
_0222B90C: .4byte 0x00002294
_0222B910: .4byte 0x00002250
	thumb_func_end ov63_0222B7E8

	thumb_func_start ov63_0222B914
ov63_0222B914: @ 0x0222B914
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _0222B960 @ =0x00002248
	adds r0, r5, r0
	bl ov63_0222B96C
	cmp r0, #1
	bne _0222B95C
	ldr r0, _0222B960 @ =0x00002248
	ldr r0, [r5, r0]
	bl FUN_0200A4E4
	movs r1, #0x8a
	lsls r1, r1, #6
	ldr r0, [r5, r1]
	subs r1, #0x38
	ldr r1, [r5, r1]
	bl FUN_02009D68
	ldr r0, _0222B960 @ =0x00002248
	movs r4, #0
	adds r7, r0, #0
	str r4, [r5, r0]
	adds r6, r4, #0
	adds r7, #8
_0222B946:
	ldr r0, _0222B964 @ =0x00002288
	ldr r1, _0222B968 @ =0x00002250
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl FUN_02009D68
	str r6, [r5, r7]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _0222B946
_0222B95C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222B960: .4byte 0x00002248
_0222B964: .4byte 0x00002288
_0222B968: .4byte 0x00002250
	thumb_func_end ov63_0222B914

	thumb_func_start ov63_0222B96C
ov63_0222B96C: @ 0x0222B96C
	ldr r0, [r0]
	cmp r0, #0
	beq _0222B976
	movs r0, #1
	bx lr
_0222B976:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov63_0222B96C

	thumb_func_start ov63_0222B97C
ov63_0222B97C: @ 0x0222B97C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, _0222B9E0 @ =0x00002290
	adds r4, r1, #0
	ldr r0, [r5, r0]
	adds r6, r2, #0
	cmp r0, #0
	beq _0222B992
	bl FUN_02022974
_0222B992:
	ldr r0, _0222B9E4 @ =0x00000402
	movs r2, #0
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	ldr r1, _0222B9E8 @ =0x00002284
	str r6, [sp, #0xc]
	ldr r0, [r5, r1]
	adds r1, #0x14
	ldr r1, [r5, r1]
	adds r3, r2, #0
	bl FUN_02009B04
	ldr r1, _0222B9E0 @ =0x00002290
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	bl FUN_0200A640
	cmp r0, #0
	bne _0222B9C0
	bl FUN_02022974
_0222B9C0:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0222B9D2
	ldr r1, _0222B9E0 @ =0x00002290
	adds r0, r5, #0
	ldr r1, [r5, r1]
	movs r2, #8
	bl ov63_0222BC80
_0222B9D2:
	ldr r0, _0222B9E0 @ =0x00002290
	ldr r0, [r5, r0]
	bl FUN_02009D4C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0222B9E0: .4byte 0x00002290
_0222B9E4: .4byte 0x00000402
_0222B9E8: .4byte 0x00002284
	thumb_func_end ov63_0222B97C

	thumb_func_start ov63_0222B9EC
ov63_0222B9EC: @ 0x0222B9EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0222BA18 @ =0x00002290
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222B9FC
	bl FUN_02022974
_0222B9FC:
	ldr r0, _0222BA18 @ =0x00002290
	ldr r0, [r4, r0]
	bl FUN_0200A6DC
	ldr r1, _0222BA1C @ =0x00002284
	ldr r0, [r4, r1]
	adds r1, #0xc
	ldr r1, [r4, r1]
	bl FUN_02009D68
	ldr r0, _0222BA18 @ =0x00002290
	movs r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_0222BA18: .4byte 0x00002290
_0222BA1C: .4byte 0x00002284
	thumb_func_end ov63_0222B9EC

	thumb_func_start ov63_0222BA20
ov63_0222BA20: @ 0x0222BA20
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, _0222BA9C @ =0x00002148
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0222BA34
	bl FUN_02022974
_0222BA34:
	movs r0, #0x11
	movs r4, #0
	str r0, [sp, #0x10]
	adds r6, r5, #0
	movs r7, #0x12
_0222BA3E:
	movs r0, #6
	lsls r0, r0, #6
	adds r0, r4, r0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r1, _0222BAA0 @ =0x00002298
	str r0, [sp, #8]
	ldr r0, _0222BAA4 @ =0x00002288
	ldr r1, [r5, r1]
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x10]
	movs r3, #0
	bl FUN_02009BC4
	ldr r1, _0222BA9C @ =0x00002148
	adds r2, r7, #0
	str r0, [r6, r1]
	movs r0, #6
	lsls r0, r0, #6
	adds r0, r4, r0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r1, _0222BAA0 @ =0x00002298
	str r0, [sp, #8]
	ldr r0, _0222BAA8 @ =0x0000228C
	ldr r1, [r5, r1]
	ldr r0, [r5, r0]
	movs r3, #0
	bl FUN_02009BC4
	ldr r1, _0222BAAC @ =0x0000214C
	adds r4, r4, #1
	str r0, [r6, r1]
	ldr r0, [sp, #0x10]
	adds r6, #0x10
	adds r0, r0, #2
	adds r7, r7, #2
	str r0, [sp, #0x10]
	cmp r4, #0x10
	blt _0222BA3E
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0222BA9C: .4byte 0x00002148
_0222BAA0: .4byte 0x00002298
_0222BAA4: .4byte 0x00002288
_0222BAA8: .4byte 0x0000228C
_0222BAAC: .4byte 0x0000214C
	thumb_func_end ov63_0222BA20

	thumb_func_start ov63_0222BAB0
ov63_0222BAB0: @ 0x0222BAB0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _0222BAF0 @ =0x00002148
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0222BAC0
	bl FUN_02022974
_0222BAC0:
	movs r6, #0
	adds r4, r5, #0
	adds r7, r6, #0
_0222BAC6:
	ldr r0, _0222BAF4 @ =0x00002288
	ldr r1, _0222BAF0 @ =0x00002148
	ldr r0, [r5, r0]
	ldr r1, [r4, r1]
	bl FUN_02009D68
	ldr r0, _0222BAF8 @ =0x0000228C
	ldr r1, _0222BAFC @ =0x0000214C
	ldr r0, [r5, r0]
	ldr r1, [r4, r1]
	bl FUN_02009D68
	ldr r0, _0222BAF0 @ =0x00002148
	adds r6, r6, #1
	str r7, [r4, r0]
	adds r0, r0, #4
	str r7, [r4, r0]
	adds r4, #0x10
	cmp r6, #0x10
	blt _0222BAC6
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222BAF0: .4byte 0x00002148
_0222BAF4: .4byte 0x00002288
_0222BAF8: .4byte 0x0000228C
_0222BAFC: .4byte 0x0000214C
	thumb_func_end ov63_0222BAB0

	thumb_func_start ov63_0222BB00
ov63_0222BB00: @ 0x0222BB00
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	movs r6, #0
	cmp r0, #0
	bls _0222BB2E
	adds r4, r6, #0
_0222BB0E:
	ldr r0, [r5, #8]
	adds r0, r0, r4
	bl ov63_0222BC70
	cmp r0, #1
	bne _0222BB24
	movs r0, #0x18
	ldr r1, [r5, #8]
	muls r0, r6, r0
	adds r0, r1, r0
	pop {r4, r5, r6, pc}
_0222BB24:
	ldr r0, [r5, #0xc]
	adds r6, r6, #1
	adds r4, #0x18
	cmp r6, r0
	blo _0222BB0E
_0222BB2E:
	bl FUN_02022974
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov63_0222BB00

	thumb_func_start ov63_0222BB38
ov63_0222BB38: @ 0x0222BB38
	push {r3, lr}
	ldr r1, [r0, #0xc]
	lsls r2, r1, #2
	ldr r1, _0222BB4C @ =0x0222D948
	ldr r1, [r1, r2]
	cmp r1, #0
	beq _0222BB48
	blx r1
_0222BB48:
	pop {r3, pc}
	nop
_0222BB4C: .4byte 0x0222D948
	thumb_func_end ov63_0222BB38

	thumb_func_start ov63_0222BB50
ov63_0222BB50: @ 0x0222BB50
	ldr r3, _0222BB58 @ =FUN_02021DCC
	str r1, [r0, #0x10]
	ldr r0, [r0, #4]
	bx r3
	.align 2, 0
_0222BB58: .4byte FUN_02021DCC
	thumb_func_end ov63_0222BB50

	thumb_func_start ov63_0222BB5C
ov63_0222BB5C: @ 0x0222BB5C
	ldr r3, _0222BB68 @ =FUN_02021DCC
	str r1, [r0, #0x10]
	ldr r0, [r0, #4]
	movs r1, #4
	bx r3
	nop
_0222BB68: .4byte FUN_02021DCC
	thumb_func_end ov63_0222BB5C

	thumb_func_start ov63_0222BB6C
ov63_0222BB6C: @ 0x0222BB6C
	ldr r3, _0222BB78 @ =FUN_02021DCC
	str r1, [r0, #0x10]
	ldr r0, [r0, #4]
	adds r1, r1, #5
	bx r3
	nop
_0222BB78: .4byte FUN_02021DCC
	thumb_func_end ov63_0222BB6C

	thumb_func_start ov63_0222BB7C
ov63_0222BB7C: @ 0x0222BB7C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #4]
	adds r1, r1, #5
	bl FUN_02021DCC
	str r4, [r5, #0x10]
	pop {r3, r4, r5, pc}
	thumb_func_end ov63_0222BB7C

	thumb_func_start ov63_0222BB90
ov63_0222BB90: @ 0x0222BB90
	ldr r3, _0222BB9C @ =FUN_02021DCC
	str r1, [r0, #0x10]
	ldr r0, [r0, #4]
	adds r1, #9
	bx r3
	nop
_0222BB9C: .4byte FUN_02021DCC
	thumb_func_end ov63_0222BB90

	thumb_func_start ov63_0222BBA0
ov63_0222BBA0: @ 0x0222BBA0
	ldr r3, _0222BBAC @ =FUN_02021DCC
	str r1, [r0, #0x10]
	ldr r0, [r0, #4]
	adds r1, r1, #5
	bx r3
	nop
_0222BBAC: .4byte FUN_02021DCC
	thumb_func_end ov63_0222BBA0

	thumb_func_start ov63_0222BBB0
ov63_0222BBB0: @ 0x0222BBB0
	ldr r3, _0222BBBC @ =FUN_02021DCC
	str r1, [r0, #0x10]
	ldr r0, [r0, #4]
	adds r1, r1, #5
	bx r3
	nop
_0222BBBC: .4byte FUN_02021DCC
	thumb_func_end ov63_0222BBB0

	thumb_func_start ov63_0222BBC0
ov63_0222BBC0: @ 0x0222BBC0
	ldr r3, _0222BBCC @ =FUN_02021DCC
	str r1, [r0, #0x10]
	ldr r0, [r0, #4]
	adds r1, r1, #5
	bx r3
	nop
_0222BBCC: .4byte FUN_02021DCC
	thumb_func_end ov63_0222BBC0

	thumb_func_start ov63_0222BBD0
ov63_0222BBD0: @ 0x0222BBD0
	ldr r3, _0222BBDC @ =FUN_02021DCC
	str r1, [r0, #0x10]
	ldr r0, [r0, #4]
	adds r1, r1, #5
	bx r3
	nop
_0222BBDC: .4byte FUN_02021DCC
	thumb_func_end ov63_0222BBD0

	thumb_func_start ov63_0222BBE0
ov63_0222BBE0: @ 0x0222BBE0
	ldr r3, _0222BBEC @ =FUN_02021E2C
	movs r1, #2
	ldr r0, [r0, #4]
	lsls r1, r1, #0xc
	bx r3
	nop
_0222BBEC: .4byte FUN_02021E2C
	thumb_func_end ov63_0222BBE0

	thumb_func_start ov63_0222BBF0
ov63_0222BBF0: @ 0x0222BBF0
	ldr r3, _0222BBFC @ =FUN_02021E2C
	movs r1, #2
	ldr r0, [r0, #4]
	lsls r1, r1, #0xc
	bx r3
	nop
_0222BBFC: .4byte FUN_02021E2C
	thumb_func_end ov63_0222BBF0

	thumb_func_start ov63_0222BC00
ov63_0222BC00: @ 0x0222BC00
	push {r3, lr}
	adds r1, r0, #0
	movs r0, #0x14
	ldrsh r0, [r1, r0]
	cmp r0, #0
	ldr r0, [r1, #4]
	bne _0222BC16
	movs r1, #1
	bl FUN_02021E50
	pop {r3, pc}
_0222BC16:
	ldr r1, [r1, #0x10]
	adds r1, r1, #5
	bl FUN_02021D6C
	pop {r3, pc}
	thumb_func_end ov63_0222BC00

	thumb_func_start ov63_0222BC20
ov63_0222BC20: @ 0x0222BC20
	ldr r3, _0222BC2C @ =FUN_02021E2C
	movs r1, #2
	ldr r0, [r0, #4]
	lsls r1, r1, #0xc
	bx r3
	nop
_0222BC2C: .4byte FUN_02021E2C
	thumb_func_end ov63_0222BC20

	thumb_func_start ov63_0222BC30
ov63_0222BC30: @ 0x0222BC30
	ldr r3, _0222BC3C @ =FUN_02021E2C
	movs r1, #1
	ldr r0, [r0, #4]
	lsls r1, r1, #0xc
	bx r3
	nop
_0222BC3C: .4byte FUN_02021E2C
	thumb_func_end ov63_0222BC30

	thumb_func_start ov63_0222BC40
ov63_0222BC40: @ 0x0222BC40
	ldr r3, _0222BC4C @ =FUN_02021E2C
	movs r1, #1
	ldr r0, [r0, #4]
	lsls r1, r1, #0xc
	bx r3
	nop
_0222BC4C: .4byte FUN_02021E2C
	thumb_func_end ov63_0222BC40

	thumb_func_start ov63_0222BC50
ov63_0222BC50: @ 0x0222BC50
	ldr r3, _0222BC5C @ =FUN_02021E2C
	movs r1, #2
	ldr r0, [r0, #4]
	lsls r1, r1, #0xe
	bx r3
	nop
_0222BC5C: .4byte FUN_02021E2C
	thumb_func_end ov63_0222BC50

	thumb_func_start ov63_0222BC60
ov63_0222BC60: @ 0x0222BC60
	ldr r3, _0222BC6C @ =FUN_02021E2C
	movs r1, #6
	ldr r0, [r0, #4]
	lsls r1, r1, #0xc
	bx r3
	nop
_0222BC6C: .4byte FUN_02021E2C
	thumb_func_end ov63_0222BC60

	thumb_func_start ov63_0222BC70
ov63_0222BC70: @ 0x0222BC70
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0222BC7A
	movs r0, #1
	bx lr
_0222BC7A:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov63_0222BC70

	thumb_func_start ov63_0222BC80
ov63_0222BC80: @ 0x0222BC80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r1, #0
	adds r5, r0, #0
	adds r0, r6, #0
	adds r4, r2, #0
	bl FUN_02009E34
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r1, #1
	bl FUN_0200A760
	adds r7, r0, #0
	adds r0, r6, #0
	movs r1, #2
	bl FUN_0200A760
	adds r6, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r7, r0
	beq _0222BCC4
	lsls r0, r4, #0x15
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r1, [sp, #4]
	lsls r3, r7, #0x14
	ldr r0, [r5, #4]
	ldr r1, [r1, #0xc]
	movs r2, #2
	lsrs r3, r3, #0x10
	bl FUN_02002FBC
_0222BCC4:
	movs r0, #0
	mvns r0, r0
	cmp r6, r0
	beq _0222BCE2
	lsls r0, r4, #0x15
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r1, [sp, #4]
	lsls r3, r6, #0x14
	ldr r0, [r5, #4]
	ldr r1, [r1, #0xc]
	movs r2, #3
	lsrs r3, r3, #0x10
	bl FUN_02002FBC
_0222BCE2:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov63_0222BC80

	thumb_func_start ov63_0222BCE8
ov63_0222BCE8: @ 0x0222BCE8
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r2, #0
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, r7, #0
	movs r1, #8
	bl FUN_02018144
	adds r4, r0, #0
	bne _0222BD00
	bl FUN_02022974
_0222BD00:
	strh r5, [r4]
	strh r6, [r4, #2]
	ldrh r2, [r4]
	ldrh r1, [r4, #2]
	adds r0, r7, #0
	muls r1, r2, r1
	lsls r1, r1, #2
	bl FUN_02018144
	str r0, [r4, #4]
	cmp r0, #0
	bne _0222BD1C
	bl FUN_02022974
_0222BD1C:
	ldrh r3, [r4]
	ldrh r2, [r4, #2]
	ldr r0, [r4, #4]
	movs r1, #0
	muls r2, r3, r2
	lsls r2, r2, #2
	blx FUN_020D5124
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov63_0222BCE8

	thumb_func_start ov63_0222BD30
ov63_0222BD30: @ 0x0222BD30
	push {r4, lr}
	adds r4, r0, #0
	bne _0222BD3A
	bl FUN_02022974
_0222BD3A:
	ldr r0, [r4, #4]
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov63_0222BD30

	thumb_func_start ov63_0222BD48
ov63_0222BD48: @ 0x0222BD48
	ldrh r0, [r0]
	bx lr
	thumb_func_end ov63_0222BD48

	thumb_func_start ov63_0222BD4C
ov63_0222BD4C: @ 0x0222BD4C
	ldrh r0, [r0, #2]
	bx lr
	thumb_func_end ov63_0222BD4C

	thumb_func_start ov63_0222BD50
ov63_0222BD50: @ 0x0222BD50
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r4, #0
	bne _0222BD5E
	bl FUN_02022974
_0222BD5E:
	ldrh r3, [r4]
	ldrh r2, [r4, #2]
	ldr r0, [r4, #4]
	adds r1, r5, #0
	muls r2, r3, r2
	lsls r2, r2, #2
	blx FUN_020D50B8
	pop {r3, r4, r5, pc}
	thumb_func_end ov63_0222BD50

	thumb_func_start ov63_0222BD70
ov63_0222BD70: @ 0x0222BD70
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _0222BDA8 @ =0x0222DBFC
	adds r4, r1, #0
	ldr r0, [r0]
	adds r6, r2, #0
	str r0, [sp]
	cmp r5, #0
	bne _0222BD88
	bl FUN_02022974
_0222BD88:
	ldrh r2, [r5]
	cmp r2, r4
	bls _0222BDA2
	ldrh r0, [r5, #2]
	cmp r0, r6
	bls _0222BDA2
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r4, r0
	ldr r1, [r5, #4]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [sp]
_0222BDA2:
	ldr r0, [sp]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0222BDA8: .4byte 0x0222DBFC
	thumb_func_end ov63_0222BD70

	thumb_func_start ov63_0222BDAC
ov63_0222BDAC: @ 0x0222BDAC
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	cmp r5, #0
	bne _0222BDBE
	bl FUN_02022974
_0222BDBE:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov63_0222BD70
	movs r1, #0
	mvns r1, r1
	str r0, [sp]
	str r0, [sp, #4]
	cmp r0, r1
	bne _0222BDDA
	add sp, #8
	movs r0, #1
	pop {r4, r5, r6, pc}
_0222BDDA:
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov63_0222BDAC

	thumb_func_start ov63_0222BDE4
ov63_0222BDE4: @ 0x0222BDE4
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	cmp r5, #0
	bne _0222BDF6
	bl FUN_02022974
_0222BDF6:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov63_0222BD70
	movs r1, #0
	mvns r1, r1
	str r0, [sp]
	str r0, [sp, #4]
	cmp r0, r1
	bne _0222BE12
	add sp, #8
	movs r0, #0
	pop {r4, r5, r6, pc}
_0222BE12:
	lsrs r0, r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov63_0222BDE4

	thumb_func_start ov63_0222BE18
ov63_0222BE18: @ 0x0222BE18
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	adds r0, r6, #0
	movs r1, #8
	bl FUN_02018144
	adds r4, r0, #0
	bne _0222BE2E
	bl FUN_02022974
_0222BE2E:
	movs r1, #0x18
	adds r0, r6, #0
	muls r1, r5, r1
	str r5, [r4, #4]
	bl FUN_02018144
	str r0, [r4]
	cmp r0, #0
	bne _0222BE44
	bl FUN_02022974
_0222BE44:
	ldr r3, [r4, #4]
	movs r2, #0x18
	ldr r0, [r4]
	movs r1, #0
	muls r2, r3, r2
	blx FUN_020D5124
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov63_0222BE18

	thumb_func_start ov63_0222BE58
ov63_0222BE58: @ 0x0222BE58
	push {r4, lr}
	adds r4, r0, #0
	bne _0222BE62
	bl FUN_02022974
_0222BE62:
	ldr r0, [r4]
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov63_0222BE58

	thumb_func_start ov63_0222BE70
ov63_0222BE70: @ 0x0222BE70
	push {r4, lr}
	adds r4, r1, #0
	ldrb r1, [r4, #7]
	bl ov63_0222BF18
	adds r1, r4, #0
	bl ov63_0222C350
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov63_0222BE70

	thumb_func_start ov63_0222BE84
ov63_0222BE84: @ 0x0222BE84
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl ov63_0222BEB0
	adds r5, r0, #0
	ldr r4, _0222BEAC @ =0x00000000
	beq _0222BEAA
_0222BE92:
	lsls r1, r4, #0x10
	adds r0, r6, #0
	lsrs r1, r1, #0x10
	bl ov63_0222BF50
	cmp r0, #0
	beq _0222BEA4
	bl ov63_0222C37C
_0222BEA4:
	adds r4, r4, #1
	cmp r4, r5
	blo _0222BE92
_0222BEAA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222BEAC: .4byte 0x00000000
	thumb_func_end ov63_0222BE84

	thumb_func_start ov63_0222BEB0
ov63_0222BEB0: @ 0x0222BEB0
	push {r4, lr}
	adds r4, r0, #0
	bne _0222BEBA
	bl FUN_02022974
_0222BEBA:
	ldr r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov63_0222BEB0

	thumb_func_start ov63_0222BEC0
ov63_0222BEC0: @ 0x0222BEC0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r5, #0
	bne _0222BECE
	bl FUN_02022974
_0222BECE:
	cmp r4, #0
	bne _0222BED6
	bl FUN_02022974
_0222BED6:
	adds r0, r5, #0
	bl ov63_0222C0B8
	movs r1, #0
	ldrsh r2, [r4, r1]
	strh r2, [r0, #4]
	movs r2, #2
	ldrsh r3, [r4, r2]
	strh r3, [r0, #6]
	ldrsh r1, [r4, r1]
	strh r1, [r0, #8]
	ldrsh r1, [r4, r2]
	strh r1, [r0, #0xa]
	ldrh r1, [r4, #4]
	strh r1, [r0, #0xc]
	ldrh r1, [r4, #6]
	strb r1, [r0, #0x15]
	ldrh r1, [r4, #8]
	strb r1, [r0, #0x14]
	ldrh r1, [r4, #0xa]
	strh r1, [r0, #0xe]
	movs r1, #1
	str r1, [r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov63_0222BEC0

	thumb_func_start ov63_0222BF08
ov63_0222BF08: @ 0x0222BF08
	movs r2, #0x18
	movs r1, #0
_0222BF0C:
	strb r1, [r0]
	adds r0, r0, #1
	subs r2, r2, #1
	bne _0222BF0C
	bx lr
	.align 2, 0
	thumb_func_end ov63_0222BF08

	thumb_func_start ov63_0222BF18
ov63_0222BF18: @ 0x0222BF18
	push {r3, r4, r5, r6}
	ldr r5, [r0, #4]
	movs r2, #0
	cmp r5, #0
	bls _0222BF4A
	ldr r4, [r0]
	adds r3, r2, #0
	adds r0, r4, #0
_0222BF28:
	ldr r6, [r0]
	cmp r6, #1
	bne _0222BF40
	adds r6, r4, r3
	ldrh r6, [r6, #0xc]
	cmp r1, r6
	bne _0222BF40
	movs r0, #0x18
	muls r0, r2, r0
	adds r0, r4, r0
	pop {r3, r4, r5, r6}
	bx lr
_0222BF40:
	adds r2, r2, #1
	adds r0, #0x18
	adds r3, #0x18
	cmp r2, r5
	blo _0222BF28
_0222BF4A:
	movs r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov63_0222BF18

	thumb_func_start ov63_0222BF50
ov63_0222BF50: @ 0x0222BF50
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r5, #0
	bne _0222BF5E
	bl FUN_02022974
_0222BF5E:
	ldr r0, [r5, #4]
	cmp r4, r0
	blo _0222BF68
	bl FUN_02022974
_0222BF68:
	ldr r2, [r5]
	movs r0, #0x18
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, [r2, r1]
	cmp r0, #1
	bne _0222BF7A
	adds r0, r2, r1
	pop {r3, r4, r5, pc}
_0222BF7A:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov63_0222BF50

	thumb_func_start ov63_0222BF80
ov63_0222BF80: @ 0x0222BF80
	ldr r3, _0222BF84 @ =ov63_0222BF18
	bx r3
	.align 2, 0
_0222BF84: .4byte ov63_0222BF18
	thumb_func_end ov63_0222BF80

	thumb_func_start ov63_0222BF88
ov63_0222BF88: @ 0x0222BF88
	ldr r3, _0222BF8C @ =ov63_0222BF50
	bx r3
	.align 2, 0
_0222BF8C: .4byte ov63_0222BF50
	thumb_func_end ov63_0222BF88

	thumb_func_start ov63_0222BF90
ov63_0222BF90: @ 0x0222BF90
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	cmp r4, #0
	bne _0222BF9E
	bl FUN_02022974
_0222BF9E:
	cmp r6, #0xa
	bhi _0222BFF8
	adds r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222BFAE: @ jump table
	.2byte _0222BFC4 - _0222BFAE - 2 @ case 0
	.2byte _0222BFCA - _0222BFAE - 2 @ case 1
	.2byte _0222BFD0 - _0222BFAE - 2 @ case 2
	.2byte _0222BFD6 - _0222BFAE - 2 @ case 3
	.2byte _0222BFDC - _0222BFAE - 2 @ case 4
	.2byte _0222BFE0 - _0222BFAE - 2 @ case 5
	.2byte _0222BFE4 - _0222BFAE - 2 @ case 6
	.2byte _0222BFE8 - _0222BFAE - 2 @ case 7
	.2byte _0222BFEC - _0222BFAE - 2 @ case 8
	.2byte _0222BFF0 - _0222BFAE - 2 @ case 9
	.2byte _0222BFF4 - _0222BFAE - 2 @ case 10
_0222BFC4:
	movs r0, #4
	ldrsh r5, [r4, r0]
	b _0222BFFC
_0222BFCA:
	movs r0, #6
	ldrsh r5, [r4, r0]
	b _0222BFFC
_0222BFD0:
	movs r0, #8
	ldrsh r5, [r4, r0]
	b _0222BFFC
_0222BFD6:
	movs r0, #0xa
	ldrsh r5, [r4, r0]
	b _0222BFFC
_0222BFDC:
	ldrh r5, [r4, #0xc]
	b _0222BFFC
_0222BFE0:
	ldrb r5, [r4, #0x15]
	b _0222BFFC
_0222BFE4:
	ldrb r5, [r4, #0x14]
	b _0222BFFC
_0222BFE8:
	ldrh r5, [r4, #0xe]
	b _0222BFFC
_0222BFEC:
	ldrh r5, [r4, #0x10]
	b _0222BFFC
_0222BFF0:
	ldrh r5, [r4, #0x12]
	b _0222BFFC
_0222BFF4:
	ldrh r5, [r4, #0x16]
	b _0222BFFC
_0222BFF8:
	bl FUN_02022974
_0222BFFC:
	adds r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov63_0222BF90

	thumb_func_start ov63_0222C000
ov63_0222C000: @ 0x0222C000
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	cmp r5, #0
	bne _0222C010
	bl FUN_02022974
_0222C010:
	cmp r6, #0xa
	bhi _0222C072
	adds r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0222C020: @ jump table
	.2byte _0222C036 - _0222C020 - 2 @ case 0
	.2byte _0222C03A - _0222C020 - 2 @ case 1
	.2byte _0222C03E - _0222C020 - 2 @ case 2
	.2byte _0222C042 - _0222C020 - 2 @ case 3
	.2byte _0222C046 - _0222C020 - 2 @ case 4
	.2byte _0222C04A - _0222C020 - 2 @ case 5
	.2byte _0222C056 - _0222C020 - 2 @ case 6
	.2byte _0222C062 - _0222C020 - 2 @ case 7
	.2byte _0222C066 - _0222C020 - 2 @ case 8
	.2byte _0222C06A - _0222C020 - 2 @ case 9
	.2byte _0222C06E - _0222C020 - 2 @ case 10
_0222C036:
	strh r4, [r5, #4]
	pop {r4, r5, r6, pc}
_0222C03A:
	strh r4, [r5, #6]
	pop {r4, r5, r6, pc}
_0222C03E:
	strh r4, [r5, #8]
	pop {r4, r5, r6, pc}
_0222C042:
	strh r4, [r5, #0xa]
	pop {r4, r5, r6, pc}
_0222C046:
	strh r4, [r5, #0xc]
	pop {r4, r5, r6, pc}
_0222C04A:
	cmp r4, #0xc
	blt _0222C052
	bl FUN_02022974
_0222C052:
	strb r4, [r5, #0x15]
	pop {r4, r5, r6, pc}
_0222C056:
	cmp r4, #4
	blt _0222C05E
	bl FUN_02022974
_0222C05E:
	strb r4, [r5, #0x14]
	pop {r4, r5, r6, pc}
_0222C062:
	strh r4, [r5, #0xe]
	pop {r4, r5, r6, pc}
_0222C066:
	strh r4, [r5, #0x10]
	pop {r4, r5, r6, pc}
_0222C06A:
	strh r4, [r5, #0x12]
	pop {r4, r5, r6, pc}
_0222C06E:
	strh r4, [r5, #0x16]
	pop {r4, r5, r6, pc}
_0222C072:
	bl FUN_02022974
	pop {r4, r5, r6, pc}
	thumb_func_end ov63_0222C000

	thumb_func_start ov63_0222C078
ov63_0222C078: @ 0x0222C078
	push {r0, r1, r2, r3}
	lsls r0, r1, #1
	add r2, sp, #0
	movs r1, #0
	ldrsh r3, [r2, r1]
	ldr r1, _0222C0A4 @ =0x0222DC04
	ldrsb r1, [r1, r0]
	adds r1, r3, r1
	strh r1, [r2]
	movs r1, #2
	ldrsh r3, [r2, r1]
	ldr r1, _0222C0A8 @ =0x0222DC05
	ldrsb r0, [r1, r0]
	adds r0, r3, r0
	strh r0, [r2, #2]
	ldrh r1, [r2, #2]
	ldrh r0, [r2]
	lsls r1, r1, #0x10
	orrs r0, r1
	add sp, #0x10
	bx lr
	nop
_0222C0A4: .4byte 0x0222DC04
_0222C0A8: .4byte 0x0222DC05
	thumb_func_end ov63_0222C078

	thumb_func_start ov63_0222C0AC
ov63_0222C0AC: @ 0x0222C0AC
	ldr r1, _0222C0B4 @ =0x0222DC00
	ldrb r0, [r1, r0]
	bx lr
	nop
_0222C0B4: .4byte 0x0222DC00
	thumb_func_end ov63_0222C0AC

	thumb_func_start ov63_0222C0B8
ov63_0222C0B8: @ 0x0222C0B8
	push {r4, lr}
	ldr r4, [r0, #4]
	movs r1, #0
	cmp r4, #0
	bls _0222C0DC
	ldr r3, [r0]
	adds r2, r3, #0
_0222C0C6:
	ldr r0, [r2]
	cmp r0, #0
	bne _0222C0D4
	movs r0, #0x18
	muls r0, r1, r0
	adds r0, r3, r0
	pop {r4, pc}
_0222C0D4:
	adds r1, r1, #1
	adds r2, #0x18
	cmp r1, r4
	blo _0222C0C6
_0222C0DC:
	bl FUN_02022974
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov63_0222C0B8

	thumb_func_start ov63_0222C0E4
ov63_0222C0E4: @ 0x0222C0E4
	ldrh r1, [r0, #6]
	ldrh r0, [r0, #4]
	lsls r1, r1, #0x10
	orrs r0, r1
	bx lr
	.align 2, 0
	thumb_func_end ov63_0222C0E4

	thumb_func_start ov63_0222C0F0
ov63_0222C0F0: @ 0x0222C0F0
	ldrh r1, [r0, #0xa]
	ldrh r0, [r0, #8]
	lsls r1, r1, #0x10
	orrs r0, r1
	bx lr
	.align 2, 0
	thumb_func_end ov63_0222C0F0

	thumb_func_start ov63_0222C0FC
ov63_0222C0FC: @ 0x0222C0FC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r1, #8
	bl ov63_0222BF90
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #9
	bl ov63_0222BF90
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov63_0222C0E4
	add r1, sp, #0
	strh r0, [r1, #4]
	lsrs r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	adds r0, r5, #0
	bl ov63_0222C0F0
	add r1, sp, #0
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	movs r2, #8
	strh r0, [r1, #8]
	ldrh r0, [r1, #2]
	strh r0, [r1, #0xa]
	movs r0, #0xc
	ldrsh r3, [r1, r0]
	ldrsh r2, [r1, r2]
	subs r2, r3, r2
	strh r2, [r1, #0xc]
	movs r2, #0xa
	ldrsh r5, [r1, r2]
	movs r2, #0xe
	ldrsh r2, [r1, r2]
	subs r2, r2, r5
	strh r2, [r1, #0xe]
	cmp r4, #0
	ble _0222C17A
	ldrsh r0, [r1, r0]
	adds r1, r6, #0
	muls r0, r4, r0
	blx FUN_020E1F6C
	add r1, sp, #0
	strh r0, [r1, #0xc]
	movs r0, #0xe
	ldrsh r0, [r1, r0]
	adds r1, r6, #0
	muls r0, r4, r0
	blx FUN_020E1F6C
	add r1, sp, #0
	b _0222C17E
_0222C17A:
	movs r0, #0
	strh r0, [r1, #0xc]
_0222C17E:
	strh r0, [r1, #0xe]
	add r1, sp, #0
	movs r0, #0xc
	ldrsh r2, [r1, r0]
	movs r0, #8
	ldrsh r0, [r1, r0]
	adds r0, r2, r0
	strh r0, [r1, #0xc]
	movs r0, #0xe
	ldrsh r0, [r1, r0]
	adds r0, r0, r5
	strh r0, [r1, #0xe]
	ldrh r2, [r1, #0xe]
	ldrh r0, [r1, #0xc]
	lsls r1, r2, #0x10
	orrs r0, r1
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov63_0222C0FC

	thumb_func_start ov63_0222C1A4
ov63_0222C1A4: @ 0x0222C1A4
	push {r0, r1, r2, r3}
	add r1, sp, #0
	ldrh r2, [r1, #4]
	strh r2, [r0, #4]
	ldrh r1, [r1, #6]
	strh r1, [r0, #6]
	add sp, #0x10
	bx lr
	thumb_func_end ov63_0222C1A4

	thumb_func_start ov63_0222C1B4
ov63_0222C1B4: @ 0x0222C1B4
	push {r0, r1, r2, r3}
	add r1, sp, #0
	ldrh r2, [r1, #4]
	strh r2, [r0, #8]
	ldrh r1, [r1, #6]
	strh r1, [r0, #0xa]
	add sp, #0x10
	bx lr
	thumb_func_end ov63_0222C1B4

	thumb_func_start ov63_0222C1C4
ov63_0222C1C4: @ 0x0222C1C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r5, r0, #0
	str r1, [sp]
	adds r4, r2, #0
	bl ov63_0222C0E4
	add r1, sp, #0x10
	strh r0, [r1, #0xc]
	lsrs r0, r0, #0x10
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0xc]
	mov r2, sp
	subs r2, r2, #4
	strh r0, [r1, #0x1c]
	ldrh r0, [r1, #0xe]
	strh r0, [r1, #0x1e]
	ldrh r0, [r1, #0x1c]
	strh r0, [r2]
	ldrh r0, [r1, #0x1e]
	adds r1, r4, #0
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl ov63_0222C078
	add r1, sp, #0x10
	strh r0, [r1, #8]
	lsrs r0, r0, #0x10
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #8]
	strh r0, [r1, #0x14]
	ldrh r0, [r1, #0xa]
	strh r0, [r1, #0x16]
	adds r0, r5, #0
	movs r1, #4
	bl ov63_0222BF90
	str r0, [sp, #4]
	ldr r0, [sp]
	bl ov63_0222BEB0
	movs r5, #0
	str r0, [sp, #8]
	cmp r0, #0
	bls _0222C2A4
	add r4, sp, #0x10
	movs r0, #0x16
	ldrsh r7, [r4, r0]
	movs r0, #0x14
	ldrsh r0, [r4, r0]
	str r0, [sp, #0xc]
_0222C22A:
	lsls r1, r5, #0x10
	ldr r0, [sp]
	lsrs r1, r1, #0x10
	bl ov63_0222BF88
	adds r6, r0, #0
	beq _0222C29C
	movs r1, #4
	bl ov63_0222BF90
	ldr r1, [sp, #4]
	cmp r0, r1
	beq _0222C29C
	adds r0, r6, #0
	bl ov63_0222C0E4
	strh r0, [r4, #4]
	lsrs r0, r0, #0x10
	strh r0, [r4, #6]
	ldrh r0, [r4, #4]
	strh r0, [r4, #0x18]
	ldrh r0, [r4, #6]
	strh r0, [r4, #0x1a]
	movs r0, #0x18
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bne _0222C270
	movs r0, #0x1a
	ldrsh r0, [r4, r0]
	cmp r0, r7
	bne _0222C270
	add sp, #0x30
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222C270:
	adds r0, r6, #0
	bl ov63_0222C0F0
	strh r0, [r4]
	lsrs r0, r0, #0x10
	strh r0, [r4, #2]
	ldrh r0, [r4]
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #2]
	strh r0, [r4, #0x12]
	movs r0, #0x10
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bne _0222C29C
	movs r0, #0x12
	ldrsh r0, [r4, r0]
	cmp r0, r7
	bne _0222C29C
	add sp, #0x30
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222C29C:
	ldr r0, [sp, #8]
	adds r5, r5, #1
	cmp r5, r0
	blo _0222C22A
_0222C2A4:
	movs r0, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov63_0222C1C4

	thumb_func_start ov63_0222C2AC
ov63_0222C2AC: @ 0x0222C2AC
	push {r0, r1, r2, r3}
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r2, sp, #0x30
	movs r1, #6
	str r0, [sp]
	ldrsh r6, [r2, r1]
	bl ov63_0222BEB0
	movs r5, #0
	str r0, [sp, #8]
	cmp r0, #0
	bls _0222C344
	add r1, sp, #0x30
	movs r0, #4
	ldrsh r7, [r1, r0]
	add r4, sp, #0xc
_0222C2CE:
	lsls r1, r5, #0x10
	ldr r0, [sp]
	lsrs r1, r1, #0x10
	bl ov63_0222BF88
	str r0, [sp, #4]
	cmp r0, #0
	beq _0222C33C
	bl ov63_0222C0E4
	strh r0, [r4, #4]
	lsrs r0, r0, #0x10
	strh r0, [r4, #6]
	ldrh r0, [r4, #4]
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #6]
	strh r0, [r4, #0xe]
	movs r0, #0xc
	ldrsh r0, [r4, r0]
	cmp r0, r7
	bne _0222C30C
	movs r0, #0xe
	ldrsh r0, [r4, r0]
	cmp r0, r6
	bne _0222C30C
	ldr r0, [sp, #4]
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
_0222C30C:
	ldr r0, [sp, #4]
	bl ov63_0222C0F0
	strh r0, [r4]
	lsrs r0, r0, #0x10
	strh r0, [r4, #2]
	ldrh r0, [r4]
	strh r0, [r4, #8]
	ldrh r0, [r4, #2]
	strh r0, [r4, #0xa]
	movs r0, #8
	ldrsh r0, [r4, r0]
	cmp r0, r7
	bne _0222C33C
	movs r0, #0xa
	ldrsh r0, [r4, r0]
	cmp r0, r6
	bne _0222C33C
	ldr r0, [sp, #4]
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
_0222C33C:
	ldr r0, [sp, #8]
	adds r5, r5, #1
	cmp r5, r0
	blo _0222C2CE
_0222C344:
	movs r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov63_0222C2AC

	thumb_func_start ov63_0222C350
ov63_0222C350: @ 0x0222C350
	push {r3, r4, r5, lr}
	adds r3, r1, #0
	ldrh r1, [r3]
	mov r2, sp
	subs r2, r2, #4
	strh r1, [r2]
	ldrh r1, [r3, #2]
	adds r4, r0, #0
	strh r1, [r2, #2]
	ldr r1, [r2]
	ldrb r2, [r3, #6]
	ldrh r3, [r3, #4]
	lsls r5, r3, #2
	ldr r3, _0222C378 @ =0x0222DC0C
	ldr r3, [r3, r5]
	blx r3
	movs r0, #0
	strh r0, [r4, #0x16]
	pop {r3, r4, r5, pc}
	nop
_0222C378: .4byte 0x0222DC0C
	thumb_func_end ov63_0222C350

	thumb_func_start ov63_0222C37C
ov63_0222C37C: @ 0x0222C37C
	push {r4, lr}
	movs r1, #5
	adds r4, r0, #0
	bl ov63_0222BF90
	adds r1, r0, #0
	lsls r2, r1, #2
	ldr r1, _0222C3A8 @ =0x0222DC3C
	adds r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	ldrh r1, [r4, #0x16]
	adds r1, r1, #1
	strh r1, [r4, #0x16]
	cmp r0, #1
	bne _0222C3A6
	adds r0, r4, #0
	bl ov63_0222CA48
	movs r0, #0
	strh r0, [r4, #0x16]
_0222C3A6:
	pop {r4, pc}
	.align 2, 0
_0222C3A8: .4byte 0x0222DC3C
	thumb_func_end ov63_0222C37C

	thumb_func_start ov63_0222C3AC
ov63_0222C3AC: @ 0x0222C3AC
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r5, #0
	bne _0222C3BC
	bl FUN_02022974
_0222C3BC:
	add r1, sp, #0x10
	ldrh r2, [r1, #4]
	mov r3, sp
	subs r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #6]
	adds r0, r5, #0
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1A4
	add r1, sp, #0x10
	mov r3, sp
	ldrh r2, [r1, #4]
	subs r3, r3, #4
	adds r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1B4
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0
	bl ov63_0222C000
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov63_0222C3AC

	thumb_func_start ov63_0222C404
ov63_0222C404: @ 0x0222C404
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r5, #0
	bne _0222C414
	bl FUN_02022974
_0222C414:
	add r1, sp, #0x10
	ldrh r2, [r1, #4]
	mov r3, sp
	subs r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #6]
	adds r0, r5, #0
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1A4
	add r1, sp, #0x10
	mov r3, sp
	ldrh r2, [r1, #4]
	subs r3, r3, #4
	adds r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1B4
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #5
	movs r2, #1
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #9
	movs r2, #2
	bl ov63_0222C000
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov63_0222C404

	thumb_func_start ov63_0222C470
ov63_0222C470: @ 0x0222C470
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r5, #0
	bne _0222C482
	bl FUN_02022974
_0222C482:
	add r0, sp, #0x18
	ldrh r1, [r0, #4]
	mov r2, sp
	subs r2, r2, #4
	strh r1, [r2]
	ldrh r0, [r0, #6]
	adds r1, r4, #0
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl ov63_0222C9E4
	add r1, sp, #0
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	mov r3, sp
	subs r3, r3, #4
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	add r1, sp, #0x18
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1B4
	add r1, sp, #0
	mov r3, sp
	ldrh r2, [r1, #4]
	subs r3, r3, #4
	adds r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1A4
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #5
	movs r2, #2
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #9
	movs r2, #8
	bl ov63_0222C000
	add sp, #8
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end ov63_0222C470

	thumb_func_start ov63_0222C508
ov63_0222C508: @ 0x0222C508
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r5, #0
	bne _0222C51A
	bl FUN_02022974
_0222C51A:
	add r0, sp, #0x18
	ldrh r1, [r0, #4]
	mov r2, sp
	subs r2, r2, #4
	strh r1, [r2]
	ldrh r0, [r0, #6]
	adds r1, r4, #0
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl ov63_0222C9E4
	add r1, sp, #0
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	mov r3, sp
	subs r3, r3, #4
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	add r1, sp, #0x18
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1B4
	add r1, sp, #0
	mov r3, sp
	ldrh r2, [r1, #4]
	subs r3, r3, #4
	adds r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1A4
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #5
	movs r2, #3
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #9
	movs r2, #4
	bl ov63_0222C000
	add sp, #8
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end ov63_0222C508

	thumb_func_start ov63_0222C5A0
ov63_0222C5A0: @ 0x0222C5A0
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r5, #0
	bne _0222C5B0
	bl FUN_02022974
_0222C5B0:
	add r1, sp, #0x10
	ldrh r2, [r1, #4]
	mov r3, sp
	subs r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #6]
	adds r0, r5, #0
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1A4
	add r1, sp, #0x10
	mov r3, sp
	ldrh r2, [r1, #4]
	subs r3, r3, #4
	adds r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1B4
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #5
	movs r2, #4
	bl ov63_0222C000
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov63_0222C5A0

	thumb_func_start ov63_0222C5F8
ov63_0222C5F8: @ 0x0222C5F8
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r5, #0
	bne _0222C608
	bl FUN_02022974
_0222C608:
	add r1, sp, #0x10
	ldrh r2, [r1, #4]
	mov r3, sp
	subs r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #6]
	adds r0, r5, #0
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1A4
	add r1, sp, #0x10
	mov r3, sp
	ldrh r2, [r1, #4]
	subs r3, r3, #4
	adds r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1B4
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	bl ov63_0222C000
	movs r1, #5
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #9
	movs r2, #0x10
	bl ov63_0222C000
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov63_0222C5F8

	thumb_func_start ov63_0222C664
ov63_0222C664: @ 0x0222C664
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r5, #0
	bne _0222C676
	bl FUN_02022974
_0222C676:
	add r0, sp, #0x18
	ldrh r1, [r0, #4]
	mov r2, sp
	subs r2, r2, #4
	strh r1, [r2]
	ldrh r0, [r0, #6]
	adds r1, r4, #0
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl ov63_0222C9E4
	add r1, sp, #0
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	mov r3, sp
	subs r3, r3, #4
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	add r1, sp, #0x18
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1B4
	add r1, sp, #0
	mov r3, sp
	ldrh r2, [r1, #4]
	subs r3, r3, #4
	adds r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1A4
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #5
	movs r2, #6
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #9
	movs r2, #0x10
	bl ov63_0222C000
	add sp, #8
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end ov63_0222C664

	thumb_func_start ov63_0222C6FC
ov63_0222C6FC: @ 0x0222C6FC
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r5, #0
	bne _0222C70E
	bl FUN_02022974
_0222C70E:
	add r0, sp, #0x18
	ldrh r1, [r0, #4]
	mov r2, sp
	subs r2, r2, #4
	strh r1, [r2]
	ldrh r0, [r0, #6]
	adds r1, r4, #0
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl ov63_0222C9E4
	add r1, sp, #0
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	mov r3, sp
	subs r3, r3, #4
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	add r1, sp, #0x18
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1B4
	add r1, sp, #0
	mov r3, sp
	ldrh r2, [r1, #4]
	subs r3, r3, #4
	adds r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1A4
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #5
	movs r2, #7
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #9
	movs r2, #4
	bl ov63_0222C000
	add sp, #8
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end ov63_0222C6FC

	thumb_func_start ov63_0222C794
ov63_0222C794: @ 0x0222C794
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r5, #0
	bne _0222C7A4
	bl FUN_02022974
_0222C7A4:
	add r1, sp, #0x10
	ldrh r2, [r1, #4]
	mov r3, sp
	subs r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #6]
	adds r0, r5, #0
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1B4
	add r1, sp, #0x10
	mov r3, sp
	ldrh r2, [r1, #4]
	subs r3, r3, #4
	adds r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1A4
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #5
	movs r2, #8
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #9
	movs r2, #2
	bl ov63_0222C000
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov63_0222C794

	thumb_func_start ov63_0222C800
ov63_0222C800: @ 0x0222C800
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r5, #0
	bne _0222C810
	bl FUN_02022974
_0222C810:
	add r1, sp, #0x10
	ldrh r2, [r1, #4]
	mov r3, sp
	subs r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #6]
	adds r0, r5, #0
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1B4
	add r1, sp, #0x10
	mov r3, sp
	ldrh r2, [r1, #4]
	subs r3, r3, #4
	adds r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1A4
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #5
	movs r2, #9
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #9
	movs r2, #4
	bl ov63_0222C000
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov63_0222C800

	thumb_func_start ov63_0222C86C
ov63_0222C86C: @ 0x0222C86C
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r5, #0
	bne _0222C87C
	bl FUN_02022974
_0222C87C:
	add r1, sp, #0x10
	ldrh r2, [r1, #4]
	mov r3, sp
	subs r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #6]
	adds r0, r5, #0
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1B4
	add r1, sp, #0x10
	mov r3, sp
	ldrh r2, [r1, #4]
	subs r3, r3, #4
	adds r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1A4
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0xa
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #9
	movs r2, #8
	bl ov63_0222C000
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov63_0222C86C

	thumb_func_start ov63_0222C8D8
ov63_0222C8D8: @ 0x0222C8D8
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r5, #0
	bne _0222C8E8
	bl FUN_02022974
_0222C8E8:
	add r1, sp, #0x10
	ldrh r2, [r1, #4]
	mov r3, sp
	subs r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #6]
	adds r0, r5, #0
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1B4
	add r1, sp, #0x10
	mov r3, sp
	ldrh r2, [r1, #4]
	subs r3, r3, #4
	adds r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1A4
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0xb
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	bl ov63_0222C000
	adds r0, r5, #0
	movs r1, #9
	movs r2, #0x10
	bl ov63_0222C000
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov63_0222C8D8

	thumb_func_start ov63_0222C944
ov63_0222C944: @ 0x0222C944
	movs r0, #0
	bx lr
	thumb_func_end ov63_0222C944

	thumb_func_start ov63_0222C948
ov63_0222C948: @ 0x0222C948
	ldr r3, _0222C94C @ =ov63_0222CA14
	bx r3
	.align 2, 0
_0222C94C: .4byte ov63_0222CA14
	thumb_func_end ov63_0222C948

	thumb_func_start ov63_0222C950
ov63_0222C950: @ 0x0222C950
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	bl ov63_0222CA14
	adds r4, r0, #0
	cmp r4, #1
	bne _0222C98A
	adds r0, r5, #0
	bl ov63_0222C0E4
	add r1, sp, #0
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	mov r3, sp
	subs r3, r3, #4
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1B4
_0222C98A:
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov63_0222C950

	thumb_func_start ov63_0222C990
ov63_0222C990: @ 0x0222C990
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	bl ov63_0222CA14
	adds r4, r0, #0
	cmp r4, #1
	bne _0222C9CA
	adds r0, r5, #0
	bl ov63_0222C0E4
	add r1, sp, #0
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	mov r3, sp
	subs r3, r3, #4
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov63_0222C1B4
_0222C9CA:
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov63_0222C990

	thumb_func_start ov63_0222C9D0
ov63_0222C9D0: @ 0x0222C9D0
	movs r0, #0
	bx lr
	thumb_func_end ov63_0222C9D0

	thumb_func_start ov63_0222C9D4
ov63_0222C9D4: @ 0x0222C9D4
	ldr r3, _0222C9D8 @ =ov63_0222CA14
	bx r3
	.align 2, 0
_0222C9D8: .4byte ov63_0222CA14
	thumb_func_end ov63_0222C9D4

	thumb_func_start ov63_0222C9DC
ov63_0222C9DC: @ 0x0222C9DC
	ldr r3, _0222C9E0 @ =ov63_0222CA14
	bx r3
	.align 2, 0
_0222C9E0: .4byte ov63_0222CA14
	thumb_func_end ov63_0222C9DC

	thumb_func_start ov63_0222C9E4
ov63_0222C9E4: @ 0x0222C9E4
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r0, sp, #8
	ldrh r2, [r0]
	mov r3, sp
	subs r3, r3, #4
	strh r2, [r3]
	ldrh r0, [r0, #2]
	strh r0, [r3, #2]
	ldr r0, [r3]
	bl ov63_0222C078
	add r1, sp, #0
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r2, [r1, #2]
	ldrh r0, [r1]
	lsls r1, r2, #0x10
	orrs r0, r1
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov63_0222C9E4

	thumb_func_start ov63_0222CA14
ov63_0222CA14: @ 0x0222CA14
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #8
	bl ov63_0222BF90
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #9
	bl ov63_0222BF90
	adds r6, r0, #0
	cmp r4, r6
	bge _0222CA42
	adds r0, r5, #0
	movs r1, #8
	adds r2, r4, #1
	bl ov63_0222C000
	adds r0, r4, #1
	cmp r0, r6
	bge _0222CA42
	movs r0, #0
	pop {r4, r5, r6, pc}
_0222CA42:
	movs r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov63_0222CA14

	thumb_func_start ov63_0222CA48
ov63_0222CA48: @ 0x0222CA48
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	bl ov63_0222C0E4
	add r1, sp, #0
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	adds r0, r4, #0
	movs r1, #6
	bl ov63_0222BF90
	add r1, sp, #0
	adds r2, r0, #0
	adds r0, r4, #0
	mov r4, sp
	ldrh r3, [r1, #4]
	subs r4, r4, #4
	strh r3, [r4]
	ldrh r1, [r1, #6]
	strh r1, [r4, #2]
	ldr r1, [r4]
	bl ov63_0222C3AC
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov63_0222CA48

	thumb_func_start ov63_0222CA88
ov63_0222CA88: @ 0x0222CA88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	cmp r7, #0
	bne _0222CA9C
	bl FUN_02022974
_0222CA9C:
	cmp r5, #0
	bne _0222CAA4
	bl FUN_02022974
_0222CAA4:
	cmp r4, #0
	bne _0222CAAC
	bl FUN_02022974
_0222CAAC:
	cmp r6, #0
	bne _0222CAB4
	bl FUN_02022974
_0222CAB4:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	bl ov63_0222BF80
	str r0, [sp, #4]
	cmp r0, #0
	bne _0222CAC6
	bl FUN_02022974
_0222CAC6:
	str r6, [sp]
	adds r3, r4, #0
	ldrh r4, [r4]
	adds r2, r5, #0
	ldr r0, [sp, #4]
	lsls r5, r4, #2
	ldr r4, _0222CAE0 @ =0x0222DC6C
	adds r1, r7, #0
	ldr r4, [r4, r5]
	blx r4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222CAE0: .4byte 0x0222DC6C
	thumb_func_end ov63_0222CA88

	thumb_func_start ov63_0222CAE4
ov63_0222CAE4: @ 0x0222CAE4
	push {r3, r4, r5, lr}
	movs r1, #5
	adds r5, r0, #0
	adds r4, r3, #0
	bl ov63_0222BF90
	cmp r0, #0
	beq _0222CAF8
	cmp r0, #4
	bne _0222CB0C
_0222CAF8:
	ldrb r0, [r4, #2]
	adds r1, r5, #0
	str r0, [sp]
	ldrh r2, [r4]
	ldrb r3, [r4, #3]
	ldr r0, [sp, #0x10]
	bl ov63_0222CCB8
	movs r0, #1
	pop {r3, r4, r5, pc}
_0222CB0C:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov63_0222CAE4

	thumb_func_start ov63_0222CB10
ov63_0222CB10: @ 0x0222CB10
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r1, #5
	adds r4, r3, #0
	bl ov63_0222BF90
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #6
	bl ov63_0222BF90
	cmp r6, #0
	bne _0222CB46
	ldrb r1, [r4, #2]
	cmp r0, r1
	beq _0222CB46
	str r1, [sp]
	ldrh r2, [r4]
	ldrb r3, [r4, #3]
	ldr r0, [sp, #0x18]
	adds r1, r5, #0
	bl ov63_0222CCB8
	add sp, #4
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_0222CB46:
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov63_0222CB10

	thumb_func_start ov63_0222CB4C
ov63_0222CB4C: @ 0x0222CB4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r1, #0
	movs r1, #5
	adds r5, r0, #0
	str r2, [sp, #4]
	adds r4, r3, #0
	bl ov63_0222BF90
	adds r6, r0, #0
	bne _0222CB94
	ldrb r2, [r4, #2]
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov63_0222CC3C
	cmp r0, #1
	beq _0222CB94
	ldrb r2, [r4, #2]
	ldr r1, [sp, #4]
	adds r0, r5, #0
	bl ov63_0222CCA4
	cmp r0, #1
	beq _0222CB94
	ldrb r0, [r4, #2]
	adds r1, r5, #0
	str r0, [sp]
	ldrh r2, [r4]
	ldrb r3, [r4, #3]
	ldr r0, [sp, #0x20]
	bl ov63_0222CCB8
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222CB94:
	cmp r6, #0
	bne _0222CBBA
	adds r0, r5, #0
	movs r1, #0xa
	bl ov63_0222BF90
	cmp r0, #8
	blt _0222CBBA
	ldrb r0, [r4, #2]
	adds r1, r5, #0
	movs r2, #5
	str r0, [sp]
	ldrb r3, [r4, #3]
	ldr r0, [sp, #0x20]
	bl ov63_0222CCB8
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222CBBA:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov63_0222CB4C

	thumb_func_start ov63_0222CBC0
ov63_0222CBC0: @ 0x0222CBC0
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl ov63_0222CB4C
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov63_0222CBC0

	thumb_func_start ov63_0222CBD0
ov63_0222CBD0: @ 0x0222CBD0
	push {r3, r4, r5, lr}
	movs r1, #5
	adds r5, r0, #0
	adds r4, r3, #0
	bl ov63_0222BF90
	cmp r0, #0
	bne _0222CBF4
	ldrb r0, [r4, #2]
	adds r1, r5, #0
	str r0, [sp]
	ldrh r2, [r4]
	ldrb r3, [r4, #3]
	ldr r0, [sp, #0x10]
	bl ov63_0222CCB8
	movs r0, #1
	pop {r3, r4, r5, pc}
_0222CBF4:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov63_0222CBD0

	thumb_func_start ov63_0222CBF8
ov63_0222CBF8: @ 0x0222CBF8
	push {r3, lr}
	bl FUN_02022974
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov63_0222CBF8

	thumb_func_start ov63_0222CC04
ov63_0222CC04: @ 0x0222CC04
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl ov63_0222CB4C
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov63_0222CC04

	thumb_func_start ov63_0222CC14
ov63_0222CC14: @ 0x0222CC14
	push {r3, r4, r5, lr}
	movs r1, #5
	adds r5, r0, #0
	adds r4, r3, #0
	bl ov63_0222BF90
	cmp r0, #0
	bne _0222CC38
	ldrb r0, [r4, #2]
	adds r1, r5, #0
	str r0, [sp]
	ldrh r2, [r4]
	ldrb r3, [r4, #3]
	ldr r0, [sp, #0x10]
	bl ov63_0222CCB8
	movs r0, #1
	pop {r3, r4, r5, pc}
_0222CC38:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov63_0222CC14

	thumb_func_start ov63_0222CC3C
ov63_0222CC3C: @ 0x0222CC3C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r5, r2, #0
	bl ov63_0222C0E4
	add r1, sp, #0
	strh r0, [r1, #4]
	lsrs r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	mov r2, sp
	subs r2, r2, #4
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0xc]
	strh r0, [r2]
	ldrh r0, [r1, #0xe]
	adds r1, r5, #0
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl ov63_0222C078
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
	adds r0, r4, #0
	asrs r1, r3, #3
	lsrs r1, r1, #0x1c
	adds r1, r3, r1
	movs r3, #0xa
	ldrsh r3, [r2, r3]
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x10
	asrs r2, r3, #3
	lsrs r2, r2, #0x1c
	adds r2, r3, r2
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x10
	bl ov63_0222BDAC
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov63_0222CC3C

	thumb_func_start ov63_0222CCA4
ov63_0222CCA4: @ 0x0222CCA4
	push {r3, lr}
	bl ov63_0222C1C4
	cmp r0, #0
	beq _0222CCB2
	movs r0, #1
	pop {r3, pc}
_0222CCB2:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov63_0222CCA4

	thumb_func_start ov63_0222CCB8
ov63_0222CCB8: @ 0x0222CCB8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	bl ov63_0222C0E4
	add r1, sp, #0
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r5]
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	strh r4, [r5, #4]
	ldr r0, [sp, #0x18]
	strb r6, [r5, #7]
	strb r0, [r5, #6]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov63_0222CCB8

	thumb_func_start ov63_0222CCE4
ov63_0222CCE4: @ 0x0222CCE4
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	str r1, [sp]
	ldr r0, [sp, #0x18]
	movs r1, #0xc
	adds r5, r2, #0
	adds r6, r3, #0
	bl FUN_02018144
	adds r4, r0, #0
	ldr r1, [sp]
	ldr r3, [sp, #0x18]
	adds r0, r7, #0
	adds r2, r5, #0
	bl ov63_0222AE60
	str r0, [r4]
	strh r5, [r4, #8]
	ldrh r2, [r4, #8]
	movs r1, #0x14
	ldr r0, [sp, #0x18]
	muls r1, r2, r1
	bl FUN_02018144
	str r0, [r4, #4]
	ldrh r3, [r4, #8]
	movs r2, #0x14
	movs r1, #0
	muls r2, r3, r2
	blx FUN_020D5124
	movs r0, #2
	strb r0, [r4, #0xa]
	strb r6, [r4, #0xb]
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov63_0222CCE4

	thumb_func_start ov63_0222CD2C
ov63_0222CD2C: @ 0x0222CD2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, [sp, #0x28]
	adds r7, r0, #0
	str r1, [sp, #4]
	adds r0, r5, #0
	movs r1, #0xc
	adds r6, r2, #0
	str r3, [sp, #8]
	bl FUN_02018144
	adds r4, r0, #0
	ldr r1, [sp, #4]
	adds r0, r7, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl ov63_0222AE60
	str r0, [r4]
	strh r6, [r4, #8]
	ldrh r2, [r4, #8]
	movs r1, #0x14
	adds r0, r5, #0
	muls r1, r2, r1
	bl FUN_02018144
	str r0, [r4, #4]
	ldrh r3, [r4, #8]
	movs r2, #0x14
	movs r1, #0
	muls r2, r3, r2
	blx FUN_020D5124
	movs r0, #2
	strb r0, [r4, #0xa]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #8]
	strb r0, [r4, #0xb]
	str r5, [sp]
	ldrb r2, [r4, #0xb]
	ldr r0, [r4]
	ldr r3, [sp, #0x20]
	bl ov63_0222AF94
	ldrb r1, [r4, #0xb]
	ldr r0, [r4]
	ldr r2, _0222CD98 @ =0x00009C41
	adds r3, r5, #0
	bl ov63_0222B0A0
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0222CD98: .4byte 0x00009C41
	thumb_func_end ov63_0222CD2C

	thumb_func_start ov63_0222CD9C
ov63_0222CD9C: @ 0x0222CD9C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #8]
	movs r6, #0
	cmp r0, #0
	ble _0222CDC8
	adds r4, r6, #0
_0222CDAA:
	ldr r0, [r5, #4]
	adds r0, r0, r4
	bl ov63_0222D07C
	cmp r0, #0
	bne _0222CDBE
	ldr r0, [r5, #4]
	adds r0, r0, r4
	bl ov63_0222CECC
_0222CDBE:
	ldrh r0, [r5, #8]
	adds r6, r6, #1
	adds r4, #0x14
	cmp r6, r0
	blt _0222CDAA
_0222CDC8:
	ldr r0, [r5]
	bl ov63_0222B0B8
	adds r0, r5, #0
	bl ov63_0222CE24
	ldr r0, [r5]
	bl ov63_0222AF14
	ldr r0, [r5, #4]
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_020181C4
	pop {r4, r5, r6, pc}
	thumb_func_end ov63_0222CD9C

	thumb_func_start ov63_0222CDE8
ov63_0222CDE8: @ 0x0222CDE8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	adds r6, r1, #0
	adds r7, r2, #0
	adds r4, r3, #0
	bl ov63_0222AFE4
	cmp r0, #0
	bne _0222CE0A
	str r4, [sp]
	ldrb r2, [r5, #0xb]
	ldr r0, [r5]
	adds r1, r6, #0
	adds r3, r7, #0
	bl ov63_0222AF94
_0222CE0A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov63_0222CDE8

	thumb_func_start ov63_0222CE0C
ov63_0222CE0C: @ 0x0222CE0C
	ldr r3, _0222CE14 @ =ov63_0222AFD0
	ldr r0, [r0]
	bx r3
	nop
_0222CE14: .4byte ov63_0222AFD0
	thumb_func_end ov63_0222CE0C

	thumb_func_start ov63_0222CE18
ov63_0222CE18: @ 0x0222CE18
	ldr r3, _0222CE20 @ =ov63_0222AFE4
	ldr r0, [r0]
	bx r3
	nop
_0222CE20: .4byte ov63_0222AFE4
	thumb_func_end ov63_0222CE18

	thumb_func_start ov63_0222CE24
ov63_0222CE24: @ 0x0222CE24
	ldr r3, _0222CE2C @ =ov63_0222AFF8
	ldr r0, [r0]
	bx r3
	nop
_0222CE2C: .4byte ov63_0222AFF8
	thumb_func_end ov63_0222CE24

	thumb_func_start ov63_0222CE30
ov63_0222CE30: @ 0x0222CE30
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrb r1, [r5, #0xb]
	adds r3, r2, #0
	ldr r0, [r5]
	adds r2, r4, #0
	bl ov63_0222B02C
	pop {r3, r4, r5, pc}
	thumb_func_end ov63_0222CE30

	thumb_func_start ov63_0222CE44
ov63_0222CE44: @ 0x0222CE44
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r1, #0
	adds r6, r0, #0
	adds r7, r2, #0
	str r3, [sp]
	bl ov63_0222D08C
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #5
	bl ov63_0222BF90
	strh r0, [r4, #8]
	adds r0, r5, #0
	movs r1, #6
	bl ov63_0222BF90
	strh r0, [r4, #0xa]
	adds r0, r5, #0
	movs r1, #4
	bl ov63_0222BF90
	strh r0, [r4, #0xc]
	str r5, [r4]
	strb r7, [r4, #0x12]
	movs r0, #1
	strb r0, [r4, #0x13]
	movs r1, #0
	strh r1, [r4, #0xe]
	adds r0, r5, #0
	strh r1, [r4, #0x10]
	bl ov63_0222BF90
	add r1, sp, #4
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #1
	bl ov63_0222BF90
	add r1, sp, #4
	strh r0, [r1, #2]
	movs r0, #2
	ldrsh r0, [r1, r0]
	ldrb r1, [r4, #0x12]
	bl ov63_0222D034
	add r1, sp, #4
	strh r0, [r1, #4]
	ldrb r0, [r6, #0xa]
	strh r0, [r1, #6]
	adds r0, r5, #0
	movs r1, #7
	bl ov63_0222BF90
	adds r2, r0, #0
	ldr r0, [r6]
	ldr r3, [sp]
	add r1, sp, #4
	bl ov63_0222B0C0
	str r0, [r4, #4]
	adds r0, r4, #0
	bl ov63_0222CF14
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov63_0222CE44

	thumb_func_start ov63_0222CECC
ov63_0222CECC: @ 0x0222CECC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl ov63_0222B210
	movs r1, #0x14
	movs r0, #0
_0222CEDA:
	strb r0, [r4]
	adds r4, r4, #1
	subs r1, r1, #1
	bne _0222CEDA
	pop {r4, pc}
	thumb_func_end ov63_0222CECC

	thumb_func_start ov63_0222CEE4
ov63_0222CEE4: @ 0x0222CEE4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #8]
	movs r6, #0
	cmp r0, #0
	ble _0222CF10
	adds r4, r6, #0
_0222CEF2:
	ldr r0, [r5, #4]
	adds r0, r0, r4
	bl ov63_0222D07C
	cmp r0, #0
	bne _0222CF06
	ldr r0, [r5, #4]
	adds r0, r0, r4
	bl ov63_0222CF14
_0222CF06:
	ldrh r0, [r5, #8]
	adds r6, r6, #1
	adds r4, #0x14
	cmp r6, r0
	blt _0222CEF2
_0222CF10:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov63_0222CEE4

	thumb_func_start ov63_0222CF14
ov63_0222CF14: @ 0x0222CF14
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	beq _0222CF9E
	ldr r0, [r5]
	movs r1, #5
	bl ov63_0222BF90
	adds r6, r0, #0
	ldr r0, [r5]
	movs r1, #6
	bl ov63_0222BF90
	adds r4, r0, #0
	ldr r0, [r5]
	movs r1, #8
	bl ov63_0222BF90
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldrh r0, [r5, #8]
	cmp r0, r6
	bne _0222CF50
	ldrh r0, [r5, #0xa]
	cmp r0, r4
	bne _0222CF50
	cmp r1, #0
	bne _0222CF66
_0222CF50:
	strh r6, [r5, #8]
	strh r4, [r5, #0xa]
	ldr r0, [r5, #4]
	adds r1, r6, #0
	bl ov63_0222D0C4
	adds r1, r0, #0
	adds r0, r5, #0
	adds r2, r4, #0
	bl ov63_0222D110
_0222CF66:
	add r1, sp, #0
	adds r0, r5, #0
	adds r1, #2
	add r2, sp, #0
	bl ov63_0222D0E0
	add r3, sp, #0
	movs r1, #2
	movs r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r5, #4]
	bl ov63_0222B238
	add r1, sp, #0
	movs r0, #0
	ldrsh r0, [r1, r0]
	ldrb r1, [r5, #0x12]
	bl ov63_0222D034
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r5, #4]
	bl ov63_0222B278
	ldr r0, [r5, #4]
	bl ov63_0222B33C
_0222CF9E:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov63_0222CF14

	thumb_func_start ov63_0222CFA4
ov63_0222CFA4: @ 0x0222CFA4
	strb r1, [r0, #0x13]
	bx lr
	thumb_func_end ov63_0222CFA4

	thumb_func_start ov63_0222CFA8
ov63_0222CFA8: @ 0x0222CFA8
	ldr r3, _0222CFB0 @ =ov63_0222D110
	movs r1, #1
	ldrh r2, [r0, #0xa]
	bx r3
	.align 2, 0
_0222CFB0: .4byte ov63_0222D110
	thumb_func_end ov63_0222CFA8

	thumb_func_start ov63_0222CFB4
ov63_0222CFB4: @ 0x0222CFB4
	ldr r3, _0222CFBC @ =ov63_0222B33C
	ldr r0, [r0, #4]
	bx r3
	nop
_0222CFBC: .4byte ov63_0222B33C
	thumb_func_end ov63_0222CFB4

	thumb_func_start ov63_0222CFC0
ov63_0222CFC0: @ 0x0222CFC0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #8]
	ldr r0, [r4, #4]
	bl ov63_0222D0C4
	adds r1, r0, #0
	ldrh r2, [r4, #0xa]
	adds r0, r4, #0
	bl ov63_0222D110
	adds r0, r4, #0
	bl ov63_0222CF14
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov63_0222CFC0

	thumb_func_start ov63_0222CFE0
ov63_0222CFE0: @ 0x0222CFE0
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r3, sp, #8
	movs r1, #4
	movs r2, #6
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r0, #4]
	bl ov63_0222B238
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov63_0222CFE0

	thumb_func_start ov63_0222CFFC
ov63_0222CFFC: @ 0x0222CFFC
	ldr r3, _0222D004 @ =ov63_0222B2B0
	ldr r0, [r0, #4]
	bx r3
	nop
_0222D004: .4byte ov63_0222B2B0
	thumb_func_end ov63_0222CFFC

	thumb_func_start ov63_0222D008
ov63_0222D008: @ 0x0222D008
	ldr r3, _0222D010 @ =ov63_0222B294
	ldr r0, [r0, #4]
	bx r3
	nop
_0222D010: .4byte ov63_0222B294
	thumb_func_end ov63_0222D008

	thumb_func_start ov63_0222D014
ov63_0222D014: @ 0x0222D014
	ldr r3, _0222D01C @ =ov63_0222B284
	ldr r0, [r0, #4]
	bx r3
	nop
_0222D01C: .4byte ov63_0222B284
	thumb_func_end ov63_0222D014

	thumb_func_start ov63_0222D020
ov63_0222D020: @ 0x0222D020
	push {r4, lr}
	adds r2, r1, #0
	adds r4, r0, #0
	movs r1, #0
	bl ov63_0222D110
	ldr r0, [r4, #4]
	bl ov63_0222B33C
	pop {r4, pc}
	thumb_func_end ov63_0222D020

	thumb_func_start ov63_0222D034
ov63_0222D034: @ 0x0222D034
	cmp r1, #1
	bne _0222D040
	lsls r1, r0, #1
	ldr r0, _0222D048 @ =0x00009C40
	subs r0, r0, r1
	bx lr
_0222D040:
	lsls r1, r0, #1
	ldr r0, _0222D04C @ =0x00009C41
	subs r0, r0, r1
	bx lr
	.align 2, 0
_0222D048: .4byte 0x00009C40
_0222D04C: .4byte 0x00009C41
	thumb_func_end ov63_0222D034

	thumb_func_start ov63_0222D050
ov63_0222D050: @ 0x0222D050
	push {r3, lr}
	ldr r0, [r0, #4]
	bl ov63_0222B234
	bl FUN_02021F48
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov63_0222D050

	thumb_func_start ov63_0222D060
ov63_0222D060: @ 0x0222D060
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r3, sp, #8
	movs r1, #4
	movs r2, #6
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r0, #4]
	bl ov63_0222B2E0
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end ov63_0222D060

	thumb_func_start ov63_0222D07C
ov63_0222D07C: @ 0x0222D07C
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0222D086
	movs r0, #1
	bx lr
_0222D086:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov63_0222D07C

	thumb_func_start ov63_0222D08C
ov63_0222D08C: @ 0x0222D08C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #8]
	movs r6, #0
	cmp r0, #0
	ble _0222D0BA
	adds r4, r6, #0
_0222D09A:
	ldr r0, [r5, #4]
	adds r0, r0, r4
	bl ov63_0222D07C
	cmp r0, #1
	bne _0222D0B0
	movs r0, #0x14
	ldr r1, [r5, #4]
	muls r0, r6, r0
	adds r0, r1, r0
	pop {r4, r5, r6, pc}
_0222D0B0:
	ldrh r0, [r5, #8]
	adds r6, r6, #1
	adds r4, #0x14
	cmp r6, r0
	blt _0222D09A
_0222D0BA:
	bl FUN_02022974
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov63_0222D08C

	thumb_func_start ov63_0222D0C4
ov63_0222D0C4: @ 0x0222D0C4
	push {r4, lr}
	adds r4, r1, #0
	bl ov63_0222B2BC
	cmp r0, #2
	bne _0222D0D4
	movs r0, #0
	pop {r4, pc}
_0222D0D4:
	ldr r0, _0222D0DC @ =0x0222DCA8
	ldrb r0, [r0, r4]
	pop {r4, pc}
	nop
_0222D0DC: .4byte 0x0222DCA8
	thumb_func_end ov63_0222D0C4

	thumb_func_start ov63_0222D0E0
ov63_0222D0E0: @ 0x0222D0E0
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r0, [r0]
	adds r5, r1, #0
	adds r4, r2, #0
	bl ov63_0222C0FC
	add r1, sp, #0
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	movs r0, #4
	ldrsh r0, [r1, r0]
	strh r0, [r5]
	movs r0, #6
	ldrsh r0, [r1, r0]
	strh r0, [r4]
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov63_0222D0E0

	thumb_func_start ov63_0222D110
ov63_0222D110: @ 0x0222D110
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r4, r1, #0
	str r2, [sp]
	bl ov63_0222B2D4
	adds r7, r0, #0
	ldr r0, [r5, #4]
	bl ov63_0222B2C4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [r5, #4]
	ldr r2, [sp]
	adds r1, r4, #0
	bl ov63_0222B308
	cmp r6, r4
	beq _0222D15A
	ldr r0, _0222D15C @ =0x0222DC9C
	ldrb r0, [r0, r4]
	cmp r0, #1
	bne _0222D14E
	ldrh r0, [r5, #0x10]
	cmp r0, r4
	bne _0222D14E
	ldrh r1, [r5, #0xe]
	ldr r0, [r5, #4]
	bl ov63_0222B2C8
_0222D14E:
	ldr r0, _0222D15C @ =0x0222DC9C
	ldrb r0, [r0, r6]
	cmp r0, #1
	bne _0222D15A
	strh r6, [r5, #0x10]
	strh r7, [r5, #0xe]
_0222D15A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222D15C: .4byte 0x0222DC9C
	thumb_func_end ov63_0222D110

	thumb_func_start ov63_0222D160
ov63_0222D160: @ 0x0222D160
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r0, r1, #0
	bl ov63_0222C0FC
	add r3, sp, #0
	strh r0, [r3]
	lsrs r0, r0, #0x10
	strh r0, [r3, #2]
	ldrh r0, [r3]
	movs r1, #6
	movs r2, #4
	strh r0, [r3, #4]
	ldrh r0, [r3, #2]
	strh r0, [r3, #6]
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	adds r0, r4, #0
	subs r1, #0x60
	subs r2, #0x70
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl ov63_0222D1A8
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov63_0222D160

	thumb_func_start ov63_0222D19C
ov63_0222D19C: @ 0x0222D19C
	movs r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	bx lr
	thumb_func_end ov63_0222D19C

	thumb_func_start ov63_0222D1A8
ov63_0222D1A8: @ 0x0222D1A8
	strh r1, [r0]
	strh r2, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end ov63_0222D1A8

	thumb_func_start ov63_0222D1B0
ov63_0222D1B0: @ 0x0222D1B0
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end ov63_0222D1B0

	thumb_func_start ov63_0222D1B8
ov63_0222D1B8: @ 0x0222D1B8
	movs r1, #2
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end ov63_0222D1B8

	thumb_func_start ov63_0222D1C0
ov63_0222D1C0: @ 0x0222D1C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r7, r1, #0
	adds r0, r3, #0
	movs r1, #0x1c
	adds r5, r2, #0
	str r3, [sp, #4]
	bl FUN_02018144
	adds r4, r0, #0
	adds r2, r4, #0
	movs r1, #0x1c
	movs r0, #0
_0222D1DC:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _0222D1DC
	str r6, [r4]
	str r7, [r4, #4]
	ldrb r0, [r5]
	adds r2, r5, #0
	str r0, [r4, #0x10]
	ldrb r1, [r5, #1]
	str r1, [r4, #0x14]
	ldr r0, [r4, #4]
	bl ov63_0222D31C
	ldr r0, [sp, #4]
	adds r3, r4, #0
	str r0, [sp]
	ldrb r0, [r5, #8]
	ldrb r1, [r5, #9]
	ldrb r2, [r5, #0xa]
	adds r3, #0xc
	bl FUN_02006F6C
	str r0, [r4, #8]
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov63_0222D1C0

	thumb_func_start ov63_0222D214
ov63_0222D214: @ 0x0222D214
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov63_0222D214

	thumb_func_start ov63_0222D228
ov63_0222D228: @ 0x0222D228
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r6, r0, #0
	adds r0, r4, #0
	bl ov63_0222D1B0
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov63_0222D1B8
	adds r4, r0, #0
	ldr r0, [r6, #0x10]
	cmp r0, #0
	bne _0222D2A8
	cmp r5, #0
	ble _0222D25C
	lsls r0, r5, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0222D26A
_0222D25C:
	lsls r0, r5, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0222D26A:
	adds r7, r0, #0
	cmp r4, #0
	ble _0222D282
	lsls r0, r4, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0222D290
_0222D282:
	lsls r0, r4, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0222D290:
	blx FUN_020E1740
	str r0, [sp]
	adds r0, r7, #0
	blx FUN_020E1740
	adds r2, r0, #0
	ldr r0, [r6]
	ldr r1, [sp]
	bl FUN_0200962C
	b _0222D30E
_0222D2A8:
	cmp r5, #0
	ble _0222D2BE
	lsls r0, r5, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0222D2CC
_0222D2BE:
	lsls r0, r5, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0222D2CC:
	adds r7, r0, #0
	cmp r4, #0
	ble _0222D2E4
	lsls r0, r4, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0222D2F2
_0222D2E4:
	lsls r0, r4, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0222D2F2:
	blx FUN_020E1740
	str r0, [sp, #4]
	adds r0, r7, #0
	blx FUN_020E1740
	movs r2, #3
	adds r3, r0, #0
	lsls r2, r2, #0x12
	ldr r0, [r6]
	ldr r1, [sp, #4]
	adds r2, r3, r2
	bl FUN_0200964C
_0222D30E:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl ov63_0222D378
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov63_0222D228

	thumb_func_start ov63_0222D31C
ov63_0222D31C: @ 0x0222D31C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	ldr r6, _0222D374 @ =0x0222DCB4
	adds r5, r0, #0
	adds r4, r1, #0
	ldm r6!, {r0, r1}
	add r3, sp, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	ldrb r1, [r2, #2]
	add r0, sp, #0
	strb r1, [r0, #0x11]
	ldrb r1, [r2, #3]
	strb r1, [r0, #0x12]
	ldrb r1, [r2, #4]
	strb r1, [r0, #0x13]
	ldrb r1, [r2, #5]
	strb r1, [r0, #0x14]
	ldrb r1, [r2, #6]
	strb r1, [r0, #0x15]
	movs r1, #0
	strb r1, [r0, #0x16]
	ldrb r0, [r2, #7]
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	str r0, [sp, #0x18]
	adds r0, r5, #0
	bl FUN_02019044
	lsls r1, r4, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	add r2, sp, #0
	movs r3, #0
	bl FUN_020183C4
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_0222D374: .4byte 0x0222DCB4
	thumb_func_end ov63_0222D31C

	thumb_func_start ov63_0222D378
ov63_0222D378: @ 0x0222D378
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	asrs r0, r1, #2
	lsrs r0, r0, #0x1d
	adds r0, r1, r0
	lsls r0, r0, #0xd
	asrs r3, r0, #0x10
	asrs r0, r2, #2
	lsrs r0, r0, #0x1d
	adds r0, r2, r0
	lsrs r4, r1, #0x1f
	lsls r6, r1, #0x1d
	subs r6, r6, r4
	movs r1, #0x1d
	rors r6, r1
	adds r4, r4, r6
	lsls r4, r4, #0x10
	asrs r6, r4, #0x10
	lsrs r4, r2, #0x1f
	lsls r2, r2, #0x1d
	subs r2, r2, r4
	rors r2, r1
	adds r1, r4, r2
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	lsls r0, r0, #0xd
	ldrh r1, [r5, #0x18]
	asrs r0, r0, #0x10
	cmp r3, r1
	bne _0222D3BC
	ldrh r1, [r5, #0x1a]
	cmp r0, r1
	beq _0222D3E4
_0222D3BC:
	strh r3, [r5, #0x18]
	strh r0, [r5, #0x1a]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	rsbs r3, r3, #0
	lsls r3, r3, #0x10
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0xc]
	asrs r3, r3, #0x10
	bl ov63_0222D408
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_0201C3C0
_0222D3E4:
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0
	adds r3, r6, #0
	bl FUN_0201C63C
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #3
	adds r3, r4, #0
	bl FUN_0201C63C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov63_0222D378

	thumb_func_start ov63_0222D408
ov63_0222D408: @ 0x0222D408
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp, #0x1c]
	adds r0, r2, #0
	ldrh r0, [r0]
	ldr r4, [sp, #0x50]
	adds r5, r3, #0
	lsls r0, r0, #0xd
	asrs r0, r0, #0x10
	str r0, [sp, #0x34]
	adds r0, r2, #0
	ldrh r0, [r0, #2]
	str r1, [sp, #0x20]
	str r2, [sp, #0x24]
	lsls r0, r0, #0xd
	asrs r0, r0, #0x10
	str r0, [sp, #0x30]
	cmp r5, #0
	bge _0222D438
	rsbs r0, r5, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x2c]
	b _0222D43C
_0222D438:
	movs r0, #0
	str r0, [sp, #0x2c]
_0222D43C:
	cmp r4, #0
	bge _0222D44A
	rsbs r0, r4, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x28]
	b _0222D44E
_0222D44A:
	movs r0, #0
	str r0, [sp, #0x28]
_0222D44E:
	cmp r5, #0
	bgt _0222D454
	movs r5, #0
_0222D454:
	cmp r4, #0
	bgt _0222D45A
	movs r4, #0
_0222D45A:
	movs r0, #0x21
	subs r0, r0, r5
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	movs r0, #0x19
	subs r0, r0, r4
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	ldr r0, [sp, #0x2c]
	adds r1, r0, r7
	ldr r0, [sp, #0x34]
	cmp r0, r1
	bge _0222D47C
	subs r0, r1, r0
	subs r0, r7, r0
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
_0222D47C:
	ldr r0, [sp, #0x28]
	adds r1, r0, r6
	ldr r0, [sp, #0x30]
	cmp r0, r1
	bge _0222D48E
	subs r0, r1, r0
	subs r0, r6, r0
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
_0222D48E:
	movs r2, #0
	str r2, [sp]
	movs r0, #0x21
	str r0, [sp, #4]
	movs r0, #0x19
	ldr r1, [sp, #0x20]
	str r0, [sp, #8]
	movs r0, #0x11
	str r0, [sp, #0xc]
	lsls r1, r1, #0x18
	ldr r0, [sp, #0x1c]
	lsrs r1, r1, #0x18
	adds r3, r2, #0
	bl FUN_02019CB8
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	adds r0, #0xc
	str r0, [sp, #0x24]
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	lsls r1, r1, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	lsls r2, r5, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x34]
	lsls r3, r4, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x30]
	lsrs r1, r1, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl ov63_0222D4F8
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov63_0222D408

	thumb_func_start ov63_0222D4F8
ov63_0222D4F8: @ 0x0222D4F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	str r0, [sp, #0x1c]
	str r1, [sp, #0x20]
	ldr r0, [sp, #0x70]
	str r3, [sp, #0x24]
	str r0, [sp, #0x70]
	ldr r0, [sp, #0x78]
	adds r4, r2, #0
	str r0, [sp, #0x78]
	ldr r0, [sp, #0x7c]
	str r0, [sp, #0x7c]
	ldr r0, [sp, #0x80]
	str r0, [sp, #0x80]
	ldr r0, [sp, #0x7c]
	ldr r1, [sp, #0x80]
	bl ov63_0222D688
	str r0, [sp, #0x40]
	cmp r0, #0
	add r1, sp, #0x58
	bne _0222D550
	ldrb r0, [r1, #0x10]
	adds r2, r4, #0
	str r0, [sp]
	ldrb r0, [r1, #0x14]
	str r0, [sp, #4]
	ldr r0, [sp, #0x70]
	str r0, [sp, #8]
	ldrb r0, [r1, #0x1c]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x78]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x7c]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x80]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl FUN_020198E8
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
_0222D550:
	movs r0, #0x14
	ldrsb r0, [r1, r0]
	str r0, [sp, #0x48]
	cmp r0, #0
	bgt _0222D55C
	b _0222D682
_0222D55C:
	movs r0, #0x10
	ldrsb r0, [r1, r0]
	str r0, [sp, #0x3c]
	movs r0, #0x1c
	ldrsb r0, [r1, r0]
	str r0, [sp, #0x38]
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x34]
_0222D56E:
	ldr r0, [sp, #0x78]
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1b
	subs r1, r1, r2
	movs r0, #0x1b
	rors r1, r0
	adds r0, r2, r1
	ldr r1, [sp, #0x48]
	adds r1, r0, r1
	cmp r1, #0x20
	bgt _0222D58E
	ldr r1, [sp, #0x48]
	str r1, [sp, #0x44]
	movs r1, #0
	str r1, [sp, #0x48]
	b _0222D5A2
_0222D58E:
	movs r1, #0x20
	subs r1, r1, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	str r1, [sp, #0x44]
	ldr r2, [sp, #0x48]
	subs r1, r2, r1
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	str r1, [sp, #0x48]
_0222D5A2:
	ldr r1, [sp, #0x78]
	ldr r4, [sp, #0x3c]
	lsls r1, r1, #0x13
	asrs r2, r1, #0x18
	adds r1, r4, #0
	ldr r5, [sp, #0x38]
	ldr r7, [sp, #0x34]
	cmp r1, #0
	ble _0222D662
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x30]
	ldr r1, [sp, #0x44]
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsrs r0, r0, #0x18
	str r1, [sp, #0x2c]
	str r0, [sp, #0x4c]
_0222D5C8:
	lsrs r2, r5, #0x1f
	lsls r1, r5, #0x1b
	subs r1, r1, r2
	movs r0, #0x1b
	rors r1, r0
	adds r0, r2, r1
	str r0, [sp, #0x28]
	adds r0, r0, r4
	cmp r0, #0x20
	bgt _0222D5E2
	adds r6, r4, #0
	movs r4, #0
	b _0222D5F2
_0222D5E2:
	ldr r0, [sp, #0x28]
	movs r1, #0x20
	subs r0, r1, r0
	lsls r0, r0, #0x18
	asrs r6, r0, #0x18
	subs r0, r4, r6
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
_0222D5F2:
	ldr r0, [sp, #0x7c]
	asrs r1, r5, #4
	str r0, [sp]
	ldr r0, [sp, #0x80]
	lsrs r1, r1, #0x1b
	adds r1, r5, r1
	str r0, [sp, #4]
	add r0, sp, #0x50
	str r0, [sp, #8]
	lsls r1, r1, #0x13
	asrs r1, r1, #0x18
	lsls r1, r1, #0x18
	ldr r0, [sp, #0x70]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x40]
	lsrs r1, r1, #0x18
	bl ov63_0222D6BC
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	ldr r1, [sp, #0x2c]
	lsls r2, r7, #0x18
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	add r1, sp, #0x50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x4c]
	lsrs r2, r2, #0x18
	str r0, [sp, #0x10]
	movs r0, #0
	ldrsh r0, [r1, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	movs r0, #2
	ldrsh r0, [r1, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl FUN_020198E8
	adds r0, r5, r6
	lsls r0, r0, #0x18
	asrs r5, r0, #0x18
	adds r0, r7, r6
	lsls r0, r0, #0x18
	asrs r7, r0, #0x18
	cmp r4, #0
	bgt _0222D5C8
_0222D662:
	ldr r1, [sp, #0x78]
	ldr r0, [sp, #0x44]
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x78]
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x44]
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x48]
	cmp r0, #0
	ble _0222D682
	b _0222D56E
_0222D682:
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov63_0222D4F8

	thumb_func_start ov63_0222D688
ov63_0222D688: @ 0x0222D688
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r5, #0x40
	bls _0222D696
	bl FUN_02022974
_0222D696:
	cmp r4, #0x40
	bls _0222D69E
	bl FUN_02022974
_0222D69E:
	cmp r5, #0x20
	bhi _0222D6AE
	cmp r4, #0x20
	bhi _0222D6AA
	movs r0, #0
	pop {r3, r4, r5, pc}
_0222D6AA:
	movs r0, #2
	pop {r3, r4, r5, pc}
_0222D6AE:
	cmp r4, #0x20
	bhi _0222D6B6
	movs r0, #1
	pop {r3, r4, r5, pc}
_0222D6B6:
	movs r0, #3
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov63_0222D688

	thumb_func_start ov63_0222D6BC
ov63_0222D6BC: @ 0x0222D6BC
	push {r4, r5, r6, lr}
	adds r5, r3, #0
	adds r6, r2, #0
	ldr r4, [sp, #0x10]
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	cmp r5, #3
	bhi _0222D770
	adds r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	add pc, r5
_0222D6D8: @ jump table
	.2byte _0222D6E0 - _0222D6D8 - 2 @ case 0
	.2byte _0222D6E6 - _0222D6D8 - 2 @ case 1
	.2byte _0222D704 - _0222D6D8 - 2 @ case 2
	.2byte _0222D722 - _0222D6D8 - 2 @ case 3
_0222D6E0:
	strh r4, [r2]
	strh r3, [r2, #2]
	pop {r4, r5, r6, pc}
_0222D6E6:
	adds r5, r1, #1
	lsls r5, r5, #5
	cmp r5, r4
	bgt _0222D6F2
	movs r4, #0x20
	b _0222D6F6
_0222D6F2:
	lsls r5, r1, #5
	subs r4, r4, r5
_0222D6F6:
	strh r4, [r2]
	strh r3, [r2, #2]
	lsls r2, r3, #0x16
	asrs r2, r2, #0x10
	muls r2, r1, r2
	adds r0, r0, r2
	pop {r4, r5, r6, pc}
_0222D704:
	adds r1, r6, #1
	lsls r1, r1, #5
	strh r4, [r2]
	cmp r1, r3
	bgt _0222D712
	movs r1, #0x20
	b _0222D716
_0222D712:
	lsls r1, r6, #5
	subs r1, r3, r1
_0222D716:
	strh r1, [r2, #2]
	lsls r1, r4, #0x16
	asrs r1, r1, #0x10
	muls r1, r6, r1
	adds r0, r0, r1
	pop {r4, r5, r6, pc}
_0222D722:
	adds r5, r1, #1
	lsls r5, r5, #5
	cmp r5, r4
	bgt _0222D72E
	movs r5, #0x20
	b _0222D732
_0222D72E:
	lsls r5, r1, #5
	subs r5, r4, r5
_0222D732:
	strh r5, [r2]
	adds r5, r6, #1
	lsls r5, r5, #5
	cmp r5, r3
	bgt _0222D740
	movs r5, #0x20
	b _0222D744
_0222D740:
	lsls r5, r6, #5
	subs r5, r3, r5
_0222D744:
	strh r5, [r2, #2]
	cmp r6, #0
	bne _0222D75C
	movs r2, #0
	cmp r1, #0
	beq _0222D76C
	movs r1, #2
	lsls r1, r1, #0xa
	adds r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	b _0222D76C
_0222D75C:
	lsls r2, r4, #0x16
	lsrs r2, r2, #0x10
	cmp r1, #0
	beq _0222D76C
	lsls r1, r3, #6
	adds r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
_0222D76C:
	adds r0, r0, r2
	pop {r4, r5, r6, pc}
_0222D770:
	bl FUN_02022974
	bl FUN_02022974
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov63_0222D6BC

	thumb_func_start ov63_0222D77C
ov63_0222D77C: @ 0x0222D77C
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	adds r0, r6, #0
	movs r1, #0xc
	bl FUN_02018144
	adds r4, r0, #0
	bne _0222D792
	bl FUN_02022974
_0222D792:
	adds r1, r5, #1
	str r1, [r4, #4]
	adds r0, r6, #0
	lsls r1, r1, #3
	bl FUN_02018144
	str r0, [r4]
	ldr r2, [r4, #4]
	movs r1, #0
	lsls r2, r2, #3
	blx FUN_020D5124
	movs r0, #0
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov63_0222D77C

	thumb_func_start ov63_0222D7B4
ov63_0222D7B4: @ 0x0222D7B4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov63_0222D7B4

	thumb_func_start ov63_0222D7C8
ov63_0222D7C8: @ 0x0222D7C8
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrh r0, [r5, #0xa]
	adds r4, r1, #0
	ldr r1, [r5, #4]
	adds r0, r0, #1
	blx FUN_020E2178
	ldrh r0, [r5, #8]
	cmp r0, r1
	bne _0222D7E8
	adds r0, r5, #0
	add r1, sp, #0
	bl ov63_0222D810
_0222D7E8:
	ldrh r0, [r5, #0xa]
	ldr r3, [r5]
	lsls r2, r0, #3
	ldrh r0, [r4]
	adds r1, r3, r2
	strh r0, [r3, r2]
	ldrh r0, [r4, #2]
	strh r0, [r1, #2]
	ldrh r0, [r4, #4]
	strh r0, [r1, #4]
	ldrh r0, [r4, #6]
	strh r0, [r1, #6]
	ldrh r0, [r5, #0xa]
	ldr r1, [r5, #4]
	adds r0, r0, #1
	blx FUN_020E2178
	strh r1, [r5, #0xa]
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov63_0222D7C8

	thumb_func_start ov63_0222D810
ov63_0222D810: @ 0x0222D810
	push {r4, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #8]
	ldrh r0, [r4, #0xa]
	cmp r0, r2
	bne _0222D820
	movs r0, #0
	pop {r4, pc}
_0222D820:
	ldr r3, [r4]
	lsls r0, r2, #3
	adds r2, r3, r0
	ldrh r0, [r3, r0]
	strh r0, [r1]
	ldrh r0, [r2, #2]
	strh r0, [r1, #2]
	ldrh r0, [r2, #4]
	strh r0, [r1, #4]
	ldrh r0, [r2, #6]
	strh r0, [r1, #6]
	ldrh r0, [r4, #8]
	ldr r1, [r4, #4]
	adds r0, r0, #1
	blx FUN_020E2178
	strh r1, [r4, #8]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov63_0222D810

	thumb_func_start ov63_0222D848
ov63_0222D848: @ 0x0222D848
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	adds r0, r6, #0
	movs r1, #0xc
	bl FUN_02018144
	adds r4, r0, #0
	bne _0222D85E
	bl FUN_02022974
_0222D85E:
	adds r1, r5, #1
	str r1, [r4, #4]
	adds r0, r6, #0
	lsls r1, r1, #2
	bl FUN_02018144
	str r0, [r4]
	ldr r2, [r4, #4]
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020D5124
	movs r0, #0
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov63_0222D848

	thumb_func_start ov63_0222D880
ov63_0222D880: @ 0x0222D880
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov63_0222D880

	thumb_func_start ov63_0222D894
ov63_0222D894: @ 0x0222D894
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0xa]
	adds r4, r1, #0
	ldr r1, [r5, #4]
	adds r0, r0, #1
	blx FUN_020E2178
	ldrh r0, [r5, #8]
	cmp r0, r1
	bne _0222D8B2
	adds r0, r5, #0
	add r1, sp, #0
	bl ov63_0222D8D0
_0222D8B2:
	ldrh r0, [r5, #0xa]
	ldr r3, [r5]
	lsls r2, r0, #2
	ldrh r0, [r4]
	adds r1, r3, r2
	strh r0, [r3, r2]
	ldrh r0, [r4, #2]
	strh r0, [r1, #2]
	ldrh r0, [r5, #0xa]
	ldr r1, [r5, #4]
	adds r0, r0, #1
	blx FUN_020E2178
	strh r1, [r5, #0xa]
	pop {r3, r4, r5, pc}
	thumb_func_end ov63_0222D894

	thumb_func_start ov63_0222D8D0
ov63_0222D8D0: @ 0x0222D8D0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #8]
	ldrh r0, [r4, #0xa]
	cmp r0, r2
	bne _0222D8E0
	movs r0, #0
	pop {r4, pc}
_0222D8E0:
	ldr r3, [r4]
	lsls r0, r2, #2
	adds r2, r3, r0
	ldrh r0, [r3, r0]
	strh r0, [r1]
	ldrh r0, [r2, #2]
	strh r0, [r1, #2]
	ldrh r0, [r4, #8]
	ldr r1, [r4, #4]
	adds r0, r0, #1
	blx FUN_020E2178
	strh r1, [r4, #8]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov63_0222D8D0
	@ 0x0222D900
