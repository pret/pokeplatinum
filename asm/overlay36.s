	.include "macros/function.inc"


	.text

	thumb_func_start ov36_022561C0
ov36_022561C0: @ 0x022561C0
	ldr r3, _022561C8 @ =FUN_02254238
	ldr r0, _022561CC @ =ov36_022561D4
	ldr r1, _022561D0 @ =ov36_022562D4
	bx r3
	.align 2, 0
_022561C8: .4byte FUN_02254238
_022561CC: .4byte ov36_022561D4
_022561D0: .4byte ov36_022562D4
	thumb_func_end ov36_022561C0

	thumb_func_start ov36_022561D4
ov36_022561D4: @ 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #8
	movs r1, #0x20
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov36_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 @ =ov36_02256298
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
_02256218: .4byte ov36_02256298
	thumb_func_end ov36_022561D4

	thumb_func_start ov36_0225621C
ov36_0225621C: @ 0x0225621C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	str r1, [r5, #0x10]
	adds r0, r1, #0
	adds r4, r2, #0
	bl FUN_02254540
	str r0, [r5, #0x1c]
	movs r0, #1
	str r0, [r5, #8]
	ldr r0, [r5, #0x1c]
	bl FUN_020568C8
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0xc
	adds r1, r5, #4
	adds r2, r4, #0
	bl ov36_02256404
	cmp r0, #0
	beq _0225626A
	movs r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	movs r0, #8
	str r0, [sp]
	ldr r0, _02256270 @ =0x02256718
	ldr r2, _02256274 @ =ov36_02256278
	movs r1, #1
	adds r3, r5, #0
	bl FUN_02255ACC
	str r0, [r5, #0x14]
	movs r0, #0
	str r0, [r5, #0x18]
	movs r0, #1
	pop {r3, r4, r5, pc}
_0225626A:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_02256270: .4byte 0x02256718
_02256274: .4byte ov36_02256278
	thumb_func_end ov36_0225621C

	thumb_func_start ov36_02256278
ov36_02256278: @ 0x02256278
	cmp r0, #0
	bne _0225627E
	str r1, [r3, #0x18]
_0225627E:
	bx lr
	thumb_func_end ov36_02256278

	thumb_func_start ov36_02256280
ov36_02256280: @ 0x02256280
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	bl FUN_02255B34
	ldr r0, [r4, #0xc]
	bl ov36_02256440
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov36_02256280

	thumb_func_start ov36_02256298
ov36_02256298: @ 0x02256298
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhs _022562CE
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	bl FUN_02254518
	ldrb r1, [r4]
	adds r0, r4, #0
	lsls r2, r1, #2
	ldr r1, _022562D0 @ =0x0225671C
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _022562CE
	adds r0, r4, #0
	bl ov36_02256280
	adds r0, r5, #0
	bl FUN_0200DA58
	ldr r0, [r4, #0x10]
	bl FUN_02254260
_022562CE:
	pop {r3, r4, r5, pc}
	.align 2, 0
_022562D0: .4byte 0x0225671C
	thumb_func_end ov36_02256298

	thumb_func_start ov36_022562D4
ov36_022562D4: @ 0x022562D4
	movs r1, #1
	strb r1, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end ov36_022562D4

	thumb_func_start ov36_022562DC
ov36_022562DC: @ 0x022562DC
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _022562E4
	b _022562E6
_022562E4:
	movs r1, #2
_022562E6:
	strb r1, [r0]
	movs r1, #0
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
	thumb_func_end ov36_022562DC

	thumb_func_start ov36_022562F0
ov36_022562F0: @ 0x022562F0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256300
	cmp r0, #1
	beq _02256310
	b _0225632A
_02256300:
	ldr r0, [r4, #0xc]
	movs r1, #0
	bl ov36_0225653C
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _0225632A
_02256310:
	ldr r0, [r4, #0xc]
	movs r1, #0
	bl ov36_02256560
	cmp r0, #0
	beq _0225632A
	ldr r0, [r4, #0x10]
	bl FUN_0225424C
	adds r0, r4, #0
	movs r1, #1
	bl ov36_022562DC
_0225632A:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov36_022562F0

	thumb_func_start ov36_02256330
ov36_02256330: @ 0x02256330
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _02256344
	movs r1, #2
	bl ov36_022562DC
	movs r0, #0
	pop {r4, pc}
_02256344:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256350
	cmp r0, #1
	beq _0225638A
	b _022563CC
_02256350:
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _0225636E
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	bl ov36_0225653C
	movs r0, #0
	str r0, [r4, #0x18]
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _022563CC
_0225636E:
	ldr r0, [r4, #0x10]
	bl FUN_02254538
	cmp r0, #0
	beq _022563CC
	ldr r0, [r4, #0x1c]
	bl FUN_020568C8
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	movs r1, #3
	bl ov36_0225653C
	b _022563CC
_0225638A:
	ldr r0, [r4, #0x18]
	cmp r0, #2
	bne _022563A4
	movs r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	bl ov36_0225653C
	movs r0, #0
	str r0, [r4, #0x18]
	strb r0, [r4, #1]
	b _022563CC
_022563A4:
	cmp r0, #3
	bne _022563CC
	movs r0, #1
	str r0, [r4, #8]
	movs r1, #0
	str r1, [r4, #4]
	ldr r0, [r4, #0x1c]
	bl FUN_020568CC
	ldr r0, [r4, #0xc]
	movs r1, #2
	bl ov36_0225653C
	ldr r0, [r4, #0xc]
	movs r1, #3
	bl ov36_0225653C
	movs r0, #0
	str r0, [r4, #0x18]
	strb r0, [r4, #1]
_022563CC:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov36_02256330

	thumb_func_start ov36_022563D0
ov36_022563D0: @ 0x022563D0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563E0
	cmp r0, #1
	beq _022563F0
	b _022563FE
_022563E0:
	ldr r0, [r4, #0xc]
	movs r1, #1
	bl ov36_0225653C
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _022563FE
_022563F0:
	ldr r0, [r4, #0xc]
	bl ov36_0225656C
	cmp r0, #0
	beq _022563FE
	movs r0, #1
	pop {r4, pc}
_022563FE:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov36_022563D0

	thumb_func_start ov36_02256404
ov36_02256404: @ 0x02256404
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r0, #8
	movs r1, #0x64
	bl FUN_02018144
	adds r4, r0, #0
	beq _0225643A
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
	bl ov36_02256454
	str r4, [r6]
	movs r0, #1
	pop {r4, r5, r6, pc}
_0225643A:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov36_02256404

	thumb_func_start ov36_02256440
ov36_02256440: @ 0x02256440
	push {r4, lr}
	adds r4, r0, #0
	beq _02256450
	bl ov36_02256508
	adds r0, r4, #0
	bl FUN_020181C4
_02256450:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov36_02256440

	thumb_func_start ov36_02256454
ov36_02256454: @ 0x02256454
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	movs r3, #0
	str r3, [sp]
	movs r2, #1
	adds r7, r0, #0
	str r1, [sp, #0xc]
	str r2, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	movs r0, #0xc
	movs r1, #2
	bl FUN_02006EC0
	movs r0, #0
	str r0, [sp]
	movs r2, #1
	movs r3, #0xa
	str r2, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	movs r0, #0xc
	movs r1, #0x34
	lsls r3, r3, #8
	bl FUN_02006EC0
	movs r0, #8
	str r0, [sp]
	adds r0, r7, #0
	adds r0, #0x3c
	movs r1, #0xc
	movs r2, #0x32
	movs r3, #0x33
	bl FUN_02255958
	movs r0, #8
	str r0, [sp]
	adds r0, r7, #0
	adds r0, #0x50
	movs r1, #0xc
	movs r2, #3
	movs r3, #4
	bl FUN_02255958
	adds r2, r7, #0
	ldr r0, [r7, #0x20]
	ldr r1, _02256500 @ =0x02256728
	adds r2, #0x3c
	bl FUN_02255810
	movs r1, #0x50
	str r0, [r7, #0x24]
	bl FUN_02255940
	adds r0, r7, #0
	movs r5, #5
	str r0, [sp, #0x10]
	adds r0, #0x50
	movs r6, #0
	adds r4, r7, #0
	lsls r5, r5, #0x10
	str r0, [sp, #0x10]
_022564D0:
	ldr r0, [r7, #0x20]
	ldr r1, _02256504 @ =0x02256738
	ldr r2, [sp, #0x10]
	bl FUN_02255810
	movs r2, #1
	adds r1, r5, #0
	lsls r2, r2, #0x12
	str r0, [r4, #0x28]
	bl FUN_02255900
	movs r0, #1
	lsls r0, r0, #0x10
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, r5, r0
	cmp r6, #5
	blt _022564D0
	ldr r1, [sp, #0xc]
	adds r0, r7, #0
	bl ov36_0225669C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02256500: .4byte 0x02256728
_02256504: .4byte 0x02256738
	thumb_func_end ov36_02256454

	thumb_func_start ov36_02256508
ov36_02256508: @ 0x02256508
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #0x20]
	ldr r1, [r6, #0x24]
	bl FUN_022558B0
	movs r4, #0
	adds r5, r6, #0
_02256518:
	ldr r0, [r6, #0x20]
	ldr r1, [r5, #0x28]
	bl FUN_022558B0
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #5
	blt _02256518
	adds r0, r6, #0
	adds r0, #0x3c
	bl FUN_022559B0
	adds r6, #0x50
	adds r0, r6, #0
	bl FUN_022559B0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov36_02256508

	thumb_func_start ov36_0225653C
ov36_0225653C: @ 0x0225653C
	push {lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r0, #8
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	ldr r0, _0225655C @ =0x02256764
	ldr r3, [r2]
	bl FUN_0225517C
	add sp, #0xc
	pop {pc}
	nop
_0225655C: .4byte 0x02256764
	thumb_func_end ov36_0225653C

	thumb_func_start ov36_02256560
ov36_02256560: @ 0x02256560
	ldr r3, _02256568 @ =FUN_02255130
	adds r0, #8
	bx r3
	nop
_02256568: .4byte FUN_02255130
	thumb_func_end ov36_02256560

	thumb_func_start ov36_0225656C
ov36_0225656C: @ 0x0225656C
	ldr r3, _02256574 @ =FUN_02255154
	adds r0, #8
	bx r3
	nop
_02256574: .4byte FUN_02255154
	thumb_func_end ov36_0225656C

	thumb_func_start ov36_02256578
ov36_02256578: @ 0x02256578
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0225523C
	adds r0, #8
	adds r1, r4, #0
	bl FUN_02255224
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov36_02256578

	thumb_func_start ov36_0225658C
ov36_0225658C: @ 0x0225658C
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r1, #0
	adds r0, r4, #0
	bl FUN_0225523C
	adds r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _02256610 @ =0x02256748
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
	movs r1, #0x31
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
	movs r1, #0x30
	movs r3, #6
	bl FUN_02006E60
	movs r0, #0
	adds r1, r0, #0
	bl FUN_022546B8
	ldr r0, [r5, #4]
	movs r1, #6
	bl FUN_02019448
	ldr r1, _02256614 @ =0x04001000
	ldr r0, _02256618 @ =0xFFFFE0FF
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
	bl ov36_02256578
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02256610: .4byte 0x02256748
_02256614: .4byte 0x04001000
_02256618: .4byte 0xFFFFE0FF
	thumb_func_end ov36_0225658C

	thumb_func_start ov36_0225661C
ov36_0225661C: @ 0x0225661C
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl FUN_0225523C
	ldr r0, [r0, #4]
	movs r1, #6
	bl FUN_02019044
	adds r0, r4, #0
	bl ov36_02256578
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov36_0225661C

	thumb_func_start ov36_02256638
ov36_02256638: @ 0x02256638
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02256652
	cmp r0, #1
	beq _02256662
	b _0225666A
_02256652:
	ldr r0, _02256674 @ =0x00000669
	bl FUN_02254424
	ldr r0, [r4, #0x24]
	movs r1, #1
	bl FUN_022558C4
	b _0225666A
_02256662:
	ldr r0, [r4, #0x24]
	movs r1, #0
	bl FUN_022558C4
_0225666A:
	adds r0, r5, #0
	bl ov36_02256578
	pop {r3, r4, r5, pc}
	nop
_02256674: .4byte 0x00000669
	thumb_func_end ov36_02256638

	thumb_func_start ov36_02256678
ov36_02256678: @ 0x02256678
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02255240
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov36_0225669C
	adds r0, r5, #0
	bl ov36_02256578
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov36_02256678

	thumb_func_start ov36_0225669C
ov36_0225669C: @ 0x0225669C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r0, [r1]
	ldr r5, _02256700 @ =0x04000280
	str r0, [sp, #4]
	ldr r0, _02256704 @ =0x00002710
	lsrs r4, r5, #0xb
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #8]
	lsrs r6, r5, #0xb
_022566B4:
	movs r0, #0
	strh r0, [r5]
	ldr r1, [sp, #4]
	ldr r0, _02256708 @ =0x04000290
	str r1, [r0]
	ldr r1, [sp]
	str r1, [r0, #8]
	ldr r0, _0225670C @ =0x04000298
	movs r1, #0
	str r1, [r0, #4]
_022566C8:
	ldrh r0, [r5]
	tst r0, r4
	bne _022566C8
	ldr r1, _02256710 @ =0x040002A0
	ldr r0, [r7, #0x28]
	ldr r1, [r1]
	bl FUN_022558C4
_022566D8:
	ldrh r0, [r5]
	tst r0, r6
	bne _022566D8
	ldr r0, _02256714 @ =0x040002A8
	movs r1, #0xa
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r0, [sp]
	blx FUN_020E2178
	str r0, [sp]
	ldr r0, [sp, #8]
	adds r7, r7, #4
	adds r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #5
	blt _022566B4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02256700: .4byte 0x04000280
_02256704: .4byte 0x00002710
_02256708: .4byte 0x04000290
_0225670C: .4byte 0x04000298
_02256710: .4byte 0x040002A0
_02256714: .4byte 0x040002A8
	thumb_func_end ov36_0225669C
	@ 0x02256718
