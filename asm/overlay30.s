	.include "macros/function.inc"


	.text

	thumb_func_start ov30_022561C0
ov30_022561C0: @ 0x022561C0
	ldr r3, _022561C8 @ =FUN_02254238
	ldr r0, _022561CC @ =ov30_022561D4
	ldr r1, _022561D0 @ =ov30_022562EC
	bx r3
	.align 2, 0
_022561C8: .4byte FUN_02254238
_022561CC: .4byte ov30_022561D4
_022561D0: .4byte ov30_022562EC
	thumb_func_end ov30_022561C0

	thumb_func_start ov30_022561D4
ov30_022561D4: @ 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #8
	movs r1, #0x2c
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov30_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 @ =ov30_022562B0
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
_02256218: .4byte ov30_022562B0
	thumb_func_end ov30_022561D4

	thumb_func_start ov30_0225621C
ov30_0225621C: @ 0x0225621C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r5, #0
	adds r0, #0x24
	adds r1, #0x14
	bl ov30_022563EC
	cmp r0, #0
	beq _0225628A
	movs r1, #0
	strb r1, [r5]
	strb r1, [r5, #1]
	strb r1, [r5, #2]
	movs r0, #1
	strb r0, [r5, #3]
	strb r1, [r5, #6]
	adds r0, r5, #0
	str r1, [r5, #0x20]
	adds r0, #0x14
	bl FUN_02013880
	ldr r0, [r5, #0x14]
	cmp r0, #0x18
	blo _02256256
	movs r1, #0x18
	blx FUN_020E2178
	str r1, [r5, #0x14]
_02256256:
	ldr r0, [r5, #0x18]
	cmp r0, #0x3c
	blo _02256266
	ldr r0, [r5, #0x14]
	movs r1, #0x3c
	blx FUN_020E2178
	str r1, [r5, #0x14]
_02256266:
	ldr r0, [r5, #0x18]
	ldr r2, _02256290 @ =ov30_022562F4
	strb r0, [r5, #5]
	movs r0, #8
	str r0, [sp]
	ldr r0, _02256294 @ =0x02256678
	movs r1, #1
	adds r3, r5, #0
	bl FUN_02255ACC
	str r0, [r5, #0x10]
	cmp r0, #0
	bne _02256284
	movs r0, #0
	pop {r3, r4, r5, pc}
_02256284:
	str r4, [r5, #0x28]
	movs r0, #1
	pop {r3, r4, r5, pc}
_0225628A:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_02256290: .4byte ov30_022562F4
_02256294: .4byte 0x02256678
	thumb_func_end ov30_0225621C

	thumb_func_start ov30_02256298
ov30_02256298: @ 0x02256298
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x24]
	bl ov30_02256444
	ldr r0, [r4, #0x10]
	bl FUN_02255B34
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov30_02256298

	thumb_func_start ov30_022562B0
ov30_022562B0: @ 0x022562B0
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhs _022562E6
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x10]
	bl FUN_02254518
	ldrb r1, [r4]
	adds r0, r4, #0
	lsls r2, r1, #2
	ldr r1, _022562E8 @ =0x0225667C
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _022562E6
	adds r0, r4, #0
	bl ov30_02256298
	adds r0, r5, #0
	bl FUN_0200DA58
	ldr r0, [r4, #0x28]
	bl FUN_02254260
_022562E6:
	pop {r3, r4, r5, pc}
	.align 2, 0
_022562E8: .4byte 0x0225667C
	thumb_func_end ov30_022562B0

	thumb_func_start ov30_022562EC
ov30_022562EC: @ 0x022562EC
	movs r1, #1
	strb r1, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end ov30_022562EC

	thumb_func_start ov30_022562F4
ov30_022562F4: @ 0x022562F4
	cmp r2, #0
	beq _02256304
	cmp r2, #1
	bne _0225630C
	movs r0, #1
	str r0, [r3, #0x20]
	strb r0, [r3, #6]
	bx lr
_02256304:
	movs r0, #0
	str r0, [r3, #0x20]
	movs r0, #1
	strb r0, [r3, #6]
_0225630C:
	bx lr
	.align 2, 0
	thumb_func_end ov30_022562F4

	thumb_func_start ov30_02256310
ov30_02256310: @ 0x02256310
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _02256318
	b _0225631A
_02256318:
	movs r1, #2
_0225631A:
	strb r1, [r0]
	movs r1, #0
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
	thumb_func_end ov30_02256310

	thumb_func_start ov30_02256324
ov30_02256324: @ 0x02256324
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256334
	cmp r0, #1
	beq _02256344
	b _0225635E
_02256334:
	ldr r0, [r4, #0x24]
	movs r1, #0
	bl ov30_02256464
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _0225635E
_02256344:
	ldr r0, [r4, #0x24]
	movs r1, #0
	bl ov30_02256488
	cmp r0, #0
	beq _0225635E
	ldr r0, [r4, #0x28]
	bl FUN_0225424C
	adds r0, r4, #0
	movs r1, #1
	bl ov30_02256310
_0225635E:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov30_02256324

	thumb_func_start ov30_02256364
ov30_02256364: @ 0x02256364
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _02256378
	movs r1, #2
	bl ov30_02256310
	movs r0, #0
	pop {r4, pc}
_02256378:
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _0225638A
	movs r0, #0
	strb r0, [r4, #6]
	ldr r0, [r4, #0x24]
	movs r1, #2
	bl ov30_02256464
_0225638A:
	ldr r0, [r4, #0x24]
	movs r1, #1
	bl ov30_02256488
	cmp r0, #0
	beq _022563B2
	ldr r0, [r4, #0x18]
	strb r0, [r4, #5]
	adds r0, r4, #0
	adds r0, #0x14
	bl FUN_02013880
	ldrb r1, [r4, #5]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	beq _022563B2
	ldr r0, [r4, #0x24]
	movs r1, #1
	bl ov30_02256464
_022563B2:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov30_02256364

	thumb_func_start ov30_022563B8
ov30_022563B8: @ 0x022563B8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563C8
	cmp r0, #1
	beq _022563D8
	b _022563E6
_022563C8:
	ldr r0, [r4, #0x24]
	movs r1, #3
	bl ov30_02256464
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _022563E6
_022563D8:
	ldr r0, [r4, #0x24]
	bl ov30_02256494
	cmp r0, #0
	beq _022563E6
	movs r0, #1
	pop {r4, pc}
_022563E6:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov30_022563B8

	thumb_func_start ov30_022563EC
ov30_022563EC: @ 0x022563EC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #8
	movs r1, #0x54
	bl FUN_02018144
	adds r4, r0, #0
	beq _0225643A
	adds r0, #8
	movs r1, #8
	bl FUN_02255090
	str r6, [r4]
	bl FUN_02254674
	str r0, [r4, #4]
	bl FUN_02254664
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl ov30_022565F4
	cmp r0, #0
	bne _02256428
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #0
	pop {r4, r5, r6, pc}
_02256428:
	ldr r0, _02256440 @ =ov30_02256460
	adds r1, r4, #0
	movs r2, #3
	bl FUN_0200D9E8
	str r0, [r4, #0x30]
	str r4, [r5]
	movs r0, #1
	pop {r4, r5, r6, pc}
_0225643A:
	movs r0, #0
	pop {r4, r5, r6, pc}
	nop
_02256440: .4byte ov30_02256460
	thumb_func_end ov30_022563EC

	thumb_func_start ov30_02256444
ov30_02256444: @ 0x02256444
	push {r4, lr}
	adds r4, r0, #0
	beq _0225645E
	bl ov30_02256658
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _02256458
	bl FUN_0200DA58
_02256458:
	adds r0, r4, #0
	bl FUN_020181C4
_0225645E:
	pop {r4, pc}
	thumb_func_end ov30_02256444

	thumb_func_start ov30_02256460
ov30_02256460: @ 0x02256460
	bx lr
	.align 2, 0
	thumb_func_end ov30_02256460

	thumb_func_start ov30_02256464
ov30_02256464: @ 0x02256464
	push {lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r0, #8
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	ldr r0, _02256484 @ =0x022566C4
	ldr r3, [r2]
	bl FUN_0225517C
	add sp, #0xc
	pop {pc}
	nop
_02256484: .4byte 0x022566C4
	thumb_func_end ov30_02256464

	thumb_func_start ov30_02256488
ov30_02256488: @ 0x02256488
	ldr r3, _02256490 @ =FUN_02255130
	adds r0, #8
	bx r3
	nop
_02256490: .4byte FUN_02255130
	thumb_func_end ov30_02256488

	thumb_func_start ov30_02256494
ov30_02256494: @ 0x02256494
	ldr r3, _0225649C @ =FUN_02255154
	adds r0, #8
	bx r3
	nop
_0225649C: .4byte FUN_02255154
	thumb_func_end ov30_02256494

	thumb_func_start ov30_022564A0
ov30_022564A0: @ 0x022564A0
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0225523C
	adds r0, #8
	adds r1, r4, #0
	bl FUN_02255224
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov30_022564A0

	thumb_func_start ov30_022564B4
ov30_022564B4: @ 0x022564B4
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r1, #0
	adds r0, r4, #0
	bl FUN_0225523C
	adds r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _0225653C @ =0x02256688
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
	movs r1, #0x17
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
	movs r1, #0x1a
	movs r3, #6
	bl FUN_02006E60
	movs r0, #0
	adds r1, r0, #0
	bl FUN_022546B8
	adds r0, r5, #0
	bl ov30_022565B0
	ldr r0, [r5, #4]
	movs r1, #6
	bl FUN_02019448
	ldr r1, _02256540 @ =0x04001000
	ldr r0, _02256544 @ =0xFFFFE0FF
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
	bl ov30_022564A0
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_0225653C: .4byte 0x02256688
_02256540: .4byte 0x04001000
_02256544: .4byte 0xFFFFE0FF
	thumb_func_end ov30_022564B4

	thumb_func_start ov30_02256548
ov30_02256548: @ 0x02256548
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	bl ov30_022565B0
	ldr r0, [r4, #4]
	movs r1, #6
	bl FUN_02019448
	adds r0, r5, #0
	bl ov30_022564A0
	pop {r3, r4, r5, pc}
	thumb_func_end ov30_02256548

	thumb_func_start ov30_02256568
ov30_02256568: @ 0x02256568
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl FUN_0225523C
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _02256584
	movs r0, #0
	adds r1, r0, #0
	bl FUN_022546F0
	b _0225658C
_02256584:
	movs r0, #0
	adds r1, r0, #0
	bl FUN_022546B8
_0225658C:
	adds r0, r4, #0
	bl ov30_022564A0
	pop {r4, pc}
	thumb_func_end ov30_02256568

	thumb_func_start ov30_02256594
ov30_02256594: @ 0x02256594
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl FUN_0225523C
	ldr r0, [r0, #4]
	movs r1, #6
	bl FUN_02019044
	adds r0, r4, #0
	bl ov30_022564A0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov30_02256594

	thumb_func_start ov30_022565B0
ov30_022565B0: @ 0x022565B0
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, _022565F0 @ =0x04000280
	ldr r0, [r0]
	movs r2, #0
	strh r2, [r1]
	str r0, [r1, #0x10]
	movs r0, #0xa
	adds r1, #0x18
	str r0, [r1]
	str r2, [r1, #4]
	ldr r5, [r4]
	movs r1, #0xc
	ldr r0, [r5]
	blx FUN_020E2178
	ldr r2, [r5, #4]
	ldr r0, [r4, #0x4c]
	lsrs r3, r2, #1
	movs r2, #0x1e
	muls r2, r1, r2
	adds r2, #0x3c
	adds r1, r3, r2
	bl FUN_022558C4
	ldr r1, [r4]
	ldr r0, [r4, #0x50]
	ldr r1, [r1, #4]
	bl FUN_022558C4
	pop {r3, r4, r5, pc}
	.align 2, 0
_022565F0: .4byte 0x04000280
	thumb_func_end ov30_022565B0

	thumb_func_start ov30_022565F4
ov30_022565F4: @ 0x022565F4
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
	movs r1, #0x1d
	bl FUN_02006EC0
	movs r0, #8
	str r0, [sp]
	adds r0, r7, #0
	adds r0, #0x34
	movs r1, #0xc
	movs r2, #0x1b
	movs r3, #0x1c
	bl FUN_02255958
	cmp r0, #0
	beq _0225664E
	adds r0, r7, #0
	str r0, [sp, #0xc]
	adds r0, #0x34
	ldr r4, _02256654 @ =0x022566A4
	movs r6, #0
	adds r5, r7, #0
	str r0, [sp, #0xc]
_02256632:
	ldr r0, [r7, #0x48]
	ldr r2, [sp, #0xc]
	adds r1, r4, #0
	bl FUN_02255810
	str r0, [r5, #0x4c]
	adds r6, r6, #1
	adds r4, #0x10
	adds r5, r5, #4
	cmp r6, #2
	blt _02256632
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225664E:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02256654: .4byte 0x022566A4
	thumb_func_end ov30_022565F4

	thumb_func_start ov30_02256658
ov30_02256658: @ 0x02256658
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0x34
	bl FUN_022559B0
	movs r4, #0
	adds r5, r6, #0
_02256666:
	ldr r0, [r6, #0x48]
	ldr r1, [r5, #0x4c]
	bl FUN_022558B0
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _02256666
	pop {r4, r5, r6, pc}
	thumb_func_end ov30_02256658
	@ 0x02256678
