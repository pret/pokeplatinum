	.include "macros/function.inc"


	.text

	thumb_func_start ov43_022561C0
ov43_022561C0: @ 0x022561C0
	ldr r3, _022561C8 @ =FUN_02254238
	ldr r0, _022561CC @ =ov43_022561D4
	ldr r1, _022561D0 @ =ov43_02256310
	bx r3
	.align 2, 0
_022561C8: .4byte FUN_02254238
_022561CC: .4byte ov43_022561D4
_022561D0: .4byte ov43_02256310
	thumb_func_end ov43_022561C0

	thumb_func_start ov43_022561D4
ov43_022561D4: @ 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #8
	movs r1, #0x24
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov43_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 @ =ov43_022562CC
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
_02256218: .4byte ov43_022562CC
	thumb_func_end ov43_022561D4

	thumb_func_start ov43_0225621C
ov43_0225621C: @ 0x0225621C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r5, #0
	adds r6, r2, #0
	adds r0, r3, #0
	adds r1, #8
	movs r2, #0xc
	str r3, [r5, #4]
	bl FUN_02099D7C
	cmp r0, #0
	bne _02256240
	adds r0, r5, #0
	adds r0, #8
	bl ov43_02256288
_02256240:
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0x14
	adds r1, #8
	adds r2, r6, #0
	bl ov43_02256544
	cmp r0, #0
	beq _02256278
	movs r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	movs r0, #8
	str r0, [sp]
	ldr r0, _02256280 @ =0x02256A98
	ldr r2, _02256284 @ =ov43_02256308
	movs r1, #6
	adds r3, r5, #0
	bl FUN_02255ACC
	str r0, [r5, #0x1c]
	movs r0, #0
	str r0, [r5, #0x20]
	add sp, #4
	str r4, [r5, #0x18]
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_02256278:
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02256280: .4byte 0x02256A98
_02256284: .4byte ov43_02256308
	thumb_func_end ov43_0225621C

	thumb_func_start ov43_02256288
ov43_02256288: @ 0x02256288
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	str r0, [r4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	movs r0, #0x12
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #6]
	ldrh r1, [r4, #8]
	ldrh r2, [r4, #0xa]
	bl ov43_022564AC
	strh r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov43_02256288

	thumb_func_start ov43_022562A8
ov43_022562A8: @ 0x022562A8
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #8
	movs r2, #0xc
	bl FUN_02099D54
	ldr r0, [r4, #0x1c]
	bl FUN_02255B34
	ldr r0, [r4, #0x14]
	bl ov43_02256680
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov43_022562A8

	thumb_func_start ov43_022562CC
ov43_022562CC: @ 0x022562CC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhs _02256302
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	bl FUN_02254518
	ldrb r1, [r4]
	adds r0, r4, #0
	lsls r2, r1, #2
	ldr r1, _02256304 @ =0x02256A8C
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _02256302
	adds r0, r4, #0
	bl ov43_022562A8
	adds r0, r5, #0
	bl FUN_0200DA58
	ldr r0, [r4, #0x18]
	bl FUN_02254260
_02256302:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02256304: .4byte 0x02256A8C
	thumb_func_end ov43_022562CC

	thumb_func_start ov43_02256308
ov43_02256308: @ 0x02256308
	str r0, [r3, #8]
	str r1, [r3, #0x20]
	bx lr
	.align 2, 0
	thumb_func_end ov43_02256308

	thumb_func_start ov43_02256310
ov43_02256310: @ 0x02256310
	movs r1, #1
	strb r1, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end ov43_02256310

	thumb_func_start ov43_02256318
ov43_02256318: @ 0x02256318
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
	thumb_func_end ov43_02256318

	thumb_func_start ov43_0225632C
ov43_0225632C: @ 0x0225632C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0225633C
	cmp r0, #1
	beq _0225634C
	b _02256366
_0225633C:
	ldr r0, [r4, #0x14]
	movs r1, #0
	bl ov43_022566B0
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _02256366
_0225634C:
	ldr r0, [r4, #0x14]
	movs r1, #0
	bl ov43_022566D4
	cmp r0, #0
	beq _02256366
	ldr r0, [r4, #0x18]
	bl FUN_0225424C
	adds r0, r4, #0
	movs r1, #1
	bl ov43_02256318
_02256366:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov43_0225632C

	thumb_func_start ov43_0225636C
ov43_0225636C: @ 0x0225636C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _0225638C
	ldr r0, [r4, #0x14]
	bl ov43_022566E0
	cmp r0, #0
	beq _02256388
	adds r0, r4, #0
	movs r1, #2
	bl ov43_02256318
_02256388:
	movs r0, #0
	pop {r4, pc}
_0225638C:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0225639C
	cmp r0, #1
	beq _022563B2
	cmp r0, #2
	beq _02256464
	b _02256472
_0225639C:
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _02256472
	ldr r0, [r4, #0x14]
	movs r1, #2
	bl ov43_022566B0
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _02256472
_022563B2:
	ldr r0, [r4, #0x20]
	cmp r0, #2
	bne _022563C6
	ldr r0, [r4, #0x14]
	movs r1, #3
	bl ov43_022566B0
	movs r0, #0
	strb r0, [r4, #1]
	b _02256472
_022563C6:
	cmp r0, #3
	bne _02256472
	ldr r0, [r4, #8]
	cmp r0, #5
	bhi _02256440
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022563DC: @ jump table
	.2byte _022563E8 - _022563DC - 2 @ case 0
	.2byte _022563F8 - _022563DC - 2 @ case 1
	.2byte _02256406 - _022563DC - 2 @ case 2
	.2byte _02256416 - _022563DC - 2 @ case 3
	.2byte _02256424 - _022563DC - 2 @ case 4
	.2byte _02256434 - _022563DC - 2 @ case 5
_022563E8:
	ldrh r0, [r4, #0xe]
	movs r1, #0
	mvns r1, r1
	movs r2, #0
	bl ov43_022564EC
	strh r0, [r4, #0xe]
	b _02256440
_022563F8:
	ldrh r0, [r4, #0xe]
	movs r1, #1
	movs r2, #0
	bl ov43_022564EC
	strh r0, [r4, #0xe]
	b _02256440
_02256406:
	ldrh r0, [r4, #0x10]
	movs r1, #0
	mvns r1, r1
	movs r2, #0
	bl ov43_022564EC
	strh r0, [r4, #0x10]
	b _02256440
_02256416:
	ldrh r0, [r4, #0x10]
	movs r1, #1
	movs r2, #0
	bl ov43_022564EC
	strh r0, [r4, #0x10]
	b _02256440
_02256424:
	ldrh r0, [r4, #0x12]
	movs r1, #0
	mvns r1, r1
	movs r2, #1
	bl ov43_022564EC
	strh r0, [r4, #0x12]
	b _02256440
_02256434:
	ldrh r0, [r4, #0x12]
	movs r1, #1
	adds r2, r1, #0
	bl ov43_022564EC
	strh r0, [r4, #0x12]
_02256440:
	ldrh r0, [r4, #0xe]
	ldrh r1, [r4, #0x10]
	ldrh r2, [r4, #0x12]
	bl ov43_022564AC
	strh r0, [r4, #0xc]
	ldr r0, [r4, #0x14]
	movs r1, #3
	bl ov43_022566B0
	ldr r0, [r4, #0x14]
	movs r1, #4
	bl ov43_022566B0
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _02256472
_02256464:
	ldr r0, [r4, #0x14]
	bl ov43_022566E0
	cmp r0, #0
	beq _02256472
	movs r0, #0
	strb r0, [r4, #1]
_02256472:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov43_0225636C

	thumb_func_start ov43_02256478
ov43_02256478: @ 0x02256478
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256488
	cmp r0, #1
	beq _02256498
	b _022564A6
_02256488:
	ldr r0, [r4, #0x14]
	movs r1, #1
	bl ov43_022566B0
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _022564A6
_02256498:
	ldr r0, [r4, #0x14]
	bl ov43_022566E0
	cmp r0, #0
	beq _022564A6
	movs r0, #1
	pop {r4, pc}
_022564A6:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov43_02256478

	thumb_func_start ov43_022564AC
ov43_022564AC: @ 0x022564AC
	push {r4, r5}
	ldr r5, _022564E8 @ =0x02256AB0
	movs r3, #0x12
	adds r4, r0, #0
	muls r4, r3, r4
	adds r4, r5, r4
	adds r0, r3, #0
	ldrsb r5, [r4, r1]
	subs r0, #0x1c
	cmp r5, r0
	beq _022564CE
	cmp r2, #0x12
	beq _022564D4
	ldrsb r0, [r4, r2]
	subs r3, #0x1c
	cmp r0, r3
	bne _022564D4
_022564CE:
	movs r0, #0
	pop {r4, r5}
	bx lr
_022564D4:
	movs r0, #3
	adds r0, r0, r5
	cmp r2, #0x12
	beq _022564E4
	cmp r2, r1
	beq _022564E4
	ldrsb r1, [r4, r2]
	adds r0, r0, r1
_022564E4:
	pop {r4, r5}
	bx lr
	.align 2, 0
_022564E8: .4byte 0x02256AB0
	thumb_func_end ov43_022564AC

	thumb_func_start ov43_022564EC
ov43_022564EC: @ 0x022564EC
	push {r4, r5}
	ldr r5, _02256540 @ =0x02256BF4
	movs r4, #0
_022564F2:
	ldrb r3, [r5]
	cmp r3, r0
	beq _02256500
	adds r4, r4, #1
	adds r5, r5, #1
	cmp r4, #0x11
	blo _022564F2
_02256500:
	cmp r4, #0x11
	bne _02256514
	cmp r1, #0
	ble _0225650E
	movs r0, #0
	pop {r4, r5}
	bx lr
_0225650E:
	movs r0, #8
	pop {r4, r5}
	bx lr
_02256514:
	adds r4, r4, r1
	cmp r4, #0x11
	blt _02256526
	cmp r2, #0
	beq _02256524
	movs r0, #0x12
	pop {r4, r5}
	bx lr
_02256524:
	movs r4, #0
_02256526:
	cmp r4, #0
	bge _02256536
	cmp r2, #0
	beq _02256534
	movs r0, #0x12
	pop {r4, r5}
	bx lr
_02256534:
	movs r4, #0x10
_02256536:
	ldr r0, _02256540 @ =0x02256BF4
	ldrb r0, [r0, r4]
	pop {r4, r5}
	bx lr
	nop
_02256540: .4byte 0x02256BF4
	thumb_func_end ov43_022564EC

	thumb_func_start ov43_02256544
ov43_02256544: @ 0x02256544
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #8
	movs r1, #0xc0
	bl FUN_02018144
	adds r4, r0, #0
	beq _022565AE
	adds r0, #8
	movs r1, #8
	bl FUN_02255090
	str r6, [r4]
	bl FUN_02254674
	str r0, [r4, #4]
	bl FUN_02254664
	movs r2, #0x27
	str r0, [r4, #0x30]
	movs r0, #1
	movs r1, #0x1a
	lsls r2, r2, #4
	movs r3, #8
	bl FUN_0200B144
	adds r1, r4, #0
	adds r1, #0xb4
	str r0, [r1]
	movs r2, #0x72
	movs r0, #1
	movs r1, #0x1a
	lsls r2, r2, #2
	movs r3, #8
	bl FUN_0200B144
	adds r1, r4, #0
	adds r1, #0xb8
	str r0, [r1]
	movs r0, #0x80
	movs r1, #8
	bl FUN_02023790
	adds r1, r4, #0
	adds r1, #0xbc
	str r0, [r1]
	adds r0, r4, #0
	bl ov43_022565B4
	str r4, [r5]
	movs r0, #1
	pop {r4, r5, r6, pc}
_022565AE:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov43_02256544

	thumb_func_start ov43_022565B4
ov43_022565B4: @ 0x022565B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	movs r3, #0
	str r3, [sp]
	movs r2, #1
	adds r6, r0, #0
	str r2, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	movs r0, #0xc
	movs r1, #0x40
	bl FUN_02006EC0
	movs r0, #8
	str r0, [sp]
	adds r0, r6, #0
	adds r0, #0x60
	movs r1, #0xc
	movs r2, #0x3e
	movs r3, #0x3f
	bl FUN_02255958
	adds r0, r6, #0
	str r0, [sp, #0xc]
	adds r0, #0x60
	ldr r4, _02256638 @ =0x02256C7C
	movs r7, #0
	adds r5, r6, #0
	str r0, [sp, #0xc]
_022565EE:
	ldr r0, [r6, #0x30]
	ldr r2, [sp, #0xc]
	adds r1, r4, #0
	bl FUN_02255810
	str r0, [r5, #0x34]
	adds r7, r7, #1
	adds r4, #0x10
	adds r5, r5, #4
	cmp r7, #6
	blt _022565EE
	adds r0, r6, #0
	str r0, [sp, #0x10]
	adds r0, #0x60
	movs r7, #0
	adds r4, r6, #0
	movs r5, #0x2c
	str r0, [sp, #0x10]
_02256612:
	ldr r0, [r6, #0x30]
	ldr r1, _0225663C @ =0x02256C08
	ldr r2, [sp, #0x10]
	bl FUN_02255810
	movs r2, #3
	lsls r1, r5, #0xc
	lsls r2, r2, #0x10
	str r0, [r4, #0x4c]
	bl FUN_02255900
	adds r7, r7, #1
	adds r4, r4, #4
	adds r5, #8
	cmp r7, #5
	blt _02256612
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02256638: .4byte 0x02256C7C
_0225663C: .4byte 0x02256C08
	thumb_func_end ov43_022565B4

	thumb_func_start ov43_02256640
ov43_02256640: @ 0x02256640
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	adds r4, r5, #0
_02256648:
	ldr r1, [r4, #0x34]
	cmp r1, #0
	beq _02256654
	ldr r0, [r5, #0x30]
	bl FUN_022558B0
_02256654:
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #6
	blt _02256648
	movs r6, #0
	adds r4, r5, #0
_02256660:
	ldr r1, [r4, #0x4c]
	cmp r1, #0
	beq _0225666C
	ldr r0, [r5, #0x30]
	bl FUN_022558B0
_0225666C:
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #5
	blt _02256660
	adds r5, #0x60
	adds r0, r5, #0
	bl FUN_022559B0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov43_02256640

	thumb_func_start ov43_02256680
ov43_02256680: @ 0x02256680
	push {r4, lr}
	adds r4, r0, #0
	beq _022566AE
	adds r0, #0xbc
	ldr r0, [r0]
	bl FUN_020237BC
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	bl FUN_0200B190
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r0, [r0]
	bl FUN_0200B190
	adds r0, r4, #0
	bl ov43_02256640
	adds r0, r4, #0
	bl FUN_020181C4
_022566AE:
	pop {r4, pc}
	thumb_func_end ov43_02256680

	thumb_func_start ov43_022566B0
ov43_022566B0: @ 0x022566B0
	push {lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r0, #8
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	ldr r0, _022566D0 @ =0x02256C34
	ldr r3, [r2]
	bl FUN_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022566D0: .4byte 0x02256C34
	thumb_func_end ov43_022566B0

	thumb_func_start ov43_022566D4
ov43_022566D4: @ 0x022566D4
	ldr r3, _022566DC @ =FUN_02255130
	adds r0, #8
	bx r3
	nop
_022566DC: .4byte FUN_02255130
	thumb_func_end ov43_022566D4

	thumb_func_start ov43_022566E0
ov43_022566E0: @ 0x022566E0
	ldr r3, _022566E8 @ =FUN_02255154
	adds r0, #8
	bx r3
	nop
_022566E8: .4byte FUN_02255154
	thumb_func_end ov43_022566E0

	thumb_func_start ov43_022566EC
ov43_022566EC: @ 0x022566EC
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0225523C
	adds r0, #8
	adds r1, r4, #0
	bl FUN_02255224
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov43_022566EC

	thumb_func_start ov43_02256700
ov43_02256700: @ 0x02256700
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r1, #0
	adds r0, r6, #0
	bl FUN_0225523C
	adds r5, r0, #0
	adds r0, r6, #0
	bl FUN_02255240
	adds r7, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _02256798 @ =0x02256C18
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
	movs r1, #0x3d
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
	movs r1, #0x3c
	movs r3, #6
	bl FUN_02006E60
	movs r0, #0
	adds r1, r0, #0
	bl FUN_022546B8
	adds r0, r5, #0
	adds r1, r7, #0
	lsrs r2, r4, #5
	bl ov43_022567A4
	ldr r0, [r5, #4]
	movs r1, #6
	bl FUN_02019448
	ldr r1, _0225679C @ =0x04001000
	ldr r0, _022567A0 @ =0xFFFFE0FF
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
	adds r0, r6, #0
	bl ov43_022566EC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02256798: .4byte 0x02256C18
_0225679C: .4byte 0x04001000
_022567A0: .4byte 0xFFFFE0FF
	thumb_func_end ov43_02256700

	thumb_func_start ov43_022567A4
ov43_022567A4: @ 0x022567A4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0xf
	adds r4, r2, #0
	str r0, [sp]
	movs r2, #6
	str r2, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	adds r6, r1, #0
	str r0, [sp, #0x10]
	adds r1, r5, #0
	ldr r0, [r5, #4]
	adds r1, #0x74
	adds r3, r2, #0
	bl FUN_0201A7E8
	movs r0, #4
	str r0, [sp]
	movs r2, #6
	adds r1, r5, #0
	str r2, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r0, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	adds r1, #0x84
	movs r3, #0x10
	bl FUN_0201A7E8
	movs r0, #8
	str r0, [sp]
	movs r2, #6
	adds r1, r5, #0
	str r2, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	adds r1, #0x94
	movs r3, #0x10
	bl FUN_0201A7E8
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x16
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r5, #0
	adds r4, #0x24
	str r0, [sp, #0xc]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	adds r1, #0xa4
	movs r2, #6
	movs r3, #3
	bl FUN_0201A7E8
	adds r0, r5, #0
	adds r0, #0x74
	bl FUN_0201A9F4
	adds r0, r5, #0
	adds r0, #0x84
	bl FUN_0201A9F4
	adds r0, r5, #0
	adds r0, #0x94
	bl FUN_0201A9F4
	adds r0, r5, #0
	adds r0, #0xa4
	bl FUN_0201A9F4
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov43_02256948
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov43_022567A4

	thumb_func_start ov43_02256870
ov43_02256870: @ 0x02256870
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x74
	bl FUN_0201A8FC
	adds r0, r4, #0
	adds r0, #0x84
	bl FUN_0201A8FC
	adds r0, r4, #0
	adds r0, #0x94
	bl FUN_0201A8FC
	adds r4, #0xa4
	adds r0, r4, #0
	bl FUN_0201A8FC
	pop {r4, pc}
	thumb_func_end ov43_02256870

	thumb_func_start ov43_02256894
ov43_02256894: @ 0x02256894
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	bl ov43_02256870
	ldr r0, [r4, #4]
	movs r1, #6
	bl FUN_02019044
	adds r0, r5, #0
	bl ov43_022566EC
	pop {r3, r4, r5, pc}
	thumb_func_end ov43_02256894

	thumb_func_start ov43_022568B4
ov43_022568B4: @ 0x022568B4
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02255240
	ldr r2, [r0]
	movs r1, #1
	adds r0, r2, #0
	tst r0, r1
	beq _022568D2
	movs r1, #3
_022568D2:
	lsls r0, r2, #2
	adds r0, r4, r0
	ldr r0, [r0, #0x34]
	bl FUN_022558C4
	ldr r0, _022568EC @ =0x00000663
	bl FUN_02254424
	adds r0, r5, #0
	bl ov43_022566EC
	pop {r3, r4, r5, pc}
	nop
_022568EC: .4byte 0x00000663
	thumb_func_end ov43_022568B4

	thumb_func_start ov43_022568F0
ov43_022568F0: @ 0x022568F0
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02255240
	ldr r2, [r0]
	movs r0, #1
	tst r0, r2
	beq _0225690E
	movs r1, #2
	b _02256910
_0225690E:
	movs r1, #0
_02256910:
	lsls r0, r2, #2
	adds r0, r4, r0
	ldr r0, [r0, #0x34]
	bl FUN_022558C4
	adds r0, r5, #0
	bl ov43_022566EC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov43_022568F0

	thumb_func_start ov43_02256924
ov43_02256924: @ 0x02256924
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02255240
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov43_02256948
	adds r0, r5, #0
	bl ov43_022566EC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov43_02256924

	thumb_func_start ov43_02256948
ov43_02256948: @ 0x02256948
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r1, r5, #0
	ldrh r2, [r4, #6]
	adds r1, #0x74
	bl ov43_02256988
	adds r1, r5, #0
	ldrh r2, [r4, #8]
	adds r0, r5, #0
	adds r1, #0x84
	bl ov43_02256988
	adds r1, r5, #0
	ldrh r2, [r4, #0xa]
	adds r0, r5, #0
	adds r1, #0x94
	bl ov43_02256988
	adds r1, r5, #0
	ldrh r2, [r4, #4]
	adds r0, r5, #0
	adds r1, #0xa4
	bl ov43_02256A00
	ldrh r1, [r4, #4]
	adds r0, r5, #0
	bl ov43_02256A4C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov43_02256948

	thumb_func_start ov43_02256988
ov43_02256988: @ 0x02256988
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #4
	adds r6, r2, #0
	bl FUN_0201ADA4
	cmp r6, #0x12
	bne _022569B2
	adds r0, r5, #0
	adds r2, r5, #0
	adds r0, #0xb8
	adds r2, #0xbc
	ldr r0, [r0]
	ldr r2, [r2]
	movs r1, #6
	bl FUN_0200B1B8
	b _022569C4
_022569B2:
	adds r0, r5, #0
	adds r2, r5, #0
	adds r0, #0xb4
	adds r2, #0xbc
	ldr r0, [r0]
	ldr r2, [r2]
	adds r1, r6, #0
	bl FUN_0200B1B8
_022569C4:
	adds r1, r5, #0
	adds r1, #0xbc
	movs r0, #0
	ldr r1, [r1]
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022569FC @ =0x00010804
	adds r5, #0xbc
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5]
	movs r5, #0x30
	subs r3, r5, r3
	adds r0, r4, #0
	lsrs r3, r3, #1
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_0201ACCC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_022569FC: .4byte 0x00010804
	thumb_func_end ov43_02256988

	thumb_func_start ov43_02256A00
ov43_02256A00: @ 0x02256A00
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #4
	adds r6, r2, #0
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r2, r5, #0
	adds r0, #0xb8
	adds r2, #0xbc
	ldr r0, [r0]
	ldr r2, [r2]
	adds r1, r6, #0
	bl FUN_0200B1B8
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02256A48 @ =0x00010804
	adds r5, #0xbc
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5]
	adds r0, r4, #0
	adds r3, r1, #0
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_0201ACCC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_02256A48: .4byte 0x00010804
	thumb_func_end ov43_02256A00

	thumb_func_start ov43_02256A4C
ov43_02256A4C: @ 0x02256A4C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	adds r6, r1, #0
	ldr r4, _02256A88 @ =0x00000000
	beq _02256A6A
	adds r5, r0, #0
	movs r7, #4
_02256A5A:
	ldr r0, [r5, #0x4c]
	adds r1, r7, #0
	bl FUN_022558C4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, r6
	blo _02256A5A
_02256A6A:
	cmp r4, #5
	bhs _02256A86
	ldr r0, [sp]
	lsls r1, r4, #2
	adds r5, r0, r1
	movs r6, #5
_02256A76:
	ldr r0, [r5, #0x4c]
	adds r1, r6, #0
	bl FUN_022558C4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #5
	blo _02256A76
_02256A86:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02256A88: .4byte 0x00000000
	thumb_func_end ov43_02256A4C
	@ 0x02256A8C
