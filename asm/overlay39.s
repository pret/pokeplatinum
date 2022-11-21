	.include "macros/function.inc"


	.text

	thumb_func_start ov39_022561C0
ov39_022561C0: @ 0x022561C0
	ldr r3, _022561C8 @ =FUN_02254238
	ldr r0, _022561CC @ =ov39_022561D4
	ldr r1, _022561D0 @ =ov39_022562C8
	bx r3
	.align 2, 0
_022561C8: .4byte FUN_02254238
_022561CC: .4byte ov39_022561D4
_022561D0: .4byte ov39_022562C8
	thumb_func_end ov39_022561C0

	thumb_func_start ov39_022561D4
ov39_022561D4: @ 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #8
	movs r1, #0x38
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov39_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 @ =ov39_0225628C
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
_02256218: .4byte ov39_0225628C
	thumb_func_end ov39_022561D4

	thumb_func_start ov39_0225621C
ov39_0225621C: @ 0x0225621C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #0x24
	adds r1, r5, #4
	bl ov39_022563DC
	cmp r0, #0
	beq _0225625C
	movs r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	str r4, [r5, #0x28]
	movs r0, #8
	str r0, [sp]
	ldr r0, _02256260 @ =0x022565FC
	ldr r2, _02256264 @ =ov39_02256284
	movs r1, #6
	adds r3, r5, #0
	bl FUN_02255ACC
	str r0, [r5, #0x2c]
	movs r1, #0
	str r1, [r5, #0x30]
	movs r0, #1
_02256250:
	adds r1, r1, #1
	str r0, [r5, #8]
	adds r5, r5, #4
	cmp r1, #6
	blt _02256250
	pop {r3, r4, r5, pc}
_0225625C:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02256260: .4byte 0x022565FC
_02256264: .4byte ov39_02256284
	thumb_func_end ov39_0225621C

	thumb_func_start ov39_02256268
ov39_02256268: @ 0x02256268
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _02256276
	bl FUN_02255B34
_02256276:
	ldr r0, [r4, #0x24]
	bl ov39_0225640C
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov39_02256268

	thumb_func_start ov39_02256284
ov39_02256284: @ 0x02256284
	str r1, [r3, #0x30]
	str r0, [r3, #0x34]
	bx lr
	.align 2, 0
	thumb_func_end ov39_02256284

	thumb_func_start ov39_0225628C
ov39_0225628C: @ 0x0225628C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhs _022562C2
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	bl FUN_02254518
	ldrb r1, [r4]
	adds r0, r4, #0
	lsls r2, r1, #2
	ldr r1, _022562C4 @ =0x022565F0
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _022562C2
	adds r0, r4, #0
	bl ov39_02256268
	adds r0, r5, #0
	bl FUN_0200DA58
	ldr r0, [r4, #0x28]
	bl FUN_02254260
_022562C2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_022562C4: .4byte 0x022565F0
	thumb_func_end ov39_0225628C

	thumb_func_start ov39_022562C8
ov39_022562C8: @ 0x022562C8
	movs r1, #1
	strb r1, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end ov39_022562C8

	thumb_func_start ov39_022562D0
ov39_022562D0: @ 0x022562D0
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _022562D8
	b _022562DA
_022562D8:
	movs r1, #2
_022562DA:
	strb r1, [r0]
	movs r1, #0
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
	thumb_func_end ov39_022562D0

	thumb_func_start ov39_022562E4
ov39_022562E4: @ 0x022562E4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022562F4
	cmp r0, #1
	beq _02256304
	b _0225631E
_022562F4:
	ldr r0, [r4, #0x24]
	movs r1, #0
	bl ov39_02256418
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _0225631E
_02256304:
	ldr r0, [r4, #0x24]
	movs r1, #0
	bl ov39_0225643C
	cmp r0, #0
	beq _0225631E
	ldr r0, [r4, #0x28]
	bl FUN_0225424C
	adds r0, r4, #0
	movs r1, #1
	bl ov39_022562D0
_0225631E:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov39_022562E4

	thumb_func_start ov39_02256324
ov39_02256324: @ 0x02256324
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _02256338
	movs r1, #2
	bl ov39_022562D0
	movs r0, #0
	pop {r4, pc}
_02256338:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256344
	cmp r0, #1
	beq _02256376
	b _0225639A
_02256344:
	ldr r0, [r4, #0x30]
	cmp r0, #1
	bne _0225639A
	ldr r1, [r4, #0x34]
	lsls r0, r1, #2
	adds r0, r4, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0225636E
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x24]
	movs r1, #2
	bl ov39_02256418
	ldr r0, _022563A0 @ =0x00000663
	bl FUN_02254424
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _0225639A
_0225636E:
	ldr r0, _022563A4 @ =0x0000066E
	bl FUN_02254424
	b _0225639A
_02256376:
	ldr r0, [r4, #0x30]
	cmp r0, #2
	bne _0225638A
	ldr r0, [r4, #0x24]
	movs r1, #3
	bl ov39_02256418
	movs r0, #0
	strb r0, [r4, #1]
	b _0225639A
_0225638A:
	cmp r0, #3
	bne _0225639A
	ldr r0, [r4, #0x24]
	movs r1, #3
	bl ov39_02256418
	movs r0, #0
	strb r0, [r4, #1]
_0225639A:
	movs r0, #0
	pop {r4, pc}
	nop
_022563A0: .4byte 0x00000663
_022563A4: .4byte 0x0000066E
	thumb_func_end ov39_02256324

	thumb_func_start ov39_022563A8
ov39_022563A8: @ 0x022563A8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563B8
	cmp r0, #1
	beq _022563C8
	b _022563D6
_022563B8:
	ldr r0, [r4, #0x24]
	movs r1, #1
	bl ov39_02256418
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _022563D6
_022563C8:
	ldr r0, [r4, #0x24]
	bl ov39_02256448
	cmp r0, #0
	beq _022563D6
	movs r0, #1
	pop {r4, pc}
_022563D6:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov39_022563A8

	thumb_func_start ov39_022563DC
ov39_022563DC: @ 0x022563DC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #8
	movs r1, #0x20
	bl FUN_02018144
	adds r4, r0, #0
	beq _02256408
	adds r0, #8
	movs r1, #4
	bl FUN_02255090
	str r6, [r4]
	bl FUN_02254674
	str r0, [r4, #4]
	cmp r0, #0
	beq _02256408
	str r4, [r5]
	movs r0, #1
	pop {r4, r5, r6, pc}
_02256408:
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov39_022563DC

	thumb_func_start ov39_0225640C
ov39_0225640C: @ 0x0225640C
	push {r3, lr}
	cmp r0, #0
	beq _02256416
	bl FUN_020181C4
_02256416:
	pop {r3, pc}
	thumb_func_end ov39_0225640C

	thumb_func_start ov39_02256418
ov39_02256418: @ 0x02256418
	push {lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r0, #8
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	ldr r0, _02256438 @ =0x0225663C
	ldr r3, [r2]
	bl FUN_0225517C
	add sp, #0xc
	pop {pc}
	nop
_02256438: .4byte 0x0225663C
	thumb_func_end ov39_02256418

	thumb_func_start ov39_0225643C
ov39_0225643C: @ 0x0225643C
	ldr r3, _02256444 @ =FUN_02255130
	adds r0, #8
	bx r3
	nop
_02256444: .4byte FUN_02255130
	thumb_func_end ov39_0225643C

	thumb_func_start ov39_02256448
ov39_02256448: @ 0x02256448
	ldr r3, _02256450 @ =FUN_02255154
	adds r0, #8
	bx r3
	nop
_02256450: .4byte FUN_02255154
	thumb_func_end ov39_02256448

	thumb_func_start ov39_02256454
ov39_02256454: @ 0x02256454
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0225523C
	adds r0, #8
	adds r1, r4, #0
	bl FUN_02255224
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov39_02256454

	thumb_func_start ov39_02256468
ov39_02256468: @ 0x02256468
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #0x10]
	adds r0, r1, #0
	bl FUN_0225523C
	adds r6, r0, #0
	ldr r0, [sp, #0x10]
	bl FUN_02255240
	adds r5, r0, #0
	ldr r0, [r6, #4]
	ldr r2, _0225650C @ =0x02256620
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
	ldr r2, [r6, #4]
	movs r0, #0xc
	movs r1, #0x3b
	movs r3, #6
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r6, #4]
	movs r0, #0xc
	movs r1, #0x3a
	movs r3, #6
	bl FUN_02006E60
	movs r0, #0
	adds r1, r0, #0
	bl FUN_022546B8
	movs r4, #0
	adds r7, r4, #0
_022564CA:
	ldr r2, [r5, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r3, r7, #0
	bl ov39_0225659C
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #6
	blt _022564CA
	ldr r0, [r6, #4]
	movs r1, #6
	bl FUN_02019448
	ldr r0, _02256510 @ =0x04001000
	ldr r1, _02256514 @ =0xFFFFE0FF
	ldr r2, [r0]
	ldr r4, [r0]
	adds r3, r2, #0
	ands r3, r1
	lsls r1, r4, #0x13
	lsrs r2, r1, #0x1b
	movs r1, #4
	orrs r1, r2
	lsls r1, r1, #8
	orrs r1, r3
	str r1, [r0]
	ldr r0, [sp, #0x10]
	str r4, [sp, #0x14]
	bl ov39_02256454
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225650C: .4byte 0x02256620
_02256510: .4byte 0x04001000
_02256514: .4byte 0xFFFFE0FF
	thumb_func_end ov39_02256468

	thumb_func_start ov39_02256518
ov39_02256518: @ 0x02256518
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl FUN_0225523C
	ldr r0, [r0, #4]
	movs r1, #6
	bl FUN_02019044
	adds r0, r4, #0
	bl ov39_02256454
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov39_02256518

	thumb_func_start ov39_02256534
ov39_02256534: @ 0x02256534
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02255240
	adds r3, r0, #0
	ldrh r1, [r3, #0x1c]
	adds r0, r4, #0
	lsls r2, r1, #2
	adds r2, r3, r2
	ldr r2, [r2, #4]
	movs r3, #1
	bl ov39_0225659C
	ldr r0, [r4, #4]
	movs r1, #6
	bl FUN_02019448
	adds r0, r5, #0
	bl ov39_02256454
	pop {r3, r4, r5, pc}
	thumb_func_end ov39_02256534

	thumb_func_start ov39_02256568
ov39_02256568: @ 0x02256568
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02255240
	adds r3, r0, #0
	ldrh r1, [r3, #0x1c]
	adds r0, r4, #0
	lsls r2, r1, #2
	adds r2, r3, r2
	ldr r2, [r2, #4]
	movs r3, #0
	bl ov39_0225659C
	ldr r0, [r4, #4]
	movs r1, #6
	bl FUN_02019448
	adds r0, r5, #0
	bl ov39_02256454
	pop {r3, r4, r5, pc}
	thumb_func_end ov39_02256568

	thumb_func_start ov39_0225659C
ov39_0225659C: @ 0x0225659C
	push {r4, r5, r6, lr}
	ldr r0, [r0, #4]
	adds r5, r1, #0
	movs r1, #6
	adds r4, r2, #0
	adds r6, r3, #0
	bl FUN_02019FE4
	ldr r1, _022565EC @ =0x02256614
	lsls r2, r5, #1
	ldrh r1, [r1, r2]
	lsls r1, r1, #1
	adds r2, r0, r1
	cmp r4, #0
	beq _022565C4
	adds r1, r5, #1
	movs r0, #0x48
	adds r5, r1, #0
	muls r5, r0, r5
	b _022565C6
_022565C4:
	movs r5, #0
_022565C6:
	cmp r6, #0
	beq _022565CC
	adds r5, #0x24
_022565CC:
	movs r3, #0
	adds r0, r3, #0
_022565D0:
	adds r1, r0, #0
	adds r4, r2, #0
_022565D4:
	adds r1, r1, #1
	strh r5, [r4]
	adds r5, r5, #1
	adds r4, r4, #2
	cmp r1, #6
	blt _022565D4
	adds r3, r3, #1
	adds r2, #0x40
	cmp r3, #6
	blt _022565D0
	pop {r4, r5, r6, pc}
	nop
_022565EC: .4byte 0x02256614
	thumb_func_end ov39_0225659C
	@ 0x022565F0
