
	thumb_func_start ov53_022561C0
ov53_022561C0: @ 0x022561C0
	ldr r3, _022561C8 @ =FUN_02254238
	ldr r0, _022561CC @ =ov53_022561D4
	ldr r1, _022561D0 @ =ov53_0225630C
	bx r3
	.align 2, 0
_022561C8: .4byte FUN_02254238
_022561CC: .4byte ov53_022561D4
_022561D0: .4byte ov53_0225630C
	thumb_func_end ov53_022561C0

	thumb_func_start ov53_022561D4
ov53_022561D4: @ 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #8
	movs r1, #0x40
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov53_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 @ =ov53_022562D0
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
_02256218: .4byte ov53_022562D0
	thumb_func_end ov53_022561D4

	thumb_func_start ov53_0225621C
ov53_0225621C: @ 0x0225621C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	adds r0, r1, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	bl FUN_0225453C
	adds r6, r0, #0
	bl FUN_02243140
	str r0, [r7, #8]
	cmp r0, #0
	beq _02256240
	adds r0, r6, #0
	bl FUN_02243148
	b _02256242
_02256240:
	movs r0, #0
_02256242:
	str r0, [r7, #4]
	movs r4, #0
	adds r5, r7, #0
_02256248:
	lsls r1, r4, #0x18
	adds r0, r6, #0
	lsrs r1, r1, #0x18
	bl FUN_02243114
	lsls r1, r4, #0x18
	str r0, [r5, #0x18]
	adds r0, r6, #0
	lsrs r1, r1, #0x18
	bl FUN_022430E8
	str r0, [r5, #0xc]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _02256248
	adds r0, r6, #0
	bl FUN_022430C4
	str r0, [r7, #0x24]
	adds r0, r7, #0
	ldr r2, [sp, #8]
	adds r0, #0x2c
	adds r1, r7, #4
	bl ov53_02256420
	cmp r0, #0
	beq _022562AA
	movs r0, #0
	strb r0, [r7]
	strb r0, [r7, #1]
	strb r0, [r7, #2]
	movs r0, #8
	str r0, [sp]
	ldr r0, _022562B0 @ =0x022568E0
	ldr r2, _022562B4 @ =ov53_02256314
	movs r1, #3
	adds r3, r7, #0
	bl FUN_02255ACC
	str r0, [r7, #0x34]
	movs r0, #0
	str r0, [r7, #0x38]
	str r0, [r7, #0x3c]
	ldr r0, [sp, #4]
	add sp, #0xc
	str r0, [r7, #0x30]
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_022562AA:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022562B0: .4byte 0x022568E0
_022562B4: .4byte ov53_02256314
	thumb_func_end ov53_0225621C

	thumb_func_start ov53_022562B8
ov53_022562B8: @ 0x022562B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x34]
	bl FUN_02255B34
	ldr r0, [r4, #0x2c]
	bl ov53_02256454
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov53_022562B8

	thumb_func_start ov53_022562D0
ov53_022562D0: @ 0x022562D0
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhs _02256306
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x34]
	bl FUN_02254518
	ldrb r1, [r4]
	adds r0, r4, #0
	lsls r2, r1, #2
	ldr r1, _02256308 @ =0x022568EC
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _02256306
	adds r0, r4, #0
	bl ov53_022562B8
	adds r0, r5, #0
	bl FUN_0200DA58
	ldr r0, [r4, #0x30]
	bl FUN_02254260
_02256306:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02256308: .4byte 0x022568EC
	thumb_func_end ov53_022562D0

	thumb_func_start ov53_0225630C
ov53_0225630C: @ 0x0225630C
	movs r1, #1
	strb r1, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end ov53_0225630C

	thumb_func_start ov53_02256314
ov53_02256314: @ 0x02256314
	str r0, [r3, #0x3c]
	str r1, [r3, #0x38]
	bx lr
	.align 2, 0
	thumb_func_end ov53_02256314

	thumb_func_start ov53_0225631C
ov53_0225631C: @ 0x0225631C
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _02256324
	b _02256326
_02256324:
	movs r1, #2
_02256326:
	strb r1, [r0]
	movs r1, #0
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
	thumb_func_end ov53_0225631C

	thumb_func_start ov53_02256330
ov53_02256330: @ 0x02256330
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256340
	cmp r0, #1
	beq _02256350
	b _0225636A
_02256340:
	ldr r0, [r4, #0x2c]
	movs r1, #0
	bl ov53_02256460
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _0225636A
_02256350:
	ldr r0, [r4, #0x2c]
	movs r1, #0
	bl ov53_02256484
	cmp r0, #0
	beq _0225636A
	ldr r0, [r4, #0x30]
	bl FUN_0225424C
	adds r0, r4, #0
	movs r1, #1
	bl ov53_0225631C
_0225636A:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov53_02256330

	thumb_func_start ov53_02256370
ov53_02256370: @ 0x02256370
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _02256384
	movs r1, #2
	bl ov53_0225631C
	movs r0, #0
	pop {r3, r4, r5, pc}
_02256384:
	ldr r0, [r4, #0x30]
	bl FUN_0225453C
	adds r5, r0, #0
	bl FUN_02243140
	str r0, [r4, #8]
	cmp r0, #0
	bne _0225639A
	movs r0, #0
	b _022563A0
_0225639A:
	adds r0, r5, #0
	bl FUN_02243148
_022563A0:
	ldr r1, [r4, #4]
	cmp r0, r1
	beq _022563B4
	str r0, [r4, #4]
	ldr r0, [r4, #0x2c]
	movs r1, #2
	bl ov53_02256460
	movs r0, #0
	pop {r3, r4, r5, pc}
_022563B4:
	ldr r0, [r4, #0x2c]
	movs r1, #3
	bl ov53_02256484
	cmp r0, #0
	beq _022563E6
	ldr r0, [r4, #0x38]
	cmp r0, #1
	bne _022563E6
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x24]
	cmp r1, r0
	bhs _022563E2
	lsls r0, r1, #2
	adds r0, r4, r0
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _022563E2
	str r1, [r4, #0x28]
	ldr r0, [r4, #0x2c]
	movs r1, #3
	bl ov53_02256460
_022563E2:
	movs r0, #0
	str r0, [r4, #0x38]
_022563E6:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov53_02256370

	thumb_func_start ov53_022563EC
ov53_022563EC: @ 0x022563EC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563FC
	cmp r0, #1
	beq _0225640C
	b _0225641A
_022563FC:
	ldr r0, [r4, #0x2c]
	movs r1, #1
	bl ov53_02256460
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _0225641A
_0225640C:
	ldr r0, [r4, #0x2c]
	bl ov53_02256490
	cmp r0, #0
	beq _0225641A
	movs r0, #1
	pop {r4, pc}
_0225641A:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov53_022563EC

	thumb_func_start ov53_02256420
ov53_02256420: @ 0x02256420
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #8
	movs r1, #0xb0
	bl FUN_02018144
	adds r4, r0, #0
	beq _0225644E
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
_0225644E:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov53_02256420

	thumb_func_start ov53_02256454
ov53_02256454: @ 0x02256454
	push {r3, lr}
	cmp r0, #0
	beq _0225645E
	bl FUN_020181C4
_0225645E:
	pop {r3, pc}
	thumb_func_end ov53_02256454

	thumb_func_start ov53_02256460
ov53_02256460: @ 0x02256460
	push {lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r0, #8
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	ldr r0, _02256480 @ =0x02256914
	ldr r3, [r2]
	bl FUN_0225517C
	add sp, #0xc
	pop {pc}
	nop
_02256480: .4byte 0x02256914
	thumb_func_end ov53_02256460

	thumb_func_start ov53_02256484
ov53_02256484: @ 0x02256484
	ldr r3, _0225648C @ =FUN_02255130
	adds r0, #8
	bx r3
	nop
_0225648C: .4byte FUN_02255130
	thumb_func_end ov53_02256484

	thumb_func_start ov53_02256490
ov53_02256490: @ 0x02256490
	ldr r3, _02256498 @ =FUN_02255154
	adds r0, #8
	bx r3
	nop
_02256498: .4byte FUN_02255154
	thumb_func_end ov53_02256490

	thumb_func_start ov53_0225649C
ov53_0225649C: @ 0x0225649C
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0225523C
	adds r0, #8
	adds r1, r4, #0
	bl FUN_02255224
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov53_0225649C

	thumb_func_start ov53_022564B0
ov53_022564B0: @ 0x022564B0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02255240
	adds r6, r0, #0
	ldr r0, [r4, #4]
	ldr r2, _0225653C @ =0x022568F8
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
	ldr r2, [r4, #4]
	movs r0, #0xc
	movs r1, #0x7a
	movs r3, #6
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	movs r0, #0xc
	movs r1, #0x79
	movs r3, #6
	bl FUN_02006E60
	movs r0, #0
	adds r1, r0, #0
	bl FUN_022546B8
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov53_022566AC
	ldr r1, _02256540 @ =0x04001000
	ldr r0, _02256544 @ =0xFFFFE0FF
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
	bl ov53_0225649C
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_0225653C: .4byte 0x022568F8
_02256540: .4byte 0x04001000
_02256544: .4byte 0xFFFFE0FF
	thumb_func_end ov53_022564B0

	thumb_func_start ov53_02256548
ov53_02256548: @ 0x02256548
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	bl ov53_02256840
	ldr r0, [r4, #4]
	movs r1, #6
	bl FUN_02019044
	adds r0, r5, #0
	bl ov53_0225649C
	pop {r3, r4, r5, pc}
	thumb_func_end ov53_02256548

	thumb_func_start ov53_02256568
ov53_02256568: @ 0x02256568
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r0, r7, #0
	bl FUN_0225523C
	adds r5, r0, #0
	adds r0, r7, #0
	bl FUN_02255240
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _022565BC
	movs r1, #0
	adds r2, r1, #0
	bl FUN_02079D8C
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0xac
	movs r2, #1
	ldr r0, [r0]
	add r1, sp, #0
	adds r3, r2, #0
	bl FUN_022553A0
	movs r1, #0
	ldr r0, [r4]
	adds r2, r1, #0
	bl FUN_02079EDC
	adds r1, r0, #0
	ldr r0, [r5, #0x24]
	adds r1, r1, #1
	bl FUN_02255938
	adds r5, #0x34
	ldr r1, [r4, #4]
	adds r0, r5, #0
	bl ov53_02256874
	b _022565D8
_022565BC:
	ldr r0, [r5, #0x24]
	movs r1, #1
	bl FUN_02255914
	movs r4, #0
	movs r6, #1
_022565C8:
	ldr r0, [r5, #0x34]
	adds r1, r6, #0
	bl FUN_02255914
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _022565C8
_022565D8:
	adds r0, r7, #0
	bl ov53_0225649C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov53_02256568

	thumb_func_start ov53_022565E0
ov53_022565E0: @ 0x022565E0
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r0, r7, #0
	bl FUN_0225523C
	adds r4, r0, #0
	adds r0, r7, #0
	bl FUN_02255240
	adds r6, r0, #0
	adds r0, r7, #0
	bl FUN_02255248
	adds r5, r0, #0
	beq _02256604
	cmp r5, #0x10
	beq _02256682
	b _02256648
_02256604:
	ldr r0, [r6, #0x24]
	adds r2, r4, #0
	adds r0, r0, #1
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r1, [r0, #0x24]
	adds r0, r4, #0
	adds r0, #0x9c
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x9c
	adds r1, r4, #0
	ldr r0, [r0]
	adds r1, #0xa4
	adds r2, #0xa0
	bl FUN_02255908
	ldr r0, [r6, #0x24]
	movs r1, #0
	lsls r0, r0, #2
	adds r0, r6, r0
	ldr r0, [r0, #8]
	bl FUN_02254444
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r0, [r0]
	movs r1, #6
	bl FUN_022558C4
	adds r0, r7, #0
	bl FUN_0225524C
	adds r5, r5, #1
_02256648:
	movs r0, #0x2d
	lsls r0, r0, #0xa
	adds r1, r5, #0
	muls r1, r0, r1
	movs r0, #2
	lsls r0, r0, #0xa
	adds r0, r1, r0
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	bl FUN_0201D15C
	adds r2, r0, #0
	movs r1, #0x18
	muls r2, r1, r2
	adds r0, r4, #0
	adds r1, r4, #0
	adds r4, #0xa0
	adds r0, #0x9c
	adds r1, #0xa4
	ldr r3, [r4]
	ldr r0, [r0]
	ldr r1, [r1]
	subs r2, r3, r2
	bl FUN_02255900
	adds r0, r7, #0
	bl FUN_0225524C
	pop {r3, r4, r5, r6, r7, pc}
_02256682:
	adds r0, r4, #0
	adds r1, r4, #0
	adds r2, r4, #0
	adds r0, #0x9c
	adds r1, #0xa4
	adds r2, #0xa0
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	bl FUN_02255900
	adds r4, #0x9c
	ldr r0, [r4]
	movs r1, #4
	bl FUN_022558C4
	adds r0, r7, #0
	bl ov53_0225649C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov53_022565E0

	thumb_func_start ov53_022566AC
ov53_022566AC: @ 0x022566AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	adds r4, r0, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	str r1, [sp, #0xc]
	adds r0, #0x78
	movs r1, #0xc
	movs r2, #5
	movs r3, #6
	bl FUN_02255958
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0xc
	movs r2, #0x7b
	movs r3, #0x7c
	bl FUN_02255958
	movs r3, #0
	str r3, [sp]
	movs r2, #1
	str r2, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	movs r0, #0xc
	movs r1, #0x7d
	bl FUN_02006EC0
	adds r1, r4, #0
	lsrs r0, r0, #5
	adds r1, #0xac
	str r0, [r1]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0xc]
	ldr r0, [r0]
	movs r1, #0
	str r0, [sp, #0x30]
	add r3, sp, #0x30
_02256702:
	ldr r0, [r2, #8]
	adds r1, r1, #1
	str r0, [r3, #4]
	adds r2, r2, #4
	adds r3, r3, #4
	cmp r1, #3
	blt _02256702
	movs r7, #0
	add r5, sp, #0x30
	adds r6, r4, #0
_02256716:
	ldr r0, [r5]
	cmp r0, #0
	bne _0225671E
	movs r0, #1
_0225671E:
	movs r1, #0
	adds r2, r1, #0
	bl FUN_02079D8C
	adds r1, r6, #0
	adds r1, #0x8c
	adds r7, r7, #1
	str r0, [r1]
	adds r5, r5, #4
	adds r6, r6, #4
	cmp r7, #4
	blt _02256716
	adds r1, r4, #0
	ldr r0, [sp, #0x28]
	adds r1, #0x8c
	movs r2, #4
	movs r3, #1
	bl FUN_022553A0
	movs r0, #1
	bl FUN_02255360
	movs r2, #0
	adds r0, r2, #0
	adds r1, r4, #0
	str r0, [sp, #0x10]
_02256752:
	ldr r0, [sp, #0x10]
	adds r2, r2, #1
	str r0, [r1, #0x24]
	adds r1, r1, #4
	cmp r2, #0x10
	blt _02256752
	ldr r0, _0225683C @ =0x02256950
	str r4, [sp, #0x20]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x10]
	movs r6, #4
	str r0, [sp, #0x1c]
	add r0, sp, #0x30
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x14]
_02256772:
	adds r2, r4, #0
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x24]
	adds r2, #0x78
	bl FUN_02255810
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x28]
	str r0, [r1, #0x24]
	ldr r1, [sp, #0x1c]
	adds r1, r2, r1
	bl FUN_02255940
	adds r0, r4, #0
	str r0, [sp, #0x2c]
	adds r0, #0x64
	movs r5, #0
	str r0, [sp, #0x2c]
_02256796:
	adds r7, r5, r6
	ldr r1, _0225683C @ =0x02256950
	lsls r2, r7, #4
	adds r1, r1, r2
	ldr r0, [r4, #0x20]
	ldr r2, [sp, #0x2c]
	bl FUN_02255810
	lsls r1, r7, #2
	adds r1, r4, r1
	adds r5, r5, #1
	str r0, [r1, #0x24]
	cmp r5, #3
	blt _02256796
	ldr r0, [sp, #0x18]
	ldr r0, [r0]
	cmp r0, #0
	bne _022567DE
	ldr r0, [sp, #0x20]
	movs r1, #1
	ldr r0, [r0, #0x24]
	bl FUN_02255914
	movs r5, #0
	movs r7, #1
_022567C8:
	adds r0, r5, r6
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r0, [r0, #0x24]
	adds r1, r7, #0
	bl FUN_02255914
	adds r5, r5, #1
	cmp r5, #3
	blt _022567C8
	b _0225680E
_022567DE:
	movs r1, #0
	adds r2, r1, #0
	bl FUN_02079EDC
	adds r1, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r1, #1
	ldr r0, [r0, #0x24]
	bl FUN_02255938
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _022567FE
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #4]
	b _02256802
_022567FE:
	ldr r0, [sp, #0x14]
	ldr r1, [r0, #0x10]
_02256802:
	adds r2, r4, #0
	adds r2, #0x24
	lsls r0, r6, #2
	adds r0, r2, r0
	bl ov53_02256874
_0225680E:
	ldr r0, [sp, #0x24]
	adds r6, r6, #3
	adds r0, #0x10
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	adds r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	adds r0, #0x20
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	adds r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	adds r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	adds r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _02256772
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225683C: .4byte 0x02256950
	thumb_func_end ov53_022566AC

	thumb_func_start ov53_02256840
ov53_02256840: @ 0x02256840
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r4, #0
	adds r5, r6, #0
	adds r7, r4, #0
_0225684A:
	ldr r1, [r5, #0x24]
	cmp r1, #0
	beq _02256858
	ldr r0, [r6, #0x20]
	bl FUN_022558B0
	str r7, [r5, #0x24]
_02256858:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0x10
	blt _0225684A
	adds r0, r6, #0
	adds r0, #0x78
	bl FUN_022559B0
	adds r6, #0x64
	adds r0, r6, #0
	bl FUN_022559B0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov53_02256840

	thumb_func_start ov53_02256874
ov53_02256874: @ 0x02256874
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	str r1, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, _022568DC @ =0x000003E7
	ldr r0, [sp]
	cmp r0, r1
	bls _0225688A
	str r1, [sp]
_0225688A:
	movs r4, #0
	movs r6, #0x64
_0225688E:
	ldr r0, [sp]
	adds r1, r6, #0
	blx FUN_020E2178
	adds r7, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #1
	beq _022568A6
	cmp r7, #0
	bne _022568A6
	cmp r4, #2
	bne _022568B4
_022568A6:
	ldr r0, [r5]
	adds r1, r7, #0
	bl FUN_022558C4
	movs r0, #1
	str r0, [sp, #4]
	b _022568BC
_022568B4:
	ldr r0, [r5]
	movs r1, #1
	bl FUN_02255914
_022568BC:
	adds r1, r7, #0
	ldr r0, [sp]
	muls r1, r6, r1
	subs r0, r0, r1
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0xa
	adds r5, r5, #4
	adds r4, r4, #1
	blx FUN_020E1F6C
	adds r6, r0, #0
	cmp r4, #3
	blt _0225688E
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022568DC: .4byte 0x000003E7
	thumb_func_end ov53_02256874
	@ 0x022568E0
