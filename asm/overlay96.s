	.include "macros/function.inc"


	.text

	thumb_func_start ov96_0223B140
ov96_0223B140: @ 0x0223B140
	push {r3, r4}
	ldr r3, _0223B158 @ =0x0223DDE0
	movs r4, #1
	str r4, [r3]
	movs r4, #0
	str r4, [r3, #4]
	str r0, [r3, #8]
	str r1, [r3, #0xc]
	str r2, [r3, #0x10]
	pop {r3, r4}
	bx lr
	nop
_0223B158: .4byte 0x0223DDE0
	thumb_func_end ov96_0223B140

	thumb_func_start ov96_0223B15C
ov96_0223B15C: @ 0x0223B15C
	push {r3, lr}
	ldr r1, _0223B3C8 @ =0x0223DDE0
	ldr r0, [r1]
	cmp r0, #0xc
	bls _0223B168
	b _0223B3C4
_0223B168:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223B174: @ jump table
	.2byte _0223B3C4 - _0223B174 - 2 @ case 0
	.2byte _0223B3C4 - _0223B174 - 2 @ case 1
	.2byte _0223B18E - _0223B174 - 2 @ case 2
	.2byte _0223B3B8 - _0223B174 - 2 @ case 3
	.2byte _0223B1D8 - _0223B174 - 2 @ case 4
	.2byte _0223B3B8 - _0223B174 - 2 @ case 5
	.2byte _0223B248 - _0223B174 - 2 @ case 6
	.2byte _0223B3B8 - _0223B174 - 2 @ case 7
	.2byte _0223B2BA - _0223B174 - 2 @ case 8
	.2byte _0223B3B8 - _0223B174 - 2 @ case 9
	.2byte _0223B32C - _0223B174 - 2 @ case 10
	.2byte _0223B3B8 - _0223B174 - 2 @ case 11
	.2byte _0223B3C4 - _0223B174 - 2 @ case 12
_0223B18E:
	bl FUN_0221FD48
	cmp r0, #1
	beq _0223B19C
	cmp r0, #7
	beq _0223B1B4
	pop {r3, pc}
_0223B19C:
	ldr r0, _0223B3C8 @ =0x0223DDE0
	movs r1, #0xc
	str r1, [r0]
	bl FUN_0221FE14
	bl ov96_0223B608
	ldr r1, _0223B3C8 @ =0x0223DDE0
	str r0, [r1, #4]
	bl FUN_0221FDEC
	pop {r3, pc}
_0223B1B4:
	ldr r0, _0223B3C8 @ =0x0223DDE0
	movs r1, #0xc
	str r1, [r0]
	bl FUN_0221FE20
	cmp r0, #0
	ble _0223B1CA
	ldr r0, _0223B3CC @ =0x0223DEE0
	ldrb r1, [r0, #3]
	ldr r0, _0223B3C8 @ =0x0223DDE0
	b _0223B1D0
_0223B1CA:
	movs r1, #1
	ldr r0, _0223B3C8 @ =0x0223DDE0
	mvns r1, r1
_0223B1D0:
	str r1, [r0, #4]
	bl FUN_0221FDEC
	pop {r3, pc}
_0223B1D8:
	bl FUN_0221FD48
	cmp r0, #1
	beq _0223B1E6
	cmp r0, #7
	beq _0223B1FE
	pop {r3, pc}
_0223B1E6:
	ldr r0, _0223B3C8 @ =0x0223DDE0
	movs r1, #0xc
	str r1, [r0]
	bl FUN_0221FE14
	bl ov96_0223B608
	ldr r1, _0223B3C8 @ =0x0223DDE0
	str r0, [r1, #4]
	bl FUN_0221FDEC
	pop {r3, pc}
_0223B1FE:
	ldr r0, _0223B3C8 @ =0x0223DDE0
	movs r1, #0xc
	str r1, [r0]
	bl FUN_0221FE20
	ldr r1, _0223B3D0 @ =0x00000A38
	cmp r0, r1
	bne _0223B216
	ldr r0, _0223B3C8 @ =0x0223DDE0
	movs r1, #0
	str r1, [r0, #4]
	b _0223B242
_0223B216:
	ldr r0, _0223B3CC @ =0x0223DEE0
	ldr r0, [r0, #8]
	ldrb r0, [r0]
	cmp r0, #2
	beq _0223B226
	cmp r0, #5
	beq _0223B230
	b _0223B23A
_0223B226:
	movs r1, #2
	ldr r0, _0223B3C8 @ =0x0223DDE0
	mvns r1, r1
	str r1, [r0, #4]
	b _0223B242
_0223B230:
	movs r1, #1
	ldr r0, _0223B3C8 @ =0x0223DDE0
	mvns r1, r1
	str r1, [r0, #4]
	b _0223B242
_0223B23A:
	movs r1, #4
	ldr r0, _0223B3C8 @ =0x0223DDE0
	mvns r1, r1
	str r1, [r0, #4]
_0223B242:
	bl FUN_0221FDEC
	pop {r3, pc}
_0223B248:
	bl FUN_0221FD48
	cmp r0, #1
	beq _0223B256
	cmp r0, #7
	beq _0223B26E
	pop {r3, pc}
_0223B256:
	ldr r0, _0223B3C8 @ =0x0223DDE0
	movs r1, #0xc
	str r1, [r0]
	bl FUN_0221FE14
	bl ov96_0223B608
	ldr r1, _0223B3C8 @ =0x0223DDE0
	str r0, [r1, #4]
	bl FUN_0221FDEC
	pop {r3, pc}
_0223B26E:
	ldr r0, _0223B3C8 @ =0x0223DDE0
	movs r1, #0xc
	ldr r2, _0223B3CC @ =0x0223DEE0
	str r1, [r0]
	ldrb r2, [r2, #3]
	cmp r2, #5
	bhi _0223B2AC
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0223B288: @ jump table
	.2byte _0223B2AC - _0223B288 - 2 @ case 0
	.2byte _0223B294 - _0223B288 - 2 @ case 1
	.2byte _0223B29A - _0223B288 - 2 @ case 2
	.2byte _0223B2AC - _0223B288 - 2 @ case 3
	.2byte _0223B2A0 - _0223B288 - 2 @ case 4
	.2byte _0223B2A6 - _0223B288 - 2 @ case 5
_0223B294:
	movs r1, #0
	str r1, [r0, #4]
	b _0223B2B4
_0223B29A:
	subs r1, #0xf
	str r1, [r0, #4]
	b _0223B2B4
_0223B2A0:
	subs r1, #0xd
	str r1, [r0, #4]
	b _0223B2B4
_0223B2A6:
	subs r1, #0xe
	str r1, [r0, #4]
	b _0223B2B4
_0223B2AC:
	movs r1, #4
	ldr r0, _0223B3C8 @ =0x0223DDE0
	mvns r1, r1
	str r1, [r0, #4]
_0223B2B4:
	bl FUN_0221FDEC
	pop {r3, pc}
_0223B2BA:
	bl FUN_0221FD48
	cmp r0, #1
	beq _0223B2C8
	cmp r0, #7
	beq _0223B2E0
	pop {r3, pc}
_0223B2C8:
	ldr r0, _0223B3C8 @ =0x0223DDE0
	movs r1, #0xc
	str r1, [r0]
	bl FUN_0221FE14
	bl ov96_0223B608
	ldr r1, _0223B3C8 @ =0x0223DDE0
	str r0, [r1, #4]
	bl FUN_0221FDEC
	pop {r3, pc}
_0223B2E0:
	ldr r0, _0223B3C8 @ =0x0223DDE0
	movs r1, #0xc
	ldr r2, _0223B3CC @ =0x0223DEE0
	str r1, [r0]
	ldrb r2, [r2, #3]
	cmp r2, #5
	bhi _0223B31E
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0223B2FA: @ jump table
	.2byte _0223B31E - _0223B2FA - 2 @ case 0
	.2byte _0223B306 - _0223B2FA - 2 @ case 1
	.2byte _0223B31E - _0223B2FA - 2 @ case 2
	.2byte _0223B30C - _0223B2FA - 2 @ case 3
	.2byte _0223B312 - _0223B2FA - 2 @ case 4
	.2byte _0223B318 - _0223B2FA - 2 @ case 5
_0223B306:
	movs r1, #0
	str r1, [r0, #4]
	b _0223B326
_0223B30C:
	movs r1, #1
	str r1, [r0, #4]
	b _0223B326
_0223B312:
	movs r1, #2
	str r1, [r0, #4]
	b _0223B326
_0223B318:
	subs r1, #0xe
	str r1, [r0, #4]
	b _0223B326
_0223B31E:
	movs r1, #4
	ldr r0, _0223B3C8 @ =0x0223DDE0
	mvns r1, r1
	str r1, [r0, #4]
_0223B326:
	bl FUN_0221FDEC
	pop {r3, pc}
_0223B32C:
	bl FUN_0221FD48
	cmp r0, #1
	beq _0223B33A
	cmp r0, #7
	beq _0223B352
	pop {r3, pc}
_0223B33A:
	ldr r0, _0223B3C8 @ =0x0223DDE0
	movs r1, #0xc
	str r1, [r0]
	bl FUN_0221FE14
	bl ov96_0223B608
	ldr r1, _0223B3C8 @ =0x0223DDE0
	str r0, [r1, #4]
	bl FUN_0221FDEC
	pop {r3, pc}
_0223B352:
	ldr r0, _0223B3C8 @ =0x0223DDE0
	movs r1, #0xc
	str r1, [r0]
	bl FUN_0221FE20
	cmp r0, #8
	bne _0223B368
	ldr r0, _0223B3C8 @ =0x0223DDE0
	movs r1, #0
	str r1, [r0, #4]
	b _0223B3B2
_0223B368:
	ldr r0, _0223B3CC @ =0x0223DEE0
	ldrb r0, [r0, #3]
	cmp r0, #5
	bhi _0223B3AA
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223B37C: @ jump table
	.2byte _0223B3AA - _0223B37C - 2 @ case 0
	.2byte _0223B388 - _0223B37C - 2 @ case 1
	.2byte _0223B3AA - _0223B37C - 2 @ case 2
	.2byte _0223B390 - _0223B37C - 2 @ case 3
	.2byte _0223B398 - _0223B37C - 2 @ case 4
	.2byte _0223B3A0 - _0223B37C - 2 @ case 5
_0223B388:
	ldr r0, _0223B3C8 @ =0x0223DDE0
	movs r1, #0
	str r1, [r0, #4]
	b _0223B3B2
_0223B390:
	ldr r0, _0223B3C8 @ =0x0223DDE0
	movs r1, #1
	str r1, [r0, #4]
	b _0223B3B2
_0223B398:
	ldr r0, _0223B3C8 @ =0x0223DDE0
	movs r1, #2
	str r1, [r0, #4]
	b _0223B3B2
_0223B3A0:
	movs r1, #1
	ldr r0, _0223B3C8 @ =0x0223DDE0
	mvns r1, r1
	str r1, [r0, #4]
	b _0223B3B2
_0223B3AA:
	movs r1, #4
	ldr r0, _0223B3C8 @ =0x0223DDE0
	mvns r1, r1
	str r1, [r0, #4]
_0223B3B2:
	bl FUN_0221FDEC
	pop {r3, pc}
_0223B3B8:
	movs r0, #0xc
	str r0, [r1]
	subs r0, #0x10
	str r0, [r1, #4]
	bl FUN_0221FDEC
_0223B3C4:
	pop {r3, pc}
	nop
_0223B3C8: .4byte 0x0223DDE0
_0223B3CC: .4byte 0x0223DEE0
_0223B3D0: .4byte 0x00000A38
	thumb_func_end ov96_0223B15C

	thumb_func_start ov96_0223B3D4
ov96_0223B3D4: @ 0x0223B3D4
	ldr r1, _0223B3F0 @ =0x0223DDE0
	ldr r0, [r1]
	cmp r0, #1
	beq _0223B3E2
	cmp r0, #0xc
	beq _0223B3E6
	b _0223B3EC
_0223B3E2:
	movs r0, #1
	bx lr
_0223B3E6:
	movs r0, #1
	str r0, [r1]
	bx lr
_0223B3EC:
	movs r0, #0
	bx lr
	.align 2, 0
_0223B3F0: .4byte 0x0223DDE0
	thumb_func_end ov96_0223B3D4

	thumb_func_start ov96_0223B3F4
ov96_0223B3F4: @ 0x0223B3F4
	ldr r0, _0223B3FC @ =0x0223DDE0
	ldr r0, [r0, #4]
	bx lr
	nop
_0223B3FC: .4byte 0x0223DDE0
	thumb_func_end ov96_0223B3F4

	thumb_func_start ov96_0223B400
ov96_0223B400: @ 0x0223B400
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl FUN_0221FC84
	ldr r0, _0223B440 @ =0x0223DDE0
	subs r1, r4, #1
	strb r1, [r0, #0x14]
	movs r0, #2
	str r0, [sp]
	ldr r0, _0223B444 @ =0x0223DB60
	ldr r1, _0223B448 @ =0x0223DDF4
	ldr r3, _0223B44C @ =0x0223DEE3
	movs r2, #1
	bl ov96_0223B5D0
	cmp r0, #0
	beq _0223B42E
	ldr r0, _0223B440 @ =0x0223DDE0
	movs r1, #2
	str r1, [r0]
	add sp, #4
	pop {r3, r4, pc}
_0223B42E:
	ldr r0, _0223B440 @ =0x0223DDE0
	movs r1, #0xc
	str r1, [r0]
	subs r1, #0x11
	str r1, [r0, #4]
	bl FUN_0221FDEC
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0223B440: .4byte 0x0223DDE0
_0223B444: .4byte 0x0223DB60
_0223B448: .4byte 0x0223DDF4
_0223B44C: .4byte 0x0223DEE3
	thumb_func_end ov96_0223B400

	thumb_func_start ov96_0223B450
ov96_0223B450: @ 0x0223B450
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _0223B49C @ =0x0223DEE0
	adds r6, r2, #0
	adds r4, r1, #0
	str r6, [r0, #8]
	bl FUN_0221FC84
	ldr r0, _0223B4A0 @ =0x0223DDE0
	subs r1, r5, #1
	strb r1, [r0, #0x14]
	subs r1, r4, #1
	strb r1, [r0, #0x15]
	ldr r0, _0223B4A4 @ =0x00000A38
	ldr r1, _0223B4A8 @ =0x0223DDF4
	str r0, [sp]
	ldr r0, _0223B4AC @ =0x0223DBAC
	movs r2, #2
	adds r3, r6, #0
	bl ov96_0223B5D0
	cmp r0, #0
	beq _0223B48A
	ldr r0, _0223B4A0 @ =0x0223DDE0
	movs r1, #4
	str r1, [r0]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0223B48A:
	ldr r0, _0223B4A0 @ =0x0223DDE0
	movs r1, #0xc
	str r1, [r0]
	subs r1, #0x11
	str r1, [r0, #4]
	bl FUN_0221FDEC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0223B49C: .4byte 0x0223DEE0
_0223B4A0: .4byte 0x0223DDE0
_0223B4A4: .4byte 0x00000A38
_0223B4A8: .4byte 0x0223DDF4
_0223B4AC: .4byte 0x0223DBAC
	thumb_func_end ov96_0223B450

	thumb_func_start ov96_0223B4B0
ov96_0223B4B0: @ 0x0223B4B0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	adds r4, r3, #0
	bl FUN_0221FC84
	ldr r0, _0223B514 @ =0x0223DDF4
	adds r1, r4, #0
	movs r2, #0xe4
	blx FUN_020D50B8
	ldr r0, _0223B518 @ =0x0223DEC0
	subs r1, r5, #1
	strb r1, [r0, #0x18]
	subs r1, r6, #1
	strb r1, [r0, #0x19]
	ldr r3, _0223B51C @ =0x0223DEDB
	ldr r2, _0223B520 @ =0x0223DDEC
	strb r7, [r0, #0x1a]
	movs r1, #8
_0223B4DA:
	ldrb r0, [r2]
	adds r2, r2, #1
	strb r0, [r3]
	adds r3, r3, #1
	subs r1, r1, #1
	bne _0223B4DA
	movs r0, #2
	str r0, [sp]
	ldr r0, _0223B524 @ =0x0223DBF8
	ldr r1, _0223B514 @ =0x0223DDF4
	ldr r3, _0223B528 @ =0x0223DEE3
	movs r2, #0xef
	bl ov96_0223B5D0
	cmp r0, #0
	beq _0223B502
	ldr r0, _0223B52C @ =0x0223DDE0
	movs r1, #6
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_0223B502:
	ldr r0, _0223B52C @ =0x0223DDE0
	movs r1, #0xc
	str r1, [r0]
	subs r1, #0x11
	str r1, [r0, #4]
	bl FUN_0221FDEC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223B514: .4byte 0x0223DDF4
_0223B518: .4byte 0x0223DEC0
_0223B51C: .4byte 0x0223DEDB
_0223B520: .4byte 0x0223DDEC
_0223B524: .4byte 0x0223DBF8
_0223B528: .4byte 0x0223DEE3
_0223B52C: .4byte 0x0223DDE0
	thumb_func_end ov96_0223B4B0

	thumb_func_start ov96_0223B530
ov96_0223B530: @ 0x0223B530
	push {r3, lr}
	bl FUN_0221FC84
	movs r0, #2
	str r0, [sp]
	ldr r0, _0223B564 @ =0x0223DC44
	ldr r1, _0223B568 @ =0x0223DDF4
	ldr r3, _0223B56C @ =0x0223DEE3
	movs r2, #0
	bl ov96_0223B5D0
	cmp r0, #0
	beq _0223B552
	ldr r0, _0223B570 @ =0x0223DDE0
	movs r1, #8
	str r1, [r0]
	pop {r3, pc}
_0223B552:
	ldr r0, _0223B570 @ =0x0223DDE0
	movs r1, #0xc
	str r1, [r0]
	subs r1, #0x11
	str r1, [r0, #4]
	bl FUN_0221FDEC
	pop {r3, pc}
	nop
_0223B564: .4byte 0x0223DC44
_0223B568: .4byte 0x0223DDF4
_0223B56C: .4byte 0x0223DEE3
_0223B570: .4byte 0x0223DDE0
	thumb_func_end ov96_0223B530

	thumb_func_start ov96_0223B574
ov96_0223B574: @ 0x0223B574
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x1c
	adds r4, r1, #0
	blx FUN_020C3FA0
	ldr r0, _0223B5C0 @ =0x0223DDF4
	adds r1, r5, #0
	movs r2, #0x64
	blx FUN_020D50B8
	ldr r0, _0223B5C4 @ =0x0223DEE0
	str r4, [r0, #8]
	bl FUN_0221FC84
	movs r0, #8
	str r0, [sp]
	ldr r3, _0223B5C4 @ =0x0223DEE0
	ldr r0, _0223B5C8 @ =0x0223DC8C
	ldr r1, _0223B5C0 @ =0x0223DDF4
	ldr r3, [r3, #8]
	movs r2, #0x64
	bl ov96_0223B5D0
	cmp r0, #0
	beq _0223B5B0
	ldr r0, _0223B5CC @ =0x0223DDE0
	movs r1, #0xa
	str r1, [r0]
	pop {r3, r4, r5, pc}
_0223B5B0:
	ldr r0, _0223B5CC @ =0x0223DDE0
	movs r1, #0xc
	str r1, [r0]
	subs r1, #0x11
	str r1, [r0, #4]
	bl FUN_0221FDEC
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223B5C0: .4byte 0x0223DDF4
_0223B5C4: .4byte 0x0223DEE0
_0223B5C8: .4byte 0x0223DC8C
_0223B5CC: .4byte 0x0223DDE0
	thumb_func_end ov96_0223B574

	thumb_func_start ov96_0223B5D0
ov96_0223B5D0: @ 0x0223B5D0
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r1, #0
	ldr r1, [sp, #0x18]
	str r3, [sp]
	str r1, [sp, #4]
	adds r4, r2, #0
	ldr r1, _0223B604 @ =0x0223DDE0
	adds r2, r5, #0
	ldr r1, [r1, #8]
	adds r3, r4, #0
	bl FUN_0221FCA8
	cmp r0, #0
	beq _0223B5F6
	cmp r0, #1
	beq _0223B5FC
	cmp r0, #2
	b _0223B5FC
_0223B5F6:
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223B5FC:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223B604: .4byte 0x0223DDE0
	thumb_func_end ov96_0223B5D0

	thumb_func_start ov96_0223B608
ov96_0223B608: @ 0x0223B608
	push {r4, lr}
	cmp r0, #0x20
	bhi _0223B680
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223B61A: @ jump table
	.2byte _0223B65C - _0223B61A - 2 @ case 0
	.2byte _0223B65C - _0223B61A - 2 @ case 1
	.2byte _0223B662 - _0223B61A - 2 @ case 2
	.2byte _0223B65C - _0223B61A - 2 @ case 3
	.2byte _0223B65C - _0223B61A - 2 @ case 4
	.2byte _0223B65C - _0223B61A - 2 @ case 5
	.2byte _0223B65C - _0223B61A - 2 @ case 6
	.2byte _0223B680 - _0223B61A - 2 @ case 7
	.2byte _0223B662 - _0223B61A - 2 @ case 8
	.2byte _0223B65C - _0223B61A - 2 @ case 9
	.2byte _0223B65C - _0223B61A - 2 @ case 10
	.2byte _0223B668 - _0223B61A - 2 @ case 11
	.2byte _0223B66E - _0223B61A - 2 @ case 12
	.2byte _0223B66E - _0223B61A - 2 @ case 13
	.2byte _0223B65C - _0223B61A - 2 @ case 14
	.2byte _0223B67A - _0223B61A - 2 @ case 15
	.2byte _0223B674 - _0223B61A - 2 @ case 16
	.2byte _0223B674 - _0223B61A - 2 @ case 17
	.2byte _0223B674 - _0223B61A - 2 @ case 18
	.2byte _0223B674 - _0223B61A - 2 @ case 19
	.2byte _0223B65C - _0223B61A - 2 @ case 20
	.2byte _0223B65C - _0223B61A - 2 @ case 21
	.2byte _0223B65C - _0223B61A - 2 @ case 22
	.2byte _0223B65C - _0223B61A - 2 @ case 23
	.2byte _0223B680 - _0223B61A - 2 @ case 24
	.2byte _0223B662 - _0223B61A - 2 @ case 25
	.2byte _0223B674 - _0223B61A - 2 @ case 26
	.2byte _0223B674 - _0223B61A - 2 @ case 27
	.2byte _0223B674 - _0223B61A - 2 @ case 28
	.2byte _0223B674 - _0223B61A - 2 @ case 29
	.2byte _0223B67A - _0223B61A - 2 @ case 30
	.2byte _0223B674 - _0223B61A - 2 @ case 31
	.2byte _0223B65C - _0223B61A - 2 @ case 32
_0223B65C:
	movs r4, #4
	mvns r4, r4
	b _0223B684
_0223B662:
	movs r4, #4
	mvns r4, r4
	b _0223B684
_0223B668:
	movs r4, #6
	mvns r4, r4
	b _0223B684
_0223B66E:
	movs r4, #6
	mvns r4, r4
	b _0223B684
_0223B674:
	movs r4, #1
	mvns r4, r4
	b _0223B684
_0223B67A:
	movs r4, #1
	mvns r4, r4
	b _0223B684
_0223B680:
	movs r4, #4
	mvns r4, r4
_0223B684:
	movs r0, #4
	mvns r0, r0
	cmp r4, r0
	beq _0223B69C
	blx FUN_02213898
	cmp r0, #9
	beq _0223B698
	movs r4, #5
	mvns r4, r4
_0223B698:
	blx FUN_021D76E8
_0223B69C:
	adds r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov96_0223B608

	thumb_func_start ov96_0223B6A0
ov96_0223B6A0: @ 0x0223B6A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r1, #0
	adds r6, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _0223B6B4
	cmp r0, #1
	beq _0223B7A8
	b _0223B7BE
_0223B6B4:
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _0223B7C4 @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _0223B7C8 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	movs r2, #5
	movs r0, #3
	movs r1, #0x44
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	ldr r1, _0223B7CC @ =0x000012C4
	adds r0, r6, #0
	movs r2, #0x44
	bl FUN_0200681C
	ldr r2, _0223B7CC @ =0x000012C4
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x44
	bl FUN_02018340
	str r0, [r4, #4]
	ldr r0, _0223B7D0 @ =0x0223DEEC
	add r2, sp, #0
	ldr r3, _0223B7D4 @ =0x0223DA88
	str r4, [r0]
	adds r7, r2, #0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	adds r0, r7, #0
	bl FUN_02018368
	movs r0, #0xb
	movs r1, #0x20
	movs r2, #0x44
	bl FUN_0200B368
	movs r1, #0xbd
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldr r2, _0223B7D8 @ =0x0000029E
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0x44
	bl FUN_0200B144
	ldr r1, _0223B7DC @ =0x00000BD4
	ldr r2, _0223B7E0 @ =0x000002A2
	str r0, [r4, r1]
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0x44
	bl FUN_0200B144
	ldr r1, _0223B7E4 @ =0x00000BD8
	ldr r2, _0223B7E8 @ =0x000002B7
	str r0, [r4, r1]
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0x44
	bl FUN_0200B144
	ldr r1, _0223B7EC @ =0x00000BDC
	str r0, [r4, r1]
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov96_0223B980
	adds r0, r4, #0
	bl ov96_0223BC64
	movs r1, #0
	movs r0, #0x34
	adds r2, r1, #0
	bl FUN_02004550
	ldr r1, _0223B7F0 @ =0x00020020
	movs r0, #0x44
	bl FUN_02018144
	str r0, [r4, #0x24]
	adds r0, #0x1f
	movs r1, #0x1f
	bics r0, r1
	movs r1, #2
	lsls r1, r1, #0x10
	movs r2, #0
	blx FUN_020A5404
	str r0, [r4, #0x28]
	ldr r1, _0223B7F4 @ =0x00000497
	movs r0, #0xb
	movs r2, #1
	bl FUN_02004550
	movs r0, #1
	str r0, [r5]
	b _0223B7BE
_0223B7A8:
	bl FUN_02099550
	bl FUN_020995B4
	bl FUN_02033478
	movs r0, #0
	str r0, [r5]
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223B7BE:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223B7C4: .4byte 0xFFFFE0FF
_0223B7C8: .4byte 0x04001000
_0223B7CC: .4byte 0x000012C4
_0223B7D0: .4byte 0x0223DEEC
_0223B7D4: .4byte 0x0223DA88
_0223B7D8: .4byte 0x0000029E
_0223B7DC: .4byte 0x00000BD4
_0223B7E0: .4byte 0x000002A2
_0223B7E4: .4byte 0x00000BD8
_0223B7E8: .4byte 0x000002B7
_0223B7EC: .4byte 0x00000BDC
_0223B7F0: .4byte 0x00020020
_0223B7F4: .4byte 0x00000497
	thumb_func_end ov96_0223B6A0

	thumb_func_start ov96_0223B7F8
ov96_0223B7F8: @ 0x0223B7F8
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	bl FUN_0200682C
	adds r5, r0, #0
	blx FUN_021D8018
	bl ov96_0223B15C
	blx FUN_021D8018
	ldr r1, [r4]
	cmp r1, #5
	bhi _0223B8A0
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223B820: @ jump table
	.2byte _0223B82C - _0223B820 - 2 @ case 0
	.2byte _0223B848 - _0223B820 - 2 @ case 1
	.2byte _0223B85C - _0223B820 - 2 @ case 2
	.2byte _0223B86A - _0223B820 - 2 @ case 3
	.2byte _0223B87E - _0223B820 - 2 @ case 4
	.2byte _0223B89C - _0223B820 - 2 @ case 5
_0223B82C:
	bl FUN_020334A4
	cmp r0, #0
	beq _0223B8A0
	ldr r1, [r5, #0x28]
	ldr r0, _0223B8B0 @ =0x0223DEEC
	str r1, [r0, #4]
	ldr r0, _0223B8B4 @ =ov96_0223BC04
	ldr r1, _0223B8B8 @ =ov96_0223BC2C
	blx FUN_021D776C
	movs r0, #1
	str r0, [r4]
	b _0223B8A0
_0223B848:
	ldr r3, [r5, #0x10]
	movs r2, #0xc
	adds r6, r3, #0
	muls r6, r2, r6
	ldr r2, _0223B8BC @ =0x0223DCD4
	adds r0, r5, #0
	ldr r2, [r2, r6]
	blx r2
	str r0, [r4]
	b _0223B8A0
_0223B85C:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0223B8A0
	movs r0, #3
	str r0, [r4]
	b _0223B8A0
_0223B86A:
	ldr r3, [r5, #0x10]
	movs r2, #0xc
	adds r6, r3, #0
	muls r6, r2, r6
	ldr r2, _0223B8C0 @ =0x0223DCD8
	adds r0, r5, #0
	ldr r2, [r2, r6]
	blx r2
	str r0, [r4]
	b _0223B8A0
_0223B87E:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0223B8A0
	ldr r3, [r5, #0x10]
	movs r2, #0xc
	adds r6, r3, #0
	muls r6, r2, r6
	ldr r2, _0223B8C4 @ =0x0223DCDC
	ldr r1, [r4]
	ldr r2, [r2, r6]
	adds r0, r5, #0
	blx r2
	str r0, [r4]
	b _0223B8A0
_0223B89C:
	movs r0, #1
	pop {r4, r5, r6, pc}
_0223B8A0:
	ldr r0, _0223B8C8 @ =0x00000BF8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223B8AC
	bl FUN_020219F8
_0223B8AC:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223B8B0: .4byte 0x0223DEEC
_0223B8B4: .4byte ov96_0223BC04
_0223B8B8: .4byte ov96_0223BC2C
_0223B8BC: .4byte 0x0223DCD4
_0223B8C0: .4byte 0x0223DCD8
_0223B8C4: .4byte 0x0223DCDC
_0223B8C8: .4byte 0x00000BF8
	thumb_func_end ov96_0223B7F8

	thumb_func_start ov96_0223B8CC
ov96_0223B8CC: @ 0x0223B8CC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, [r4, #0x24]
	bl FUN_020181C4
	bl FUN_020995C4
	bl FUN_02099560
	adds r0, r4, #0
	bl ov96_0223BC8C
	ldr r0, _0223B934 @ =0x00000BDC
	ldr r0, [r4, r0]
	bl FUN_0200B190
	ldr r0, _0223B938 @ =0x00000BD8
	ldr r0, [r4, r0]
	bl FUN_0200B190
	ldr r0, _0223B93C @ =0x00000BD4
	ldr r0, [r4, r0]
	bl FUN_0200B190
	movs r0, #0xbd
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0200B3F0
	adds r0, r4, #0
	bl ov96_0223B99C
	bl FUN_020334CC
	ldr r0, [r4, #4]
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r0, #0x44
	bl FUN_0201807C
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223B934: .4byte 0x00000BDC
_0223B938: .4byte 0x00000BD8
_0223B93C: .4byte 0x00000BD4
	thumb_func_end ov96_0223B8CC

	thumb_func_start ov96_0223B940
ov96_0223B940: @ 0x0223B940
	push {r3, lr}
	bl FUN_0201DCAC
	bl FUN_0200A858
	ldr r3, _0223B958 @ =0x027E0000
	ldr r1, _0223B95C @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	.align 2, 0
_0223B958: .4byte 0x027E0000
_0223B95C: .4byte 0x00003FF8
	thumb_func_end ov96_0223B940

	thumb_func_start ov96_0223B960
ov96_0223B960: @ 0x0223B960
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0223B97C @ =0x0223DAA8
	add r3, sp, #0
	movs r2, #5
_0223B96A:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0223B96A
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_0223B97C: .4byte 0x0223DAA8
	thumb_func_end ov96_0223B960

	thumb_func_start ov96_0223B980
ov96_0223B980: @ 0x0223B980
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_02006840
	movs r1, #0
	str r0, [r4]
	adds r0, r4, #0
	adds r2, r1, #0
	str r1, [r4, #0x10]
	bl ov96_0223BC5C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov96_0223B980

	thumb_func_start ov96_0223B99C
ov96_0223B99C: @ 0x0223B99C
	bx lr
	.align 2, 0
	thumb_func_end ov96_0223B99C

	thumb_func_start ov96_0223B9A0
ov96_0223B9A0: @ 0x0223B9A0
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _0223B9CC @ =0x0223DA98
	add r3, sp, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_0201E86C
	movs r0, #0x14
	movs r1, #0x44
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_0223B9CC: .4byte 0x0223DA98
	thumb_func_end ov96_0223B9A0

	thumb_func_start ov96_0223B9D0
ov96_0223B9D0: @ 0x0223B9D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r0, #0
	movs r0, #0x68
	movs r1, #0x44
	bl FUN_02006C24
	str r0, [sp, #0x14]
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x20
	str r3, [sp, #0xc]
	movs r2, #0x44
	str r2, [sp, #0x10]
	adds r2, r0, #0
	bl FUN_0200A784
	ldr r1, _0223BAC8 @ =0x00000BFC
	movs r0, #0xa
	adds r1, r6, r1
	movs r2, #0x44
	bl FUN_020095C4
	ldr r1, _0223BACC @ =0x00000BF8
	movs r2, #1
	str r0, [r6, r1]
	adds r0, r1, #4
	adds r0, r6, r0
	movs r1, #0
	lsls r2, r2, #0x14
	bl FUN_0200964C
	ldr r7, _0223BAD0 @ =0x00000D24
	movs r4, #0
	adds r5, r6, #0
_0223BA20:
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0x44
	bl FUN_02009714
	str r0, [r5, r7]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _0223BA20
	movs r0, #0
	str r0, [sp]
	movs r3, #1
	str r3, [sp, #4]
	movs r0, #0x44
	str r0, [sp, #8]
	ldr r0, _0223BAD0 @ =0x00000D24
	ldr r1, [sp, #0x14]
	ldr r0, [r6, r0]
	movs r2, #0x23
	bl FUN_02009A4C
	ldr r1, _0223BAD4 @ =0x00000D34
	movs r3, #0
	str r0, [r6, r1]
	str r3, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	movs r0, #0x44
	subs r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	movs r2, #9
	bl FUN_02009B04
	ldr r1, _0223BAD8 @ =0x00000D38
	movs r2, #0x24
	str r0, [r6, r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x44
	subs r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	movs r3, #1
	bl FUN_02009BC4
	ldr r1, _0223BADC @ =0x00000D3C
	movs r2, #0x25
	str r0, [r6, r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x44
	subs r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	movs r3, #1
	bl FUN_02009BC4
	movs r1, #0x35
	lsls r1, r1, #6
	str r0, [r6, r1]
	subs r1, #0xc
	ldr r0, [r6, r1]
	bl FUN_0200A328
	ldr r0, _0223BAD8 @ =0x00000D38
	ldr r0, [r6, r0]
	bl FUN_0200A5C8
	ldr r0, [sp, #0x14]
	bl FUN_02006CA8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223BAC8: .4byte 0x00000BFC
_0223BACC: .4byte 0x00000BF8
_0223BAD0: .4byte 0x00000D24
_0223BAD4: .4byte 0x00000D34
_0223BAD8: .4byte 0x00000D38
_0223BADC: .4byte 0x00000D3C
	thumb_func_end ov96_0223B9D0

	thumb_func_start ov96_0223BAE0
ov96_0223BAE0: @ 0x0223BAE0
	push {r3, r4}
	ldr r4, _0223BB08 @ =0x00000BF8
	ldr r1, [r1, r4]
	str r1, [r0]
	str r2, [r0, #4]
	movs r2, #0
	movs r1, #1
	str r2, [r0, #0x10]
	lsls r1, r1, #0xc
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	strh r2, [r0, #0x20]
	movs r1, #1
	str r1, [r0, #0x24]
	str r3, [r0, #0x28]
	movs r1, #0x44
	str r1, [r0, #0x2c]
	pop {r3, r4}
	bx lr
	.align 2, 0
_0223BB08: .4byte 0x00000BF8
	thumb_func_end ov96_0223BAE0

	thumb_func_start ov96_0223BB0C
ov96_0223BB0C: @ 0x0223BB0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	movs r1, #0
	adds r5, r0, #0
	str r1, [sp]
	subs r0, r1, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, _0223BBBC @ =0x00000D24
	str r1, [sp, #0x10]
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
	adds r2, #0x40
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	adds r0, r5, r2
	adds r2, r1, #0
	str r1, [sp, #0x28]
	bl FUN_020093B4
	ldr r2, _0223BBC0 @ =0x00000D64
	add r0, sp, #0x2c
	adds r1, r5, #0
	adds r2, r5, r2
	movs r3, #1
	bl ov96_0223BAE0
	movs r7, #0xdd
	ldr r4, _0223BBC4 @ =0x0223DA80
	movs r6, #0
	lsls r7, r7, #4
_0223BB62:
	ldrh r0, [r4]
	lsls r0, r0, #0xc
	str r0, [sp, #0x34]
	ldrh r0, [r4, #2]
	lsls r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_02021AA0
	movs r1, #0xdd
	lsls r1, r1, #4
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0xdd
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r1, r6, #0
	bl FUN_02021D6C
	ldr r0, [r5, r7]
	movs r1, #0
	bl FUN_02021CAC
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, r5, #4
	cmp r6, #2
	blt _0223BB62
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	bl FUN_02039734
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_0223BBBC: .4byte 0x00000D24
_0223BBC0: .4byte 0x00000D64
_0223BBC4: .4byte 0x0223DA80
	thumb_func_end ov96_0223BB0C

	thumb_func_start ov96_0223BBC8
ov96_0223BBC8: @ 0x0223BBC8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r5, _0223BBF8 @ =0x0223DA78
	add r4, sp, #4
	ldrh r6, [r5]
	add r3, sp, #4
	strh r6, [r4]
	ldrh r6, [r5, #2]
	strh r6, [r4, #2]
	ldrh r6, [r5, #4]
	ldrh r5, [r5, #6]
	strh r6, [r4, #4]
	strh r5, [r4, #6]
	strb r1, [r4, #2]
	strh r2, [r4, #6]
	movs r1, #0x44
	str r1, [sp]
	adds r1, r3, #0
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_02002100
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0223BBF8: .4byte 0x0223DA78
	thumb_func_end ov96_0223BBC8

	thumb_func_start ov96_0223BBFC
ov96_0223BBFC: @ 0x0223BBFC
	str r1, [r0, #0x1c]
	str r2, [r0, #0x20]
	bx lr
	.align 2, 0
	thumb_func_end ov96_0223BBFC

	thumb_func_start ov96_0223BC04
ov96_0223BC04: @ 0x0223BC04
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	blx FUN_020C3D98
	adds r6, r0, #0
	ldr r0, _0223BC28 @ =0x0223DEEC
	adds r1, r5, #0
	ldr r0, [r0, #4]
	adds r2, r4, #0
	blx FUN_020A5448
	adds r4, r0, #0
	adds r0, r6, #0
	blx FUN_020C3DAC
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223BC28: .4byte 0x0223DEEC
	thumb_func_end ov96_0223BC04

	thumb_func_start ov96_0223BC2C
ov96_0223BC2C: @ 0x0223BC2C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	beq _0223BC48
	blx FUN_020C3D98
	adds r4, r0, #0
	ldr r0, _0223BC4C @ =0x0223DEEC
	adds r1, r5, #0
	ldr r0, [r0, #4]
	blx FUN_020A55D8
	adds r0, r4, #0
	blx FUN_020C3DAC
_0223BC48:
	pop {r3, r4, r5, pc}
	nop
_0223BC4C: .4byte 0x0223DEEC
	thumb_func_end ov96_0223BC2C

	thumb_func_start ov96_0223BC50
ov96_0223BC50: @ 0x0223BC50
	push {r3, lr}
	blx FUN_021D7EAC
	movs r1, #3
	subs r0, r1, r0
	pop {r3, pc}
	thumb_func_end ov96_0223BC50

	thumb_func_start ov96_0223BC5C
ov96_0223BC5C: @ 0x0223BC5C
	str r1, [r0, #0x14]
	str r2, [r0, #0x18]
	bx lr
	.align 2, 0
	thumb_func_end ov96_0223BC5C

	thumb_func_start ov96_0223BC64
ov96_0223BC64: @ 0x0223BC64
	push {r4, lr}
	adds r4, r0, #0
	bl ov96_0223B960
	bl ov96_0223B9A0
	adds r0, r4, #0
	bl ov96_0223B9D0
	adds r0, r4, #0
	bl ov96_0223BB0C
	ldr r0, _0223BC88 @ =ov96_0223B940
	adds r1, r4, #0
	bl FUN_02017798
	pop {r4, pc}
	nop
_0223BC88: .4byte ov96_0223B940
	thumb_func_end ov96_0223BC64

	thumb_func_start ov96_0223BC8C
ov96_0223BC8C: @ 0x0223BC8C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _0223BCD0 @ =0x00000D34
	ldr r0, [r6, r0]
	bl FUN_0200A4E4
	ldr r0, _0223BCD4 @ =0x00000D38
	ldr r0, [r6, r0]
	bl FUN_0200A6DC
	ldr r7, _0223BCD8 @ =0x00000D24
	movs r4, #0
	adds r5, r6, #0
_0223BCA6:
	ldr r0, [r5, r7]
	bl FUN_02009754
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _0223BCA6
	ldr r0, _0223BCDC @ =0x00000BF8
	ldr r0, [r6, r0]
	bl FUN_02021964
	ldr r0, _0223BCDC @ =0x00000BF8
	movs r1, #0
	str r1, [r6, r0]
	bl FUN_0200A878
	bl FUN_0201E958
	bl FUN_0201F8B4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223BCD0: .4byte 0x00000D34
_0223BCD4: .4byte 0x00000D38
_0223BCD8: .4byte 0x00000D24
_0223BCDC: .4byte 0x00000BF8
	thumb_func_end ov96_0223BC8C

	thumb_func_start ov96_0223BCE0
ov96_0223BCE0: @ 0x0223BCE0
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl ov96_0223C358
	movs r0, #8
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x44
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r4, #4]
	bl ov96_0223BE38
	adds r0, r4, #0
	bl ov96_0223BF40
	adds r0, r4, #0
	bl ov96_0223C1FC
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF74
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	bl FUN_02038438
	adds r0, r4, #0
	bl ov96_0223D948
	ldr r0, [r4]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_0202D2C0
	adds r1, r4, #0
	adds r1, #0x90
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x90
	ldr r1, [r0]
	adds r0, r4, #0
	adds r0, #0x94
	str r1, [r0]
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x9c
	str r1, [r0]
	ldr r0, _0223BDB0 @ =0x00000F0C
	movs r1, #0
	str r1, [r4, r0]
	blx FUN_021D7A8C
	cmp r0, #0
	bne _0223BDA4
	ldr r0, [r4]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _0223BD9E
	ldr r0, _0223BDB4 @ =0x00000F0F
	ldr r1, _0223BDB8 @ =0x00000BD8
	str r0, [sp]
	movs r2, #1
	ldr r1, [r4, r1]
	adds r0, r4, #0
	adds r3, r2, #0
	bl ov96_0223D814
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #2
	bl ov96_0223BBFC
	adds r0, r4, #0
	bl ov96_0223D978
	b _0223BDA8
_0223BD9E:
	movs r0, #0
	str r0, [r4, #0x1c]
	b _0223BDA8
_0223BDA4:
	movs r0, #0x33
	str r0, [r4, #0x1c]
_0223BDA8:
	movs r0, #2
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0223BDB0: .4byte 0x00000F0C
_0223BDB4: .4byte 0x00000F0F
_0223BDB8: .4byte 0x00000BD8
	thumb_func_end ov96_0223BCE0

	thumb_func_start ov96_0223BDBC
ov96_0223BDBC: @ 0x0223BDBC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov96_0223BC50
	bl FUN_020397B0
	ldr r4, [r5, #0x1c]
	ldr r1, _0223BDE8 @ =0x0223DCE0
	lsls r2, r4, #2
	ldr r1, [r1, r2]
	adds r0, r5, #0
	blx r1
	ldr r1, [r5, #0x1c]
	cmp r4, r1
	beq _0223BDE6
	movs r1, #0xf9
	movs r2, #0
	lsls r1, r1, #4
	strh r2, [r5, r1]
	adds r1, r1, #2
	strh r2, [r5, r1]
_0223BDE6:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223BDE8: .4byte 0x0223DCE0
	thumb_func_end ov96_0223BDBC

	thumb_func_start ov96_0223BDEC
ov96_0223BDEC: @ 0x0223BDEC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223BE30 @ =0x00000F98
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223BE06
	bl FUN_0200DA58
	ldr r0, _0223BE30 @ =0x00000F98
	movs r1, #0
	str r1, [r4, r0]
	adds r0, r0, #4
	str r1, [r4, r0]
_0223BE06:
	adds r0, r4, #0
	bl ov96_0223C3B0
	adds r0, r4, #0
	bl ov96_0223C314
	ldr r0, [r4, #4]
	bl ov96_0223BF1C
	ldr r0, _0223BE34 @ =0x00000F9C
	movs r1, #0
	str r1, [r4, r0]
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x10]
	cmp r0, #0
	bne _0223BE2A
	movs r0, #5
	pop {r4, pc}
_0223BE2A:
	movs r0, #1
	pop {r4, pc}
	nop
_0223BE30: .4byte 0x00000F98
_0223BE34: .4byte 0x00000F9C
	thumb_func_end ov96_0223BDEC

	thumb_func_start ov96_0223BE38
ov96_0223BE38: @ 0x0223BE38
	push {r3, r4, r5, lr}
	sub sp, #0x70
	ldr r5, _0223BF0C @ =0x0223DB08
	adds r4, r0, #0
	ldm r5!, {r0, r1}
	add r3, sp, #0x54
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
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02019EBC
	ldr r5, _0223BF10 @ =0x0223DAEC
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
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF0C
	ldr r5, _0223BF14 @ =0x0223DB24
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
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF74
	adds r0, r4, #0
	movs r1, #4
	bl FUN_02019EBC
	ldr r5, _0223BF18 @ =0x0223DAD0
	add r3, sp, #0
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
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #0
	movs r1, #0x20
	adds r2, r0, #0
	movs r3, #0x44
	bl FUN_02019690
	movs r0, #4
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x44
	bl FUN_02019690
	add sp, #0x70
	pop {r3, r4, r5, pc}
	nop
_0223BF0C: .4byte 0x0223DB08
_0223BF10: .4byte 0x0223DAEC
_0223BF14: .4byte 0x0223DB24
_0223BF18: .4byte 0x0223DAD0
	thumb_func_end ov96_0223BE38

	thumb_func_start ov96_0223BF1C
ov96_0223BF1C: @ 0x0223BF1C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #5
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #4
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02019044
	pop {r4, pc}
	thumb_func_end ov96_0223BF1C

	thumb_func_start ov96_0223BF40
ov96_0223BF40: @ 0x0223BF40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #0x10]
	ldr r4, [r0, #4]
	movs r0, #0x5c
	movs r1, #0x44
	bl FUN_02006C24
	movs r2, #0
	str r2, [sp]
	movs r1, #0x44
	str r1, [sp, #4]
	movs r1, #3
	adds r3, r2, #0
	str r0, [sp, #0x2c]
	bl FUN_02007130
	movs r3, #0
	str r3, [sp]
	movs r0, #0x44
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	movs r1, #3
	movs r2, #4
	bl FUN_02007130
	movs r1, #0x1a
	movs r0, #0
	lsls r1, r1, #4
	movs r2, #0x44
	bl FUN_02002E98
	movs r1, #0x1a
	movs r0, #4
	lsls r1, r1, #4
	movs r2, #0x44
	bl FUN_02002E98
	ldr r0, [sp, #0x10]
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	bl FUN_02027B50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x44
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xe
	bl FUN_0200DD0C
	movs r1, #0
	str r1, [sp]
	movs r0, #0x44
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_0200DAA4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x44
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	movs r1, #2
	adds r2, r4, #0
	movs r3, #1
	bl FUN_020070E8
	movs r1, #0
	movs r0, #6
	str r1, [sp]
	lsls r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0x44
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	movs r1, #5
	adds r2, r4, #0
	movs r3, #1
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x44
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	movs r1, #0xa
	adds r2, r4, #0
	movs r3, #5
	bl FUN_020070E8
	movs r1, #0
	movs r0, #6
	str r1, [sp]
	lsls r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0x44
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	movs r1, #0xb
	adds r2, r4, #0
	movs r3, #5
	bl FUN_0200710C
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0201975C
	movs r0, #4
	movs r1, #0
	bl FUN_0201975C
	movs r2, #0xcb
	ldr r1, _0223C158 @ =0x00000F98
	ldr r0, [sp, #0x10]
	lsls r2, r2, #2
	adds r0, r0, r1
	movs r1, #0
	blx FUN_020C4CF4
	ldr r0, [sp, #0x2c]
	movs r1, #4
	add r2, sp, #0x38
	movs r3, #0x44
	bl FUN_020071EC
	adds r4, r0, #0
	ldr r0, [sp, #0x38]
	movs r2, #0xfa
	ldr r1, [sp, #0x10]
	lsls r2, r2, #4
	adds r1, r1, r2
	ldr r0, [r0, #0xc]
	movs r2, #0x80
	blx FUN_020C4B18
	ldr r0, [sp, #0x38]
	ldr r2, _0223C15C @ =0x00001020
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0xc]
	adds r1, r1, r2
	movs r2, #0x80
	blx FUN_020C4B18
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r1, _0223C15C @ =0x00001020
	ldr r0, [sp, #0x10]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	subs r1, #0x80
	adds r0, r0, r1
	str r0, [sp, #0x14]
_0223C092:
	movs r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	adds r0, r0, #1
	lsls r1, r0, #5
	ldr r0, [sp, #0x10]
	adds r0, r0, r1
	str r0, [sp, #0x30]
_0223C0A4:
	ldr r0, [sp, #0x24]
	cmp r0, #0x15
	blt _0223C0AE
	bl FUN_02022974
_0223C0AE:
	ldr r0, [sp, #0x30]
	movs r7, #1
	adds r4, r0, #2
	ldr r0, [sp, #0x18]
	adds r6, r0, #2
	ldr r0, [sp, #0x14]
	adds r5, r0, #2
	ldr r0, [sp, #0x20]
	asrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x34]
_0223C0C6:
	movs r0, #0xfa
	lsls r0, r0, #4
	ldrh r0, [r4, r0]
	ldr r3, [sp, #0x34]
	adds r1, r6, #0
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #1
	bl FUN_0200393C
	adds r7, r7, #1
	adds r4, r4, #2
	adds r6, r6, #2
	adds r5, r5, #2
	cmp r7, #0x10
	blt _0223C0C6
	ldr r0, [sp, #0x18]
	adds r0, #0x20
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	adds r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	beq _0223C112
	movs r0, #3
	ldr r1, [sp, #0x20]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #1
	lsls r0, r0, #0xc
	str r1, [sp, #0x20]
	cmp r1, r0
	blt _0223C0A4
	str r0, [sp, #0x20]
	movs r0, #1
	str r0, [sp, #0x1c]
	b _0223C0A4
_0223C112:
	ldr r0, [sp, #0x14]
	adds r0, #0x20
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x28]
	adds r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #3
	blt _0223C092
	ldr r1, _0223C15C @ =0x00001020
	ldr r0, [sp, #0x10]
	adds r0, r0, r1
	movs r1, #0x2a
	lsls r1, r1, #4
	blx FUN_020C2C54
	ldr r1, _0223C160 @ =0x00000F9C
	ldr r0, [sp, #0x10]
	movs r2, #1
	str r2, [r0, r1]
	subs r2, r1, #4
	ldr r1, [sp, #0x10]
	ldr r0, _0223C164 @ =ov96_0223C168
	adds r1, r1, r2
	movs r2, #0x14
	bl FUN_0200DA04
	ldr r2, _0223C158 @ =0x00000F98
	ldr r1, [sp, #0x10]
	str r0, [r1, r2]
	ldr r0, [sp, #0x2c]
	bl FUN_02006CA8
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_0223C158: .4byte 0x00000F98
_0223C15C: .4byte 0x00001020
_0223C160: .4byte 0x00000F9C
_0223C164: .4byte ov96_0223C168
	thumb_func_end ov96_0223BF40

	thumb_func_start ov96_0223C168
ov96_0223C168: @ 0x0223C168
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0223C1F0
	ldr r0, _0223C1F4 @ =0x0000032B
	movs r1, #1
	ldrb r2, [r4, r0]
	eors r2, r1
	strb r2, [r4, r0]
	ldrb r2, [r4, r0]
	tst r1, r2
	bne _0223C1F0
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
	ldr r0, _0223C1F8 @ =0x0000032A
	ldrsb r1, [r4, r0]
	cmp r1, #0
	bne _0223C1D4
	subs r1, r0, #2
	ldrsh r1, [r4, r1]
	adds r2, r1, #1
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0x15
	blt _0223C1F0
	movs r2, #0x13
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r2, [r4, r0]
	movs r1, #1
	eors r1, r2
	strb r1, [r4, r0]
	pop {r4, pc}
_0223C1D4:
	subs r1, r0, #2
	ldrsh r1, [r4, r1]
	subs r2, r1, #1
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0
	bge _0223C1F0
	movs r2, #1
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r1, [r4, r0]
	eors r1, r2
	strb r1, [r4, r0]
_0223C1F0:
	pop {r4, pc}
	nop
_0223C1F4: .4byte 0x0000032B
_0223C1F8: .4byte 0x0000032A
	thumb_func_end ov96_0223C168

	thumb_func_start ov96_0223C1FC
ov96_0223C1FC: @ 0x0223C1FC
	push {r3, r4, lr}
	sub sp, #0x14
	movs r3, #4
	adds r4, r0, #0
	str r3, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0xa4
	ldr r1, _0223C2F8 @ =0x00000E18
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	adds r1, r4, r1
	movs r2, #0
	bl FUN_0201A7E8
	ldr r0, _0223C2F8 @ =0x00000E18
	movs r1, #0
	adds r0, r4, r0
	bl FUN_0201ADA4
	movs r0, #0xe
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x94
	ldr r1, _0223C2FC @ =0x00000DF8
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	adds r1, r4, r1
	movs r2, #0
	movs r3, #0x1a
	bl FUN_0201A7E8
	ldr r0, _0223C2FC @ =0x00000DF8
	movs r1, #0xf
	adds r0, r4, r0
	bl FUN_0201ADA4
	movs r0, #0xe
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x9c
	ldr r1, _0223C300 @ =0x00000DE8
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	adds r1, r4, r1
	movs r2, #0
	movs r3, #0x1a
	bl FUN_0201A7E8
	ldr r0, _0223C300 @ =0x00000DE8
	movs r1, #0xf
	adds r0, r4, r0
	bl FUN_0201ADA4
	movs r0, #1
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x85
	lsls r0, r0, #2
	ldr r1, _0223C304 @ =0x00000E08
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	adds r1, r4, r1
	movs r2, #0
	movs r3, #4
	bl FUN_0201A7E8
	ldr r0, _0223C304 @ =0x00000E08
	movs r1, #0
	adds r0, r4, r0
	bl FUN_0201ADA4
	movs r3, #1
	ldr r0, _0223C308 @ =0x000F0E00
	str r3, [sp]
	str r0, [sp, #4]
	ldr r1, _0223C30C @ =0x00000BE4
	ldr r0, _0223C304 @ =0x00000E08
	ldr r1, [r4, r1]
	adds r0, r4, r0
	movs r2, #0
	bl ov96_0223D8A4
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x28
	ldr r1, _0223C310 @ =0x00000DD8
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	adds r1, r4, r1
	movs r2, #0
	movs r3, #2
	bl FUN_0201A7E8
	ldr r0, _0223C310 @ =0x00000DD8
	movs r1, #0xf
	adds r0, r4, r0
	bl FUN_0201ADA4
	add sp, #0x14
	pop {r3, r4, pc}
	.align 2, 0
_0223C2F8: .4byte 0x00000E18
_0223C2FC: .4byte 0x00000DF8
_0223C300: .4byte 0x00000DE8
_0223C304: .4byte 0x00000E08
_0223C308: .4byte 0x000F0E00
_0223C30C: .4byte 0x00000BE4
_0223C310: .4byte 0x00000DD8
	thumb_func_end ov96_0223C1FC

	thumb_func_start ov96_0223C314
ov96_0223C314: @ 0x0223C314
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223C344 @ =0x00000DD8
	adds r0, r4, r0
	bl FUN_0201A8FC
	ldr r0, _0223C348 @ =0x00000E08
	adds r0, r4, r0
	bl FUN_0201A8FC
	ldr r0, _0223C34C @ =0x00000DE8
	adds r0, r4, r0
	bl FUN_0201A8FC
	ldr r0, _0223C350 @ =0x00000DF8
	adds r0, r4, r0
	bl FUN_0201A8FC
	ldr r0, _0223C354 @ =0x00000E18
	adds r0, r4, r0
	bl FUN_0201A8FC
	pop {r4, pc}
	nop
_0223C344: .4byte 0x00000DD8
_0223C348: .4byte 0x00000E08
_0223C34C: .4byte 0x00000DE8
_0223C350: .4byte 0x00000DF8
_0223C354: .4byte 0x00000E18
	thumb_func_end ov96_0223C314

	thumb_func_start ov96_0223C358
ov96_0223C358: @ 0x0223C358
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xb4
	movs r1, #0x44
	bl FUN_02023790
	movs r1, #0xbe
	lsls r1, r1, #4
	str r0, [r4, r1]
	movs r0, #4
	movs r1, #0x44
	bl FUN_02023790
	ldr r1, _0223C3A4 @ =0x00000BE8
	str r0, [r4, r1]
	movs r0, #3
	movs r1, #0x44
	bl FUN_02023790
	ldr r1, _0223C3A8 @ =0x00000BEC
	str r0, [r4, r1]
	subs r1, #0x18
	ldr r0, [r4, r1]
	movs r1, #0xa
	bl FUN_0200B1EC
	ldr r1, _0223C3AC @ =0x00000BE4
	str r0, [r4, r1]
	movs r0, #1
	lsls r0, r0, #8
	movs r1, #0x44
	bl FUN_02023790
	movs r1, #0xbf
	lsls r1, r1, #4
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_0223C3A4: .4byte 0x00000BE8
_0223C3A8: .4byte 0x00000BEC
_0223C3AC: .4byte 0x00000BE4
	thumb_func_end ov96_0223C358

	thumb_func_start ov96_0223C3B0
ov96_0223C3B0: @ 0x0223C3B0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xbf
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_020237BC
	ldr r0, _0223C3E4 @ =0x00000BE4
	ldr r0, [r4, r0]
	bl FUN_020237BC
	ldr r0, _0223C3E8 @ =0x00000BEC
	ldr r0, [r4, r0]
	bl FUN_020237BC
	ldr r0, _0223C3EC @ =0x00000BE8
	ldr r0, [r4, r0]
	bl FUN_020237BC
	movs r0, #0xbe
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_020237BC
	pop {r4, pc}
	nop
_0223C3E4: .4byte 0x00000BE4
_0223C3E8: .4byte 0x00000BEC
_0223C3EC: .4byte 0x00000BE8
	thumb_func_end ov96_0223C3B0

	thumb_func_start ov96_0223C3F0
ov96_0223C3F0: @ 0x0223C3F0
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223C418 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _0223C41C @ =0x00000BDC
	movs r2, #0x11
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov96_0223D814
	adds r0, r4, #0
	movs r1, #0x30
	movs r2, #1
	bl ov96_0223BBFC
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223C418: .4byte 0x00000F0F
_0223C41C: .4byte 0x00000BDC
	thumb_func_end ov96_0223C3F0

	thumb_func_start ov96_0223C420
ov96_0223C420: @ 0x0223C420
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0223C47C @ =0x00000F08
	movs r1, #0x44
	ldr r0, [r4, r0]
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _0223C474
	subs r1, r1, #1
	cmp r0, r1
	bne _0223C452
	bl FUN_0203848C
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov96_0223BC5C
	movs r0, #0x2e
	str r0, [r4, #0x1c]
	b _0223C474
_0223C452:
	ldr r0, _0223C480 @ =0x00000F0F
	ldr r1, _0223C484 @ =0x00000BD8
	str r0, [sp]
	movs r2, #1
	ldr r1, [r4, r1]
	adds r0, r4, #0
	adds r3, r2, #0
	bl ov96_0223D814
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #2
	bl ov96_0223BBFC
	adds r0, r4, #0
	bl ov96_0223D978
_0223C474:
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223C47C: .4byte 0x00000F08
_0223C480: .4byte 0x00000F0F
_0223C484: .4byte 0x00000BD8
	thumb_func_end ov96_0223C420

	thumb_func_start ov96_0223C488
ov96_0223C488: @ 0x0223C488
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223C4B0 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _0223C4B4 @ =0x00000BD8
	movs r2, #0xc
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov96_0223D814
	adds r0, r4, #0
	movs r1, #0x30
	movs r2, #0x34
	bl ov96_0223BBFC
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223C4B0: .4byte 0x00000F0F
_0223C4B4: .4byte 0x00000BD8
	thumb_func_end ov96_0223C488

	thumb_func_start ov96_0223C4B8
ov96_0223C4B8: @ 0x0223C4B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223C50C @ =0x00000F08
	movs r1, #0x44
	ldr r0, [r4, r0]
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _0223C508
	subs r1, r1, #1
	cmp r0, r1
	bne _0223C4E8
	blx FUN_021D7A8C
	cmp r0, #0
	bne _0223C4E2
	movs r0, #0
	str r0, [r4, #0x1c]
	b _0223C508
_0223C4E2:
	movs r0, #0x29
	str r0, [r4, #0x1c]
	b _0223C508
_0223C4E8:
	blx FUN_021D7A8C
	cmp r0, #0
	bne _0223C4FE
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov96_0223BC5C
	movs r0, #0x2e
	b _0223C500
_0223C4FE:
	movs r0, #0x29
_0223C500:
	str r0, [r4, #0x1c]
	ldr r0, [r4]
	movs r1, #1
	str r1, [r0, #0x20]
_0223C508:
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
_0223C50C: .4byte 0x00000F08
	thumb_func_end ov96_0223C4B8

	thumb_func_start ov96_0223C510
ov96_0223C510: @ 0x0223C510
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	movs r1, #2
	movs r2, #1
	movs r3, #0x14
	blx FUN_021D78C8
	movs r0, #2
	blx FUN_021D792C
	blx FUN_021D797C
	movs r0, #3
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end ov96_0223C510

	thumb_func_start ov96_0223C530
ov96_0223C530: @ 0x0223C530
	push {r3, r4, lr}
	sub sp, #0x44
	adds r4, r0, #0
	blx FUN_021D7AE4
	blx FUN_021D7A8C
	cmp r0, #0
	beq _0223C5B0
	blx FUN_021D7BFC
	cmp r0, #8
	bhi _0223C58E
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223C556: @ jump table
	.2byte _0223C58E - _0223C556 - 2 @ case 0
	.2byte _0223C58E - _0223C556 - 2 @ case 1
	.2byte _0223C58E - _0223C556 - 2 @ case 2
	.2byte _0223C58E - _0223C556 - 2 @ case 3
	.2byte _0223C5A6 - _0223C556 - 2 @ case 4
	.2byte _0223C58E - _0223C556 - 2 @ case 5
	.2byte _0223C58E - _0223C556 - 2 @ case 6
	.2byte _0223C568 - _0223C556 - 2 @ case 7
	.2byte _0223C58E - _0223C556 - 2 @ case 8
_0223C568:
	add r0, sp, #4
	blx FUN_021D75D4
	movs r1, #0xf1
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldr r2, [sp, #4]
	adds r0, r1, #4
	str r2, [r4, r0]
	blx FUN_021D76E8
	blx FUN_021D7DB0
	adds r0, r4, #0
	bl ov96_0223D99C
	movs r0, #0x37
	str r0, [r4, #0x1c]
	b _0223C5B0
_0223C58E:
	add r0, sp, #0
	blx FUN_021D75D4
	adds r0, r4, #0
	bl ov96_0223D99C
	movs r1, #0x35
	str r1, [r4, #0x1c]
	ldr r0, _0223C5B8 @ =0x00000F1C
	subs r1, #0x37
	str r1, [r4, r0]
	b _0223C5B0
_0223C5A6:
	add r0, sp, #8
	blx FUN_021D7EB8
	movs r0, #4
	str r0, [r4, #0x1c]
_0223C5B0:
	movs r0, #3
	add sp, #0x44
	pop {r3, r4, pc}
	nop
_0223C5B8: .4byte 0x00000F1C
	thumb_func_end ov96_0223C530

	thumb_func_start ov96_0223C5BC
ov96_0223C5BC: @ 0x0223C5BC
	push {r4, lr}
	adds r4, r0, #0
	blx FUN_021D81DC
	movs r0, #5
	str r0, [r4, #0x1c]
	movs r0, #3
	pop {r4, pc}
	thumb_func_end ov96_0223C5BC

	thumb_func_start ov96_0223C5CC
ov96_0223C5CC: @ 0x0223C5CC
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	blx FUN_021D82A0
	cmp r0, #5
	bhi _0223C672
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223C5E6: @ jump table
	.2byte _0223C5F8 - _0223C5E6 - 2 @ case 0
	.2byte _0223C672 - _0223C5E6 - 2 @ case 1
	.2byte _0223C672 - _0223C5E6 - 2 @ case 2
	.2byte _0223C5F2 - _0223C5E6 - 2 @ case 3
	.2byte _0223C5F8 - _0223C5E6 - 2 @ case 4
	.2byte _0223C5F8 - _0223C5E6 - 2 @ case 5
_0223C5F2:
	movs r0, #6
	str r0, [r4, #0x1c]
	b _0223C672
_0223C5F8:
	adds r0, r4, #0
	bl ov96_0223D99C
	add r0, sp, #4
	add r1, sp, #0
	blx FUN_021D75F4
	movs r1, #0xf1
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldr r2, [sp, #4]
	adds r0, r1, #4
	str r2, [r4, r0]
	blx FUN_021D76E8
	blx FUN_021D7DB0
	movs r0, #0x37
	str r0, [r4, #0x1c]
	ldr r1, [sp]
	cmp r1, #7
	bhi _0223C660
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223C630: @ jump table
	.2byte _0223C660 - _0223C630 - 2 @ case 0
	.2byte _0223C640 - _0223C630 - 2 @ case 1
	.2byte _0223C640 - _0223C630 - 2 @ case 2
	.2byte _0223C652 - _0223C630 - 2 @ case 3
	.2byte _0223C644 - _0223C630 - 2 @ case 4
	.2byte _0223C65C - _0223C630 - 2 @ case 5
	.2byte _0223C64E - _0223C630 - 2 @ case 6
	.2byte _0223C65C - _0223C630 - 2 @ case 7
_0223C640:
	str r0, [r4, #0x1c]
	b _0223C660
_0223C644:
	blx FUN_021E55B0
	movs r0, #0x37
	str r0, [r4, #0x1c]
	b _0223C660
_0223C64E:
	str r0, [r4, #0x1c]
	b _0223C660
_0223C652:
	blx FUN_021D8E8C
	movs r0, #0x37
	str r0, [r4, #0x1c]
	b _0223C660
_0223C65C:
	bl FUN_02038A0C
_0223C660:
	ldr r1, [sp, #4]
	ldr r0, _0223C678 @ =0xFFFFB1E0
	cmp r1, r0
	bge _0223C672
	ldr r0, _0223C67C @ =0xFFFF8AD1
	cmp r1, r0
	blt _0223C672
	movs r0, #0x37
	str r0, [r4, #0x1c]
_0223C672:
	movs r0, #3
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_0223C678: .4byte 0xFFFFB1E0
_0223C67C: .4byte 0xFFFF8AD1
	thumb_func_end ov96_0223C5CC

	thumb_func_start ov96_0223C680
ov96_0223C680: @ 0x0223C680
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #8]
	bl FUN_02025D74
	cmp r0, #0
	bne _0223C69A
	ldr r1, [r5]
	ldr r0, [r1, #8]
	ldr r1, [r1, #0x1c]
	bl FUN_02025D78
_0223C69A:
	ldr r0, [r5]
	ldr r0, [r0, #8]
	bl FUN_02025D74
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #0x14]
	blx FUN_020A471C
	adds r3, r0, #0
	adds r2, r1, #0
	adds r0, r4, #0
	adds r1, r3, #0
	bl ov96_0223B140
	movs r0, #7
	str r0, [r5, #0x1c]
	movs r0, #3
	pop {r3, r4, r5, pc}
	thumb_func_end ov96_0223C680

	thumb_func_start ov96_0223C6C0
ov96_0223C6C0: @ 0x0223C6C0
	push {r4, lr}
	adds r4, r0, #0
	bl ov96_0223B530
	movs r0, #8
	str r0, [r4, #0x1c]
	ldr r0, _0223C6D8 @ =0x00000F94
	movs r1, #0
	str r1, [r4, r0]
	movs r0, #3
	pop {r4, pc}
	nop
_0223C6D8: .4byte 0x00000F94
	thumb_func_end ov96_0223C6C0

	thumb_func_start ov96_0223C6DC
ov96_0223C6DC: @ 0x0223C6DC
	push {r4, lr}
	adds r4, r0, #0
	bl ov96_0223B3D4
	cmp r0, #0
	beq _0223C794
	bl ov96_0223B3F4
	ldr r1, _0223C7B0 @ =0x00000F94
	movs r2, #0
	str r2, [r4, r1]
	adds r2, r0, #7
	cmp r2, #9
	bhi _0223C788
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0223C704: @ jump table
	.2byte _0223C768 - _0223C704 - 2 @ case 0
	.2byte _0223C778 - _0223C704 - 2 @ case 1
	.2byte _0223C788 - _0223C704 - 2 @ case 2
	.2byte _0223C768 - _0223C704 - 2 @ case 3
	.2byte _0223C788 - _0223C704 - 2 @ case 4
	.2byte _0223C778 - _0223C704 - 2 @ case 5
	.2byte _0223C758 - _0223C704 - 2 @ case 6
	.2byte _0223C718 - _0223C704 - 2 @ case 7
	.2byte _0223C748 - _0223C704 - 2 @ case 8
	.2byte _0223C758 - _0223C704 - 2 @ case 9
_0223C718:
	adds r0, r4, #0
	bl ov96_0223D99C
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0223C730
	cmp r0, #1
	beq _0223C73C
	cmp r0, #2
	beq _0223C742
	b _0223C7AA
_0223C730:
	adds r0, r4, #0
	movs r1, #0xb
	movs r2, #0xd
	bl ov96_0223BBFC
	b _0223C7AA
_0223C73C:
	movs r0, #0x19
	str r0, [r4, #0x1c]
	b _0223C7AA
_0223C742:
	movs r0, #0x1d
	str r0, [r4, #0x1c]
	b _0223C7AA
_0223C748:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223C7AA
_0223C758:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223C7AA
_0223C768:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223C7AA
_0223C778:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223C7AA
_0223C788:
	adds r0, r4, #0
	bl ov96_0223D99C
	bl FUN_02038A0C
	b _0223C7AA
_0223C794:
	ldr r0, _0223C7B0 @ =0x00000F94
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	movs r0, #0xe1
	lsls r0, r0, #4
	cmp r1, r0
	bne _0223C7AA
	bl FUN_02038A0C
_0223C7AA:
	movs r0, #3
	pop {r4, pc}
	nop
_0223C7B0: .4byte 0x00000F94
	thumb_func_end ov96_0223C6DC

	thumb_func_start ov96_0223C7B4
ov96_0223C7B4: @ 0x0223C7B4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, _0223C7E0 @ =0x00000F24
	ldr r0, [r0, #0xc]
	adds r1, r4, r1
	bl FUN_02030E78
	ldr r1, _0223C7E0 @ =0x00000F24
	adds r0, r4, r1
	adds r1, #0x64
	adds r1, r4, r1
	bl ov96_0223B574
	movs r0, #0xa
	str r0, [r4, #0x1c]
	ldr r0, _0223C7E4 @ =0x00000F94
	movs r1, #0
	str r1, [r4, r0]
	movs r0, #3
	pop {r4, pc}
	nop
_0223C7E0: .4byte 0x00000F24
_0223C7E4: .4byte 0x00000F94
	thumb_func_end ov96_0223C7B4

	thumb_func_start ov96_0223C7E8
ov96_0223C7E8: @ 0x0223C7E8
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl ov96_0223B3D4
	cmp r0, #0
	bne _0223C7F6
	b _0223C8FE
_0223C7F6:
	bl ov96_0223B3F4
	adds r5, r0, #0
	ldr r0, _0223C918 @ =0x00000F94
	movs r1, #0
	str r1, [r4, r0]
	adds r1, r5, #7
	cmp r1, #9
	bhi _0223C8F2
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223C814: @ jump table
	.2byte _0223C8D2 - _0223C814 - 2 @ case 0
	.2byte _0223C8E2 - _0223C814 - 2 @ case 1
	.2byte _0223C8F2 - _0223C814 - 2 @ case 2
	.2byte _0223C8D2 - _0223C814 - 2 @ case 3
	.2byte _0223C8F2 - _0223C814 - 2 @ case 4
	.2byte _0223C8E2 - _0223C814 - 2 @ case 5
	.2byte _0223C8C2 - _0223C814 - 2 @ case 6
	.2byte _0223C828 - _0223C814 - 2 @ case 7
	.2byte _0223C8B2 - _0223C814 - 2 @ case 8
	.2byte _0223C8C2 - _0223C814 - 2 @ case 9
_0223C828:
	adds r0, r4, #0
	bl ov96_0223D99C
	ldr r0, _0223C91C @ =0x00000F88
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0223C840
	cmp r1, #1
	beq _0223C896
	cmp r1, #2
	beq _0223C896
	b _0223C8A6
_0223C840:
	adds r1, r0, #4
	ldr r1, [r4, r1]
	cmp r1, #3
	bhi _0223C914
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223C854: @ jump table
	.2byte _0223C85C - _0223C854 - 2 @ case 0
	.2byte _0223C886 - _0223C854 - 2 @ case 1
	.2byte _0223C886 - _0223C854 - 2 @ case 2
	.2byte _0223C886 - _0223C854 - 2 @ case 3
_0223C85C:
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0223C86E
	cmp r0, #1
	beq _0223C87A
	cmp r0, #2
	beq _0223C880
	b _0223C914
_0223C86E:
	adds r0, r4, #0
	movs r1, #0xb
	movs r2, #0xd
	bl ov96_0223BBFC
	b _0223C914
_0223C87A:
	movs r0, #0x19
	str r0, [r4, #0x1c]
	b _0223C914
_0223C880:
	movs r0, #0x1d
	str r0, [r4, #0x1c]
	b _0223C914
_0223C886:
	subs r0, #0x6c
	str r5, [r4, r0]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223C914
_0223C896:
	ldr r0, _0223C920 @ =0x00000F1C
	str r5, [r4, r0]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223C914
_0223C8A6:
	adds r0, r4, #0
	bl ov96_0223D99C
	bl FUN_02038A0C
	b _0223C914
_0223C8B2:
	subs r0, #0x78
	str r5, [r4, r0]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223C914
_0223C8C2:
	subs r0, #0x78
	str r5, [r4, r0]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223C914
_0223C8D2:
	subs r0, #0x78
	str r5, [r4, r0]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223C914
_0223C8E2:
	subs r0, #0x78
	str r5, [r4, r0]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223C914
_0223C8F2:
	adds r0, r4, #0
	bl ov96_0223D99C
	bl FUN_02038A0C
	b _0223C914
_0223C8FE:
	ldr r0, _0223C918 @ =0x00000F94
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	movs r0, #0xe1
	lsls r0, r0, #4
	cmp r1, r0
	bne _0223C914
	bl FUN_02038A0C
_0223C914:
	movs r0, #3
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223C918: .4byte 0x00000F94
_0223C91C: .4byte 0x00000F88
_0223C920: .4byte 0x00000F1C
	thumb_func_end ov96_0223C7E8

	thumb_func_start ov96_0223C924
ov96_0223C924: @ 0x0223C924
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x94
	ldr r0, [r0]
	bl ov96_0223B400
	movs r0, #0xc
	str r0, [r4, #0x1c]
	ldr r0, _0223C944 @ =0x00000F94
	movs r1, #0
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov96_0223D978
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
_0223C944: .4byte 0x00000F94
	thumb_func_end ov96_0223C924

	thumb_func_start ov96_0223C948
ov96_0223C948: @ 0x0223C948
	push {r4, lr}
	adds r4, r0, #0
	bl ov96_0223B3D4
	cmp r0, #0
	beq _0223C9DA
	bl ov96_0223B3F4
	ldr r1, _0223C9F4 @ =0x00000F94
	movs r2, #0
	str r2, [r4, r1]
	adds r2, r0, #7
	cmp r2, #6
	bhi _0223C9C4
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0223C970: @ jump table
	.2byte _0223C9A6 - _0223C970 - 2 @ case 0
	.2byte _0223C99C - _0223C970 - 2 @ case 1
	.2byte _0223C9B0 - _0223C970 - 2 @ case 2
	.2byte _0223C9A6 - _0223C970 - 2 @ case 3
	.2byte _0223C992 - _0223C970 - 2 @ case 4
	.2byte _0223C988 - _0223C970 - 2 @ case 5
	.2byte _0223C97E - _0223C970 - 2 @ case 6
_0223C97E:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	b _0223C9D2
_0223C988:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	b _0223C9D2
_0223C992:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	b _0223C9D2
_0223C99C:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	b _0223C9D2
_0223C9A6:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	b _0223C9D2
_0223C9B0:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	bl FUN_02038A0C
	b _0223C9D2
_0223C9C4:
	cmp r0, #0
	ble _0223C9D2
	adds r1, r4, #0
	adds r1, #0x98
	str r0, [r1]
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x1c]
_0223C9D2:
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223C9F0
_0223C9DA:
	ldr r0, _0223C9F4 @ =0x00000F94
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	movs r0, #0xe1
	lsls r0, r0, #4
	cmp r1, r0
	bne _0223C9F0
	bl FUN_02038A0C
_0223C9F0:
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
_0223C9F4: .4byte 0x00000F94
	thumb_func_end ov96_0223C948

	thumb_func_start ov96_0223C9F8
ov96_0223C9F8: @ 0x0223C9F8
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223CA20 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _0223CA24 @ =0x00000BD4
	movs r2, #0
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov96_0223D814
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #0xe
	bl ov96_0223BBFC
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223CA20: .4byte 0x00000F0F
_0223CA24: .4byte 0x00000BD4
	thumb_func_end ov96_0223C9F8

	thumb_func_start ov96_0223CA28
ov96_0223CA28: @ 0x0223CA28
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223CA68 @ =0x00000DF8
	movs r1, #0
	adds r0, r4, r0
	movs r2, #0x1f
	movs r3, #0xe
	bl FUN_0200DC48
	ldr r1, _0223CA6C @ =0x00000BE8
	adds r2, r4, #0
	ldr r0, _0223CA68 @ =0x00000DF8
	adds r2, #0x9c
	ldr r1, [r4, r1]
	ldr r2, [r2]
	adds r0, r4, r0
	movs r3, #3
	bl ov96_0223D90C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl ov96_0223D950
	ldr r0, _0223CA68 @ =0x00000DF8
	adds r0, r4, r0
	bl FUN_0201A954
	movs r0, #0xf
	str r0, [r4, #0x1c]
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
_0223CA68: .4byte 0x00000DF8
_0223CA6C: .4byte 0x00000BE8
	thumb_func_end ov96_0223CA28

	thumb_func_start ov96_0223CA70
ov96_0223CA70: @ 0x0223CA70
	push {r3, r4, lr}
	sub sp, #0x1c
	ldr r2, _0223CB6C @ =0x021BF67C
	movs r1, #0x40
	ldr r3, [r2, #0x4c]
	adds r4, r0, #0
	tst r1, r3
	beq _0223CABE
	adds r0, #0x9c
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x9c
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r1, [r0]
	adds r0, r4, #0
	adds r0, #0x98
	ldr r0, [r0]
	cmp r1, r0
	ble _0223CAA4
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x9c
	str r1, [r0]
_0223CAA4:
	ldr r0, _0223CB70 @ =0x00000DF8
	ldr r1, _0223CB74 @ =0x00000BE8
	adds r0, r4, r0
	ldr r1, [r4, r1]
	adds r4, #0x9c
	ldr r2, [r4]
	movs r3, #3
	bl ov96_0223D90C
	ldr r0, _0223CB78 @ =0x000005DC
	bl FUN_02005748
	b _0223CB64
_0223CABE:
	movs r1, #0x80
	tst r1, r3
	beq _0223CB00
	adds r0, #0x9c
	ldr r0, [r0]
	subs r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x9c
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	cmp r0, #1
	bge _0223CAE6
	adds r0, r4, #0
	adds r0, #0x98
	ldr r1, [r0]
	adds r0, r4, #0
	adds r0, #0x9c
	str r1, [r0]
_0223CAE6:
	ldr r0, _0223CB70 @ =0x00000DF8
	ldr r1, _0223CB74 @ =0x00000BE8
	adds r0, r4, r0
	ldr r1, [r4, r1]
	adds r4, #0x9c
	ldr r2, [r4]
	movs r3, #3
	bl ov96_0223D90C
	ldr r0, _0223CB78 @ =0x000005DC
	bl FUN_02005748
	b _0223CB64
_0223CB00:
	ldr r2, [r2, #0x48]
	movs r1, #1
	tst r1, r2
	beq _0223CB4C
	add r0, sp, #0
	add r1, sp, #0x10
	blx FUN_021D806C
	adds r1, r4, #0
	adds r2, r4, #0
	adds r1, #0x94
	adds r2, #0x9c
	ldr r0, [r4]
	ldr r1, [r1]
	ldr r2, [r2]
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	ldr r0, [r0, #4]
	lsrs r1, r1, #0x18
	lsrs r2, r2, #0x18
	add r3, sp, #0
	bl FUN_0202D558
	cmp r0, #0
	beq _0223CB36
	movs r0, #0x14
	b _0223CB38
_0223CB36:
	movs r0, #0x10
_0223CB38:
	movs r1, #0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov96_0223D950
	ldr r0, _0223CB78 @ =0x000005DC
	bl FUN_02005748
	b _0223CB64
_0223CB4C:
	movs r1, #2
	tst r1, r2
	beq _0223CB64
	movs r1, #0
	adds r2, r1, #0
	bl ov96_0223D950
	movs r0, #0x15
	str r0, [r4, #0x1c]
	ldr r0, _0223CB78 @ =0x000005DC
	bl FUN_02005748
_0223CB64:
	movs r0, #3
	add sp, #0x1c
	pop {r3, r4, pc}
	nop
_0223CB6C: .4byte 0x021BF67C
_0223CB70: .4byte 0x00000DF8
_0223CB74: .4byte 0x00000BE8
_0223CB78: .4byte 0x000005DC
	thumb_func_end ov96_0223CA70

	thumb_func_start ov96_0223CB7C
ov96_0223CB7C: @ 0x0223CB7C
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0xbd
	adds r2, r4, #0
	lsls r0, r0, #4
	adds r2, #0x9c
	ldr r0, [r4, r0]
	ldr r2, [r2]
	movs r1, #0
	movs r3, #3
	bl FUN_0200B60C
	movs r3, #2
	movs r0, #0xbd
	adds r2, r4, #0
	str r3, [sp]
	movs r1, #1
	str r1, [sp, #4]
	lsls r0, r0, #4
	adds r2, #0x94
	ldr r0, [r4, r0]
	ldr r2, [r2]
	bl FUN_0200B60C
	ldr r0, _0223CBE4 @ =0x00000F0F
	movs r2, #1
	str r0, [sp]
	ldr r1, _0223CBE8 @ =0x00000BD4
	adds r0, r4, #0
	ldr r1, [r4, r1]
	adds r3, r2, #0
	bl ov96_0223D750
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #0x11
	bl ov96_0223BBFC
	adds r4, #0xa0
	ldr r2, _0223CBEC @ =0x00000A38
	movs r0, #0
	adds r1, r4, #0
	blx FUN_020C4BB8
	movs r0, #3
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_0223CBE4: .4byte 0x00000F0F
_0223CBE8: .4byte 0x00000BD4
_0223CBEC: .4byte 0x00000A38
	thumb_func_end ov96_0223CB7C

	thumb_func_start ov96_0223CBF0
ov96_0223CBF0: @ 0x0223CBF0
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223CC18 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _0223CC1C @ =0x00000BD4
	movs r2, #2
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov96_0223D750
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #0xd
	bl ov96_0223BBFC
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223CC18: .4byte 0x00000F0F
_0223CC1C: .4byte 0x00000BD4
	thumb_func_end ov96_0223CBF0

	thumb_func_start ov96_0223CC20
ov96_0223CC20: @ 0x0223CC20
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r0, #0x90
	adds r1, #0x9c
	adds r2, r4, #0
	ldr r0, [r0]
	ldr r1, [r1]
	adds r2, #0xa0
	bl ov96_0223B450
	adds r0, r4, #0
	bl ov96_0223D978
	movs r0, #0x12
	str r0, [r4, #0x1c]
	ldr r0, _0223CC4C @ =0x00000F94
	movs r1, #0
	str r1, [r4, r0]
	movs r0, #3
	pop {r4, pc}
	nop
_0223CC4C: .4byte 0x00000F94
	thumb_func_end ov96_0223CC20

	thumb_func_start ov96_0223CC50
ov96_0223CC50: @ 0x0223CC50
	push {r3, r4, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	bl ov96_0223B3D4
	cmp r0, #0
	beq _0223CD3E
	bl ov96_0223B3F4
	ldr r1, _0223CD5C @ =0x00000F94
	movs r2, #0
	str r2, [r4, r1]
	adds r2, r0, #7
	cmp r2, #7
	bhi _0223CD54
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0223CC7A: @ jump table
	.2byte _0223CD1A - _0223CC7A - 2 @ case 0
	.2byte _0223CD0A - _0223CC7A - 2 @ case 1
	.2byte _0223CD2A - _0223CC7A - 2 @ case 2
	.2byte _0223CCFA - _0223CC7A - 2 @ case 3
	.2byte _0223CCFA - _0223CC7A - 2 @ case 4
	.2byte _0223CCEA - _0223CC7A - 2 @ case 5
	.2byte _0223CCDA - _0223CC7A - 2 @ case 6
	.2byte _0223CC8A - _0223CC7A - 2 @ case 7
_0223CC8A:
	adds r2, r4, #0
	adds r3, r4, #0
	adds r2, #0x90
	adds r3, #0x9c
	ldr r0, [r4]
	ldr r2, [r2]
	ldr r3, [r3]
	adds r1, r4, #0
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	ldr r0, [r0, #4]
	adds r1, #0xa0
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0202D5F8
	adds r0, r4, #0
	movs r1, #0x27
	movs r2, #0x13
	bl ov96_0223BBFC
	add r0, sp, #0
	add r1, sp, #0x10
	blx FUN_021D806C
	adds r1, r4, #0
	ldr r0, [r4]
	adds r1, #0x94
	adds r4, #0x9c
	ldr r1, [r1]
	ldr r2, [r4]
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	ldr r0, [r0, #4]
	lsrs r1, r1, #0x18
	lsrs r2, r2, #0x18
	add r3, sp, #0
	bl FUN_0202D4B0
	b _0223CD54
_0223CCDA:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223CD54
_0223CCEA:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223CD54
_0223CCFA:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0xb
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223CD54
_0223CD0A:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223CD54
_0223CD1A:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223CD54
_0223CD2A:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	bl FUN_02038A0C
	b _0223CD54
_0223CD3E:
	ldr r0, _0223CD5C @ =0x00000F94
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	movs r0, #0xe1
	lsls r0, r0, #4
	cmp r1, r0
	bne _0223CD54
	bl FUN_02038A0C
_0223CD54:
	movs r0, #3
	add sp, #0x1c
	pop {r3, r4, pc}
	nop
_0223CD5C: .4byte 0x00000F94
	thumb_func_end ov96_0223CC50

	thumb_func_start ov96_0223CD60
ov96_0223CD60: @ 0x0223CD60
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223CD94 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _0223CD98 @ =0x00000BD4
	movs r2, #3
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov96_0223D814
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #0x2d
	bl ov96_0223BBFC
	adds r0, r4, #0
	bl ov96_0223D99C
	ldr r0, [r4]
	movs r1, #0
	str r1, [r0, #0x20]
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223CD94: .4byte 0x00000F0F
_0223CD98: .4byte 0x00000BD4
	thumb_func_end ov96_0223CD60

	thumb_func_start ov96_0223CD9C
ov96_0223CD9C: @ 0x0223CD9C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223CDC8 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _0223CDCC @ =0x00000BD4
	movs r2, #7
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov96_0223D814
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #0x1a
	bl ov96_0223BBFC
	adds r0, r4, #0
	bl ov96_0223D978
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0223CDC8: .4byte 0x00000F0F
_0223CDCC: .4byte 0x00000BD4
	thumb_func_end ov96_0223CD9C

	thumb_func_start ov96_0223CDD0
ov96_0223CDD0: @ 0x0223CDD0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0202D3A0
	adds r4, r0, #0
	ldr r0, [r5]
	add r1, sp, #0
	ldr r0, [r0, #4]
	bl FUN_0202D628
	ldr r0, [r5]
	ldr r2, _0223CE14 @ =0x00000AD8
	ldr r0, [r0, #0xc]
	movs r1, #1
	adds r2, r5, r2
	bl FUN_02073700
	add r1, sp, #0
	ldrb r0, [r1]
	ldr r3, _0223CE14 @ =0x00000AD8
	ldrb r1, [r1, #1]
	adds r2, r4, #0
	adds r3, r5, r3
	bl ov96_0223B4B0
	movs r0, #0x1b
	str r0, [r5, #0x1c]
	ldr r0, _0223CE18 @ =0x00000F94
	movs r1, #0
	str r1, [r5, r0]
	movs r0, #3
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223CE14: .4byte 0x00000AD8
_0223CE18: .4byte 0x00000F94
	thumb_func_end ov96_0223CDD0

	thumb_func_start ov96_0223CE1C
ov96_0223CE1C: @ 0x0223CE1C
	push {r4, lr}
	adds r4, r0, #0
	bl ov96_0223B3D4
	cmp r0, #0
	beq _0223CED0
	bl ov96_0223B3F4
	ldr r1, _0223CEEC @ =0x00000F94
	movs r2, #0
	str r2, [r4, r1]
	adds r2, r0, #7
	cmp r2, #7
	bhi _0223CEE6
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0223CE44: @ jump table
	.2byte _0223CEAC - _0223CE44 - 2 @ case 0
	.2byte _0223CE9C - _0223CE44 - 2 @ case 1
	.2byte _0223CEBC - _0223CE44 - 2 @ case 2
	.2byte _0223CEAC - _0223CE44 - 2 @ case 3
	.2byte _0223CE8C - _0223CE44 - 2 @ case 4
	.2byte _0223CE7C - _0223CE44 - 2 @ case 5
	.2byte _0223CE6C - _0223CE44 - 2 @ case 6
	.2byte _0223CE54 - _0223CE44 - 2 @ case 7
_0223CE54:
	ldr r0, [r4]
	movs r1, #5
	ldr r0, [r0]
	movs r2, #2
	bl FUN_0202D414
	adds r0, r4, #0
	movs r1, #0x27
	movs r2, #0x1c
	bl ov96_0223BBFC
	b _0223CEE6
_0223CE6C:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223CEE6
_0223CE7C:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223CEE6
_0223CE8C:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223CEE6
_0223CE9C:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223CEE6
_0223CEAC:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223CEE6
_0223CEBC:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	bl FUN_02038A0C
	b _0223CEE6
_0223CED0:
	ldr r0, _0223CEEC @ =0x00000F94
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	movs r0, #0xe1
	lsls r0, r0, #4
	cmp r1, r0
	bne _0223CEE6
	bl FUN_02038A0C
_0223CEE6:
	movs r0, #3
	pop {r4, pc}
	nop
_0223CEEC: .4byte 0x00000F94
	thumb_func_end ov96_0223CE1C

	thumb_func_start ov96_0223CEF0
ov96_0223CEF0: @ 0x0223CEF0
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223CF24 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _0223CF28 @ =0x00000BD4
	movs r2, #8
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov96_0223D814
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #0x2d
	bl ov96_0223BBFC
	adds r0, r4, #0
	bl ov96_0223D99C
	ldr r0, [r4]
	movs r1, #0
	str r1, [r0, #0x20]
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223CF24: .4byte 0x00000F0F
_0223CF28: .4byte 0x00000BD4
	thumb_func_end ov96_0223CEF0

	thumb_func_start ov96_0223CF2C
ov96_0223CF2C: @ 0x0223CF2C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223CF54 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _0223CF58 @ =0x00000BD4
	movs r2, #5
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov96_0223D814
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #0x1e
	bl ov96_0223BBFC
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223CF54: .4byte 0x00000F0F
_0223CF58: .4byte 0x00000BD4
	thumb_func_end ov96_0223CF2C

	thumb_func_start ov96_0223CF5C
ov96_0223CF5C: @ 0x0223CF5C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	adds r0, #0x94
	str r1, [r0]
	ldr r0, _0223CFA4 @ =0x00000DE8
	movs r1, #0
	adds r0, r4, r0
	movs r2, #0x1f
	movs r3, #0xe
	bl FUN_0200DC48
	ldr r1, _0223CFA8 @ =0x00000BEC
	adds r2, r4, #0
	ldr r0, _0223CFA4 @ =0x00000DE8
	adds r2, #0x94
	ldr r1, [r4, r1]
	ldr r2, [r2]
	adds r0, r4, r0
	movs r3, #2
	bl ov96_0223D90C
	movs r1, #1
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov96_0223D950
	ldr r0, _0223CFA4 @ =0x00000DE8
	adds r0, r4, r0
	bl FUN_0201A954
	movs r0, #0x1f
	str r0, [r4, #0x1c]
	movs r0, #3
	pop {r4, pc}
	nop
_0223CFA4: .4byte 0x00000DE8
_0223CFA8: .4byte 0x00000BEC
	thumb_func_end ov96_0223CF5C

	thumb_func_start ov96_0223CFAC
ov96_0223CFAC: @ 0x0223CFAC
	push {r4, lr}
	ldr r2, _0223D070 @ =0x021BF67C
	movs r1, #0x40
	ldr r3, [r2, #0x4c]
	adds r4, r0, #0
	tst r1, r3
	beq _0223CFF2
	adds r0, #0x94
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x94
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0xa
	ble _0223CFD8
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x94
	str r1, [r0]
_0223CFD8:
	ldr r0, _0223D074 @ =0x00000DE8
	ldr r1, _0223D078 @ =0x00000BEC
	adds r0, r4, r0
	ldr r1, [r4, r1]
	adds r4, #0x94
	ldr r2, [r4]
	movs r3, #2
	bl ov96_0223D90C
	ldr r0, _0223D07C @ =0x000005DC
	bl FUN_02005748
	b _0223D06A
_0223CFF2:
	movs r1, #0x80
	tst r1, r3
	beq _0223D030
	adds r0, #0x94
	ldr r0, [r0]
	subs r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x94
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #1
	bge _0223D016
	adds r0, r4, #0
	movs r1, #0xa
	adds r0, #0x94
	str r1, [r0]
_0223D016:
	ldr r0, _0223D074 @ =0x00000DE8
	ldr r1, _0223D078 @ =0x00000BEC
	adds r0, r4, r0
	ldr r1, [r4, r1]
	adds r4, #0x94
	ldr r2, [r4]
	movs r3, #2
	bl ov96_0223D90C
	ldr r0, _0223D07C @ =0x000005DC
	bl FUN_02005748
	b _0223D06A
_0223D030:
	ldr r2, [r2, #0x48]
	movs r1, #1
	tst r1, r2
	beq _0223D052
	movs r1, #0
	adds r2, r1, #0
	bl ov96_0223D950
	adds r0, r4, #0
	movs r1, #0xb
	movs r2, #0x20
	bl ov96_0223BBFC
	ldr r0, _0223D07C @ =0x000005DC
	bl FUN_02005748
	b _0223D06A
_0223D052:
	movs r1, #2
	tst r1, r2
	beq _0223D06A
	movs r1, #0
	adds r2, r1, #0
	bl ov96_0223D950
	movs r0, #0x17
	str r0, [r4, #0x1c]
	ldr r0, _0223D07C @ =0x000005DC
	bl FUN_02005748
_0223D06A:
	movs r0, #3
	pop {r4, pc}
	nop
_0223D070: .4byte 0x021BF67C
_0223D074: .4byte 0x00000DE8
_0223D078: .4byte 0x00000BEC
_0223D07C: .4byte 0x000005DC
	thumb_func_end ov96_0223CFAC

	thumb_func_start ov96_0223D080
ov96_0223D080: @ 0x0223D080
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223D0A8 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _0223D0AC @ =0x00000BD4
	movs r2, #6
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov96_0223D814
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #0x21
	bl ov96_0223BBFC
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223D0A8: .4byte 0x00000F0F
_0223D0AC: .4byte 0x00000BD4
	thumb_func_end ov96_0223D080

	thumb_func_start ov96_0223D0B0
ov96_0223D0B0: @ 0x0223D0B0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	adds r0, #0x9c
	str r1, [r0]
	ldr r0, _0223D0F8 @ =0x00000DF8
	movs r1, #0
	adds r0, r4, r0
	movs r2, #0x1f
	movs r3, #0xe
	bl FUN_0200DC48
	ldr r1, _0223D0FC @ =0x00000BE8
	adds r2, r4, #0
	ldr r0, _0223D0F8 @ =0x00000DF8
	adds r2, #0x9c
	ldr r1, [r4, r1]
	ldr r2, [r2]
	adds r0, r4, r0
	movs r3, #3
	bl ov96_0223D90C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl ov96_0223D950
	ldr r0, _0223D0F8 @ =0x00000DF8
	adds r0, r4, r0
	bl FUN_0201A954
	movs r0, #0x22
	str r0, [r4, #0x1c]
	movs r0, #3
	pop {r4, pc}
	nop
_0223D0F8: .4byte 0x00000DF8
_0223D0FC: .4byte 0x00000BE8
	thumb_func_end ov96_0223D0B0

	thumb_func_start ov96_0223D100
ov96_0223D100: @ 0x0223D100
	push {r4, lr}
	ldr r2, _0223D1C8 @ =0x021BF67C
	movs r1, #0x40
	ldr r3, [r2, #0x4c]
	adds r4, r0, #0
	tst r1, r3
	beq _0223D14E
	adds r0, #0x9c
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x9c
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r1, [r0]
	adds r0, r4, #0
	adds r0, #0x98
	ldr r0, [r0]
	adds r0, r0, #1
	cmp r1, r0
	bne _0223D134
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x9c
	str r1, [r0]
_0223D134:
	ldr r0, _0223D1CC @ =0x00000DF8
	ldr r1, _0223D1D0 @ =0x00000BE8
	adds r0, r4, r0
	ldr r1, [r4, r1]
	adds r4, #0x9c
	ldr r2, [r4]
	movs r3, #3
	bl ov96_0223D90C
	ldr r0, _0223D1D4 @ =0x000005DC
	bl FUN_02005748
	b _0223D1C4
_0223D14E:
	movs r1, #0x80
	tst r1, r3
	beq _0223D190
	adds r0, #0x9c
	ldr r0, [r0]
	subs r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x9c
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	cmp r0, #1
	bge _0223D176
	adds r0, r4, #0
	adds r0, #0x98
	ldr r1, [r0]
	adds r0, r4, #0
	adds r0, #0x9c
	str r1, [r0]
_0223D176:
	ldr r0, _0223D1CC @ =0x00000DF8
	ldr r1, _0223D1D0 @ =0x00000BE8
	adds r0, r4, r0
	ldr r1, [r4, r1]
	adds r4, #0x9c
	ldr r2, [r4]
	movs r3, #3
	bl ov96_0223D90C
	ldr r0, _0223D1D4 @ =0x000005DC
	bl FUN_02005748
	b _0223D1C4
_0223D190:
	ldr r2, [r2, #0x48]
	movs r1, #1
	tst r1, r2
	beq _0223D1AC
	movs r1, #0
	adds r2, r1, #0
	bl ov96_0223D950
	movs r0, #0x23
	str r0, [r4, #0x1c]
	ldr r0, _0223D1D4 @ =0x000005DC
	bl FUN_02005748
	b _0223D1C4
_0223D1AC:
	movs r1, #2
	tst r1, r2
	beq _0223D1C4
	movs r1, #0
	adds r2, r1, #0
	bl ov96_0223D950
	movs r0, #0x1d
	str r0, [r4, #0x1c]
	ldr r0, _0223D1D4 @ =0x000005DC
	bl FUN_02005748
_0223D1C4:
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
_0223D1C8: .4byte 0x021BF67C
_0223D1CC: .4byte 0x00000DF8
_0223D1D0: .4byte 0x00000BE8
_0223D1D4: .4byte 0x000005DC
	thumb_func_end ov96_0223D100

	thumb_func_start ov96_0223D1D8
ov96_0223D1D8: @ 0x0223D1D8
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0xbd
	adds r2, r4, #0
	lsls r0, r0, #4
	adds r2, #0x9c
	ldr r0, [r4, r0]
	ldr r2, [r2]
	movs r1, #0
	movs r3, #3
	bl FUN_0200B60C
	movs r3, #2
	movs r0, #0xbd
	adds r2, r4, #0
	str r3, [sp]
	movs r1, #1
	str r1, [sp, #4]
	lsls r0, r0, #4
	adds r2, #0x94
	ldr r0, [r4, r0]
	ldr r2, [r2]
	bl FUN_0200B60C
	ldr r0, _0223D238 @ =0x00000F0F
	movs r2, #1
	str r0, [sp]
	ldr r1, _0223D23C @ =0x00000BD4
	adds r0, r4, #0
	ldr r1, [r4, r1]
	adds r3, r2, #0
	bl ov96_0223D750
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #0x24
	bl ov96_0223BBFC
	movs r0, #0x24
	str r0, [r4, #0x1c]
	movs r0, #3
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_0223D238: .4byte 0x00000F0F
_0223D23C: .4byte 0x00000BD4
	thumb_func_end ov96_0223D1D8

	thumb_func_start ov96_0223D240
ov96_0223D240: @ 0x0223D240
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r0, #0x94
	adds r1, #0x9c
	adds r2, r4, #0
	ldr r0, [r0]
	ldr r1, [r1]
	adds r2, #0xa0
	bl ov96_0223B450
	movs r0, #0x25
	str r0, [r4, #0x1c]
	ldr r0, _0223D26C @ =0x00000F94
	movs r1, #0
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov96_0223D978
	movs r0, #3
	pop {r4, pc}
	nop
_0223D26C: .4byte 0x00000F94
	thumb_func_end ov96_0223D240

	thumb_func_start ov96_0223D270
ov96_0223D270: @ 0x0223D270
	push {r4, lr}
	adds r4, r0, #0
	bl ov96_0223B3D4
	cmp r0, #0
	beq _0223D338
	bl ov96_0223B3F4
	ldr r1, _0223D354 @ =0x00000F94
	movs r2, #0
	str r2, [r4, r1]
	adds r2, r0, #7
	cmp r2, #7
	bhi _0223D34E
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0223D298: @ jump table
	.2byte _0223D314 - _0223D298 - 2 @ case 0
	.2byte _0223D304 - _0223D298 - 2 @ case 1
	.2byte _0223D324 - _0223D298 - 2 @ case 2
	.2byte _0223D314 - _0223D298 - 2 @ case 3
	.2byte _0223D2F4 - _0223D298 - 2 @ case 4
	.2byte _0223D2E4 - _0223D298 - 2 @ case 5
	.2byte _0223D2D4 - _0223D298 - 2 @ case 6
	.2byte _0223D2A8 - _0223D298 - 2 @ case 7
_0223D2A8:
	adds r2, r4, #0
	adds r3, r4, #0
	adds r2, #0x94
	adds r3, #0x9c
	ldr r0, [r4]
	ldr r2, [r2]
	ldr r3, [r3]
	ldr r1, _0223D358 @ =0x000006DC
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	ldr r0, [r0, #4]
	adds r1, r4, r1
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0202D6DC
	adds r0, r4, #0
	movs r1, #0x27
	movs r2, #0x26
	bl ov96_0223BBFC
	b _0223D34E
_0223D2D4:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223D34E
_0223D2E4:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223D34E
_0223D2F4:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0xb
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223D34E
_0223D304:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223D34E
_0223D314:
	movs r2, #0xb
	str r2, [r4, #0x1c]
	subs r1, #0x78
	str r0, [r4, r1]
	adds r0, r4, #0
	bl ov96_0223D99C
	b _0223D34E
_0223D324:
	subs r1, #0x78
	str r0, [r4, r1]
	movs r0, #0x35
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
	bl FUN_02038A0C
	b _0223D34E
_0223D338:
	ldr r0, _0223D354 @ =0x00000F94
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	movs r0, #0xe1
	lsls r0, r0, #4
	cmp r1, r0
	bne _0223D34E
	bl FUN_02038A0C
_0223D34E:
	movs r0, #3
	pop {r4, pc}
	nop
_0223D354: .4byte 0x00000F94
_0223D358: .4byte 0x000006DC
	thumb_func_end ov96_0223D270

	thumb_func_start ov96_0223D35C
ov96_0223D35C: @ 0x0223D35C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223D390 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _0223D394 @ =0x00000BD4
	movs r2, #3
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov96_0223D814
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #0x2d
	bl ov96_0223BBFC
	adds r0, r4, #0
	bl ov96_0223D99C
	ldr r0, [r4]
	movs r1, #0
	str r1, [r0, #0x20]
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223D390: .4byte 0x00000F0F
_0223D394: .4byte 0x00000BD4
	thumb_func_end ov96_0223D35C

	thumb_func_start ov96_0223D398
ov96_0223D398: @ 0x0223D398
	movs r1, #0x29
	str r1, [r0, #0x1c]
	movs r0, #3
	bx lr
	thumb_func_end ov96_0223D398

	thumb_func_start ov96_0223D3A0
ov96_0223D3A0: @ 0x0223D3A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	movs r1, #2
	ldr r0, [r0, #0xc]
	bl FUN_02024814
	movs r0, #0x28
	str r0, [r4, #0x1c]
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov96_0223D3A0

	thumb_func_start ov96_0223D3B8
ov96_0223D3B8: @ 0x0223D3B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	bl FUN_02024828
	cmp r0, #2
	bne _0223D3D2
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov96_0223D99C
_0223D3D2:
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov96_0223D3B8

	thumb_func_start ov96_0223D3D8
ov96_0223D3D8: @ 0x0223D3D8
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223D400 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _0223D404 @ =0x00000BD4
	movs r2, #4
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov96_0223D814
	adds r0, r4, #0
	movs r1, #0x30
	movs r2, #0x16
	bl ov96_0223BBFC
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223D400: .4byte 0x00000F0F
_0223D404: .4byte 0x00000BD4
	thumb_func_end ov96_0223D3D8

	thumb_func_start ov96_0223D408
ov96_0223D408: @ 0x0223D408
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223D438 @ =0x00000F08
	movs r1, #0x44
	ldr r0, [r4, r0]
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _0223D434
	subs r1, r1, #1
	cmp r0, r1
	bne _0223D42A
	movs r0, #0xd
	str r0, [r4, #0x1c]
	b _0223D434
_0223D42A:
	movs r0, #0x29
	str r0, [r4, #0x1c]
	ldr r0, [r4]
	movs r1, #1
	str r1, [r0, #0x20]
_0223D434:
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
_0223D438: .4byte 0x00000F08
	thumb_func_end ov96_0223D408

	thumb_func_start ov96_0223D43C
ov96_0223D43C: @ 0x0223D43C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223D464 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _0223D468 @ =0x00000BD4
	movs r2, #9
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov96_0223D814
	adds r0, r4, #0
	movs r1, #0x30
	movs r2, #0x18
	bl ov96_0223BBFC
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223D464: .4byte 0x00000F0F
_0223D468: .4byte 0x00000BD4
	thumb_func_end ov96_0223D43C

	thumb_func_start ov96_0223D46C
ov96_0223D46C: @ 0x0223D46C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223D49C @ =0x00000F08
	movs r1, #0x44
	ldr r0, [r4, r0]
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _0223D498
	subs r1, r1, #1
	cmp r0, r1
	bne _0223D48E
	movs r0, #0x1d
	str r0, [r4, #0x1c]
	b _0223D498
_0223D48E:
	movs r0, #0x29
	str r0, [r4, #0x1c]
	ldr r0, [r4]
	movs r1, #1
	str r1, [r0, #0x20]
_0223D498:
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
_0223D49C: .4byte 0x00000F08
	thumb_func_end ov96_0223D46C

	thumb_func_start ov96_0223D4A0
ov96_0223D4A0: @ 0x0223D4A0
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223D4C8 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _0223D4CC @ =0x00000BDC
	movs r2, #0x1a
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov96_0223D814
	adds r0, r4, #0
	movs r1, #0x2f
	movs r2, #0x2a
	bl ov96_0223BBFC
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223D4C8: .4byte 0x00000F0F
_0223D4CC: .4byte 0x00000BDC
	thumb_func_end ov96_0223D4A0

	thumb_func_start ov96_0223D4D0
ov96_0223D4D0: @ 0x0223D4D0
	push {r4, lr}
	adds r4, r0, #0
	blx FUN_021D7DB0
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov96_0223BC5C
	movs r0, #0x2b
	str r0, [r4, #0x1c]
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov96_0223D4D0

	thumb_func_start ov96_0223D4EC
ov96_0223D4EC: @ 0x0223D4EC
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223D51C @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, _0223D520 @ =0x00000BDC
	movs r2, #0x1b
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov96_0223D814
	adds r0, r4, #0
	movs r1, #0x31
	movs r2, #0x2e
	bl ov96_0223BBFC
	movs r0, #0xf2
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223D51C: .4byte 0x00000F0F
_0223D520: .4byte 0x00000BDC
	thumb_func_end ov96_0223D4EC

	thumb_func_start ov96_0223D524
ov96_0223D524: @ 0x0223D524
	movs r0, #3
	bx lr
	thumb_func_end ov96_0223D524

	thumb_func_start ov96_0223D528
ov96_0223D528: @ 0x0223D528
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl FUN_02039794
	bl FUN_0203848C
	movs r0, #8
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x44
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #0
	str r0, [r4, #0x1c]
	movs r0, #4
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov96_0223D528

	thumb_func_start ov96_0223D558
ov96_0223D558: @ 0x0223D558
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223D584 @ =0x00000F08
	movs r1, #0x44
	ldr r0, [r4, r0]
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _0223D57E
	subs r1, r1, #1
	cmp r0, r1
	bne _0223D57A
	movs r0, #0
	str r0, [r4, #0x1c]
	b _0223D57E
_0223D57A:
	movs r0, #0x29
	str r0, [r4, #0x1c]
_0223D57E:
	movs r0, #3
	pop {r4, pc}
	nop
_0223D584: .4byte 0x00000F08
	thumb_func_end ov96_0223D558

	thumb_func_start ov96_0223D588
ov96_0223D588: @ 0x0223D588
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0223D5F0 @ =0x00000F1C
	movs r4, #0
	ldr r0, [r5, r0]
	adds r0, r0, #7
	cmp r0, #9
	bhi _0223D5CA
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223D5A4: @ jump table
	.2byte _0223D5C4 - _0223D5A4 - 2 @ case 0
	.2byte _0223D5B8 - _0223D5A4 - 2 @ case 1
	.2byte _0223D5CA - _0223D5A4 - 2 @ case 2
	.2byte _0223D5C4 - _0223D5A4 - 2 @ case 3
	.2byte _0223D5C8 - _0223D5A4 - 2 @ case 4
	.2byte _0223D5B8 - _0223D5A4 - 2 @ case 5
	.2byte _0223D5C0 - _0223D5A4 - 2 @ case 6
	.2byte _0223D5CA - _0223D5A4 - 2 @ case 7
	.2byte _0223D5BC - _0223D5A4 - 2 @ case 8
	.2byte _0223D5C0 - _0223D5A4 - 2 @ case 9
_0223D5B8:
	movs r4, #0xd
	b _0223D5CA
_0223D5BC:
	movs r4, #0xb
	b _0223D5CA
_0223D5C0:
	movs r4, #0xc
	b _0223D5CA
_0223D5C4:
	movs r4, #0xe
	b _0223D5CA
_0223D5C8:
	movs r4, #0xf
_0223D5CA:
	adds r0, r5, #0
	bl ov96_0223D99C
	ldr r0, _0223D5F4 @ =0x00000F0F
	ldr r1, _0223D5F8 @ =0x00000BD4
	str r0, [sp]
	ldr r1, [r5, r1]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #1
	bl ov96_0223D814
	adds r0, r5, #0
	movs r1, #0x2f
	movs r2, #0x36
	bl ov96_0223BBFC
	movs r0, #3
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223D5F0: .4byte 0x00000F1C
_0223D5F4: .4byte 0x00000F0F
_0223D5F8: .4byte 0x00000BD4
	thumb_func_end ov96_0223D588

	thumb_func_start ov96_0223D5FC
ov96_0223D5FC: @ 0x0223D5FC
	push {r3, r4, lr}
	sub sp, #4
	movs r1, #0xf9
	adds r4, r0, #0
	lsls r1, r1, #4
	ldrsh r2, [r4, r1]
	cmp r2, #3
	bhi _0223D698
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0223D618: @ jump table
	.2byte _0223D620 - _0223D618 - 2 @ case 0
	.2byte _0223D63C - _0223D618 - 2 @ case 1
	.2byte _0223D660 - _0223D618 - 2 @ case 2
	.2byte _0223D67C - _0223D618 - 2 @ case 3
_0223D620:
	subs r1, #0x81
	str r1, [sp]
	ldr r1, _0223D6BC @ =0x00000BD4
	movs r2, #0x10
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov96_0223D814
	movs r0, #0xf9
	lsls r0, r0, #4
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, r0]
	b _0223D6B4
_0223D63C:
	ldr r0, _0223D6C0 @ =0x00000BF4
	ldr r0, [r4, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _0223D6B4
	bl FUN_0203848C
	blx FUN_021D7DB0
	movs r0, #0xf9
	lsls r0, r0, #4
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, r0]
	b _0223D6B4
_0223D660:
	subs r1, #0x81
	str r1, [sp]
	ldr r1, _0223D6BC @ =0x00000BD4
	movs r2, #0x11
	ldr r1, [r4, r1]
	movs r3, #1
	bl ov96_0223D814
	movs r0, #0xf9
	lsls r0, r0, #4
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, r0]
	b _0223D6B4
_0223D67C:
	ldr r0, _0223D6C0 @ =0x00000BF4
	ldr r0, [r4, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _0223D6B4
	movs r0, #0xf9
	lsls r0, r0, #4
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, r0]
	b _0223D6B4
_0223D698:
	ldr r0, _0223D6C4 @ =0x00000F92
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0x1e
	ble _0223D6B4
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov96_0223BC5C
	movs r0, #0x2e
	str r0, [r4, #0x1c]
_0223D6B4:
	movs r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223D6BC: .4byte 0x00000BD4
_0223D6C0: .4byte 0x00000BF4
_0223D6C4: .4byte 0x00000F92
	thumb_func_end ov96_0223D5FC

	thumb_func_start ov96_0223D6C8
ov96_0223D6C8: @ 0x0223D6C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223D6E4 @ =0x00000BF4
	ldr r0, [r4, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _0223D6E0
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x1c]
_0223D6E0:
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
_0223D6E4: .4byte 0x00000BF4
	thumb_func_end ov96_0223D6C8

	thumb_func_start ov96_0223D6E8
ov96_0223D6E8: @ 0x0223D6E8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223D718 @ =0x00000BF4
	ldr r0, [r4, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _0223D714
	movs r0, #0xf2
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0x1e
	ble _0223D70A
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x1c]
_0223D70A:
	movs r0, #0xf2
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
_0223D714:
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
_0223D718: .4byte 0x00000BF4
	thumb_func_end ov96_0223D6E8

	thumb_func_start ov96_0223D71C
ov96_0223D71C: @ 0x0223D71C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223D748 @ =0x00000BF4
	ldr r0, [r4, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _0223D744
	movs r2, #0x91
	ldr r0, [r4, #4]
	movs r1, #0xd
	lsls r2, r2, #2
	bl ov96_0223BBC8
	ldr r1, _0223D74C @ =0x00000F08
	str r0, [r4, r1]
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x1c]
_0223D744:
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
_0223D748: .4byte 0x00000BF4
_0223D74C: .4byte 0x00000F08
	thumb_func_end ov96_0223D71C

	thumb_func_start ov96_0223D750
ov96_0223D750: @ 0x0223D750
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r4, r3, #0
	bl FUN_0200B1EC
	movs r1, #0xbd
	adds r6, r0, #0
	lsls r1, r1, #4
	ldr r0, [r5, r1]
	adds r1, #0x10
	ldr r1, [r5, r1]
	adds r2, r6, #0
	bl FUN_0200C388
	ldr r0, _0223D7B0 @ =0x00000DD8
	movs r1, #0xf
	adds r0, r5, r0
	bl FUN_0201ADA4
	ldr r0, _0223D7B0 @ =0x00000DD8
	movs r1, #0
	adds r0, r5, r0
	movs r2, #1
	movs r3, #0xe
	bl FUN_0200E060
	movs r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	movs r2, #0xbe
	ldr r0, _0223D7B0 @ =0x00000DD8
	str r3, [sp, #8]
	lsls r2, r2, #4
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r1, #1
	bl FUN_0201D738
	ldr r1, _0223D7B4 @ =0x00000BF4
	str r0, [r5, r1]
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0223D7B0: .4byte 0x00000DD8
_0223D7B4: .4byte 0x00000BF4
	thumb_func_end ov96_0223D750

	thumb_func_start ov96_0223D7B8
ov96_0223D7B8: @ 0x0223D7B8
	push {r4, lr}
	ldr r1, _0223D7E0 @ =0x00000F14
	adds r4, r0, #0
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	rsbs r0, r0, #0
	bl FUN_021D1F3C
	ldr r2, _0223D7E0 @ =0x00000F14
	adds r1, r0, #0
	ldr r2, [r4, r2]
	adds r0, r4, #0
	rsbs r2, r2, #0
	bl ov96_0223DA34
	movs r0, #0x38
	str r0, [r4, #0x1c]
	movs r0, #3
	pop {r4, pc}
	.align 2, 0
_0223D7E0: .4byte 0x00000F14
	thumb_func_end ov96_0223D7B8

	thumb_func_start ov96_0223D7E4
ov96_0223D7E4: @ 0x0223D7E4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223D80C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	bne _0223D7F8
	movs r0, #2
	tst r0, r1
	beq _0223D806
_0223D7F8:
	ldr r0, _0223D810 @ =0x00000E18
	movs r1, #0
	adds r0, r4, r0
	bl FUN_0200DC9C
	movs r0, #0
	str r0, [r4, #0x1c]
_0223D806:
	movs r0, #3
	pop {r4, pc}
	nop
_0223D80C: .4byte 0x021BF67C
_0223D810: .4byte 0x00000E18
	thumb_func_end ov96_0223D7E4

	thumb_func_start ov96_0223D814
ov96_0223D814: @ 0x0223D814
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	movs r2, #0xbe
	lsls r2, r2, #4
	ldr r2, [r5, r2]
	adds r4, r3, #0
	bl FUN_0200B1B8
	ldr r0, _0223D864 @ =0x00000DD8
	movs r1, #0xf
	adds r0, r5, r0
	bl FUN_0201ADA4
	ldr r0, _0223D864 @ =0x00000DD8
	movs r1, #0
	adds r0, r5, r0
	movs r2, #1
	movs r3, #0xe
	bl FUN_0200E060
	movs r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	movs r2, #0xbe
	ldr r0, _0223D864 @ =0x00000DD8
	str r3, [sp, #8]
	lsls r2, r2, #4
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r1, #1
	bl FUN_0201D738
	ldr r1, _0223D868 @ =0x00000BF4
	str r0, [r5, r1]
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223D864: .4byte 0x00000DD8
_0223D868: .4byte 0x00000BF4
	thumb_func_end ov96_0223D814

	thumb_func_start ov96_0223D86C
ov96_0223D86C: @ 0x0223D86C
	push {r4, lr}
	adds r4, r0, #0
	cmp r3, #1
	beq _0223D87A
	cmp r3, #2
	beq _0223D890
	b _0223D89E
_0223D87A:
	ldr r0, [sp, #0xc]
	movs r2, #0
	bl FUN_02002D7C
	ldrb r1, [r4, #7]
	lsls r1, r1, #3
	subs r1, r1, r0
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r2, r0, #1
	b _0223D89E
_0223D890:
	ldr r0, [sp, #0xc]
	movs r2, #0
	bl FUN_02002D7C
	ldrb r1, [r4, #7]
	lsls r1, r1, #3
	subs r2, r1, r0
_0223D89E:
	adds r0, r2, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov96_0223D86C

	thumb_func_start ov96_0223D8A4
ov96_0223D8A4: @ 0x0223D8A4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r3, #0
	ldr r3, [sp, #0x24]
	adds r5, r0, #0
	str r3, [sp]
	movs r3, #1
	str r3, [sp, #4]
	ldr r3, [sp, #0x20]
	adds r6, r1, #0
	bl ov96_0223D86C
	adds r3, r0, #0
	str r4, [sp]
	movs r1, #0
	ldr r0, [sp, #0x24]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #1
	adds r2, r6, #0
	bl FUN_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov96_0223D8A4

	thumb_func_start ov96_0223D8D8
ov96_0223D8D8: @ 0x0223D8D8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r3, #0
	ldr r3, [sp, #0x24]
	adds r5, r0, #0
	str r3, [sp]
	movs r3, #0
	str r3, [sp, #4]
	ldr r3, [sp, #0x20]
	adds r6, r1, #0
	bl ov96_0223D86C
	adds r3, r0, #0
	str r4, [sp]
	movs r1, #0
	ldr r0, [sp, #0x24]
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r2, r6, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov96_0223D8D8

	thumb_func_start ov96_0223D90C
ov96_0223D90C: @ 0x0223D90C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r1, #0
	movs r1, #0xf
	adds r5, r0, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bl FUN_0201ADA4
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	movs r3, #2
	bl FUN_020238A0
	movs r3, #1
	ldr r0, _0223D944 @ =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl ov96_0223D8D8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223D944: .4byte 0x00010200
	thumb_func_end ov96_0223D90C

	thumb_func_start ov96_0223D948
ov96_0223D948: @ 0x0223D948
	ldr r3, _0223D94C @ =FUN_02039734
	bx r3
	.align 2, 0
_0223D94C: .4byte FUN_02039734
	thumb_func_end ov96_0223D948

	thumb_func_start ov96_0223D950
ov96_0223D950: @ 0x0223D950
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r1, #1
	bhi _0223D970
	movs r0, #0xdd
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl FUN_02021CAC
	ldr r0, _0223D974 @ =0x00000DD4
	adds r1, r4, #0
	ldr r0, [r5, r0]
	bl FUN_02021CAC
_0223D970:
	pop {r3, r4, r5, pc}
	nop
_0223D974: .4byte 0x00000DD4
	thumb_func_end ov96_0223D950

	thumb_func_start ov96_0223D978
ov96_0223D978: @ 0x0223D978
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223D994 @ =0x00000F0C
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223D992
	ldr r0, _0223D998 @ =0x00000DD8
	movs r1, #1
	adds r0, r4, r0
	bl FUN_0200E7FC
	ldr r1, _0223D994 @ =0x00000F0C
	str r0, [r4, r1]
_0223D992:
	pop {r4, pc}
	.align 2, 0
_0223D994: .4byte 0x00000F0C
_0223D998: .4byte 0x00000DD8
	thumb_func_end ov96_0223D978

	thumb_func_start ov96_0223D99C
ov96_0223D99C: @ 0x0223D99C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223D9B4 @ =0x00000F0C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223D9B2
	bl FUN_0200EBA0
	ldr r0, _0223D9B4 @ =0x00000F0C
	movs r1, #0
	str r1, [r4, r0]
_0223D9B2:
	pop {r4, pc}
	.align 2, 0
_0223D9B4: .4byte 0x00000F0C
	thumb_func_end ov96_0223D99C

	thumb_func_start ov96_0223D9B8
ov96_0223D9B8: @ 0x0223D9B8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #1
	adds r6, r1, #0
	lsls r0, r0, #8
	movs r1, #0x44
	bl FUN_02023790
	adds r4, r0, #0
	ldr r0, _0223DA28 @ =0x00000BDC
	adds r1, r6, #0
	ldr r0, [r5, r0]
	adds r2, r4, #0
	bl FUN_0200B1B8
	movs r1, #0xbd
	lsls r1, r1, #4
	ldr r0, [r5, r1]
	adds r1, #0x20
	ldr r1, [r5, r1]
	adds r2, r4, #0
	bl FUN_0200C388
	ldr r0, _0223DA2C @ =0x00000E18
	movs r1, #0xf
	adds r0, r5, r0
	bl FUN_0201ADA4
	ldr r0, _0223DA2C @ =0x00000E18
	movs r1, #1
	adds r0, r5, r0
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_0200DC48
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	movs r2, #0xbf
	ldr r0, _0223DA2C @ =0x00000E18
	str r3, [sp, #8]
	lsls r2, r2, #4
	ldr r2, [r5, r2]
	adds r0, r5, r0
	movs r1, #1
	bl FUN_0201D738
	ldr r1, _0223DA30 @ =0x00000BF4
	str r0, [r5, r1]
	adds r0, r4, #0
	bl FUN_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0223DA28: .4byte 0x00000BDC
_0223DA2C: .4byte 0x00000E18
_0223DA30: .4byte 0x00000BF4
	thumb_func_end ov96_0223D9B8

	thumb_func_start ov96_0223DA34
ov96_0223DA34: @ 0x0223DA34
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0
	adds r4, r1, #0
	mvns r0, r0
	cmp r4, r0
	bne _0223DA46
	movs r4, #0xb
_0223DA46:
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0xbd
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	movs r3, #5
	bl FUN_0200B60C
	ldr r0, _0223DA74 @ =0x00000DD8
	movs r1, #1
	adds r0, r5, r0
	bl FUN_0200E084
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov96_0223D9B8
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223DA74: .4byte 0x00000DD8
	thumb_func_end ov96_0223DA34
	@ 0x0223DA78
