
	thumb_func_start ov54_022561C0
ov54_022561C0: @ 0x022561C0
	ldr r3, _022561C8 @ =FUN_02254238
	ldr r0, _022561CC @ =ov54_022561D4
	ldr r1, _022561D0 @ =ov54_02256338
	bx r3
	.align 2, 0
_022561C8: .4byte FUN_02254238
_022561CC: .4byte ov54_022561D4
_022561D0: .4byte ov54_02256338
	thumb_func_end ov54_022561C0

	thumb_func_start ov54_022561D4
ov54_022561D4: @ 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #8
	movs r1, #0xac
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov54_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 @ =ov54_022562F4
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
_02256218: .4byte ov54_022562F4
	thumb_func_end ov54_022561D4

	thumb_func_start ov54_0225621C
ov54_0225621C: @ 0x0225621C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	adds r0, r1, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	bl FUN_02254540
	str r0, [sp, #0x10]
	bl FUN_02056AAC
	ldr r1, [sp, #4]
	movs r4, #0
	adds r1, #0x94
	str r0, [r1]
	ldr r0, [sp, #4]
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	bls _02256276
	ldr r0, [sp, #4]
	ldr r6, [sp, #4]
	adds r7, r0, #4
	adds r6, #0xc
	adds r5, r0, #0
_0225624E:
	ldr r0, [sp, #0x10]
	adds r1, r4, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl FUN_02056AC8
	ldr r0, [sp, #0x10]
	adds r1, r4, #0
	bl FUN_02056AFC
	str r0, [r5, #8]
	ldr r0, [sp, #4]
	adds r4, r4, #1
	adds r0, #0x94
	ldr r0, [r0]
	adds r6, #0xc
	adds r7, #0xc
	adds r5, #0xc
	cmp r4, r0
	blo _0225624E
_02256276:
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r2, [sp, #0xc]
	adds r0, #0x98
	adds r1, r1, #4
	bl ov54_0225642C
	cmp r0, #0
	beq _022562C6
	ldr r0, [sp, #4]
	movs r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	movs r0, #8
	str r0, [sp]
	ldr r0, _022562CC @ =0x022566E0
	ldr r2, _022562D0 @ =ov54_02256340
	ldr r3, [sp, #4]
	movs r1, #0xc
	bl FUN_02255ACC
	ldr r1, [sp, #4]
	adds r1, #0xa0
	str r0, [r1]
	ldr r0, [sp, #4]
	movs r1, #0
	adds r0, #0xa4
	str r1, [r0]
	ldr r0, [sp, #4]
	adds r0, #0xa8
	str r1, [r0]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	adds r0, #0x9c
	str r0, [sp, #4]
	str r1, [r0]
	add sp, #0x14
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_022562C6:
	movs r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022562CC: .4byte 0x022566E0
_022562D0: .4byte ov54_02256340
	thumb_func_end ov54_0225621C

	thumb_func_start ov54_022562D4
ov54_022562D4: @ 0x022562D4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xa0
	ldr r0, [r0]
	bl FUN_02255B34
	adds r0, r4, #0
	adds r0, #0x98
	ldr r0, [r0]
	bl ov54_02256460
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov54_022562D4

	thumb_func_start ov54_022562F4
ov54_022562F4: @ 0x022562F4
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhs _02256332
	adds r0, r4, #0
	adds r0, #0x9c
	adds r1, #0xa0
	ldr r0, [r0]
	ldr r1, [r1]
	bl FUN_02254518
	ldrb r1, [r4]
	adds r0, r4, #0
	lsls r2, r1, #2
	ldr r1, _02256334 @ =0x022566D4
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _02256332
	adds r0, r4, #0
	bl ov54_022562D4
	adds r0, r5, #0
	bl FUN_0200DA58
	adds r4, #0x9c
	ldr r0, [r4]
	bl FUN_02254260
_02256332:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02256334: .4byte 0x022566D4
	thumb_func_end ov54_022562F4

	thumb_func_start ov54_02256338
ov54_02256338: @ 0x02256338
	movs r1, #1
	strb r1, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end ov54_02256338

	thumb_func_start ov54_02256340
ov54_02256340: @ 0x02256340
	adds r2, r3, #0
	adds r2, #0xa8
	str r0, [r2]
	adds r3, #0xa4
	str r1, [r3]
	bx lr
	thumb_func_end ov54_02256340

	thumb_func_start ov54_0225634C
ov54_0225634C: @ 0x0225634C
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _02256354
	b _02256356
_02256354:
	movs r1, #2
_02256356:
	strb r1, [r0]
	movs r1, #0
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
	thumb_func_end ov54_0225634C

	thumb_func_start ov54_02256360
ov54_02256360: @ 0x02256360
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256370
	cmp r0, #1
	beq _02256384
	b _022563A6
_02256370:
	adds r0, r4, #0
	adds r0, #0x98
	ldr r0, [r0]
	movs r1, #0
	bl ov54_0225646C
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _022563A6
_02256384:
	adds r0, r4, #0
	adds r0, #0x98
	ldr r0, [r0]
	movs r1, #0
	bl ov54_02256490
	cmp r0, #0
	beq _022563A6
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	bl FUN_0225424C
	adds r0, r4, #0
	movs r1, #1
	bl ov54_0225634C
_022563A6:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov54_02256360

	thumb_func_start ov54_022563AC
ov54_022563AC: @ 0x022563AC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _022563C0
	movs r1, #2
	bl ov54_0225634C
	movs r0, #0
	pop {r4, pc}
_022563C0:
	adds r0, #0xa4
	ldr r0, [r0]
	cmp r0, #1
	bne _022563F0
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r1, [r0]
	movs r0, #0xb
	subs r1, r0, r1
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r1, r0
	bhs _022563EA
	movs r0, #0xc
	muls r0, r1, r0
	adds r1, r4, r0
	ldr r0, [r1, #4]
	ldr r1, [r1, #8]
	bl FUN_02254444
_022563EA:
	movs r0, #0
	adds r4, #0xa4
	str r0, [r4]
_022563F0:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov54_022563AC

	thumb_func_start ov54_022563F4
ov54_022563F4: @ 0x022563F4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256404
	cmp r0, #1
	beq _02256418
	b _02256428
_02256404:
	adds r0, r4, #0
	adds r0, #0x98
	ldr r0, [r0]
	movs r1, #1
	bl ov54_0225646C
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _02256428
_02256418:
	adds r4, #0x98
	ldr r0, [r4]
	bl ov54_0225649C
	cmp r0, #0
	beq _02256428
	movs r0, #1
	pop {r4, pc}
_02256428:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov54_022563F4

	thumb_func_start ov54_0225642C
ov54_0225642C: @ 0x0225642C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #8
	movs r1, #0x98
	bl FUN_02018144
	adds r4, r0, #0
	beq _0225645A
	adds r0, #8
	movs r1, #4
	bl FUN_02255090
	str r6, [r4]
	bl FUN_02254674
	str r0, [r4, #4]
	bl FUN_02254664
	str r0, [r4, #0x20]
	str r4, [r5]
	movs r0, #1
	pop {r4, r5, r6, pc}
_0225645A:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov54_0225642C

	thumb_func_start ov54_02256460
ov54_02256460: @ 0x02256460
	push {r3, lr}
	cmp r0, #0
	beq _0225646A
	bl FUN_020181C4
_0225646A:
	pop {r3, pc}
	thumb_func_end ov54_02256460

	thumb_func_start ov54_0225646C
ov54_0225646C: @ 0x0225646C
	push {lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r0, #8
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	ldr r0, _0225648C @ =0x0225672C
	ldr r3, [r2]
	bl FUN_0225517C
	add sp, #0xc
	pop {pc}
	nop
_0225648C: .4byte 0x0225672C
	thumb_func_end ov54_0225646C

	thumb_func_start ov54_02256490
ov54_02256490: @ 0x02256490
	ldr r3, _02256498 @ =FUN_02255130
	adds r0, #8
	bx r3
	nop
_02256498: .4byte FUN_02255130
	thumb_func_end ov54_02256490

	thumb_func_start ov54_0225649C
ov54_0225649C: @ 0x0225649C
	ldr r3, _022564A4 @ =FUN_02255154
	adds r0, #8
	bx r3
	nop
_022564A4: .4byte FUN_02255154
	thumb_func_end ov54_0225649C

	thumb_func_start ov54_022564A8
ov54_022564A8: @ 0x022564A8
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0225523C
	adds r0, #8
	adds r1, r4, #0
	bl FUN_02255224
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov54_022564A8

	thumb_func_start ov54_022564BC
ov54_022564BC: @ 0x022564BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r7, r1, #0
	adds r0, r7, #0
	bl FUN_0225523C
	adds r5, r0, #0
	adds r0, r7, #0
	bl FUN_02255240
	str r0, [sp, #0x14]
	ldr r0, [r5, #4]
	ldr r2, _022565B8 @ =0x02256710
	movs r1, #6
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #6
	movs r2, #4
	movs r3, #1
	bl FUN_020196C0
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
	movs r3, #2
	str r3, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	str r3, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	add r1, sp, #0x1c
	movs r2, #6
	bl FUN_0201A7E8
	add r0, sp, #0x1c
	movs r1, #4
	bl FUN_0201ADA4
	add r0, sp, #0x1c
	bl FUN_0201A9F4
	ldr r1, _022565BC @ =0x000001CA
	movs r0, #0x1a
	movs r2, #0
	movs r3, #8
	bl FUN_0200B010
	adds r4, r0, #0
	beq _0225657C
	movs r0, #0
	adds r1, r4, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0
	adds r6, r0, #0
	movs r3, #0xc0
	subs r3, r3, r6
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022565C0 @ =0x00010804
	adds r2, r4, #0
	str r0, [sp, #8]
	add r0, sp, #0x1c
	lsrs r3, r3, #1
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	add r0, sp, #0x1c
	bl FUN_0201ACCC
	adds r0, r4, #0
	bl FUN_020237BC
_0225657C:
	add r0, sp, #0x1c
	bl FUN_0201A8FC
	ldr r0, [r5, #4]
	movs r1, #6
	bl FUN_02019448
	ldr r1, [sp, #0x14]
	adds r0, r5, #0
	bl ov54_022565EC
	ldr r1, _022565C4 @ =0x04001000
	ldr r0, _022565C8 @ =0xFFFFE0FF
	ldr r3, [r1]
	ldr r2, [r1]
	str r3, [sp, #0x18]
	ands r0, r2
	lsls r2, r3, #0x13
	lsrs r3, r2, #0x1b
	movs r2, #4
	orrs r2, r3
	lsls r2, r2, #8
	orrs r0, r2
	str r0, [r1]
	adds r0, r7, #0
	bl ov54_022564A8
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_022565B8: .4byte 0x02256710
_022565BC: .4byte 0x000001CA
_022565C0: .4byte 0x00010804
_022565C4: .4byte 0x04001000
_022565C8: .4byte 0xFFFFE0FF
	thumb_func_end ov54_022564BC

	thumb_func_start ov54_022565CC
ov54_022565CC: @ 0x022565CC
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	bl ov54_022566A8
	ldr r0, [r4, #4]
	movs r1, #6
	bl FUN_02019044
	adds r0, r5, #0
	bl ov54_022564A8
	pop {r3, r4, r5, pc}
	thumb_func_end ov54_022565CC

	thumb_func_start ov54_022565EC
ov54_022565EC: @ 0x022565EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	movs r0, #0
	str r1, [sp, #8]
	bl FUN_02255360
	movs r0, #8
	str r0, [sp]
	ldr r0, [sp, #4]
	movs r1, #0xc
	adds r0, #0x54
	movs r2, #5
	movs r3, #6
	bl FUN_02255958
	ldr r0, [sp, #8]
	movs r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	bls _02256672
	ldr r5, [sp, #4]
	ldr r6, [sp, #8]
	adds r0, r5, #0
	str r0, [sp, #0x10]
	adds r0, #0x54
	ldr r7, _022566A4 @ =0x02256750
	str r4, [sp, #0xc]
	str r0, [sp, #0x10]
_02256628:
	ldr r0, [r6]
	ldr r2, [r6, #8]
	movs r1, #0
	bl FUN_02079D8C
	str r0, [r5, #0x68]
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x10]
	ldr r0, [r0, #0x20]
	adds r1, r7, #0
	bl FUN_02255810
	ldr r1, [sp, #0xc]
	str r0, [r5, #0x24]
	bl FUN_02255940
	ldr r0, [r6]
	ldr r1, [r6, #8]
	movs r2, #0
	bl FUN_02079EDC
	adds r1, r0, #0
	ldr r0, [r5, #0x24]
	bl FUN_02255938
	ldr r0, [sp, #0xc]
	adds r4, r4, #1
	adds r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	adds r6, #0xc
	adds r0, #0x90
	ldr r0, [r0]
	adds r5, r5, #4
	adds r7, #0x10
	cmp r4, r0
	blo _02256628
_02256672:
	cmp r4, #0xc
	bge _02256688
	ldr r0, [sp, #4]
	lsls r1, r4, #2
	adds r1, r0, r1
	movs r0, #0
_0225667E:
	adds r4, r4, #1
	str r0, [r1, #0x24]
	adds r1, r1, #4
	cmp r4, #0xc
	blt _0225667E
_02256688:
	ldr r2, [sp, #8]
	ldr r1, [sp, #4]
	adds r2, #0x90
	movs r0, #0
	str r2, [sp, #8]
	adds r1, #0x68
	ldr r2, [r2]
	adds r3, r0, #0
	str r1, [sp, #4]
	bl FUN_022553A0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_022566A4: .4byte 0x02256750
	thumb_func_end ov54_022565EC

	thumb_func_start ov54_022566A8
ov54_022566A8: @ 0x022566A8
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r4, #0
	adds r5, r6, #0
	adds r7, r4, #0
_022566B2:
	ldr r1, [r5, #0x24]
	cmp r1, #0
	beq _022566C0
	ldr r0, [r6, #0x20]
	bl FUN_022558B0
	str r7, [r5, #0x24]
_022566C0:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0xc
	blt _022566B2
	adds r6, #0x54
	adds r0, r6, #0
	bl FUN_022559B0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov54_022566A8
	@ 0x022566D4
