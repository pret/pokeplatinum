
	thumb_func_start ov49_022561C0
ov49_022561C0: @ 0x022561C0
	ldr r3, _022561C8 @ =FUN_02254238
	ldr r0, _022561CC @ =ov49_022561D4
	ldr r1, _022561D0 @ =ov49_022562A0
	bx r3
	.align 2, 0
_022561C8: .4byte FUN_02254238
_022561CC: .4byte ov49_022561D4
_022561D0: .4byte ov49_022562A0
	thumb_func_end ov49_022561C0

	thumb_func_start ov49_022561D4
ov49_022561D4: @ 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #8
	movs r1, #0x14
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov49_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 @ =ov49_0225626C
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
_02256218: .4byte ov49_0225626C
	thumb_func_end ov49_022561D4

	thumb_func_start ov49_0225621C
ov49_0225621C: @ 0x0225621C
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r6, r2, #0
	bl FUN_02254540
	str r0, [r5, #0x10]
	bl FUN_02056888
	str r0, [r5, #4]
	strb r0, [r5, #3]
	adds r0, r5, #0
	adds r0, #8
	adds r1, r5, #4
	adds r2, r6, #0
	bl ov49_022563D4
	cmp r0, #0
	beq _02256252
	movs r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	str r4, [r5, #0xc]
	movs r0, #1
	pop {r4, r5, r6, pc}
_02256252:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov49_0225621C

	thumb_func_start ov49_02256258
ov49_02256258: @ 0x02256258
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	bl ov49_02256480
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov49_02256258

	thumb_func_start ov49_0225626C
ov49_0225626C: @ 0x0225626C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldrb r1, [r4]
	adds r5, r0, #0
	cmp r1, #3
	bhs _02256298
	lsls r2, r1, #2
	ldr r1, _0225629C @ =0x022565D4
	adds r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _02256298
	adds r0, r4, #0
	bl ov49_02256258
	adds r0, r5, #0
	bl FUN_0200DA58
	ldr r0, [r4, #0xc]
	bl FUN_02254260
_02256298:
	pop {r3, r4, r5, pc}
	nop
_0225629C: .4byte 0x022565D4
	thumb_func_end ov49_0225626C

	thumb_func_start ov49_022562A0
ov49_022562A0: @ 0x022562A0
	movs r1, #1
	strb r1, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end ov49_022562A0

	thumb_func_start ov49_022562A8
ov49_022562A8: @ 0x022562A8
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _022562B0
	b _022562B2
_022562B0:
	movs r1, #2
_022562B2:
	strb r1, [r0]
	movs r1, #0
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
	thumb_func_end ov49_022562A8

	thumb_func_start ov49_022562BC
ov49_022562BC: @ 0x022562BC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022562CC
	cmp r0, #1
	beq _022562DC
	b _022562F6
_022562CC:
	ldr r0, [r4, #8]
	movs r1, #0
	bl ov49_02256494
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _022562F6
_022562DC:
	ldr r0, [r4, #8]
	movs r1, #0
	bl ov49_022564B8
	cmp r0, #0
	beq _022562F6
	ldr r0, [r4, #0xc]
	bl FUN_0225424C
	adds r0, r4, #0
	movs r1, #1
	bl ov49_022562A8
_022562F6:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov49_022562BC

	thumb_func_start ov49_022562FC
ov49_022562FC: @ 0x022562FC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _02256310
	movs r1, #2
	bl ov49_022562A8
	movs r0, #0
	pop {r4, pc}
_02256310:
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _0225631C
	cmp r1, #1
	beq _02256334
	b _02256344
_0225631C:
	bl ov49_02256348
	cmp r0, #0
	beq _02256344
	ldr r0, [r4, #8]
	movs r1, #2
	bl ov49_02256494
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _02256344
_02256334:
	ldr r0, [r4, #8]
	movs r1, #2
	bl ov49_022564B8
	cmp r0, #0
	beq _02256344
	movs r0, #0
	strb r0, [r4, #1]
_02256344:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov49_022562FC

	thumb_func_start ov49_02256348
ov49_02256348: @ 0x02256348
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_0225450C
	cmp r0, #0
	bne _02256398
	add r0, sp, #4
	add r1, sp, #0
	bl FUN_020227A4
	cmp r0, #0
	beq _02256398
	ldr r0, [sp]
	cmp r0, #0x88
	blo _02256398
	cmp r0, #0xa0
	bhs _02256398
	ldr r0, [sp, #4]
	cmp r0, #0x30
	blo _02256398
	cmp r0, #0xb8
	bhs _02256398
	subs r0, #0x30
	lsrs r1, r0, #4
	cmp r1, #8
	blo _02256382
	movs r1, #7
_02256382:
	ldrb r0, [r4, #3]
	cmp r1, r0
	beq _02256398
	str r1, [r4, #4]
	strb r1, [r4, #3]
	ldr r0, [r4, #0x10]
	bl FUN_0205689C
	add sp, #8
	movs r0, #1
	pop {r4, pc}
_02256398:
	movs r0, #0
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov49_02256348

	thumb_func_start ov49_022563A0
ov49_022563A0: @ 0x022563A0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563B0
	cmp r0, #1
	beq _022563C0
	b _022563CE
_022563B0:
	ldr r0, [r4, #8]
	movs r1, #1
	bl ov49_02256494
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _022563CE
_022563C0:
	ldr r0, [r4, #8]
	bl ov49_022564C4
	cmp r0, #0
	beq _022563CE
	movs r0, #1
	pop {r4, pc}
_022563CE:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov49_022563A0

	thumb_func_start ov49_022563D4
ov49_022563D4: @ 0x022563D4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r0, #8
	movs r1, #0x3c
	bl FUN_02018144
	adds r4, r0, #0
	beq _0225640A
	adds r0, #8
	movs r1, #4
	bl FUN_02255090
	str r5, [r4]
	bl FUN_02254674
	str r0, [r4, #4]
	bl FUN_02254664
	str r0, [r4, #0x20]
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov49_02256410
	str r4, [r6]
	movs r0, #1
	pop {r4, r5, r6, pc}
_0225640A:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov49_022563D4

	thumb_func_start ov49_02256410
ov49_02256410: @ 0x02256410
	push {r4, r5, lr}
	sub sp, #0xc
	movs r3, #0
	str r3, [sp]
	movs r2, #1
	adds r5, r0, #0
	adds r4, r1, #0
	str r2, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	movs r0, #0xc
	movs r1, #0x45
	bl FUN_02006EC0
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x28
	movs r1, #0xc
	movs r2, #0x43
	movs r3, #0x44
	bl FUN_02255958
	adds r2, r5, #0
	ldr r0, [r5, #0x20]
	ldr r1, _02256460 @ =0x022565E0
	adds r2, #0x28
	bl FUN_02255810
	str r0, [r5, #0x24]
	ldr r1, [r4]
	movs r2, #0x25
	lsls r1, r1, #4
	adds r1, #0x38
	lsls r1, r1, #0xc
	lsls r2, r2, #0xe
	bl FUN_02255900
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_02256460: .4byte 0x022565E0
	thumb_func_end ov49_02256410

	thumb_func_start ov49_02256464
ov49_02256464: @ 0x02256464
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x24]
	cmp r1, #0
	beq _02256474
	ldr r0, [r4, #0x20]
	bl FUN_022558B0
_02256474:
	adds r4, #0x28
	adds r0, r4, #0
	bl FUN_022559B0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov49_02256464

	thumb_func_start ov49_02256480
ov49_02256480: @ 0x02256480
	push {r4, lr}
	adds r4, r0, #0
	beq _02256490
	bl ov49_02256464
	adds r0, r4, #0
	bl FUN_020181C4
_02256490:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov49_02256480

	thumb_func_start ov49_02256494
ov49_02256494: @ 0x02256494
	push {lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r0, #8
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	ldr r0, _022564B4 @ =0x0225660C
	ldr r3, [r2]
	bl FUN_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022564B4: .4byte 0x0225660C
	thumb_func_end ov49_02256494

	thumb_func_start ov49_022564B8
ov49_022564B8: @ 0x022564B8
	ldr r3, _022564C0 @ =FUN_02255130
	adds r0, #8
	bx r3
	nop
_022564C0: .4byte FUN_02255130
	thumb_func_end ov49_022564B8

	thumb_func_start ov49_022564C4
ov49_022564C4: @ 0x022564C4
	ldr r3, _022564CC @ =FUN_02255154
	adds r0, #8
	bx r3
	nop
_022564CC: .4byte FUN_02255154
	thumb_func_end ov49_022564C4

	thumb_func_start ov49_022564D0
ov49_022564D0: @ 0x022564D0
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0225523C
	adds r0, #8
	adds r1, r4, #0
	bl FUN_02255224
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov49_022564D0

	thumb_func_start ov49_022564E4
ov49_022564E4: @ 0x022564E4
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r1, #0
	adds r0, r4, #0
	bl FUN_0225523C
	adds r5, r0, #0
	adds r0, r4, #0
	bl FUN_02255240
	ldr r0, [r5, #4]
	ldr r2, _0225656C @ =0x022565F0
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
	movs r1, #0x42
	movs r3, #6
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	movs r0, #0xc
	movs r1, #0x41
	movs r3, #6
	bl FUN_02006E60
	movs r0, #0
	adds r1, r0, #0
	bl FUN_022546B8
	ldr r0, [r5, #4]
	movs r1, #6
	bl FUN_02019448
	ldr r1, _02256570 @ =0x04001000
	ldr r0, _02256574 @ =0xFFFFE0FF
	ldr r3, [r1]
	ldr r2, [r1]
	str r3, [sp, #0x10]
	ands r0, r2
	lsls r2, r3, #0x13
	lsrs r3, r2, #0x1b
	movs r2, #4
	orrs r2, r3
	lsls r2, r2, #8
	orrs r0, r2
	str r0, [r1]
	adds r0, r4, #0
	bl ov49_022564D0
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_0225656C: .4byte 0x022565F0
_02256570: .4byte 0x04001000
_02256574: .4byte 0xFFFFE0FF
	thumb_func_end ov49_022564E4

	thumb_func_start ov49_02256578
ov49_02256578: @ 0x02256578
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl FUN_0225523C
	ldr r0, [r0, #4]
	movs r1, #6
	bl FUN_02019044
	adds r0, r4, #0
	bl ov49_022564D0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov49_02256578

	thumb_func_start ov49_02256594
ov49_02256594: @ 0x02256594
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r0, r6, #0
	bl FUN_0225523C
	adds r5, r0, #0
	adds r0, r6, #0
	bl FUN_02255240
	adds r4, r0, #0
	ldr r0, _022565D0 @ =0x00000663
	bl FUN_02254424
	movs r0, #0
	adds r1, r0, #0
	bl FUN_022546B8
	ldr r1, [r4]
	movs r2, #0x25
	lsls r1, r1, #4
	adds r1, #0x38
	ldr r0, [r5, #0x24]
	lsls r1, r1, #0xc
	lsls r2, r2, #0xe
	bl FUN_02255900
	adds r0, r6, #0
	bl ov49_022564D0
	pop {r4, r5, r6, pc}
	.align 2, 0
_022565D0: .4byte 0x00000663
	thumb_func_end ov49_02256594
	@ 0x022565D4
