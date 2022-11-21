	.include "macros/function.inc"


	.text

	thumb_func_start ov41_022561C0
ov41_022561C0: @ 0x022561C0
	ldr r3, _022561C8 @ =FUN_02254238
	ldr r0, _022561CC @ =ov41_022561D4
	ldr r1, _022561D0 @ =ov41_02256310
	bx r3
	.align 2, 0
_022561C8: .4byte FUN_02254238
_022561CC: .4byte ov41_022561D4
_022561D0: .4byte ov41_02256310
	thumb_func_end ov41_022561C0

	thumb_func_start ov41_022561D4
ov41_022561D4: @ 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	ldr r1, _02256218 @ =0x00005B90
	movs r0, #8
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov41_02256220
	cmp r0, #0
	beq _0225620C
	ldr r0, _0225621C @ =ov41_022562B8
	adds r1, r4, #0
	movs r2, #1
	bl FUN_0200D9E8
	cmp r0, #0
	beq _0225620C
	str r4, [r5]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225620C:
	adds r0, r4, #0
	bl FUN_020181C4
_02256212:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256218: .4byte 0x00005B90
_0225621C: .4byte ov41_022562B8
	thumb_func_end ov41_022561D4

	thumb_func_start ov41_02256220
ov41_02256220: @ 0x02256220
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, _02256284 @ =0x00005B78
	str r3, [r5, #0xc]
	movs r0, #0
	strb r0, [r5, r1]
	movs r6, #1
	adds r3, r1, #1
	strb r6, [r5, r3]
	adds r3, r1, #2
	strb r0, [r5, r3]
	adds r0, r1, #4
	adds r0, r5, r0
	adds r1, r5, #4
	bl ov41_022567B0
	cmp r0, #0
	beq _0225627C
	movs r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	strb r0, [r5, #3]
	adds r0, r5, #4
	bl ov41_02256790
	movs r0, #8
	str r0, [sp]
	ldr r0, _02256288 @ =0x02256D68
	ldr r2, _0225628C @ =ov41_02256300
	movs r1, #3
	adds r3, r5, #0
	bl FUN_02255ACC
	ldr r1, _02256290 @ =0x00005B84
	movs r2, #0
	str r0, [r5, r1]
	adds r0, r1, #4
	str r2, [r5, r0]
	subs r0, r1, #4
	str r4, [r5, r0]
	add sp, #4
	adds r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_0225627C:
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02256284: .4byte 0x00005B78
_02256288: .4byte 0x02256D68
_0225628C: .4byte ov41_02256300
_02256290: .4byte 0x00005B84
	thumb_func_end ov41_02256220

	thumb_func_start ov41_02256294
ov41_02256294: @ 0x02256294
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _022562B0 @ =0x00005B84
	ldr r0, [r4, r0]
	bl FUN_02255B34
	ldr r0, _022562B4 @ =0x00005B7C
	ldr r0, [r4, r0]
	bl ov41_022567F8
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
_022562B0: .4byte 0x00005B84
_022562B4: .4byte 0x00005B7C
	thumb_func_end ov41_02256294

	thumb_func_start ov41_022562B8
ov41_022562B8: @ 0x022562B8
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhs _022562F4
	ldr r1, _022562F8 @ =0x00005B80
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	bl FUN_02254518
	ldrb r1, [r4]
	adds r0, r4, #0
	lsls r2, r1, #2
	ldr r1, _022562FC @ =0x02256D74
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _022562F4
	adds r0, r4, #0
	bl ov41_02256294
	adds r0, r5, #0
	bl FUN_0200DA58
	ldr r0, _022562F8 @ =0x00005B80
	ldr r0, [r4, r0]
	bl FUN_02254260
_022562F4:
	pop {r3, r4, r5, pc}
	nop
_022562F8: .4byte 0x00005B80
_022562FC: .4byte 0x02256D74
	thumb_func_end ov41_022562B8

	thumb_func_start ov41_02256300
ov41_02256300: @ 0x02256300
	ldr r2, _0225630C @ =0x00005B88
	str r1, [r3, r2]
	adds r1, r2, #4
	str r0, [r3, r1]
	bx lr
	nop
_0225630C: .4byte 0x00005B88
	thumb_func_end ov41_02256300

	thumb_func_start ov41_02256310
ov41_02256310: @ 0x02256310
	movs r1, #1
	strb r1, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end ov41_02256310

	thumb_func_start ov41_02256318
ov41_02256318: @ 0x02256318
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _02256320
	b _02256322
_02256320:
	movs r1, #2
_02256322:
	strb r1, [r0]
	movs r1, #0
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
	thumb_func_end ov41_02256318

	thumb_func_start ov41_0225632C
ov41_0225632C: @ 0x0225632C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0225633C
	cmp r0, #1
	beq _0225634E
	b _0225636C
_0225633C:
	ldr r0, _02256370 @ =0x00005B7C
	movs r1, #0
	ldr r0, [r4, r0]
	bl ov41_0225688C
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _0225636C
_0225634E:
	ldr r0, _02256370 @ =0x00005B7C
	movs r1, #0
	ldr r0, [r4, r0]
	bl ov41_022568B0
	cmp r0, #0
	beq _0225636C
	ldr r0, _02256374 @ =0x00005B80
	ldr r0, [r4, r0]
	bl FUN_0225424C
	adds r0, r4, #0
	movs r1, #1
	bl ov41_02256318
_0225636C:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_02256370: .4byte 0x00005B7C
_02256374: .4byte 0x00005B80
	thumb_func_end ov41_0225632C

	thumb_func_start ov41_02256378
ov41_02256378: @ 0x02256378
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _0225638A
	movs r1, #2
	bl ov41_02256318
_0225638A:
	ldrb r0, [r4, #1]
	cmp r0, #3
	bhi _022563B0
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225639C: @ jump table
	.2byte _022563A4 - _0225639C - 2 @ case 0
	.2byte _02256474 - _0225639C - 2 @ case 1
	.2byte _022564CE - _0225639C - 2 @ case 2
	.2byte _022564FC - _0225639C - 2 @ case 3
_022563A4:
	ldr r0, _0225654C @ =0x00005B80
	ldr r0, [r4, r0]
	bl FUN_0225450C
	cmp r0, #0
	beq _022563B2
_022563B0:
	b _02256544
_022563B2:
	ldr r1, _02256550 @ =0x00005B88
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _0225642E
	adds r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022563CC
	cmp r0, #1
	beq _02256402
	cmp r0, #2
	beq _0225640A
	b _02256426
_022563CC:
	adds r0, r1, #0
	movs r3, #1
	subs r0, #0x10
	strb r3, [r4, r0]
	adds r0, r1, #0
	movs r2, #0
	subs r0, #0xf
	strb r2, [r4, r0]
	adds r0, r1, #0
	subs r0, #0xe
	subs r1, #0xc
	strb r3, [r4, r0]
	ldr r0, [r4, r1]
	movs r1, #5
	bl ov41_0225688C
	ldr r0, _02256554 @ =0x00005B7C
	movs r1, #7
	ldr r0, [r4, r0]
	bl ov41_0225688C
	ldr r0, _02256558 @ =0x00000663
	bl FUN_02254424
	movs r0, #1
	strb r0, [r4, #1]
	b _02256426
_02256402:
	ldr r0, _0225655C @ =0x0000066E
	bl FUN_02254424
	b _02256426
_0225640A:
	adds r0, r1, #0
	movs r2, #1
	subs r0, #0xe
	subs r1, #0xc
	strb r2, [r4, r0]
	ldr r0, [r4, r1]
	movs r1, #5
	bl ov41_0225688C
	ldr r0, _02256558 @ =0x00000663
	bl FUN_02254424
	movs r0, #3
	strb r0, [r4, #1]
_02256426:
	ldr r0, _02256550 @ =0x00005B88
	movs r1, #0
	str r1, [r4, r0]
	b _02256544
_0225642E:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _0225645A
	adds r0, r4, #0
	ldr r6, [r4, #4]
	ldr r5, [r4, #8]
	bl ov41_022565C4
	cmp r0, #0
	beq _02256454
	ldr r0, [r4, #8]
	adds r1, r6, #0
	str r0, [sp]
	ldr r3, [r4, #4]
	adds r0, r4, #0
	adds r2, r5, #0
	bl ov41_02256610
	b _02256544
_02256454:
	movs r0, #0
	strb r0, [r4, #3]
	b _02256544
_0225645A:
	adds r0, r4, #0
	bl ov41_02256564
	cmp r0, #0
	beq _02256544
	ldr r0, _02256554 @ =0x00005B7C
	movs r1, #3
	ldr r0, [r4, r0]
	bl ov41_0225688C
	movs r0, #1
	strb r0, [r4, #3]
	b _02256544
_02256474:
	ldr r1, _02256550 @ =0x00005B88
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _02256544
	adds r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0225648C
	cmp r0, #1
	beq _02256494
	cmp r0, #2
	bne _022564C6
_0225648C:
	ldr r0, _0225655C @ =0x0000066E
	bl FUN_02254424
	b _022564C6
_02256494:
	adds r0, r1, #0
	movs r2, #1
	subs r0, #0x10
	strb r2, [r4, r0]
	adds r0, r1, #0
	subs r0, #0xf
	strb r2, [r4, r0]
	adds r0, r1, #0
	subs r0, #0xe
	subs r1, #0xc
	strb r2, [r4, r0]
	ldr r0, [r4, r1]
	movs r1, #5
	bl ov41_0225688C
	ldr r0, _02256554 @ =0x00005B7C
	movs r1, #8
	ldr r0, [r4, r0]
	bl ov41_0225688C
	ldr r0, _02256558 @ =0x00000663
	bl FUN_02254424
	movs r0, #2
	strb r0, [r4, #1]
_022564C6:
	ldr r0, _02256550 @ =0x00005B88
	movs r1, #0
	str r1, [r4, r0]
	b _02256544
_022564CE:
	ldr r0, _02256554 @ =0x00005B7C
	movs r1, #8
	ldr r0, [r4, r0]
	bl ov41_022568B0
	cmp r0, #0
	beq _02256544
	ldr r0, _02256560 @ =0x00005B78
	movs r3, #0
	strb r3, [r4, r0]
	movs r2, #1
	adds r1, r0, #1
	strb r2, [r4, r1]
	adds r1, r0, #2
	strb r3, [r4, r1]
	adds r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #5
	bl ov41_0225688C
	movs r0, #0
	strb r0, [r4, #1]
	b _02256544
_022564FC:
	ldr r1, _02256550 @ =0x00005B88
	ldr r0, [r4, r1]
	cmp r0, #2
	bne _0225651C
	adds r0, r1, #0
	movs r2, #0
	subs r0, #0xe
	subs r1, #0xc
	strb r2, [r4, r0]
	ldr r0, [r4, r1]
	movs r1, #5
	bl ov41_0225688C
	movs r0, #0
	strb r0, [r4, #1]
	b _02256544
_0225651C:
	cmp r0, #3
	bne _02256544
	movs r0, #0
	subs r1, #0xe
	strb r0, [r4, r1]
	adds r0, r4, #4
	bl ov41_02256790
	ldr r0, _02256554 @ =0x00005B7C
	movs r1, #5
	ldr r0, [r4, r0]
	bl ov41_0225688C
	ldr r0, _02256554 @ =0x00005B7C
	movs r1, #6
	ldr r0, [r4, r0]
	bl ov41_0225688C
	movs r0, #0
	strb r0, [r4, #1]
_02256544:
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0225654C: .4byte 0x00005B80
_02256550: .4byte 0x00005B88
_02256554: .4byte 0x00005B7C
_02256558: .4byte 0x00000663
_0225655C: .4byte 0x0000066E
_02256560: .4byte 0x00005B78
	thumb_func_end ov41_02256378

	thumb_func_start ov41_02256564
ov41_02256564: @ 0x02256564
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	add r0, sp, #4
	add r1, sp, #0
	bl FUN_0225446C
	cmp r0, #0
	beq _022565BE
	ldr r1, [sp, #4]
	ldr r2, [sp]
	subs r1, #0x10
	subs r2, #0x10
	cmp r1, #0x9b
	bhs _02256586
	movs r0, #1
	b _02256588
_02256586:
	movs r0, #0
_02256588:
	cmp r2, #0x95
	bhs _02256590
	movs r3, #1
	b _02256592
_02256590:
	movs r3, #0
_02256592:
	tst r0, r3
	beq _022565BE
	lsrs r3, r1, #1
	lsrs r1, r2, #1
	adds r2, r4, #0
	movs r0, #0x96
	adds r2, #0x10
	muls r0, r3, r0
	str r3, [sp, #4]
	str r1, [sp]
	adds r2, r2, r0
	ldrb r0, [r2, r1]
	cmp r0, #0
	bne _022565BE
	movs r0, #1
	strb r0, [r2, r1]
	ldr r1, [sp, #4]
	str r1, [r4, #4]
	ldr r1, [sp]
	add sp, #8
	str r1, [r4, #8]
	pop {r4, pc}
_022565BE:
	movs r0, #0
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov41_02256564

	thumb_func_start ov41_022565C4
ov41_022565C4: @ 0x022565C4
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	add r0, sp, #4
	add r1, sp, #0
	bl FUN_0225446C
	cmp r0, #0
	beq _0225660A
	ldr r1, [sp, #4]
	ldr r2, [sp]
	subs r1, #0x10
	subs r2, #0x10
	cmp r1, #0x9b
	bhs _022565E6
	movs r0, #1
	b _022565E8
_022565E6:
	movs r0, #0
_022565E8:
	cmp r2, #0x95
	bhs _022565F0
	movs r3, #1
	b _022565F2
_022565F0:
	movs r3, #0
_022565F2:
	tst r0, r3
	beq _0225660A
	lsrs r1, r1, #1
	lsrs r0, r2, #1
	str r1, [sp, #4]
	str r0, [sp]
	str r1, [r4, #4]
	ldr r0, [sp]
	add sp, #8
	str r0, [r4, #8]
	movs r0, #1
	pop {r4, pc}
_0225660A:
	movs r0, #0
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov41_022565C4

	thumb_func_start ov41_02256610
ov41_02256610: @ 0x02256610
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	ldr r0, [sp, #0x28]
	adds r4, r2, #0
	adds r5, r1, #0
	str r3, [sp]
	str r0, [sp, #0x28]
	cmp r4, r0
	bne _0225662C
	adds r0, r3, #0
	cmp r5, r0
	bne _0225662C
	b _0225674C
_0225662C:
	ldr r0, [sp]
	cmp r0, r5
	bls _02256636
	subs r1, r0, r5
	b _02256638
_02256636:
	subs r1, r5, r0
_02256638:
	ldr r0, [sp, #0x28]
	cmp r0, r4
	bls _02256642
	subs r2, r0, r4
	b _02256644
_02256642:
	subs r2, r4, r0
_02256644:
	cmp r1, r2
	bls _022566C6
	ldr r0, [sp]
	cmp r0, r5
	bls _02256654
	movs r0, #1
	str r0, [sp, #4]
	b _0225665A
_02256654:
	movs r0, #0
	mvns r0, r0
	str r0, [sp, #4]
_0225665A:
	cmp r1, #0
	beq _0225666C
	ldr r0, [sp, #0x28]
	subs r0, r0, r4
	lsls r0, r0, #0xc
	blx FUN_020E1F6C
	str r0, [sp, #0x10]
	b _02256670
_0225666C:
	movs r0, #0
	str r0, [sp, #0x10]
_02256670:
	ldr r0, [sp, #0x10]
	lsls r1, r4, #0xc
	adds r7, r1, r0
	ldr r0, [sp, #4]
	adds r5, r5, r0
	ldr r0, [sp]
	cmp r5, r0
	beq _02256730
	movs r1, #0x96
	adds r0, r5, #0
	muls r0, r1, r0
	adds r4, r6, r0
	ldr r0, [sp, #4]
	muls r1, r0, r1
	str r1, [sp, #0xc]
_0225668E:
	asrs r1, r7, #0xc
	cmp r5, #0x9c
	bhs _022566B2
	cmp r1, #0x96
	bhs _022566B2
	adds r0, r4, r1
	ldrb r2, [r0, #0x10]
	cmp r2, #0
	bne _022566B2
	movs r2, #0
	strb r2, [r0, #0x10]
	str r5, [r6, #4]
	str r1, [r6, #8]
	ldr r0, _02256750 @ =0x00005B7C
	movs r1, #3
	ldr r0, [r6, r0]
	bl ov41_0225688C
_022566B2:
	ldr r0, [sp, #0xc]
	adds r4, r4, r0
	ldr r0, [sp, #4]
	adds r5, r5, r0
	ldr r0, [sp, #0x10]
	adds r7, r7, r0
	ldr r0, [sp]
	cmp r5, r0
	bne _0225668E
	b _02256730
_022566C6:
	ldr r0, [sp, #0x28]
	cmp r0, r4
	bls _022566D0
	movs r7, #1
	b _022566D4
_022566D0:
	movs r7, #0
	mvns r7, r7
_022566D4:
	cmp r2, #0
	beq _022566E8
	ldr r0, [sp]
	adds r1, r2, #0
	subs r0, r0, r5
	lsls r0, r0, #0xc
	blx FUN_020E1F6C
	str r0, [sp, #8]
	b _022566EC
_022566E8:
	movs r0, #0
	str r0, [sp, #8]
_022566EC:
	ldr r0, [sp, #8]
	lsls r1, r5, #0xc
	adds r5, r1, r0
	ldr r0, [sp, #0x28]
	adds r4, r4, r7
	cmp r4, r0
	beq _02256730
_022566FA:
	asrs r1, r5, #0xc
	cmp r4, #0x96
	bhs _02256724
	cmp r1, #0x9c
	bhs _02256724
	movs r0, #0x96
	muls r0, r1, r0
	adds r0, r6, r0
	adds r0, r0, r4
	ldrb r2, [r0, #0x10]
	cmp r2, #0
	bne _02256724
	movs r2, #1
	strb r2, [r0, #0x10]
	str r1, [r6, #4]
	ldr r0, _02256750 @ =0x00005B7C
	str r4, [r6, #8]
	ldr r0, [r6, r0]
	movs r1, #3
	bl ov41_0225688C
_02256724:
	ldr r0, [sp, #8]
	adds r4, r4, r7
	adds r5, r5, r0
	ldr r0, [sp, #0x28]
	cmp r4, r0
	bne _022566FA
_02256730:
	ldr r0, [sp, #0x28]
	cmp r0, #0x96
	bhs _0225674C
	ldr r0, [sp]
	cmp r0, #0x9c
	bhs _0225674C
	str r0, [r6, #4]
	ldr r0, [sp, #0x28]
	movs r1, #3
	str r0, [r6, #8]
	ldr r0, _02256750 @ =0x00005B7C
	ldr r0, [r6, r0]
	bl ov41_0225688C
_0225674C:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02256750: .4byte 0x00005B7C
	thumb_func_end ov41_02256610

	thumb_func_start ov41_02256754
ov41_02256754: @ 0x02256754
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256764
	cmp r0, #1
	beq _02256776
	b _02256786
_02256764:
	ldr r0, _0225678C @ =0x00005B7C
	movs r1, #1
	ldr r0, [r4, r0]
	bl ov41_0225688C
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _02256786
_02256776:
	ldr r0, _0225678C @ =0x00005B7C
	ldr r0, [r4, r0]
	bl ov41_022568BC
	cmp r0, #0
	beq _02256786
	movs r0, #1
	pop {r4, pc}
_02256786:
	movs r0, #0
	pop {r4, pc}
	nop
_0225678C: .4byte 0x00005B7C
	thumb_func_end ov41_02256754

	thumb_func_start ov41_02256790
ov41_02256790: @ 0x02256790
	push {r4, r5}
	movs r4, #0
	adds r2, r4, #0
	adds r3, r4, #0
_02256798:
	adds r5, r3, #0
_0225679A:
	adds r1, r0, r5
	adds r5, r5, #1
	strb r2, [r1, #0xc]
	cmp r5, #0x96
	blt _0225679A
	adds r4, r4, #1
	adds r0, #0x96
	cmp r4, #0x9c
	blt _02256798
	pop {r4, r5}
	bx lr
	thumb_func_end ov41_02256790

	thumb_func_start ov41_022567B0
ov41_022567B0: @ 0x022567B0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r0, #8
	movs r1, #0x70
	bl FUN_02018144
	adds r4, r0, #0
	beq _022567F4
	adds r0, #8
	movs r1, #4
	bl FUN_02255090
	str r5, [r4]
	bl FUN_02254674
	str r0, [r4, #4]
	bl FUN_02254664
	str r0, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x68
	strh r1, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov41_0225680C
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022567F4
	str r4, [r6]
	movs r0, #1
	pop {r4, r5, r6, pc}
_022567F4:
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov41_022567B0

	thumb_func_start ov41_022567F8
ov41_022567F8: @ 0x022567F8
	push {r4, lr}
	adds r4, r0, #0
	beq _02256808
	bl ov41_02256864
	adds r0, r4, #0
	bl FUN_020181C4
_02256808:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov41_022567F8

	thumb_func_start ov41_0225680C
ov41_0225680C: @ 0x0225680C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	movs r3, #0
	str r3, [sp]
	movs r2, #1
	adds r7, r0, #0
	str r2, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	movs r0, #0xc
	movs r1, #0x59
	bl FUN_02006EC0
	movs r0, #8
	str r0, [sp]
	adds r0, r7, #0
	adds r0, #0x34
	movs r1, #0xc
	movs r2, #0x57
	movs r3, #0x58
	bl FUN_02255958
	adds r0, r7, #0
	str r0, [sp, #0xc]
	adds r0, #0x34
	ldr r4, _02256860 @ =0x02256DC0
	movs r6, #0
	adds r5, r7, #0
	str r0, [sp, #0xc]
_02256846:
	ldr r0, [r7, #0x20]
	ldr r2, [sp, #0xc]
	adds r1, r4, #0
	bl FUN_02255810
	str r0, [r5, #0x24]
	adds r6, r6, #1
	adds r4, #0x10
	adds r5, r5, #4
	cmp r6, #4
	blt _02256846
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02256860: .4byte 0x02256DC0
	thumb_func_end ov41_0225680C

	thumb_func_start ov41_02256864
ov41_02256864: @ 0x02256864
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
	adds r5, r6, #0
_0225686C:
	ldr r1, [r5, #0x24]
	cmp r1, #0
	beq _02256878
	ldr r0, [r6, #0x20]
	bl FUN_022558B0
_02256878:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _0225686C
	adds r6, #0x34
	adds r0, r6, #0
	bl FUN_022559B0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov41_02256864

	thumb_func_start ov41_0225688C
ov41_0225688C: @ 0x0225688C
	push {lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r0, #8
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	ldr r0, _022568AC @ =0x02256E00
	ldr r3, [r2]
	bl FUN_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022568AC: .4byte 0x02256E00
	thumb_func_end ov41_0225688C

	thumb_func_start ov41_022568B0
ov41_022568B0: @ 0x022568B0
	ldr r3, _022568B8 @ =FUN_02255130
	adds r0, #8
	bx r3
	nop
_022568B8: .4byte FUN_02255130
	thumb_func_end ov41_022568B0

	thumb_func_start ov41_022568BC
ov41_022568BC: @ 0x022568BC
	ldr r3, _022568C4 @ =FUN_02255154
	adds r0, #8
	bx r3
	nop
_022568C4: .4byte FUN_02255154
	thumb_func_end ov41_022568BC

	thumb_func_start ov41_022568C8
ov41_022568C8: @ 0x022568C8
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0225523C
	adds r0, #8
	adds r1, r4, #0
	bl FUN_02255224
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov41_022568C8

	thumb_func_start ov41_022568DC
ov41_022568DC: @ 0x022568DC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	movs r0, #8
	adds r5, r1, #0
	bl FUN_0201833C
	cmp r0, #0
	bne _022568F0
	bl FUN_02022974
_022568F0:
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldr r2, _022569AC @ =0x02256D88
	movs r1, #6
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4, #4]
	ldr r2, _022569B0 @ =0x02256DA4
	movs r1, #7
	movs r3, #0
	bl FUN_020183C4
	movs r0, #8
	bl FUN_0201833C
	cmp r0, #0
	bne _0225691E
	bl FUN_02022974
_0225691E:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	movs r0, #0xc
	movs r1, #0x56
	movs r3, #6
	bl FUN_02006E3C
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	movs r0, #0xc
	movs r1, #0x55
	movs r3, #6
	bl FUN_02006E60
	movs r0, #0
	adds r1, r0, #0
	bl FUN_022546B8
	movs r0, #8
	bl FUN_0201833C
	cmp r0, #0
	bne _0225696A
	bl FUN_02022974
_0225696A:
	adds r0, r4, #0
	lsrs r1, r6, #5
	bl ov41_022569BC
	ldr r0, [r4, #4]
	movs r1, #7
	bl FUN_02019448
	ldr r1, _022569B4 @ =0x04001000
	ldr r0, _022569B8 @ =0xFFFFE0FF
	ldr r3, [r1]
	ldr r2, [r1]
	str r3, [sp, #0x10]
	ands r0, r2
	lsls r2, r3, #0x13
	lsrs r3, r2, #0x1b
	movs r2, #0x14
	orrs r2, r3
	lsls r2, r2, #8
	orrs r0, r2
	str r0, [r1]
	adds r0, r5, #0
	bl ov41_022568C8
	movs r0, #8
	bl FUN_0201833C
	cmp r0, #0
	bne _022569A8
	bl FUN_02022974
_022569A8:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022569AC: .4byte 0x02256D88
_022569B0: .4byte 0x02256DA4
_022569B4: .4byte 0x04001000
_022569B8: .4byte 0xFFFFE0FF
	thumb_func_end ov41_022568DC

	thumb_func_start ov41_022569BC
ov41_022569BC: @ 0x022569BC
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r3, _02256A18 @ =0x02256D80
	adds r4, r0, #0
	ldrh r5, [r3]
	add r0, sp, #0
	add r2, sp, #0
	strh r5, [r0]
	ldrh r5, [r3, #2]
	strh r5, [r0, #2]
	ldrh r5, [r3, #4]
	ldrh r3, [r3, #6]
	strh r5, [r0, #4]
	strh r3, [r0, #6]
	str r1, [r4, #0x58]
	strh r1, [r0, #6]
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x48
	bl FUN_0201A8D4
	ldr r0, [r4]
	movs r2, #0xbe
	ldr r0, [r0, #8]
	ldr r1, [r4, #0x54]
	lsls r2, r2, #6
	bl FUN_02099DD0
	cmp r0, #0
	bne _02256A02
	adds r0, r4, #0
	adds r0, #0x48
	movs r1, #4
	bl FUN_0201ADA4
_02256A02:
	adds r0, r4, #0
	adds r0, #0x48
	bl FUN_0201A9F4
	adds r4, #0x48
	adds r0, r4, #0
	bl FUN_0201ACCC
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02256A18: .4byte 0x02256D80
	thumb_func_end ov41_022569BC

	thumb_func_start ov41_02256A1C
ov41_02256A1C: @ 0x02256A1C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02255248
	cmp r0, #0
	beq _02256A38
	cmp r0, #1
	beq _02256A44
	pop {r3, r4, r5, pc}
_02256A38:
	movs r0, #1
	str r0, [r4, #0x5c]
	adds r0, r5, #0
	bl FUN_0225524C
	pop {r3, r4, r5, pc}
_02256A44:
	ldr r0, [r4]
	movs r2, #0xbe
	ldr r0, [r0, #8]
	ldr r1, [r4, #0x54]
	lsls r2, r2, #6
	bl FUN_02099DA8
	adds r0, r4, #0
	adds r0, #0x48
	bl FUN_0201A8FC
	ldr r0, [r4, #4]
	movs r1, #6
	bl FUN_02019044
	ldr r0, [r4, #4]
	movs r1, #7
	bl FUN_02019044
	adds r0, r5, #0
	bl ov41_022568C8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov41_02256A1C

	thumb_func_start ov41_02256A74
ov41_02256A74: @ 0x02256A74
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl FUN_0225523C
	adds r0, #0x48
	bl FUN_0201ACCC
	adds r0, r4, #0
	bl ov41_022568C8
	pop {r4, pc}
	thumb_func_end ov41_02256A74

	thumb_func_start ov41_02256A8C
ov41_02256A8C: @ 0x02256A8C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r1, #0
	adds r0, r6, #0
	bl FUN_0225523C
	adds r4, r0, #0
	ldr r1, [r4]
	ldr r0, [r1]
	lsls r2, r0, #1
	ldr r0, [r1, #4]
	movs r1, #0x14
	lsls r3, r0, #1
	asrs r5, r3, #3
	asrs r0, r2, #3
	muls r1, r5, r1
	adds r5, r0, r1
	movs r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r4, #0
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	adds r0, #0x48
	movs r1, #1
	lsrs r2, r2, #0x10
	lsrs r3, r3, #0x10
	bl FUN_0201AE78
	ldr r1, [r4, #0x54]
	lsls r0, r5, #5
	adds r0, r1, r0
	ldr r1, [r4, #0x58]
	movs r2, #0x20
	adds r1, r1, r5
	lsls r1, r1, #5
	blx FUN_020C090C
	adds r0, r6, #0
	bl ov41_022568C8
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov41_02256A8C

	thumb_func_start ov41_02256AE4
ov41_02256AE4: @ 0x02256AE4
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl FUN_0225523C
	adds r0, #0x48
	bl FUN_0201ACCC
	adds r0, r4, #0
	bl ov41_022568C8
	pop {r4, pc}
	thumb_func_end ov41_02256AE4

	thumb_func_start ov41_02256AFC
ov41_02256AFC: @ 0x02256AFC
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r0, r6, #0
	bl FUN_0225523C
	adds r4, r0, #0
	adds r0, r6, #0
	bl FUN_02255240
	adds r5, r0, #0
	ldr r0, _02256B54 @ =0x00005B74
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _02256B1C
	movs r1, #2
	b _02256B1E
_02256B1C:
	movs r1, #1
_02256B1E:
	ldr r0, [r4, #0x28]
	bl FUN_022558C4
	ldr r0, _02256B58 @ =0x00005B75
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _02256B30
	movs r1, #4
	b _02256B32
_02256B30:
	movs r1, #3
_02256B32:
	ldr r0, [r4, #0x2c]
	bl FUN_022558C4
	ldr r0, _02256B5C @ =0x00005B76
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _02256B44
	movs r1, #6
	b _02256B46
_02256B44:
	movs r1, #5
_02256B46:
	ldr r0, [r4, #0x30]
	bl FUN_022558C4
	adds r0, r6, #0
	bl ov41_022568C8
	pop {r4, r5, r6, pc}
	.align 2, 0
_02256B54: .4byte 0x00005B74
_02256B58: .4byte 0x00005B75
_02256B5C: .4byte 0x00005B76
	thumb_func_end ov41_02256AFC

	thumb_func_start ov41_02256B60
ov41_02256B60: @ 0x02256B60
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02255240
	adds r0, r4, #0
	adds r0, #0x48
	movs r1, #4
	bl FUN_0201ADA4
	adds r4, #0x48
	adds r0, r4, #0
	bl FUN_0201ACCC
	adds r0, r5, #0
	bl ov41_022568C8
	pop {r3, r4, r5, pc}
	thumb_func_end ov41_02256B60

	thumb_func_start ov41_02256B8C
ov41_02256B8C: @ 0x02256B8C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02255240
	adds r0, r5, #0
	bl FUN_02255248
	cmp r0, #0
	beq _02256BB6
	ldr r1, [r4, #0x5c]
	cmp r1, #0
	beq _02256BB6
	adds r0, r5, #0
	bl ov41_022568C8
	pop {r3, r4, r5, pc}
_02256BB6:
	cmp r0, #4
	bls _02256BBC
	b _02256D1A
_02256BBC:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02256BC8: @ jump table
	.2byte _02256BD2 - _02256BC8 - 2 @ case 0
	.2byte _02256C06 - _02256BC8 - 2 @ case 1
	.2byte _02256C58 - _02256BC8 - 2 @ case 2
	.2byte _02256CA2 - _02256BC8 - 2 @ case 3
	.2byte _02256CD6 - _02256BC8 - 2 @ case 4
_02256BD2:
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r0, [r0]
	movs r1, #0x15
	lsls r1, r1, #4
	adds r2, r0, r1
	adds r0, r4, #0
	adds r0, #0x68
	strh r2, [r0]
	adds r0, r4, #0
	adds r0, #0x6a
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x68
	ldrh r1, [r1]
	ldr r0, [r4, #0x24]
	bl FUN_02255950
	movs r0, #0
	str r0, [r4, #0x64]
	str r0, [r4, #0x60]
	str r0, [r4, #0x5c]
	adds r0, r5, #0
	bl FUN_0225524C
	pop {r3, r4, r5, pc}
_02256C06:
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x68
	ldrh r1, [r1]
	ldr r0, [r4, #0x24]
	bl FUN_02255950
	adds r0, r4, #0
	adds r0, #0x6a
	ldrh r1, [r0]
	movs r0, #0x15
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x6a
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x6a
	movs r1, #3
	ldrh r0, [r0]
	lsls r1, r1, #0xc
	cmp r0, r1
	blo _02256D1A
	adds r0, r4, #0
	adds r0, #0x6a
	strh r1, [r0]
	movs r0, #1
	str r0, [r4, #0x64]
	adds r0, r5, #0
	bl FUN_0225524C
	pop {r3, r4, r5, pc}
_02256C58:
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x68
	ldrh r1, [r1]
	ldr r0, [r4, #0x24]
	bl FUN_02255950
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _02256D1A
	bl FUN_0201D35C
	movs r1, #7
	ands r0, r1
	str r0, [r4, #0x6c]
	adds r0, r4, #0
	adds r0, #0x6a
	ldrh r1, [r0]
	movs r0, #0x1a
	lsls r0, r0, #8
	cmp r1, r0
	bls _02256C9A
	adds r4, #0x6a
	strh r0, [r4]
_02256C9A:
	adds r0, r5, #0
	bl FUN_0225524C
	pop {r3, r4, r5, pc}
_02256CA2:
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x68
	ldrh r1, [r1]
	ldr r0, [r4, #0x24]
	bl FUN_02255950
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne _02256CCE
	subs r0, r0, #1
	str r0, [r4, #0x6c]
	pop {r3, r4, r5, pc}
_02256CCE:
	adds r0, r5, #0
	bl FUN_0225524C
	pop {r3, r4, r5, pc}
_02256CD6:
	adds r0, r4, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	cmp r0, #0x50
	bls _02256D0E
	adds r0, r4, #0
	adds r0, #0x6a
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x6a
	subs r1, #0x50
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
	ldr r0, [r4, #0x24]
	adds r4, #0x68
	ldrh r1, [r4]
	bl FUN_02255950
	pop {r3, r4, r5, pc}
_02256D0E:
	movs r0, #0
	adds r4, #0x6a
	strh r0, [r4]
	adds r0, r5, #0
	bl ov41_022568C8
_02256D1A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov41_02256B8C

	thumb_func_start ov41_02256D1C
ov41_02256D1C: @ 0x02256D1C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02255240
	adds r0, r5, #0
	bl FUN_02255248
	cmp r0, #0
	beq _02256D3E
	cmp r0, #1
	beq _02256D4A
	pop {r3, r4, r5, pc}
_02256D3E:
	movs r0, #1
	str r0, [r4, #0x60]
	adds r0, r5, #0
	bl FUN_0225524C
	pop {r3, r4, r5, pc}
_02256D4A:
	adds r0, r4, #0
	movs r1, #7
	bl ov41_022568B0
	cmp r0, #0
	beq _02256D62
	ldr r0, _02256D64 @ =0x0000066A
	bl FUN_02254424
	adds r0, r5, #0
	bl ov41_022568C8
_02256D62:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02256D64: .4byte 0x0000066A
	thumb_func_end ov41_02256D1C
	@ 0x02256D68
