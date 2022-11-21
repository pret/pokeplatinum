	.include "macros/function.inc"


	.text

	thumb_func_start ov82_0223B140
ov82_0223B140: @ 0x0223B140
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0223B160
	bl FUN_02006844
	cmp r0, #0
	beq _0223B160
	ldr r0, [r4]
	bl FUN_02006814
	movs r0, #0
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_0223B160:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov82_0223B140

	thumb_func_start ov82_0223B164
ov82_0223B164: @ 0x0223B164
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl FUN_02006840
	movs r2, #2
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0x37
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	adds r0, r4, #0
	movs r1, #0x28
	movs r2, #0x37
	bl FUN_0200681C
	movs r1, #0
	movs r2, #0x28
	adds r4, r0, #0
	blx FUN_020C4CF4
	movs r0, #0x37
	str r0, [r4]
	str r5, [r4, #0x10]
	ldr r1, [r5, #0x20]
	cmp r1, #0
	beq _0223B1A4
	ldr r1, [r5, #0x24]
	cmp r1, #0
	beq _0223B1A4
	bl FUN_021D1E74
_0223B1A4:
	adds r0, r4, #0
	ldr r1, [r5, #0x20]
	adds r0, #0x26
	strb r1, [r0]
	adds r0, r4, #0
	ldr r1, [r5, #0x24]
	adds r0, #0x27
	strb r1, [r0]
	ldr r0, [r4]
	bl FUN_0207D99C
	str r0, [r4, #0xc]
	ldr r0, [r5, #4]
	cmp r0, #1
	bne _0223B1CE
	ldrh r1, [r4, #6]
	movs r0, #0xff
	bics r1, r0
	movs r0, #1
	orrs r0, r1
	strh r0, [r4, #6]
_0223B1CE:
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov82_0223B164

	thumb_func_start ov82_0223B1D4
ov82_0223B1D4: @ 0x0223B1D4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0200682C
	adds r6, r0, #0
	adds r0, r5, #0
	bl FUN_02006840
	ldr r5, [r4]
	cmp r5, #4
	bhi _0223B23E
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223B1F8: @ jump table
	.2byte _0223B202 - _0223B1F8 - 2 @ case 0
	.2byte _0223B210 - _0223B1F8 - 2 @ case 1
	.2byte _0223B21E - _0223B1F8 - 2 @ case 2
	.2byte _0223B22C - _0223B1F8 - 2 @ case 3
	.2byte _0223B23A - _0223B1F8 - 2 @ case 4
_0223B202:
	adds r1, r6, #0
	adds r0, r6, #0
	adds r1, #0x14
	bl ov82_0223B2E0
	str r0, [r4]
	b _0223B23E
_0223B210:
	adds r1, r6, #0
	adds r0, r6, #0
	adds r1, #0x14
	bl ov82_0223B330
	str r0, [r4]
	b _0223B23E
_0223B21E:
	adds r1, r6, #0
	adds r0, r6, #0
	adds r1, #0x14
	bl ov82_0223B35C
	str r0, [r4]
	b _0223B23E
_0223B22C:
	adds r1, r6, #0
	adds r0, r6, #0
	adds r1, #0x14
	bl ov82_0223B37C
	str r0, [r4]
	b _0223B23E
_0223B23A:
	movs r0, #1
	pop {r4, r5, r6, pc}
_0223B23E:
	ldr r0, [r4]
	cmp r5, r0
	beq _0223B248
	movs r0, #0
	str r0, [r6, #0x14]
_0223B248:
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov82_0223B1D4

	thumb_func_start ov82_0223B24C
ov82_0223B24C: @ 0x0223B24C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	bl FUN_0200682C
	adds r6, r0, #0
	adds r0, r7, #0
	bl FUN_02006840
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _0223B26C
	cmp r0, #1
	beq _0223B2BC
	b _0223B2D8
_0223B26C:
	ldr r0, [r6]
	str r0, [sp]
	ldr r0, [r6, #0xc]
	bl FUN_020181C4
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x28
	blx FUN_020C4CF4
	adds r0, r7, #0
	bl FUN_02006830
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0223B296
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0223B296
	bl FUN_021D1F18
_0223B296:
	ldr r0, [sp]
	bl FUN_0201807C
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _0223B2A6
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223B2A6:
	movs r0, #0
	movs r1, #1
	bl FUN_020388F4
	movs r0, #4
	bl FUN_020364F0
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0223B2DC
_0223B2BC:
	movs r0, #4
	bl FUN_02036540
	cmp r0, #0
	bne _0223B2D4
	bl FUN_02035E18
	adds r4, r0, #0
	bl FUN_02032E64
	cmp r4, r0
	bge _0223B2DC
_0223B2D4:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223B2D8:
	bl FUN_02022974
_0223B2DC:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov82_0223B24C

	thumb_func_start ov82_0223B2E0
ov82_0223B2E0: @ 0x0223B2E0
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4]
	cmp r1, #5
	bhi _0223B32A
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223B2F6: @ jump table
	.2byte _0223B302 - _0223B2F6 - 2 @ case 0
	.2byte _0223B30A - _0223B2F6 - 2 @ case 1
	.2byte _0223B312 - _0223B2F6 - 2 @ case 2
	.2byte _0223B31A - _0223B2F6 - 2 @ case 3
	.2byte _0223B322 - _0223B2F6 - 2 @ case 4
	.2byte _0223B326 - _0223B2F6 - 2 @ case 5
_0223B302:
	bl ov82_0223B380
	str r0, [r4]
	b _0223B32A
_0223B30A:
	bl ov82_0223B3DC
	str r0, [r4]
	b _0223B32A
_0223B312:
	bl ov82_0223B470
	str r0, [r4]
	b _0223B32A
_0223B31A:
	bl ov82_0223B510
	str r0, [r4]
	b _0223B32A
_0223B322:
	movs r0, #1
	pop {r4, pc}
_0223B326:
	movs r0, #4
	pop {r4, pc}
_0223B32A:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov82_0223B2E0

	thumb_func_start ov82_0223B330
ov82_0223B330: @ 0x0223B330
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r5, _0223B358 @ =0x0223B564
	add r3, sp, #0
	adds r4, r0, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	ldr r2, [r4]
	adds r1, r4, #0
	bl FUN_020067E8
	str r0, [r4, #0x1c]
	movs r0, #2
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0223B358: .4byte 0x0223B564
	thumb_func_end ov82_0223B330

	thumb_func_start ov82_0223B35C
ov82_0223B35C: @ 0x0223B35C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x1c
	bl ov82_0223B140
	cmp r0, #0
	bne _0223B36E
	movs r0, #2
	pop {r4, pc}
_0223B36E:
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _0223B378
	movs r0, #0
	pop {r4, pc}
_0223B378:
	movs r0, #3
	pop {r4, pc}
	thumb_func_end ov82_0223B35C

	thumb_func_start ov82_0223B37C
ov82_0223B37C: @ 0x0223B37C
	movs r0, #4
	bx lr
	thumb_func_end ov82_0223B37C

	thumb_func_start ov82_0223B380
ov82_0223B380: @ 0x0223B380
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r3, _0223B3D4 @ =0x0223B554
	add r2, sp, #0
	adds r5, r0, #0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r5, #0x10]
	ldr r1, _0223B3D8 @ =0x0223B550
	ldr r0, [r0, #0x14]
	ldr r2, [r5]
	bl FUN_0207D824
	adds r4, r0, #0
	ldrh r0, [r5, #6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0223B3AE
	movs r2, #5
	b _0223B3B0
_0223B3AE:
	movs r2, #4
_0223B3B0:
	ldr r1, [r5, #0x10]
	lsls r2, r2, #0x18
	ldr r1, [r1, #0xc]
	ldr r3, [r5, #0xc]
	adds r0, r4, #0
	lsrs r2, r2, #0x18
	bl FUN_0207CB2C
	ldr r2, [r5]
	add r0, sp, #0
	adds r1, r4, #0
	bl FUN_020067E8
	str r0, [r5, #0x1c]
	str r4, [r5, #0x18]
	movs r0, #1
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223B3D4: .4byte 0x0223B554
_0223B3D8: .4byte 0x0223B550
	thumb_func_end ov82_0223B380

	thumb_func_start ov82_0223B3DC
ov82_0223B3DC: @ 0x0223B3DC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x1c
	bl ov82_0223B140
	cmp r0, #0
	bne _0223B3EE
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223B3EE:
	ldr r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0207CB08
	adds r5, r0, #0
	bl FUN_0207CB20
	adds r2, r0, #0
	ldr r1, [r4, #0x18]
	adds r0, r5, #0
	blx FUN_020D50B8
	ldr r0, [r4, #0x18]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #0x18]
	adds r0, r5, #0
	bl FUN_0207CB94
	str r0, [r4, #8]
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0207CB9C
	cmp r0, #5
	bhi _0223B44A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223B436: @ jump table
	.2byte _0223B452 - _0223B436 - 2 @ case 0
	.2byte _0223B442 - _0223B436 - 2 @ case 1
	.2byte _0223B452 - _0223B436 - 2 @ case 2
	.2byte _0223B452 - _0223B436 - 2 @ case 3
	.2byte _0223B452 - _0223B436 - 2 @ case 4
	.2byte _0223B446 - _0223B436 - 2 @ case 5
_0223B442:
	movs r0, #2
	pop {r3, r4, r5, pc}
_0223B446:
	movs r0, #5
	pop {r3, r4, r5, pc}
_0223B44A:
	bl FUN_02022974
	movs r0, #0x95
	str r0, [r4, #8]
_0223B452:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #8]
	ldr r0, [r0, #0x14]
	lsls r1, r1, #0x10
	ldr r3, [r4]
	lsrs r1, r1, #0x10
	movs r2, #1
	bl FUN_0207D60C
	cmp r0, #0
	bne _0223B46C
	bl FUN_02022974
_0223B46C:
	movs r0, #4
	pop {r3, r4, r5, pc}
	thumb_func_end ov82_0223B3DC

	thumb_func_start ov82_0223B470
ov82_0223B470: @ 0x0223B470
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	ldr r3, _0223B50C @ =0x0223B574
	ldr r0, [r0, #0x14]
	add r2, sp, #8
	str r0, [sp]
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_020972FC
	str r0, [r5, #0x18]
	ldr r1, [r5, #8]
	movs r2, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl FUN_02097320
	movs r6, #0
	adds r4, r6, #0
_0223B4A4:
	adds r0, r4, #0
	bl FUN_0207D354
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, [sp]
	ldr r3, [r5]
	adds r1, r7, #0
	movs r2, #1
	bl FUN_0207D688
	cmp r0, #1
	bne _0223B4CE
	ldr r0, [r5, #0x18]
	adds r1, r7, #0
	movs r2, #0
	bl FUN_02097320
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0223B4CE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x40
	blo _0223B4A4
	add r3, sp, #4
	ldr r0, [r5, #0xc]
	movs r1, #4
	add r2, sp, #4
	adds r3, #1
	bl FUN_0207D9B4
	add r2, sp, #4
	ldrb r1, [r2, #1]
	adds r3, r6, #2
	lsls r3, r3, #0x18
	ldrb r2, [r2]
	ldr r0, [r5, #0x18]
	lsrs r3, r3, #0x18
	bl FUN_0209733C
	ldr r1, [r5, #0x18]
	ldr r2, [r5]
	add r0, sp, #8
	bl FUN_020067E8
	str r0, [r5, #0x1c]
	movs r0, #3
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223B50C: .4byte 0x0223B574
	thumb_func_end ov82_0223B470

	thumb_func_start ov82_0223B510
ov82_0223B510: @ 0x0223B510
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0x1c
	bl ov82_0223B140
	cmp r0, #0
	bne _0223B526
	add sp, #4
	movs r0, #3
	pop {r3, r4, pc}
_0223B526:
	add r1, sp, #0
	ldr r0, [r4, #0x18]
	adds r1, #1
	add r2, sp, #0
	bl FUN_02097390
	add r3, sp, #0
	ldrb r2, [r3]
	ldrb r3, [r3, #1]
	ldr r0, [r4, #0xc]
	movs r1, #4
	bl FUN_0207D9C8
	ldr r0, [r4, #0x18]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #0x18]
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov82_0223B510
	@ 0x0223B550
