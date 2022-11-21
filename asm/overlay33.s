
	thumb_func_start ov33_022561C0
ov33_022561C0: @ 0x022561C0
	ldr r3, _022561C8 @ =FUN_02254238
	ldr r0, _022561CC @ =ov33_022561D4
	ldr r1, _022561D0 @ =ov33_02256374
	bx r3
	.align 2, 0
_022561C8: .4byte FUN_02254238
_022561CC: .4byte ov33_022561D4
_022561D0: .4byte ov33_02256374
	thumb_func_end ov33_022561C0

	thumb_func_start ov33_022561D4
ov33_022561D4: @ 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #8
	movs r1, #0x64
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov33_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 @ =ov33_02256340
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
_02256218: .4byte ov33_02256340
	thumb_func_end ov33_022561D4

	thumb_func_start ov33_0225621C
ov33_0225621C: @ 0x0225621C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	adds r4, r1, #0
	adds r0, #0x5c
	adds r1, r7, #4
	bl ov33_02256474
	cmp r0, #0
	beq _02256306
	movs r0, #0
	strb r0, [r7]
	strb r0, [r7, #1]
	strb r0, [r7, #2]
	str r4, [r7, #0x60]
	bl FUN_020245A4
	bl FUN_0207A268
	movs r1, #0
	str r0, [sp, #4]
	str r1, [sp]
	bl FUN_0207A0F8
	movs r6, #0
	str r0, [r7, #4]
	cmp r0, #0
	ble _022562EA
	adds r4, r7, #0
_02256256:
	ldr r0, [sp, #4]
	adds r1, r6, #0
	bl FUN_0207A0FC
	movs r1, #0x4c
	movs r2, #0
	adds r5, r0, #0
	bl FUN_02074470
	cmp r0, #0
	bne _022562E2
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	strh r0, [r4, #0xc]
	adds r0, r5, #0
	movs r1, #0x70
	movs r2, #0
	bl FUN_02074470
	strh r0, [r4, #0x10]
	adds r0, r5, #0
	bl FUN_02079D40
	str r0, [r4, #8]
	adds r0, r5, #0
	movs r1, #9
	movs r2, #0
	bl FUN_02074470
	bl ov33_0225630C
	cmp r0, #6
	bhi _022562C4
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_022562AA: @ jump table
	.2byte _022562B8 - _022562AA - 2 @ case 0
	.2byte _022562B8 - _022562AA - 2 @ case 1
	.2byte _022562B8 - _022562AA - 2 @ case 2
	.2byte _022562C4 - _022562AA - 2 @ case 3
	.2byte _022562CE - _022562AA - 2 @ case 4
	.2byte _022562CE - _022562AA - 2 @ case 5
	.2byte _022562CE - _022562AA - 2 @ case 6
_022562B8:
	movs r1, #1
	strb r1, [r4, #0x12]
	movs r1, #3
	subs r0, r1, r0
	strb r0, [r4, #0x13]
	b _022562DA
_022562C4:
	movs r0, #2
	strb r0, [r4, #0x12]
	movs r0, #0
	strb r0, [r4, #0x13]
	b _022562DA
_022562CE:
	movs r1, #0
	strb r1, [r4, #0x12]
	movs r1, #3
	subs r0, r1, r0
	rsbs r0, r0, #0
	strb r0, [r4, #0x13]
_022562DA:
	ldr r0, [sp]
	adds r4, #0xc
	adds r0, r0, #1
	str r0, [sp]
_022562E2:
	ldr r0, [r7, #4]
	adds r6, r6, #1
	cmp r6, r0
	blt _02256256
_022562EA:
	ldr r0, [sp]
	movs r1, #0
	str r0, [r7, #4]
	adds r0, r7, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x52
	strh r1, [r0]
	str r1, [r7, #0x54]
	add sp, #8
	str r1, [r7, #0x58]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02256306:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov33_0225621C

	thumb_func_start ov33_0225630C
ov33_0225630C: @ 0x0225630C
	ldr r3, _02256328 @ =0x022577FC
	movs r2, #0
_02256310:
	ldrb r1, [r3]
	cmp r0, r1
	bhs _0225631A
	adds r0, r2, #0
	bx lr
_0225631A:
	adds r2, r2, #1
	adds r3, r3, #1
	cmp r2, #6
	blo _02256310
	movs r0, #6
	bx lr
	nop
_02256328: .4byte 0x022577FC
	thumb_func_end ov33_0225630C

	thumb_func_start ov33_0225632C
ov33_0225632C: @ 0x0225632C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl ov33_022564F0
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov33_0225632C

	thumb_func_start ov33_02256340
ov33_02256340: @ 0x02256340
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldrb r1, [r4]
	adds r5, r0, #0
	cmp r1, #3
	bhs _0225636C
	lsls r2, r1, #2
	ldr r1, _02256370 @ =0x02257804
	adds r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _0225636C
	adds r0, r4, #0
	bl ov33_0225632C
	adds r0, r5, #0
	bl FUN_0200DA58
	ldr r0, [r4, #0x60]
	bl FUN_02254260
_0225636C:
	pop {r3, r4, r5, pc}
	nop
_02256370: .4byte 0x02257804
	thumb_func_end ov33_02256340

	thumb_func_start ov33_02256374
ov33_02256374: @ 0x02256374
	movs r1, #1
	strb r1, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end ov33_02256374

	thumb_func_start ov33_0225637C
ov33_0225637C: @ 0x0225637C
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _02256384
	b _02256386
_02256384:
	movs r1, #2
_02256386:
	strb r1, [r0]
	movs r1, #0
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
	thumb_func_end ov33_0225637C

	thumb_func_start ov33_02256390
ov33_02256390: @ 0x02256390
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563A0
	cmp r0, #1
	beq _022563B0
	b _022563CA
_022563A0:
	ldr r0, [r4, #0x5c]
	movs r1, #0
	bl ov33_02256548
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _022563CA
_022563B0:
	ldr r0, [r4, #0x5c]
	movs r1, #0
	bl ov33_0225656C
	cmp r0, #0
	beq _022563CA
	ldr r0, [r4, #0x60]
	bl FUN_0225424C
	adds r0, r4, #0
	movs r1, #1
	bl ov33_0225637C
_022563CA:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov33_02256390

	thumb_func_start ov33_022563D0
ov33_022563D0: @ 0x022563D0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _022563E4
	movs r1, #2
	bl ov33_0225637C
	movs r0, #0
	pop {r4, pc}
_022563E4:
	adds r1, r4, #0
	adds r0, #0x54
	adds r1, #0x58
	bl FUN_0225446C
	adds r1, r4, #0
	adds r1, #0x50
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r0, [r0]
	cmp r0, #0
	beq _02256432
	ldr r0, [r4, #0x54]
	subs r0, #0x10
	cmp r0, #0xbf
	bhs _0225640A
	movs r1, #1
	b _0225640C
_0225640A:
	movs r1, #0
_0225640C:
	ldr r0, [r4, #0x58]
	subs r0, #0x10
	cmp r0, #0x9f
	bhs _02256418
	movs r0, #1
	b _0225641A
_02256418:
	movs r0, #0
_0225641A:
	tst r0, r1
	beq _0225642A
	bl FUN_02022798
	adds r4, #0x52
	strh r0, [r4]
	movs r0, #0
	pop {r4, pc}
_0225642A:
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x50
	strh r1, [r0]
_02256432:
	movs r0, #0
	str r0, [r4, #0x54]
	str r0, [r4, #0x58]
	adds r4, #0x52
	strh r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov33_022563D0

	thumb_func_start ov33_02256440
ov33_02256440: @ 0x02256440
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256450
	cmp r0, #1
	beq _02256460
	b _0225646E
_02256450:
	ldr r0, [r4, #0x5c]
	movs r1, #1
	bl ov33_02256548
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _0225646E
_02256460:
	ldr r0, [r4, #0x5c]
	bl ov33_02256578
	cmp r0, #0
	beq _0225646E
	movs r0, #1
	pop {r4, pc}
_0225646E:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov33_02256440

	thumb_func_start ov33_02256474
ov33_02256474: @ 0x02256474
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r6, r1, #0
	movs r1, #0xa3
	adds r5, r0, #0
	movs r0, #8
	lsls r1, r1, #2
	bl FUN_02018144
	adds r4, r0, #0
	beq _022564EA
	adds r0, #8
	movs r1, #8
	bl FUN_02255090
	str r6, [r4]
	bl FUN_02254674
	str r0, [r4, #4]
	bl FUN_02254664
	str r0, [r4, #0x30]
	adds r0, r4, #0
	movs r3, #0
	adds r0, #0xb0
	str r3, [r0]
	movs r0, #0x4d
	lsls r0, r0, #2
	adds r6, r4, #0
	adds r2, r3, #0
	adds r1, r0, #4
_022564B2:
	str r2, [r6, r0]
	str r2, [r6, r1]
	adds r3, r3, #1
	adds r6, #0x38
	cmp r3, #6
	blt _022564B2
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0x34
	movs r1, #0xc
	movs r2, #5
	movs r3, #6
	bl FUN_02255958
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0x48
	movs r1, #0xc
	movs r2, #0x24
	movs r3, #0x25
	bl FUN_02255958
	add sp, #4
	str r4, [r5]
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_022564EA:
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov33_02256474

	thumb_func_start ov33_022564F0
ov33_022564F0: @ 0x022564F0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	beq _02256546
	movs r7, #0x4d
	movs r6, #0
	adds r4, r5, #0
	lsls r7, r7, #2
_022564FE:
	ldr r1, [r4, r7]
	cmp r1, #0
	beq _0225650A
	ldr r0, [r5, #0x30]
	bl FUN_022558B0
_0225650A:
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0225651A
	ldr r0, [r5, #0x30]
	bl FUN_022558B0
_0225651A:
	adds r6, r6, #1
	adds r4, #0x38
	cmp r6, #6
	blt _022564FE
	adds r0, r5, #0
	adds r0, #0x34
	bl FUN_022559B0
	adds r0, r5, #0
	adds r0, #0x48
	bl FUN_022559B0
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	cmp r0, #0
	beq _02256540
	bl FUN_0200DA58
_02256540:
	adds r0, r5, #0
	bl FUN_020181C4
_02256546:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov33_022564F0

	thumb_func_start ov33_02256548
ov33_02256548: @ 0x02256548
	push {lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r0, #8
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	ldr r0, _02256568 @ =0x02257878
	ldr r3, [r2]
	bl FUN_0225517C
	add sp, #0xc
	pop {pc}
	nop
_02256568: .4byte 0x02257878
	thumb_func_end ov33_02256548

	thumb_func_start ov33_0225656C
ov33_0225656C: @ 0x0225656C
	ldr r3, _02256574 @ =FUN_02255130
	adds r0, #8
	bx r3
	nop
_02256574: .4byte FUN_02255130
	thumb_func_end ov33_0225656C

	thumb_func_start ov33_02256578
ov33_02256578: @ 0x02256578
	ldr r3, _02256580 @ =FUN_02255154
	adds r0, #8
	bx r3
	nop
_02256580: .4byte FUN_02255154
	thumb_func_end ov33_02256578

	thumb_func_start ov33_02256584
ov33_02256584: @ 0x02256584
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0225523C
	adds r0, #8
	adds r1, r4, #0
	bl FUN_02255224
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov33_02256584

	thumb_func_start ov33_02256598
ov33_02256598: @ 0x02256598
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r1, #0
	adds r0, r4, #0
	bl FUN_0225523C
	adds r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _02256628 @ =0x0225785C
	movs r1, #6
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	movs r0, #0xc
	movs r1, #7
	movs r3, #6
	bl FUN_02006E3C
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r5, #4]
	movs r1, #6
	adds r3, r2, #0
	bl FUN_02019CB8
	movs r0, #0
	adds r1, r0, #0
	bl FUN_022546B8
	ldr r0, [r5, #4]
	movs r1, #6
	bl FUN_02019448
	ldr r1, [r5]
	adds r0, r5, #0
	bl ov33_02256634
	ldr r1, [r5]
	adds r0, r5, #0
	bl ov33_0225681C
	ldr r1, _0225662C @ =0x04001000
	ldr r0, _02256630 @ =0xFFFFE0FF
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
	adds r0, r4, #0
	bl ov33_02256584
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_02256628: .4byte 0x0225785C
_0225662C: .4byte 0x04001000
_02256630: .4byte 0xFFFFE0FF
	thumb_func_end ov33_02256598

	thumb_func_start ov33_02256634
ov33_02256634: @ 0x02256634
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r0, [sp, #0xc]
	movs r0, #1
	str r1, [sp, #0x10]
	bl FUN_02255360
	movs r0, #0
	str r0, [sp]
	movs r2, #1
	str r2, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	movs r0, #0xc
	movs r1, #0x23
	lsls r3, r0, #9
	bl FUN_02006EC0
	movs r0, #0x13
	movs r1, #8
	bl FUN_02006C24
	str r0, [sp, #0x1c]
	cmp r0, #0
	bne _02256668
	b _022567C8
_02256668:
	movs r0, #0
	str r0, [sp, #0x18]
	adds r1, r0, #0
	add r0, sp, #0x2c
	strh r1, [r0, #0xc]
	ldr r1, [sp, #0x18]
	strb r1, [r0, #0xe]
	movs r1, #2
	strb r1, [r0, #0xf]
	movs r1, #1
	strb r1, [r0, #0x11]
	ldr r0, [sp, #0x10]
	ldr r0, [r0]
	cmp r0, #0
	bgt _02256688
	b _022567C2
_02256688:
	ldr r0, [sp, #0x18]
	ldr r5, [sp, #0xc]
	str r0, [sp, #0x14]
	adds r7, r0, #0
	adds r0, r5, #0
	str r0, [sp, #0x24]
	adds r0, #0x34
	str r0, [sp, #0x24]
	adds r0, r5, #0
	str r0, [sp, #0x28]
	adds r0, #0x48
	ldr r4, [sp, #0x10]
	ldr r6, _022567CC @ =0x02257844
	str r0, [sp, #0x28]
_022566A4:
	ldr r0, [sp, #0x1c]
	ldr r1, [r4, #4]
	movs r2, #8
	bl FUN_02006CB8
	add r1, sp, #0x2c
	str r0, [sp, #0x20]
	blx FUN_020A7118
	ldr r0, [sp, #0x2c]
	movs r1, #1
	ldr r0, [r0, #0x14]
	lsls r1, r1, #0xa
	blx FUN_020C2C54
	ldr r0, [sp, #0x2c]
	movs r2, #1
	ldr r0, [r0, #0x14]
	ldr r1, [sp, #0x14]
	lsls r2, r2, #0xa
	blx FUN_020C0314
	ldr r0, [sp, #0x20]
	bl FUN_020181C4
	ldrh r0, [r6]
	movs r1, #1
	ldr r2, [sp, #0x24]
	lsls r0, r0, #0xc
	str r0, [sp, #0x30]
	ldrh r0, [r6, #2]
	lsls r0, r0, #0xc
	str r0, [sp, #0x34]
	add r0, sp, #0x2c
	strb r1, [r0, #0x10]
	ldr r0, [sp, #0xc]
	add r1, sp, #0x30
	ldr r0, [r0, #0x30]
	bl FUN_02255810
	movs r1, #0x4d
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	adds r1, r7, #0
	bl FUN_02255940
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xc]
	movs r2, #0
	bl FUN_02079EDC
	adds r1, r0, #0
	movs r0, #0x4d
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r1, #1
	bl FUN_02255938
	movs r1, #0
	add r0, sp, #0x2c
	strb r1, [r0, #0x10]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x28]
	ldr r0, [r0, #0x30]
	add r1, sp, #0x30
	bl FUN_02255810
	movs r1, #0x4e
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0225675C
	movs r1, #1
	bl FUN_02255914
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0xc0
	bl FUN_02255940
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02255938
	b _02256760
_0225675C:
	bl FUN_02022974
_02256760:
	ldrh r0, [r4, #8]
	ldrh r1, [r4, #0xc]
	movs r2, #0x1c
	bl FUN_020759CC
	movs r1, #0x59
	lsls r1, r1, #2
	strb r0, [r5, r1]
	ldr r0, _022567D0 @ =0x00000165
	movs r1, #0
	strb r1, [r5, r0]
	adds r0, r0, #1
	strb r1, [r5, r0]
	movs r1, #0x52
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x30]
	lsls r1, r1, #2
	str r2, [r5, r1]
	adds r1, r1, #4
	str r0, [r5, r1]
	movs r0, #0x15
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r5, r0]
	adds r0, r0, #4
	str r1, [r5, r0]
	movs r0, #0x56
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r0, #4
	str r1, [r5, r0]
	movs r0, #1
	ldr r1, [sp, #0x14]
	lsls r0, r0, #0xa
	adds r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	adds r4, #0xc
	adds r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	adds r6, r6, #4
	ldr r1, [r0]
	ldr r0, [sp, #0x18]
	adds r5, #0x38
	adds r7, #0x20
	cmp r0, r1
	bge _022567C2
	b _022566A4
_022567C2:
	ldr r0, [sp, #0x1c]
	bl FUN_02006CA8
_022567C8:
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022567CC: .4byte 0x02257844
_022567D0: .4byte 0x00000165
	thumb_func_end ov33_02256634

	thumb_func_start ov33_022567D4
ov33_022567D4: @ 0x022567D4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0201D35C
	movs r1, #0x3f
	ands r0, r1
	subs r0, #0x20
	lsls r4, r0, #0xc
	bl FUN_0201D35C
	movs r1, #0x3f
	ands r0, r1
	subs r0, #0x20
	lsls r0, r0, #0xc
	str r4, [r5]
	str r0, [r5, #4]
	movs r0, #0
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r1, r5, #0
	blx FUN_020BD3E4
	ldr r1, [r5]
	asrs r0, r1, #3
	lsrs r0, r0, #0x1c
	adds r0, r1, r0
	asrs r0, r0, #4
	str r0, [r5]
	ldr r1, [r5, #4]
	asrs r0, r1, #3
	lsrs r0, r0, #0x1c
	adds r0, r1, r0
	asrs r0, r0, #4
	str r0, [r5, #4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov33_022567D4

	thumb_func_start ov33_0225681C
ov33_0225681C: @ 0x0225681C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	str r0, [sp]
	ldr r0, [r7]
	movs r6, #0
	cmp r0, #0
	ble _02256878
	movs r1, #0x4f
	ldr r0, [sp]
	lsls r1, r1, #2
	adds r4, r0, r1
	adds r5, r0, #0
_02256834:
	adds r0, r4, #0
	bl ov33_022567D4
	movs r0, #0x59
	lsls r0, r0, #2
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _02256852
	movs r0, #0x4d
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #6
	bl FUN_022558C4
	b _0225686C
_02256852:
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	ble _02256860
	movs r1, #7
	b _02256862
_02256860:
	movs r1, #6
_02256862:
	movs r0, #0x4d
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_022558C4
_0225686C:
	ldr r0, [r7]
	adds r6, r6, #1
	adds r4, #0x38
	adds r5, #0x38
	cmp r6, r0
	blt _02256834
_02256878:
	ldr r0, [sp]
	bl ov33_022568B4
	ldr r0, _02256894 @ =ov33_02256904
	ldr r1, [sp]
	movs r2, #1
	bl FUN_0200D9E8
	ldr r1, [sp]
	adds r1, #0xb0
	str r1, [sp]
	str r0, [r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256894: .4byte ov33_02256904
	thumb_func_end ov33_0225681C

	thumb_func_start ov33_02256898
ov33_02256898: @ 0x02256898
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl FUN_0225523C
	ldr r0, [r0, #4]
	movs r1, #6
	bl FUN_02019044
	adds r0, r4, #0
	bl ov33_02256584
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov33_02256898

	thumb_func_start ov33_022568B4
ov33_022568B4: @ 0x022568B4
	push {r3, r4, r5, r6}
	adds r1, r0, #0
	movs r5, #0
	adds r1, #0xe4
	str r5, [r1]
	ldr r1, [r0]
	ldr r3, [r1]
	cmp r3, #0
	ble _022568E0
	movs r1, #0x16
	lsls r1, r1, #4
	adds r6, r0, #0
	adds r4, r5, #0
	adds r2, r1, #3
_022568D0:
	strb r4, [r6, r1]
	strb r4, [r6, r2]
	ldr r3, [r0]
	adds r5, r5, #1
	ldr r3, [r3]
	adds r6, #0x38
	cmp r5, r3
	blt _022568D0
_022568E0:
	adds r1, r0, #0
	adds r1, #0xec
	str r3, [r1]
	adds r1, r0, #0
	adds r1, #0xec
	ldr r1, [r1]
	adds r0, #0xf0
	str r1, [r0]
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov33_022568B4

	thumb_func_start ov33_022568F4
ov33_022568F4: @ 0x022568F4
	adds r2, r0, #0
	adds r2, #0xe4
	str r1, [r2]
	movs r1, #0
	adds r0, #0xe8
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov33_022568F4

	thumb_func_start ov33_02256904
ov33_02256904: @ 0x02256904
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5]
	adds r0, r4, #0
	adds r0, #0x4c
	ldrh r0, [r0]
	cmp r0, #0
	beq _0225697E
	movs r0, #0xa1
	ldr r1, [r4, #0x50]
	lsls r0, r0, #2
	str r1, [r5, r0]
	ldr r1, [r4, #0x54]
	adds r0, r0, #4
	subs r1, #8
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov33_022569C0
	adds r1, r5, #0
	adds r1, #0xec
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xec
	ldr r1, [r0]
	ldr r0, [r4]
	cmp r1, r0
	bhs _02256940
	movs r1, #1
	b _02256942
_02256940:
	movs r1, #0
_02256942:
	adds r0, r5, #0
	adds r0, #0xf8
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0xf8
	ldr r0, [r0]
	cmp r0, #0
	beq _02256970
	adds r0, r5, #0
	adds r0, #0xec
	ldr r1, [r0]
	adds r0, r5, #0
	adds r0, #0xf0
	ldr r0, [r0]
	cmp r1, r0
	beq _02256970
	movs r0, #0xc
	muls r0, r1, r0
	adds r1, r4, r0
	ldrh r0, [r1, #8]
	ldrh r1, [r1, #0xc]
	bl FUN_02254444
_02256970:
	adds r0, r5, #0
	adds r0, #0xec
	ldr r1, [r0]
	adds r0, r5, #0
	adds r0, #0xf0
	str r1, [r0]
	b _0225698E
_0225697E:
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0xf8
	str r1, [r0]
	adds r0, r5, #0
	ldr r1, [r4]
	adds r0, #0xf0
	str r1, [r0]
_0225698E:
	adds r2, r5, #0
	adds r2, #0xe4
	ldr r2, [r2]
	adds r0, r5, #0
	lsls r3, r2, #2
	ldr r2, _022569BC @ =0x02257818
	adds r1, r4, #0
	ldr r2, [r2, r3]
	blx r2
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov33_02256B44
	adds r0, r5, #0
	adds r0, #0xe4
	ldr r0, [r0]
	cmp r0, #4
	beq _022569BA
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov33_022572A0
_022569BA:
	pop {r3, r4, r5, pc}
	.align 2, 0
_022569BC: .4byte 0x02257818
	thumb_func_end ov33_02256904

	thumb_func_start ov33_022569C0
ov33_022569C0: @ 0x022569C0
	push {r4, r5, r6, r7}
	adds r5, r0, #0
	ldr r0, [r5]
	movs r1, #0
	ldr r4, [r0]
	cmp r4, #0
	ble _02256A0C
	movs r0, #0xa1
	lsls r0, r0, #2
	ldr r2, [r5, r0]
	adds r0, r0, #4
	ldr r3, [r5, r0]
_022569D8:
	movs r0, #0x52
	lsls r0, r0, #2
	movs r6, #0x53
	ldr r0, [r5, r0]
	lsls r6, r6, #2
	ldr r6, [r5, r6]
	asrs r0, r0, #0xc
	asrs r6, r6, #0xc
	subs r0, r2, r0
	subs r7, r3, r6
	adds r6, r0, #0
	muls r6, r0, r6
	adds r0, r7, #0
	muls r0, r7, r0
	adds r6, r6, r0
	movs r0, #1
	lsls r0, r0, #8
	cmp r6, r0
	bge _02256A04
	adds r0, r1, #0
	pop {r4, r5, r6, r7}
	bx lr
_02256A04:
	adds r1, r1, #1
	adds r5, #0x38
	cmp r1, r4
	blt _022569D8
_02256A0C:
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end ov33_022569C0

	thumb_func_start ov33_02256A14
ov33_02256A14: @ 0x02256A14
	push {r4, r5}
	lsls r4, r0, #0xc
	ldr r0, [r3]
	subs r0, r4, r0
	lsls r4, r1, #0xc
	ldr r1, [r3, #4]
	subs r5, r4, r1
	asrs r1, r0, #0xc
	adds r4, r0, #0
	muls r4, r1, r4
	adds r1, r2, #0
	muls r1, r2, r1
	asrs r0, r5, #0xc
	adds r3, r5, #0
	muls r3, r0, r3
	lsls r2, r1, #0xc
	adds r1, r4, r3
	movs r0, #0
	cmp r2, r1
	ble _02256A3E
	movs r0, #1
_02256A3E:
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ov33_02256A14

	thumb_func_start ov33_02256A44
ov33_02256A44: @ 0x02256A44
	push {r3, lr}
	adds r1, #0x4e
	ldrh r1, [r1]
	cmp r1, #0
	beq _02256A60
	adds r1, r0, #0
	adds r1, #0xf8
	ldr r2, [r1]
	adds r1, r0, #0
	adds r1, #0xfc
	str r2, [r1]
	movs r1, #1
	bl ov33_022568F4
_02256A60:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov33_02256A44

	thumb_func_start ov33_02256A64
ov33_02256A64: @ 0x02256A64
	push {r3, lr}
	adds r1, #0x4c
	ldrh r1, [r1]
	cmp r1, #0
	beq _02256A8E
	adds r1, r0, #0
	adds r1, #0xe8
	ldr r1, [r1]
	adds r2, r1, #1
	adds r1, r0, #0
	adds r1, #0xe8
	str r2, [r1]
	adds r1, r0, #0
	adds r1, #0xe8
	ldr r1, [r1]
	cmp r1, #6
	bls _02256AA6
	movs r1, #2
	bl ov33_022568F4
	pop {r3, pc}
_02256A8E:
	adds r1, r0, #0
	adds r1, #0xfc
	ldr r1, [r1]
	cmp r1, #0
	beq _02256AA0
	movs r1, #0
	bl ov33_022568F4
	pop {r3, pc}
_02256AA0:
	movs r1, #3
	bl ov33_022568F4
_02256AA6:
	pop {r3, pc}
	thumb_func_end ov33_02256A64

	thumb_func_start ov33_02256AA8
ov33_02256AA8: @ 0x02256AA8
	push {r3, lr}
	adds r1, #0x4c
	ldrh r1, [r1]
	cmp r1, #0
	bne _02256AB8
	movs r1, #0
	bl ov33_022568F4
_02256AB8:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov33_02256AA8

	thumb_func_start ov33_02256ABC
ov33_02256ABC: @ 0x02256ABC
	push {r3, lr}
	adds r1, #0x4e
	ldrh r1, [r1]
	cmp r1, #0
	bne _02256AE6
	adds r1, r0, #0
	adds r1, #0xe8
	ldr r1, [r1]
	adds r2, r1, #1
	adds r1, r0, #0
	adds r1, #0xe8
	str r2, [r1]
	adds r1, r0, #0
	adds r1, #0xe8
	ldr r1, [r1]
	cmp r1, #6
	bls _02256B04
	movs r1, #0
	bl ov33_022568F4
	pop {r3, pc}
_02256AE6:
	adds r1, r0, #0
	adds r1, #0xf8
	ldr r1, [r1]
	cmp r1, #0
	beq _02256AFE
	adds r2, r0, #0
	movs r1, #1
	adds r2, #0xfc
	str r1, [r2]
	bl ov33_022568F4
	pop {r3, pc}
_02256AFE:
	movs r1, #4
	bl ov33_022568F4
_02256B04:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov33_02256ABC

	thumb_func_start ov33_02256B08
ov33_02256B08: @ 0x02256B08
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0xe8
	ldr r1, [r1]
	cmp r1, #0
	bne _02256B28
	bl ov33_02256C08
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r0, [r0]
	adds r4, #0xe8
	adds r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_02256B28:
	bl ov33_02256C40
	cmp r0, #0
	beq _02256B38
	adds r0, r4, #0
	movs r1, #0
	bl ov33_022568F4
_02256B38:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov33_02256B08

	thumb_func_start ov33_02256B3C
ov33_02256B3C: @ 0x02256B3C
	push {r0, r1, r2, r3}
	add sp, #0x10
	bx lr
	.align 2, 0
	thumb_func_end ov33_02256B3C

	thumb_func_start ov33_02256B44
ov33_02256B44: @ 0x02256B44
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	str r0, [sp]
	ldr r0, [r7]
	movs r4, #0
	cmp r0, #0
	ble _02256B92
	ldr r5, [sp]
_02256B54:
	ldr r0, _02256B9C @ =0x00000163
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _02256B74
	ldr r0, _02256B9C @ =0x00000163
	ldr r2, _02256B9C @ =0x00000163
	ldrb r0, [r5, r0]
	subs r1, r0, #1
	ldr r0, _02256B9C @ =0x00000163
	strb r1, [r5, r0]
	ldrb r2, [r5, r2]
	ldr r0, _02256BA0 @ =0x022578C0
	adds r1, r4, #0
	bl ov33_02256B3C
	b _02256B88
_02256B74:
	movs r3, #0x16
	lsls r3, r3, #4
	ldrb r3, [r5, r3]
	ldr r0, [sp]
	adds r1, r7, #0
	lsls r6, r3, #2
	ldr r3, _02256BA4 @ =0x0225782C
	adds r2, r4, #0
	ldr r3, [r3, r6]
	blx r3
_02256B88:
	ldr r0, [r7]
	adds r4, r4, #1
	adds r5, #0x38
	cmp r4, r0
	blt _02256B54
_02256B92:
	ldr r0, _02256BA8 @ =0x022578D4
	bl ov33_02256B3C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256B9C: .4byte 0x00000163
_02256BA0: .4byte 0x022578C0
_02256BA4: .4byte 0x0225782C
_02256BA8: .4byte 0x022578D4
	thumb_func_end ov33_02256B44

	thumb_func_start ov33_02256BAC
ov33_02256BAC: @ 0x02256BAC
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r7, r2, #0
	movs r2, #0x38
	adds r4, r6, #0
	muls r4, r2, r4
	adds r5, r0, #0
	movs r2, #0x16
	adds r3, r5, r4
	lsls r2, r2, #4
	ldrb r2, [r3, r2]
	cmp r2, #3
	bne _02256BCA
	bl ov33_02256CC4
_02256BCA:
	movs r0, #0x16
	lsls r0, r0, #4
	adds r2, r5, r0
	movs r3, #0x16
	lsls r3, r3, #4
	strb r7, [r2, r4]
	movs r1, #0
	adds r0, r5, r4
	adds r3, #8
	str r1, [r0, r3]
	movs r3, #0x16
	lsls r3, r3, #4
	subs r3, #0xc
	str r1, [r0, r3]
	movs r3, #0x16
	lsls r3, r3, #4
	subs r3, #8
	str r1, [r0, r3]
	movs r3, #0x16
	lsls r3, r3, #4
	subs r3, r3, #4
	str r1, [r0, r3]
	ldrb r0, [r2, r4]
	cmp r0, #3
	bne _02256C04
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov33_02256C54
_02256C04:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov33_02256BAC

	thumb_func_start ov33_02256C08
ov33_02256C08: @ 0x02256C08
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r6]
	movs r4, #0
	ldr r1, [r0]
	cmp r1, #0
	ble _02256C34
	adds r5, r6, #0
	adds r7, r4, #0
_02256C1A:
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #5
	bl ov33_02256BAC
	ldr r0, _02256C3C @ =0x00000163
	adds r4, r4, #1
	strb r7, [r5, r0]
	ldr r0, [r6]
	adds r5, #0x38
	ldr r1, [r0]
	cmp r4, r1
	blt _02256C1A
_02256C34:
	movs r0, #1
	lsls r0, r0, #8
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02256C3C: .4byte 0x00000163
	thumb_func_end ov33_02256C08

	thumb_func_start ov33_02256C40
ov33_02256C40: @ 0x02256C40
	movs r1, #1
	lsls r1, r1, #8
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _02256C4E
	movs r0, #1
	bx lr
_02256C4E:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov33_02256C40

	thumb_func_start ov33_02256C54
ov33_02256C54: @ 0x02256C54
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0xc
	adds r7, r1, #0
	muls r7, r0, r7
	ldr r0, [r5]
	adds r0, r0, r7
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _02256C94
	movs r0, #0x4e
	lsls r0, r0, #2
	adds r4, r5, r0
	movs r0, #0x38
	adds r6, r1, #0
	muls r6, r0, r6
	ldr r0, [r5, #0x30]
	ldr r1, [r4, r6]
	movs r2, #0
	bl FUN_0225591C
	ldr r1, [r5]
	ldr r0, [r4, r6]
	adds r1, r1, r7
	ldrb r1, [r1, #0xf]
	subs r1, r1, #1
	bl FUN_022558C4
	ldr r0, [r4, r6]
	movs r1, #0
	bl FUN_02255914
_02256C94:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov33_02256C54

	thumb_func_start ov33_02256C98
ov33_02256C98: @ 0x02256C98
	push {r3, r4, r5, lr}
	movs r2, #0x4e
	lsls r2, r2, #2
	adds r4, r0, r2
	movs r2, #0x38
	adds r5, r1, #0
	muls r5, r2, r5
	ldr r0, [r0, #0x30]
	ldr r1, [r4, r5]
	movs r2, #2
	bl FUN_0225591C
	ldr r0, [r4, r5]
	movs r1, #3
	bl FUN_022558C4
	ldr r0, [r4, r5]
	movs r1, #0
	bl FUN_02255914
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov33_02256C98

	thumb_func_start ov33_02256CC4
ov33_02256CC4: @ 0x02256CC4
	movs r2, #0x38
	muls r2, r1, r2
	adds r1, r0, r2
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	ldr r3, _02256CD8 @ =FUN_02255914
	movs r1, #1
	bx r3
	nop
_02256CD8: .4byte FUN_02255914
	thumb_func_end ov33_02256CC4

	thumb_func_start ov33_02256CDC
ov33_02256CDC: @ 0x02256CDC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r2, #0
	adds r5, r0, #0
	adds r0, r6, #0
	adds r4, r1, #0
	blx FUN_020BD384
	cmp r0, r5
	ble _02256D1A
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r1, #0
	movs r1, #0x64
	blx FUN_020E2178
	adds r4, r0, #0
	adds r0, r6, #0
	add r1, sp, #0
	blx FUN_020BD3E4
	movs r0, #0
	str r0, [r6]
	str r0, [r6, #4]
	str r0, [r6, #8]
	adds r0, r4, #0
	add r1, sp, #0
	adds r2, r6, #0
	adds r3, r6, #0
	blx FUN_020BD628
_02256D1A:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov33_02256CDC

	thumb_func_start ov33_02256D20
ov33_02256D20: @ 0x02256D20
	ldr r1, [r0]
	cmp r1, #0
	bne _02256D30
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _02256D30
	movs r0, #1
	bx lr
_02256D30:
	movs r0, #0
	bx lr
	thumb_func_end ov33_02256D20

	thumb_func_start ov33_02256D34
ov33_02256D34: @ 0x02256D34
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	adds r6, r1, #0
	ldr r0, _02256E18 @ =0x022578E4
	adds r1, r4, #0
	bl ov33_02256B3C
	adds r0, r6, #0
	adds r0, #0x4c
	ldrh r0, [r0]
	cmp r0, #0
	bne _02256D66
	movs r1, #0x60
	adds r2, r1, #0
	adds r2, #0xdc
	adds r3, r5, r2
	movs r2, #0x38
	movs r0, #3
	muls r2, r4, r2
	lsls r0, r0, #8
	adds r2, r3, r2
	bl ov33_02256CDC
	pop {r3, r4, r5, r6, r7, pc}
_02256D66:
	adds r0, r5, #0
	adds r0, #0xf8
	ldr r0, [r0]
	cmp r0, #0
	bne _02256DC8
	movs r1, #0xa1
	movs r3, #0x52
	lsls r1, r1, #2
	lsls r3, r3, #2
	ldr r0, [r5, r1]
	adds r1, r1, #4
	adds r7, r5, r3
	movs r3, #0x38
	muls r3, r4, r3
	ldr r1, [r5, r1]
	movs r2, #0x30
	adds r3, r7, r3
	bl ov33_02256A14
	cmp r0, #0
	beq _02256E14
	movs r0, #0xc
	muls r0, r4, r0
	adds r0, r6, r0
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	beq _02256DB2
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl ov33_02256BAC
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov33_02256E1C
	pop {r3, r4, r5, r6, r7, pc}
_02256DB2:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl ov33_02256BAC
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov33_02256F34
	pop {r3, r4, r5, r6, r7, pc}
_02256DC8:
	adds r0, r5, #0
	adds r0, #0xec
	ldr r0, [r0]
	cmp r0, r4
	bne _02256E14
	movs r1, #0xa1
	movs r3, #0x52
	lsls r1, r1, #2
	lsls r3, r3, #2
	ldr r0, [r5, r1]
	adds r1, r1, #4
	adds r7, r5, r3
	movs r3, #0x38
	muls r3, r4, r3
	ldr r1, [r5, r1]
	movs r2, #8
	adds r3, r7, r3
	bl ov33_02256A14
	cmp r0, #0
	beq _02256E14
	movs r0, #0xc
	muls r0, r4, r0
	adds r0, r6, r0
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	beq _02256E0A
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #3
	bl ov33_02256BAC
	pop {r3, r4, r5, r6, r7, pc}
_02256E0A:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #4
	bl ov33_02256BAC
_02256E14:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256E18: .4byte 0x022578E4
	thumb_func_end ov33_02256D34

	thumb_func_start ov33_02256E1C
ov33_02256E1C: @ 0x02256E1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r2, #0
	adds r6, r1, #0
	ldr r0, _02256F2C @ =0x022578F8
	adds r1, r4, #0
	bl ov33_02256B3C
	adds r0, r6, #0
	adds r0, #0x4c
	ldrh r0, [r0]
	cmp r0, #0
	beq _02256F1C
	movs r0, #0x52
	lsls r0, r0, #2
	adds r7, r5, r0
	movs r0, #0x38
	muls r0, r4, r0
	movs r1, #0xa1
	str r0, [sp]
	lsls r1, r1, #2
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r3, [sp]
	ldr r1, [r5, r1]
	movs r2, #0x40
	adds r3, r7, r3
	bl ov33_02256A14
	cmp r0, #0
	beq _02256F1C
	adds r0, r5, #0
	adds r0, #0xf8
	ldr r0, [r0]
	cmp r0, #0
	beq _02256E70
	adds r0, r5, #0
	adds r0, #0xec
	ldr r0, [r0]
	cmp r0, r4
	bne _02256F26
_02256E70:
	movs r1, #0xa1
	lsls r1, r1, #2
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r3, [sp]
	ldr r1, [r5, r1]
	movs r2, #8
	adds r3, r7, r3
	bl ov33_02256A14
	cmp r0, #0
	beq _02256E96
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #3
	bl ov33_02256BAC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02256E96:
	movs r1, #0xa2
	lsls r1, r1, #2
	ldr r0, [r5, r1]
	subs r1, r1, #4
	ldr r1, [r5, r1]
	lsls r0, r0, #0xc
	lsls r1, r1, #0xc
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	ldr r1, [sp]
	str r0, [sp, #0xc]
	add r0, sp, #4
	adds r1, r7, r1
	adds r2, r0, #0
	blx FUN_020BD1B0
	add r0, sp, #4
	adds r1, r0, #0
	blx FUN_020BD3E4
	movs r0, #0xc
	adds r7, r4, #0
	muls r7, r0, r7
	adds r6, #0xf
	ldrb r2, [r6, r7]
	ldr r0, _02256F30 @ =0x02257814
	ldr r1, [sp, #4]
	ldrb r0, [r0, r2]
	muls r0, r1, r0
	movs r1, #0x64
	blx FUN_020E1F6C
	str r0, [sp, #4]
	ldrb r2, [r6, r7]
	ldr r0, _02256F30 @ =0x02257814
	ldr r1, [sp, #8]
	ldrb r0, [r0, r2]
	muls r0, r1, r0
	movs r1, #0x64
	blx FUN_020E1F6C
	ldr r2, [sp, #4]
	str r0, [sp, #8]
	asrs r1, r2, #3
	lsrs r1, r1, #0x1c
	adds r1, r2, r1
	asrs r1, r1, #4
	str r1, [sp, #4]
	asrs r1, r0, #3
	lsrs r1, r1, #0x1c
	adds r1, r0, r1
	asrs r0, r1, #4
	str r0, [sp, #8]
	movs r0, #0x38
	muls r0, r4, r0
	adds r1, r5, r0
	movs r0, #0x4f
	add r3, sp, #4
	lsls r0, r0, #2
	adds r2, r1, r0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	add sp, #0x10
	str r0, [r2]
	pop {r3, r4, r5, r6, r7, pc}
_02256F1C:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl ov33_02256BAC
_02256F26:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256F2C: .4byte 0x022578F8
_02256F30: .4byte 0x02257814
	thumb_func_end ov33_02256E1C

	thumb_func_start ov33_02256F34
ov33_02256F34: @ 0x02256F34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r6, r2, #0
	adds r4, r1, #0
	ldr r0, _02257008 @ =0x0225790C
	adds r1, r6, #0
	bl ov33_02256B3C
	adds r0, r4, #0
	adds r0, #0x4c
	ldrh r0, [r0]
	cmp r0, #0
	beq _02256FFA
	movs r0, #0x52
	lsls r0, r0, #2
	adds r7, r5, r0
	movs r0, #0x38
	muls r0, r6, r0
	movs r1, #0xa1
	str r0, [sp]
	lsls r1, r1, #2
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r3, [sp]
	ldr r1, [r5, r1]
	movs r2, #0x40
	adds r3, r7, r3
	bl ov33_02256A14
	cmp r0, #0
	beq _02256FFA
	movs r1, #0xa2
	lsls r1, r1, #2
	ldr r0, [r5, r1]
	subs r1, r1, #4
	ldr r1, [r5, r1]
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	movs r0, #0
	lsls r1, r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [sp]
	str r1, [sp, #4]
	add r1, sp, #4
	adds r0, r7, r0
	adds r2, r1, #0
	blx FUN_020BD1B0
	add r0, sp, #4
	adds r1, r0, #0
	blx FUN_020BD3E4
	movs r0, #0xc
	adds r7, r6, #0
	muls r7, r0, r7
	adds r4, #0xf
	ldrb r2, [r4, r7]
	ldr r0, _0225700C @ =0x02257810
	ldr r1, [sp, #4]
	ldrb r0, [r0, r2]
	muls r0, r1, r0
	movs r1, #0x64
	blx FUN_020E1F6C
	str r0, [sp, #4]
	ldrb r2, [r4, r7]
	ldr r0, _0225700C @ =0x02257810
	ldr r1, [sp, #8]
	ldrb r0, [r0, r2]
	muls r0, r1, r0
	movs r1, #0x64
	blx FUN_020E1F6C
	ldr r2, [sp, #4]
	str r0, [sp, #8]
	asrs r1, r2, #3
	lsrs r1, r1, #0x1c
	adds r1, r2, r1
	asrs r1, r1, #4
	str r1, [sp, #4]
	asrs r1, r0, #3
	lsrs r1, r1, #0x1c
	adds r1, r0, r1
	asrs r0, r1, #4
	str r0, [sp, #8]
	movs r0, #0x38
	muls r0, r6, r0
	adds r1, r5, r0
	movs r0, #0x4f
	add r3, sp, #4
	lsls r0, r0, #2
	adds r2, r1, r0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	add sp, #0x10
	str r0, [r2]
	pop {r3, r4, r5, r6, r7, pc}
_02256FFA:
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl ov33_02256BAC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02257008: .4byte 0x0225790C
_0225700C: .4byte 0x02257810
	thumb_func_end ov33_02256F34

	thumb_func_start ov33_02257010
ov33_02257010: @ 0x02257010
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r7, r2, #0
	adds r4, r1, #0
	ldr r0, _022570E4 @ =0x02257920
	adds r1, r7, #0
	bl ov33_02256B3C
	adds r4, #0x4c
	ldrh r0, [r4]
	cmp r0, #0
	beq _022570D6
	movs r1, #0xa2
	lsls r1, r1, #2
	ldr r0, [r5, r1]
	adds r4, r7, #0
	lsls r2, r0, #0xc
	subs r0, r1, #4
	ldr r0, [r5, r0]
	lsls r0, r0, #0xc
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #0x38
	muls r4, r0, r4
	movs r0, #0x52
	lsls r0, r0, #2
	adds r6, r5, r0
	str r2, [sp, #4]
	subs r0, r1, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	movs r2, #8
	adds r3, r6, r4
	bl ov33_02256A14
	cmp r0, #0
	beq _022570B2
	add r0, sp, #0
	adds r1, r6, r4
	adds r2, r0, #0
	blx FUN_020BD1B0
	add r0, sp, #0
	blx FUN_020BD384
	movs r1, #6
	lsls r1, r1, #8
	cmp r0, r1
	ble _02257084
	add r0, sp, #0
	adds r1, r0, #0
	blx FUN_020BD3E4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
_02257084:
	ldr r1, [sp]
	add r3, sp, #0
	asrs r0, r1, #3
	lsrs r0, r0, #0x1c
	adds r0, r1, r0
	asrs r0, r0, #4
	ldr r1, [sp, #4]
	str r0, [sp]
	asrs r0, r1, #3
	lsrs r0, r0, #0x1c
	adds r0, r1, r0
	asrs r0, r0, #4
	str r0, [sp, #4]
	movs r0, #0x4f
	adds r1, r5, r4
	lsls r0, r0, #2
	adds r2, r1, r0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	add sp, #0xc
	str r0, [r2]
	pop {r4, r5, r6, r7, pc}
_022570B2:
	movs r1, #0xa1
	lsls r1, r1, #2
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	movs r2, #0x40
	adds r3, r6, r4
	bl ov33_02256A14
	cmp r0, #0
	beq _022570D6
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #1
	bl ov33_02256BAC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_022570D6:
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0
	bl ov33_02256BAC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022570E4: .4byte 0x02257920
	thumb_func_end ov33_02257010

	thumb_func_start ov33_022570E8
ov33_022570E8: @ 0x022570E8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r2, #0
	adds r4, r1, #0
	ldr r0, _02257188 @ =0x02257934
	adds r1, r7, #0
	bl ov33_02256B3C
	adds r4, #0x4c
	ldrh r0, [r4]
	cmp r0, #0
	beq _02257158
	movs r0, #0x38
	adds r4, r7, #0
	muls r4, r0, r4
	movs r0, #0x52
	movs r1, #0xa1
	lsls r0, r0, #2
	adds r6, r5, r0
	lsls r1, r1, #2
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	movs r2, #8
	adds r3, r6, r4
	bl ov33_02256A14
	cmp r0, #0
	beq _02257136
	movs r1, #0x4f
	lsls r1, r1, #2
	movs r3, #0
	adds r2, r5, r4
	str r3, [r2, r1]
	adds r0, r1, #4
	str r3, [r2, r0]
	adds r1, #8
	str r3, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
_02257136:
	movs r1, #0xa1
	lsls r1, r1, #2
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	movs r2, #0x40
	adds r3, r6, r4
	bl ov33_02256A14
	cmp r0, #0
	beq _0225717A
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #2
	bl ov33_02256BAC
	pop {r3, r4, r5, r6, r7, pc}
_02257158:
	movs r0, #0x38
	adds r4, r7, #0
	muls r4, r0, r4
	movs r0, #0x4f
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r0, r0, r4
	bl ov33_02256D20
	cmp r0, #0
	beq _0225717A
	movs r0, #0x4f
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r0, r0, r4
	bl ov33_022567D4
_0225717A:
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0
	bl ov33_02256BAC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02257188: .4byte 0x02257934
	thumb_func_end ov33_022570E8

	thumb_func_start ov33_0225718C
ov33_0225718C: @ 0x0225718C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x4d
	lsls r0, r0, #2
	adds r1, r5, r0
	adds r6, r2, #0
	movs r0, #0x38
	muls r0, r6, r0
	adds r4, r1, r0
	ldr r0, _02257298 @ =0x02257948
	adds r1, r6, #0
	bl ov33_02256B3C
	adds r0, r4, #0
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	beq _022571B6
	cmp r0, #1
	beq _022571DA
	pop {r4, r5, r6, pc}
_022571B6:
	movs r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov33_02256C98
	ldr r0, _0225729C @ =0x00000669
	bl FUN_02254424
	adds r0, r4, #0
	adds r0, #0x34
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x34
	strb r1, [r0]
_022571DA:
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x35
	adds r1, #8
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	bne _0225720C
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0x8c
	bls _0225720C
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov33_02256CC4
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x36
	strb r1, [r0]
_0225720C:
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0xb4
	bls _02257226
	adds r0, r4, #0
	movs r1, #0xb4
	adds r0, #0x35
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #2
	adds r0, #0x36
	strb r1, [r0]
_02257226:
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	bl FUN_0201D15C
	movs r1, #0x13
	mvns r1, r1
	muls r1, r0, r1
	movs r0, #0
	str r0, [r4, #0x20]
	str r1, [r4, #0x24]
	str r0, [r4, #0x28]
	adds r0, r4, #0
	adds r1, r4, #0
	adds r2, r5, #0
	adds r0, #0x14
	adds r1, #0x20
	adds r2, #0xa4
	blx FUN_020BD17C
	adds r1, r5, #0
	adds r2, r5, #0
	adds r1, #0xa4
	adds r2, #0xa8
	ldr r0, [r4]
	ldr r1, [r1]
	ldr r2, [r2]
	bl FUN_02255900
	movs r2, #2
	ldr r3, [r4, #0x18]
	lsls r2, r2, #0xe
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x14]
	adds r2, r3, r2
	bl FUN_02255900
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #2
	bne _02257296
	adds r4, #8
	adds r0, r4, #0
	bl ov33_022567D4
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl ov33_02256BAC
	movs r0, #1
	lsls r0, r0, #8
	ldr r1, [r5, r0]
	subs r1, r1, #1
	str r1, [r5, r0]
_02257296:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02257298: .4byte 0x02257948
_0225729C: .4byte 0x00000669
	thumb_func_end ov33_0225718C

	thumb_func_start ov33_022572A0
ov33_022572A0: @ 0x022572A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	str r0, [sp]
	movs r0, #1
	lsls r0, r0, #0x10
	str r1, [sp, #4]
	str r0, [sp, #0x34]
_022572AE:
	movs r0, #0
	str r0, [sp, #0x28]
	str r0, [sp, #0x24]
	ldr r0, [sp, #4]
	ldr r4, [sp, #0x34]
	ldr r0, [r0]
	str r0, [sp, #0x10]
	cmp r0, #0
	ble _022572F4
	movs r1, #0x52
	ldr r5, [sp]
	ldr r0, [sp]
	lsls r1, r1, #2
	adds r7, r0, r1
	subs r1, #0xc
	adds r5, #0x5c
	adds r6, r0, r1
_022572D0:
	ldr r0, [sp, #0x34]
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r5, #0
	blx FUN_020BD628
	ldr r0, [sp, #0x24]
	adds r5, #0xc
	adds r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x24]
	ldr r0, [r0]
	adds r7, #0x38
	adds r6, #0x38
	str r0, [sp, #0x10]
	cmp r1, r0
	blt _022572D0
_022572F4:
	ldr r0, [sp, #0x10]
	movs r5, #0
	cmp r0, #0
	ble _022573BE
	ldr r0, [sp]
	str r0, [sp, #0x14]
	adds r6, r0, #0
_02257302:
	ldr r0, [sp, #0x14]
	ldr r7, [r0, #0x5c]
	ldr r0, _02257624 @ =0xFFFF6000
	cmp r7, r0
	bge _0225732E
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r1, [r6, r0]
	cmp r1, #0
	beq _0225732E
	movs r0, #0xa
	lsls r0, r0, #0xc
	adds r0, r7, r0
	blx FUN_020E1F6C
	subs r1, r4, r0
	cmp r1, r4
	bge _0225732E
	movs r0, #2
	str r0, [sp, #0x28]
	str r5, [sp, #0x30]
	adds r4, r1, #0
_0225732E:
	movs r0, #0xd9
	lsls r0, r0, #0xc
	cmp r7, r0
	ble _02257358
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r1, [r6, r0]
	cmp r1, #0
	beq _02257358
	movs r0, #0xd9
	lsls r0, r0, #0xc
	subs r0, r7, r0
	blx FUN_020E1F6C
	subs r1, r4, r0
	cmp r1, r4
	bge _02257358
	movs r0, #3
	str r0, [sp, #0x28]
	str r5, [sp, #0x30]
	adds r4, r1, #0
_02257358:
	ldr r0, [sp, #0x14]
	ldr r7, [r0, #0x60]
	ldr r0, _02257628 @ =0xFFFEA000
	cmp r7, r0
	bge _02257384
	movs r0, #5
	lsls r0, r0, #6
	ldr r1, [r6, r0]
	cmp r1, #0
	beq _02257384
	movs r0, #0x16
	lsls r0, r0, #0xc
	adds r0, r7, r0
	blx FUN_020E1F6C
	subs r1, r4, r0
	cmp r1, r4
	bge _02257384
	movs r0, #4
	str r0, [sp, #0x28]
	str r5, [sp, #0x30]
	adds r4, r1, #0
_02257384:
	movs r0, #0xb7
	lsls r0, r0, #0xc
	cmp r7, r0
	ble _022573AE
	movs r0, #5
	lsls r0, r0, #6
	ldr r1, [r6, r0]
	cmp r1, #0
	beq _022573AE
	movs r0, #0xb7
	lsls r0, r0, #0xc
	subs r0, r7, r0
	blx FUN_020E1F6C
	subs r1, r4, r0
	cmp r1, r4
	bge _022573AE
	movs r0, #5
	str r0, [sp, #0x28]
	str r5, [sp, #0x30]
	adds r4, r1, #0
_022573AE:
	ldr r0, [sp, #0x14]
	adds r5, r5, #1
	adds r0, #0xc
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	adds r6, #0x38
	cmp r5, r0
	blt _02257302
_022573BE:
	movs r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _0225746E
	ldr r0, [sp]
	movs r1, #0x4f
	str r0, [sp, #0x1c]
	adds r0, #0x5c
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x3c]
_022573E2:
	ldr r0, [sp, #0x20]
	movs r5, #0
	cmp r0, #0
	ble _02257450
	ldr r7, [sp, #0x38]
	ldr r6, [sp, #0x3c]
_022573EE:
	ldr r1, [sp, #0x1c]
	adds r0, r7, #0
	add r2, sp, #0x68
	blx FUN_020BD1B0
	add r0, sp, #0x68
	blx FUN_020BD384
	movs r1, #2
	lsls r1, r1, #0x10
	str r0, [sp, #0x40]
	cmp r0, r1
	bge _02257444
	add r0, sp, #0x68
	add r1, sp, #0x5c
	blx FUN_020BD3E4
	ldr r1, [sp, #0x18]
	adds r0, r6, #0
	add r2, sp, #0x50
	blx FUN_020BD1B0
	add r0, sp, #0x50
	add r1, sp, #0x5c
	blx FUN_020BD218
	adds r2, r0, #0
	movs r1, #2
	ldr r0, [sp, #0x40]
	lsls r1, r1, #0x10
	subs r0, r1, r0
	rsbs r1, r2, #0
	blx FUN_020E1F6C
	subs r0, r4, r0
	cmp r0, r4
	bge _02257444
	movs r1, #1
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x20]
	str r5, [sp, #0x30]
	str r1, [sp, #0x2c]
	adds r4, r0, #0
_02257444:
	ldr r0, [sp, #0x20]
	adds r5, r5, #1
	adds r7, #0xc
	adds r6, #0x38
	cmp r5, r0
	blt _022573EE
_02257450:
	ldr r0, [sp, #0x1c]
	adds r0, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	adds r0, #0x38
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r0, r0, #1
	str r0, [sp, #0x20]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x20]
	ldr r0, [r0]
	str r0, [sp, #0x10]
	cmp r1, r0
	blt _022573E2
_0225746E:
	cmp r4, #0
	bgt _02257474
	b _0225774C
_02257474:
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _022574AE
	movs r1, #0x52
	ldr r0, [sp]
	lsls r1, r1, #2
	adds r7, r0, r1
	subs r1, #0xc
	adds r6, r7, #0
	adds r5, r0, r1
_0225748C:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	blx FUN_020BD628
	ldr r0, [sp, #8]
	adds r7, #0x38
	adds r0, r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	adds r6, #0x38
	ldr r1, [r0]
	ldr r0, [sp, #8]
	adds r5, #0x38
	cmp r0, r1
	blt _0225748C
_022574AE:
	ldr r0, [sp, #0x28]
	cmp r0, #5
	bls _022574B6
	b _0225773E
_022574B6:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022574C2: @ jump table
	.2byte _0225773E - _022574C2 - 2 @ case 0
	.2byte _022574CE - _022574C2 - 2 @ case 1
	.2byte _02257700 - _022574C2 - 2 @ case 2
	.2byte _02257700 - _022574C2 - 2 @ case 3
	.2byte _02257720 - _022574C2 - 2 @ case 4
	.2byte _02257720 - _022574C2 - 2 @ case 5
_022574CE:
	ldr r1, [sp, #0x30]
	movs r0, #0x38
	adds r6, r1, #0
	ldr r1, [sp]
	muls r6, r0, r6
	adds r1, r1, r6
	str r1, [sp, #0xc]
	movs r1, #0x16
	ldr r2, [sp, #0xc]
	lsls r1, r1, #4
	ldrb r2, [r2, r1]
	cmp r2, #3
	bne _0225759C
	ldr r2, [sp, #0x2c]
	subs r1, #0x24
	adds r7, r2, #0
	muls r7, r0, r7
	ldr r0, [sp]
	adds r0, r0, r1
	adds r5, r0, r7
	ldr r0, [r0, r7]
	cmp r0, #0
	bne _02257502
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0225750E
_02257502:
	ldr r0, [sp]
	ldr r1, _0225762C @ =0x00000166
	adds r0, r0, r7
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _02257582
_0225750E:
	movs r1, #0x52
	ldr r0, [sp]
	lsls r1, r1, #2
	adds r1, r0, r1
	adds r0, r1, r7
	adds r1, r1, r6
	add r2, sp, #0x68
	blx FUN_020BD1B0
	add r0, sp, #0x68
	add r1, sp, #0x5c
	blx FUN_020BD3E4
	ldr r0, [sp, #0x5c]
	ldr r2, _02257630 @ =0x0000019A
	asrs r1, r0, #0x1f
	movs r3, #0
	blx FUN_020E1F1C
	adds r2, r0, #0
	movs r0, #2
	movs r3, #0
	lsls r0, r0, #0xa
	adds r0, r2, r0
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	str r0, [r5]
	ldr r0, [sp, #0x60]
	ldr r2, _02257630 @ =0x0000019A
	asrs r1, r0, #0x1f
	blx FUN_020E1F1C
	adds r2, r0, #0
	movs r0, #2
	movs r3, #0
	lsls r0, r0, #0xa
	adds r0, r2, r0
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	str r0, [r5, #4]
	ldr r0, [sp]
	ldr r1, _0225762C @ =0x00000166
	adds r0, r0, r7
	movs r2, #1
	strb r2, [r0, r1]
	ldr r1, [sp, #0x30]
	cmp r1, #1
	bne _0225757C
	ldr r1, [sp, #0x2c]
	cmp r1, #2
	beq _02257594
_0225757C:
	ldr r1, [sp, #0x2c]
	cmp r1, #1
	b _02257594
_02257582:
	ldr r2, [r5]
	movs r1, #0
	mvns r1, r1
	adds r3, r2, #0
	muls r3, r1, r3
	str r3, [r5]
	ldr r2, [r5, #4]
	muls r1, r2, r1
	str r1, [r5, #4]
_02257594:
	ldr r1, _02257634 @ =0x00000163
	movs r2, #0x14
	strb r2, [r0, r1]
	b _0225773E
_0225759C:
	ldr r2, [sp, #0x2c]
	adds r7, r2, #0
	muls r7, r0, r7
	ldr r0, [sp]
	adds r0, r0, r7
	ldrb r0, [r0, r1]
	cmp r0, #3
	bne _0225766C
	ldr r0, [sp]
	subs r1, #0x24
	adds r0, r0, r1
	adds r5, r0, r6
	ldr r0, [r0, r6]
	cmp r0, #0
	bne _022575C0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _022575CA
_022575C0:
	ldr r1, _0225762C @ =0x00000166
	ldr r0, [sp, #0xc]
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _02257650
_022575CA:
	movs r1, #0x52
	ldr r0, [sp]
	lsls r1, r1, #2
	adds r1, r0, r1
	adds r0, r1, r6
	adds r1, r1, r7
	add r2, sp, #0x68
	blx FUN_020BD1B0
	add r0, sp, #0x68
	add r1, sp, #0x5c
	blx FUN_020BD3E4
	ldr r0, [sp, #0x5c]
	ldr r2, _02257630 @ =0x0000019A
	asrs r1, r0, #0x1f
	movs r3, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	str r1, [r5]
	ldr r0, [sp, #0x60]
	ldr r2, _02257630 @ =0x0000019A
	asrs r1, r0, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	str r1, [r5, #4]
	ldr r1, _0225762C @ =0x00000166
	b _02257638
	nop
_02257624: .4byte 0xFFFF6000
_02257628: .4byte 0xFFFEA000
_0225762C: .4byte 0x00000166
_02257630: .4byte 0x0000019A
_02257634: .4byte 0x00000163
_02257638:
	ldr r0, [sp, #0xc]
	movs r2, #1
	strb r2, [r0, r1]
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _0225764A
	ldr r0, [sp, #0x2c]
	cmp r0, #2
	beq _02257662
_0225764A:
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	b _02257662
_02257650:
	ldr r1, [r5]
	movs r0, #0
	mvns r0, r0
	adds r2, r1, #0
	muls r2, r0, r2
	str r2, [r5]
	ldr r1, [r5, #4]
	muls r0, r1, r0
	str r0, [r5, #4]
_02257662:
	ldr r1, _022577F8 @ =0x00000163
	ldr r0, [sp, #0xc]
	movs r2, #0x14
	strb r2, [r0, r1]
	b _0225773E
_0225766C:
	ldr r0, [sp]
	subs r1, #0x18
	adds r1, r0, r1
	adds r0, r1, r6
	adds r1, r1, r7
	add r2, sp, #0x68
	blx FUN_020BD1B0
	add r0, sp, #0x68
	blx FUN_020BD384
	add r0, sp, #0x68
	add r1, sp, #0x5c
	blx FUN_020BD3E4
	movs r1, #0x4f
	ldr r0, [sp]
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [sp, #0x4c]
	ldr r1, [sp, #0x4c]
	adds r0, r0, r6
	adds r1, r1, r7
	add r2, sp, #0x50
	blx FUN_020BD1B0
	add r0, sp, #0x50
	add r1, sp, #0x5c
	blx FUN_020BD218
	movs r5, #0x4f
	ldr r2, [sp, #0x4c]
	str r0, [sp, #0x44]
	ldr r3, [sp]
	lsls r5, r5, #2
	adds r3, r3, r5
	rsbs r0, r0, #0
	add r1, sp, #0x5c
	adds r2, r2, r6
	adds r3, r3, r6
	blx FUN_020BD628
	ldr r3, [sp]
	ldr r2, [sp, #0x4c]
	adds r3, r3, r5
	ldr r0, [sp, #0x44]
	add r1, sp, #0x5c
	adds r2, r2, r7
	adds r3, r3, r7
	blx FUN_020BD628
	ldr r0, [sp]
	adds r1, r5, #0
	ldr r3, [sp]
	adds r1, #0x27
	adds r0, r0, r6
	movs r2, #0x14
	strb r2, [r0, r1]
	adds r3, r3, r7
	strb r2, [r3, r1]
	movs r2, #0
	adds r5, r1, #3
	strb r2, [r0, r5]
	adds r0, r5, #0
	strb r2, [r3, r0]
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _022576FA
	ldr r0, [sp, #0x2c]
	cmp r0, #2
	beq _0225773E
_022576FA:
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	b _0225773E
_02257700:
	ldr r0, [sp, #0x30]
	movs r1, #0x38
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, [sp]
	subs r1, #0x39
	adds r0, r0, r2
	movs r2, #0x4f
	lsls r2, r2, #2
	ldr r3, [r0, r2]
	muls r1, r3, r1
	str r1, [r0, r2]
	movs r1, #0
	adds r2, #0x2a
	strb r1, [r0, r2]
	b _0225773E
_02257720:
	ldr r0, [sp, #0x30]
	movs r1, #0x38
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, [sp]
	subs r1, #0x39
	adds r0, r0, r2
	movs r2, #5
	lsls r2, r2, #6
	ldr r3, [r0, r2]
	muls r1, r3, r1
	str r1, [r0, r2]
	movs r1, #0
	adds r2, #0x26
	strb r1, [r0, r2]
_0225773E:
	ldr r0, [sp, #0x34]
	subs r0, r0, r4
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _0225774C
	b _022572AE
_0225774C:
	ldr r0, [sp, #4]
	movs r5, #0
	ldr r0, [r0]
	cmp r0, #0
	ble _022577F2
	ldr r4, [sp]
	movs r1, #0x55
	adds r0, r4, #0
	lsls r1, r1, #2
	adds r7, r0, r1
	subs r1, #0xc
	adds r6, r0, r1
	str r0, [sp, #0x48]
	adds r0, #0xa4
	str r0, [sp, #0x48]
_0225776A:
	movs r0, #0x16
	lsls r0, r0, #4
	ldrb r0, [r4, r0]
	cmp r0, #3
	bhs _022577A6
	movs r0, #0x59
	lsls r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _0225778C
	movs r0, #0x4d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl FUN_022558C4
	b _022577A6
_0225778C:
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _0225779A
	movs r1, #7
	b _0225779C
_0225779A:
	movs r1, #6
_0225779C:
	movs r0, #0x4d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_022558C4
_022577A6:
	ldr r2, [sp, #0x48]
	adds r0, r6, #0
	adds r1, r7, #0
	blx FUN_020BD17C
	ldr r1, [sp]
	ldr r2, [sp]
	movs r0, #0x4d
	lsls r0, r0, #2
	adds r1, #0xa4
	adds r2, #0xa8
	ldr r0, [r4, r0]
	ldr r1, [r1]
	ldr r2, [r2]
	bl FUN_02255900
	movs r2, #0x53
	movs r0, #0x4e
	movs r1, #0x52
	lsls r2, r2, #2
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r3, [r4, r2]
	movs r2, #2
	lsls r2, r2, #0xe
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	adds r2, r3, r2
	bl FUN_02255900
	ldr r0, [sp, #4]
	adds r5, r5, #1
	ldr r0, [r0]
	adds r4, #0x38
	adds r7, #0x38
	adds r6, #0x38
	cmp r5, r0
	blt _0225776A
_022577F2:
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	nop
_022577F8: .4byte 0x00000163
	thumb_func_end ov33_022572A0
	@ 0x022577FC
