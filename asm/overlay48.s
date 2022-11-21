
	thumb_func_start ov48_022561C0
ov48_022561C0: @ 0x022561C0
	ldr r3, _022561C8 @ =FUN_02254238
	ldr r0, _022561CC @ =ov48_022561D4
	ldr r1, _022561D0 @ =ov48_022562F0
	bx r3
	.align 2, 0
_022561C8: .4byte FUN_02254238
_022561CC: .4byte ov48_022561D4
_022561D0: .4byte ov48_022562F0
	thumb_func_end ov48_022561C0

	thumb_func_start ov48_022561D4
ov48_022561D4: @ 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #8
	movs r1, #0xb0
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov48_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 @ =ov48_022562BC
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
_02256218: .4byte ov48_022562BC
	thumb_func_end ov48_022561D4

	thumb_func_start ov48_0225621C
ov48_0225621C: @ 0x0225621C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	adds r1, r5, #0
	adds r1, #0xac
	str r7, [r1]
	str r2, [sp]
	bl ov48_02256408
	str r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	bl FUN_0225453C
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_0203A790
	bl FUN_0203A72C
	adds r6, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r0, [r0]
	bl FUN_0203A24C
	cmp r0, #0
	beq _02256260
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #8]
	str r0, [r5, #4]
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0xc]
	b _02256266
_02256260:
	ldr r0, [r6, #8]
	str r0, [r5, #4]
	ldr r0, [r6, #0xc]
_02256266:
	str r0, [r5, #8]
	ldr r1, [r5, #4]
	asrs r0, r1, #4
	lsrs r0, r0, #0x1b
	adds r0, r1, r0
	asrs r0, r0, #5
	str r0, [r5, #4]
	ldr r1, [r5, #8]
	asrs r0, r1, #4
	lsrs r0, r0, #0x1b
	adds r0, r1, r0
	asrs r0, r0, #5
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov48_022564E0
	adds r0, r5, #0
	ldr r2, [sp]
	adds r0, #0xa8
	adds r1, r5, #4
	bl ov48_0225650C
	cmp r0, #0
	beq _022562A4
	movs r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022562A4:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov48_0225621C

	thumb_func_start ov48_022562A8
ov48_022562A8: @ 0x022562A8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xa8
	ldr r0, [r0]
	bl ov48_0225654C
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov48_022562A8

	thumb_func_start ov48_022562BC
ov48_022562BC: @ 0x022562BC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldrb r1, [r4]
	adds r5, r0, #0
	cmp r1, #3
	bhs _022562EA
	lsls r2, r1, #2
	ldr r1, _022562EC @ =0x02256A2C
	adds r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _022562EA
	adds r0, r4, #0
	bl ov48_022562A8
	adds r0, r5, #0
	bl FUN_0200DA58
	adds r4, #0xac
	ldr r0, [r4]
	bl FUN_02254260
_022562EA:
	pop {r3, r4, r5, pc}
	.align 2, 0
_022562EC: .4byte 0x02256A2C
	thumb_func_end ov48_022562BC

	thumb_func_start ov48_022562F0
ov48_022562F0: @ 0x022562F0
	movs r1, #1
	strb r1, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end ov48_022562F0

	thumb_func_start ov48_022562F8
ov48_022562F8: @ 0x022562F8
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _02256300
	b _02256302
_02256300:
	movs r1, #2
_02256302:
	strb r1, [r0]
	movs r1, #0
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
	thumb_func_end ov48_022562F8

	thumb_func_start ov48_0225630C
ov48_0225630C: @ 0x0225630C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0225631C
	cmp r0, #1
	beq _02256330
	b _02256352
_0225631C:
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #0
	bl ov48_02256558
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _02256352
_02256330:
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #0
	bl ov48_0225657C
	cmp r0, #0
	beq _02256352
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	bl FUN_0225424C
	adds r0, r4, #0
	movs r1, #1
	bl ov48_022562F8
_02256352:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov48_0225630C

	thumb_func_start ov48_02256358
ov48_02256358: @ 0x02256358
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _02256370
	movs r1, #2
	bl ov48_022562F8
	add sp, #8
	movs r0, #0
	pop {r4, pc}
_02256370:
	bl ov48_02256478
	adds r1, r4, #0
	adds r1, #0x94
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #2
	bl ov48_0225657C
	cmp r0, #0
	beq _022563C8
	add r0, sp, #4
	add r1, sp, #0
	bl FUN_022544BC
	cmp r0, #0
	beq _022563C8
	ldr r0, [sp, #4]
	subs r0, #0x10
	cmp r0, #0xc0
	bhs _022563A2
	movs r1, #1
	b _022563A4
_022563A2:
	movs r1, #0
_022563A4:
	ldr r0, [sp]
	subs r0, #0x10
	cmp r0, #0xc0
	bhs _022563B0
	movs r0, #1
	b _022563B2
_022563B0:
	movs r0, #0
_022563B2:
	tst r0, r1
	beq _022563C8
	adds r0, r4, #0
	bl ov48_02256408
	str r0, [r4, #0xc]
	adds r4, #0xa8
	ldr r0, [r4]
	movs r1, #2
	bl ov48_02256558
_022563C8:
	movs r0, #0
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov48_02256358

	thumb_func_start ov48_022563D0
ov48_022563D0: @ 0x022563D0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563E0
	cmp r0, #1
	beq _022563F4
	b _02256404
_022563E0:
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #1
	bl ov48_02256558
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _02256404
_022563F4:
	adds r4, #0xa8
	ldr r0, [r4]
	bl ov48_02256588
	cmp r0, #0
	beq _02256404
	movs r0, #1
	pop {r4, pc}
_02256404:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov48_022563D0

	thumb_func_start ov48_02256408
ov48_02256408: @ 0x02256408
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	bl FUN_02254544
	bl FUN_02027854
	movs r4, #0
	adds r6, r0, #0
	adds r7, r4, #0
_0225641E:
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_02027D84
	cmp r0, #1
	bne _0225646A
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_02027D04
	cmp r0, #5
	bne _0225646A
	ldr r1, _02256474 @ =0x02256A38
	lsls r0, r4, #1
	ldr r2, _02256474 @ =0x02256A38
	adds r1, r1, r0
	ldrb r0, [r2, r0]
	strb r0, [r5, #0x10]
	ldrb r0, [r1, #1]
	strb r0, [r5, #0x11]
	b _0225644C
_02256448:
	adds r1, r1, #2
	adds r4, r4, #1
_0225644C:
	adds r0, r4, #1
	cmp r0, #0x76
	bhs _02256462
	ldrb r2, [r5, #0x10]
	ldrb r0, [r1, #2]
	cmp r2, r0
	bne _02256462
	ldrb r2, [r5, #0x11]
	ldrb r0, [r1, #3]
	cmp r2, r0
	beq _02256448
_02256462:
	adds r7, r7, #1
	adds r5, r5, #2
	cmp r7, #0x40
	bge _02256470
_0225646A:
	adds r4, r4, #1
	cmp r4, #0x76
	blo _0225641E
_02256470:
	adds r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02256474: .4byte 0x02256A38
	thumb_func_end ov48_02256408

	thumb_func_start ov48_02256478
ov48_02256478: @ 0x02256478
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	movs r6, #0
	bl FUN_02254534
	cmp r0, #0
	beq _022564DC
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	bl FUN_0225453C
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_0203A790
	bl FUN_0203A72C
	adds r7, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r0, [r0]
	bl FUN_0203A24C
	cmp r0, #0
	beq _022564B6
	ldr r1, [r4, #0x1c]
	ldr r0, [r1, #8]
	ldr r1, [r1, #0xc]
	b _022564BA
_022564B6:
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
_022564BA:
	asrs r2, r0, #4
	lsrs r2, r2, #0x1b
	adds r2, r0, r2
	asrs r0, r2, #5
	asrs r2, r1, #4
	lsrs r2, r2, #0x1b
	adds r2, r1, r2
	asrs r1, r2, #5
	ldr r2, [r5, #4]
	cmp r0, r2
	bne _022564D6
	ldr r2, [r5, #8]
	cmp r1, r2
	beq _022564DC
_022564D6:
	str r0, [r5, #4]
	str r1, [r5, #8]
	movs r6, #1
_022564DC:
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov48_02256478

	thumb_func_start ov48_022564E0
ov48_022564E0: @ 0x022564E0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	bl FUN_02254544
	bl FUN_020507E4
	adds r6, r0, #0
	movs r4, #0
_022564F2:
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_0206B1F0
	adds r1, r5, #0
	adds r1, #0x98
	adds r4, r4, #1
	adds r5, r5, #4
	str r0, [r1]
	cmp r4, #4
	blt _022564F2
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov48_022564E0

	thumb_func_start ov48_0225650C
ov48_0225650C: @ 0x0225650C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	movs r1, #0x16
	adds r6, r0, #0
	movs r0, #8
	lsls r1, r1, #4
	bl FUN_02018144
	adds r4, r0, #0
	beq _02256546
	adds r0, #8
	movs r1, #4
	bl FUN_02255090
	str r5, [r4]
	bl FUN_02254674
	str r0, [r4, #4]
	bl FUN_02254664
	str r0, [r4, #0x20]
	adds r5, #0x8c
	movs r0, #0x15
	ldr r1, [r5]
	lsls r0, r0, #4
	str r1, [r4, r0]
	str r4, [r6]
	movs r0, #1
	pop {r4, r5, r6, pc}
_02256546:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov48_0225650C

	thumb_func_start ov48_0225654C
ov48_0225654C: @ 0x0225654C
	push {r3, lr}
	cmp r0, #0
	beq _02256556
	bl FUN_020181C4
_02256556:
	pop {r3, pc}
	thumb_func_end ov48_0225654C

	thumb_func_start ov48_02256558
ov48_02256558: @ 0x02256558
	push {lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r0, #8
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	ldr r0, _02256578 @ =0x02256B40
	ldr r3, [r2]
	bl FUN_0225517C
	add sp, #0xc
	pop {pc}
	nop
_02256578: .4byte 0x02256B40
	thumb_func_end ov48_02256558

	thumb_func_start ov48_0225657C
ov48_0225657C: @ 0x0225657C
	ldr r3, _02256584 @ =FUN_02255130
	adds r0, #8
	bx r3
	nop
_02256584: .4byte FUN_02255130
	thumb_func_end ov48_0225657C

	thumb_func_start ov48_02256588
ov48_02256588: @ 0x02256588
	ldr r3, _02256590 @ =FUN_02255154
	adds r0, #8
	bx r3
	nop
_02256590: .4byte FUN_02255154
	thumb_func_end ov48_02256588

	thumb_func_start ov48_02256594
ov48_02256594: @ 0x02256594
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0225523C
	adds r0, #8
	adds r1, r4, #0
	bl FUN_02255224
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov48_02256594

	thumb_func_start ov48_022565A8
ov48_022565A8: @ 0x022565A8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r6, r1, #0
	adds r0, r6, #0
	bl FUN_0225523C
	adds r5, r0, #0
	ldr r0, _02256640 @ =0x0400104C
	movs r3, #0
	strb r3, [r0]
	strb r3, [r0, #1]
	ldr r0, [r5, #4]
	ldr r2, _02256644 @ =0x02256B24
	movs r1, #6
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
	movs r1, #0x75
	movs r3, #6
	bl FUN_02006E3C
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	movs r0, #0xc
	movs r1, #0x74
	movs r3, #6
	bl FUN_02006E60
	movs r0, #0
	adds r1, r0, #0
	bl FUN_022546B8
	adds r0, r5, #0
	lsrs r1, r4, #5
	bl ov48_02256650
	ldr r0, [r5, #4]
	movs r1, #6
	bl FUN_02019448
	ldr r1, _02256648 @ =0x04001000
	ldr r0, _0225664C @ =0xFFFFE0FF
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
	adds r0, r5, #0
	bl ov48_022567FC
	adds r0, r6, #0
	bl ov48_02256594
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02256640: .4byte 0x0400104C
_02256644: .4byte 0x02256B24
_02256648: .4byte 0x04001000
_0225664C: .4byte 0xFFFFE0FF
	thumb_func_end ov48_022565A8

	thumb_func_start ov48_02256650
ov48_02256650: @ 0x02256650
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r1, _022566C8 @ =0x000001CB
	movs r0, #0x1a
	movs r2, #0
	movs r3, #8
	bl FUN_0200B010
	adds r6, r0, #0
	beq _022566C2
	movs r0, #0x14
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	add r1, sp, #0x14
	movs r2, #6
	movs r3, #0x12
	bl FUN_0201A7E8
	add r0, sp, #0x14
	movs r1, #4
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022566CC @ =0x00010804
	adds r2, r6, #0
	str r0, [sp, #8]
	add r0, sp, #0x14
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	add r0, sp, #0x14
	bl FUN_0201A9F4
	add r0, sp, #0x14
	bl FUN_0201ACCC
	add r0, sp, #0x14
	bl FUN_0201A8FC
	adds r0, r6, #0
	bl FUN_020237BC
_022566C2:
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	nop
_022566C8: .4byte 0x000001CB
_022566CC: .4byte 0x00010804
	thumb_func_end ov48_02256650

	thumb_func_start ov48_022566D0
ov48_022566D0: @ 0x022566D0
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02255248
	cmp r0, #0
	beq _022566EC
	cmp r0, #1
	beq _022566FC
	pop {r3, r4, r5, pc}
_022566EC:
	movs r0, #0x57
	movs r1, #1
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, r5, #0
	bl FUN_0225524C
	pop {r3, r4, r5, pc}
_022566FC:
	adds r0, r4, #0
	movs r1, #2
	bl ov48_0225657C
	cmp r0, #0
	beq _02256724
	adds r0, r4, #0
	bl ov48_02256984
	ldr r0, _02256728 @ =0x0400104C
	movs r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	ldr r0, [r4, #4]
	movs r1, #6
	bl FUN_02019044
	adds r0, r5, #0
	bl ov48_02256594
_02256724:
	pop {r3, r4, r5, pc}
	nop
_02256728: .4byte 0x0400104C
	thumb_func_end ov48_022566D0

	thumb_func_start ov48_0225672C
ov48_0225672C: @ 0x0225672C
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
	beq _02256752
	cmp r0, #1
	beq _02256786
	cmp r0, #2
	beq _02256794
	pop {r3, r4, r5, pc}
_02256752:
	movs r1, #0x55
	movs r0, #6
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r2, #0
	adds r0, r1, #4
	str r2, [r4, r0]
	adds r0, r1, #0
	adds r0, #8
	str r2, [r4, r0]
	ldr r2, [r4, r1]
	lsls r0, r2, #4
	orrs r0, r2
	ldr r2, _022567F4 @ =0x0400104C
	strb r0, [r2]
	ldr r1, [r4, r1]
	lsls r0, r1, #4
	orrs r0, r1
	strb r0, [r2, #1]
	ldr r0, _022567F8 @ =0x00000678
	bl FUN_02254424
	adds r0, r5, #0
	bl FUN_0225524C
	pop {r3, r4, r5, pc}
_02256786:
	adds r0, r4, #0
	bl ov48_02256920
	adds r0, r5, #0
	bl FUN_0225524C
	pop {r3, r4, r5, pc}
_02256794:
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _022567A6
	adds r0, r5, #0
	bl ov48_02256594
	pop {r3, r4, r5, pc}
_022567A6:
	subs r1, r0, #4
	ldr r1, [r4, r1]
	adds r2, r1, #1
	subs r1, r0, #4
	str r2, [r4, r1]
	ldr r1, [r4, r1]
	cmp r1, #3
	blt _022567F2
	movs r2, #0
	subs r1, r0, #4
	str r2, [r4, r1]
	adds r1, r0, #0
	subs r1, #8
	ldr r1, [r4, r1]
	subs r2, r1, #1
	adds r1, r0, #0
	subs r1, #8
	str r2, [r4, r1]
	adds r1, r0, #0
	subs r1, #8
	ldr r2, [r4, r1]
	lsls r1, r2, #4
	orrs r2, r1
	ldr r1, _022567F4 @ =0x0400104C
	strb r2, [r1]
	adds r2, r0, #0
	subs r2, #8
	ldr r3, [r4, r2]
	subs r0, #8
	lsls r2, r3, #4
	orrs r2, r3
	strb r2, [r1, #1]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _022567F2
	adds r0, r5, #0
	bl ov48_02256594
_022567F2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_022567F4: .4byte 0x0400104C
_022567F8: .4byte 0x00000678
	thumb_func_end ov48_0225672C

	thumb_func_start ov48_022567FC
ov48_022567FC: @ 0x022567FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r6, r0, #0
	ldr r7, [r6]
	movs r3, #0
	str r3, [sp]
	movs r2, #1
	str r2, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	movs r0, #0xc
	movs r1, #0x78
	bl FUN_02006EC0
	movs r0, #8
	str r0, [sp]
	movs r0, #0x4e
	lsls r0, r0, #2
	adds r0, r6, r0
	movs r1, #0xc
	movs r2, #0x76
	movs r3, #0x77
	bl FUN_02255958
	movs r2, #0
	add r0, sp, #0xc
	strb r2, [r0, #0x12]
	movs r1, #2
	strb r1, [r0, #0x13]
	strb r2, [r0, #0x15]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl FUN_02255DBC
	ldr r0, [sp, #0x10]
	movs r2, #0x4e
	lsls r0, r0, #0xc
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	lsls r2, r2, #2
	lsls r0, r0, #0xc
	str r0, [sp, #0x18]
	movs r1, #0
	add r0, sp, #0xc
	strb r1, [r0, #0x14]
	strh r1, [r0, #0x10]
	ldr r0, [r6, #0x20]
	add r1, sp, #0x14
	adds r2, r6, r2
	bl FUN_02255810
	movs r1, #1
	str r0, [r6, #0x24]
	bl FUN_02255948
	movs r1, #1
	add r0, sp, #0xc
	strb r1, [r0, #0x14]
	movs r1, #7
	strh r1, [r0, #0x10]
	movs r5, #0
	str r5, [sp, #0x14]
	str r5, [sp, #0x18]
	adds r4, r6, #0
_02256880:
	movs r2, #0x4e
	lsls r2, r2, #2
	ldr r0, [r6, #0x20]
	add r1, sp, #0x14
	adds r2, r6, r2
	bl FUN_02255810
	movs r1, #1
	str r0, [r4, #0x28]
	bl FUN_02255948
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #0x40
	blt _02256880
	adds r0, r6, #0
	bl ov48_02256920
	movs r5, #0
	adds r4, r6, #0
_022568A8:
	adds r0, r5, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl FUN_02255DFC
	ldr r0, [sp, #0x10]
	movs r1, #2
	lsls r0, r0, #0xc
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	movs r2, #0x4e
	lsls r0, r0, #0xc
	str r0, [sp, #0x18]
	add r0, sp, #0xc
	strb r1, [r0, #0x14]
	adds r1, r5, #0
	adds r1, #0xe
	strh r1, [r0, #0x10]
	lsls r2, r2, #2
	ldr r0, [r6, #0x20]
	add r1, sp, #0x14
	adds r2, r6, r2
	bl FUN_02255810
	movs r1, #0x4a
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r1, #0
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02255948
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	bne _022568FE
	movs r0, #0x4a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_02255914
_022568FE:
	adds r5, r5, #1
	adds r4, r4, #4
	adds r7, r7, #4
	cmp r5, #4
	blt _022568A8
	ldr r0, _0225691C @ =ov48_022569FC
	adds r1, r6, #0
	movs r2, #3
	bl FUN_0200D9E8
	movs r1, #0x53
	lsls r1, r1, #2
	str r0, [r6, r1]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225691C: .4byte ov48_022569FC
	thumb_func_end ov48_022567FC

	thumb_func_start ov48_02256920
ov48_02256920: @ 0x02256920
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	ldr r1, [r7]
	movs r4, #0
	ldr r0, [r1, #8]
	cmp r0, #0
	ble _02256966
	adds r6, r4, #0
	adds r5, r7, #0
_02256934:
	adds r1, r1, r6
	ldrb r0, [r1, #0xc]
	ldrb r1, [r1, #0xd]
	add r2, sp, #4
	add r3, sp, #0
	bl FUN_02255DBC
	ldr r1, [sp, #4]
	ldr r2, [sp]
	ldr r0, [r5, #0x28]
	lsls r1, r1, #0xc
	lsls r2, r2, #0xc
	bl FUN_02255900
	ldr r0, [r5, #0x28]
	movs r1, #0
	bl FUN_02255914
	ldr r1, [r7]
	adds r4, r4, #1
	ldr r0, [r1, #8]
	adds r6, r6, #2
	adds r5, r5, #4
	cmp r4, r0
	blt _02256934
_02256966:
	cmp r4, #0x40
	bge _02256980
	lsls r0, r4, #2
	adds r5, r7, r0
	movs r6, #1
_02256970:
	ldr r0, [r5, #0x28]
	adds r1, r6, #0
	bl FUN_02255914
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0x40
	blt _02256970
_02256980:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov48_02256920

	thumb_func_start ov48_02256984
ov48_02256984: @ 0x02256984
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0225699E
	bl FUN_0200DA58
	movs r0, #0x53
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
_0225699E:
	movs r6, #0
	adds r4, r5, #0
	adds r7, r6, #0
_022569A4:
	movs r0, #0x4a
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _022569BA
	ldr r0, [r5, #0x20]
	bl FUN_022558B0
	movs r0, #0x4a
	lsls r0, r0, #2
	str r7, [r4, r0]
_022569BA:
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #4
	blt _022569A4
	movs r6, #0
	adds r4, r5, #0
	adds r7, r6, #0
_022569C8:
	ldr r1, [r4, #0x28]
	cmp r1, #0
	beq _022569D6
	ldr r0, [r5, #0x20]
	bl FUN_022558B0
	str r7, [r4, #0x28]
_022569D6:
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #0x40
	blt _022569C8
	ldr r1, [r5, #0x24]
	cmp r1, #0
	beq _022569EE
	ldr r0, [r5, #0x20]
	bl FUN_022558B0
	movs r0, #0
	str r0, [r5, #0x24]
_022569EE:
	movs r0, #0x4e
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_022559B0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov48_02256984

	thumb_func_start ov48_022569FC
ov48_022569FC: @ 0x022569FC
	push {r4, lr}
	sub sp, #8
	adds r4, r1, #0
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	beq _02256A26
	ldm r1, {r0, r1}
	add r2, sp, #4
	add r3, sp, #0
	bl FUN_02255DBC
	ldr r1, [sp, #4]
	ldr r2, [sp]
	ldr r0, [r4, #0x24]
	lsls r1, r1, #0xc
	lsls r2, r2, #0xc
	bl FUN_02255900
_02256A26:
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov48_022569FC
	@ 0x02256A2C
