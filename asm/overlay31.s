	.include "macros/function.inc"


	.text

	thumb_func_start ov31_022561C0
ov31_022561C0: @ 0x022561C0
	ldr r3, _022561C8 @ =FUN_02254238
	ldr r0, _022561CC @ =ov31_022561D4
	ldr r1, _022561D0 @ =ov31_02256404
	bx r3
	.align 2, 0
_022561C8: .4byte FUN_02254238
_022561CC: .4byte ov31_022561D4
_022561D0: .4byte ov31_02256404
	thumb_func_end ov31_022561C0

	thumb_func_start ov31_022561D4
ov31_022561D4: @ 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	movs r1, #0x9b
	adds r5, r0, #0
	movs r0, #8
	lsls r1, r1, #2
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	beq _0225621C
	ldr r3, [sp]
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov31_02256228
	cmp r0, #0
	beq _02256216
	ldr r0, _02256220 @ =ov31_022563CC
	adds r1, r4, #0
	movs r2, #1
	bl FUN_0200D9E8
	cmp r0, #0
	beq _02256216
	ldr r0, _02256224 @ =ov31_022563B0
	adds r1, r4, #0
	str r4, [r5]
	bl FUN_02254274
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02256216:
	adds r0, r4, #0
	bl FUN_020181C4
_0225621C:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02256220: .4byte ov31_022563CC
_02256224: .4byte ov31_022563B0
	thumb_func_end ov31_022561D4

	thumb_func_start ov31_02256228
ov31_02256228: @ 0x02256228
	push {r3, r4, r5, lr}
	adds r4, r2, #0
	movs r2, #0x1f
	adds r5, r0, #0
	lsls r2, r2, #4
	str r1, [r5, r2]
	adds r1, r5, #0
	adds r1, #0xc
	bl ov31_02256268
	movs r0, #0x7b
	lsls r0, r0, #2
	adds r1, r5, #0
	adds r0, r5, r0
	adds r1, #0xc
	adds r2, r4, #0
	bl ov31_02256554
	cmp r0, #0
	beq _02256264
	movs r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	movs r0, #0x19
	str r0, [r5, #4]
	movs r0, #0x15
	str r0, [r5, #8]
	movs r0, #1
	pop {r3, r4, r5, pc}
_02256264:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov31_02256228

	thumb_func_start ov31_02256268
ov31_02256268: @ 0x02256268
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x1f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r4, r1, #0
	bl FUN_02254540
	adds r6, r0, #0
	bl FUN_02056A10
	cmp r0, #0
	beq _0225628E
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov31_02256298
	pop {r4, r5, r6, pc}
_0225628E:
	adds r0, r4, #0
	bl ov31_0225635C
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov31_02256268

	thumb_func_start ov31_02256298
ov31_02256298: @ 0x02256298
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	movs r1, #0x7d
	adds r5, r0, #0
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r1, r5, r1
	bl FUN_02056A18
	movs r3, #0
	movs r7, #0x7d
	mov ip, r3
	lsls r7, r7, #2
	movs r0, #3
_022562B4:
	movs r2, #0
_022562B6:
	asrs r1, r3, #1
	lsrs r1, r1, #0x1e
	adds r1, r3, r1
	asrs r1, r1, #2
	adds r1, r5, r1
	adds r6, r3, #0
	lsls r6, r6, #0x1e
	ldrb r1, [r1, r7]
	lsrs r6, r6, #0x1d
	adds r3, r3, #1
	asrs r1, r6
	ands r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r1, r1, #1
	strb r1, [r4, r2]
	adds r2, r2, #1
	cmp r2, #0x18
	blt _022562B6
	mov r1, ip
	adds r1, r1, #1
	adds r4, #0x18
	mov ip, r1
	cmp r1, #0x14
	blt _022562B4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov31_02256298

	thumb_func_start ov31_022562EC
ov31_022562EC: @ 0x022562EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r1, #0
	movs r1, #0x7d
	str r2, [sp]
	lsls r1, r1, #2
	str r0, [sp, #4]
	adds r0, r0, r1
	movs r1, #0
	movs r2, #0x78
	blx FUN_020C4CF4
	movs r5, #0
	mov ip, r5
_02256308:
	movs r4, #0
_0225630A:
	asrs r0, r5, #1
	lsrs r0, r0, #0x1e
	adds r0, r5, r0
	asrs r1, r0, #2
	ldr r0, [sp, #4]
	adds r6, r5, #0
	adds r3, r0, r1
	movs r0, #0x7d
	lsls r0, r0, #2
	ldrb r2, [r3, r0]
	ldrb r0, [r7, r4]
	adds r4, r4, #1
	adds r5, r5, #1
	subs r1, r0, #1
	movs r0, #3
	ands r0, r1
	lsls r1, r6, #0x1e
	lsrs r1, r1, #0x1d
	lsls r0, r1
	adds r1, r2, #0
	orrs r1, r0
	movs r0, #0x7d
	lsls r0, r0, #2
	strb r1, [r3, r0]
	cmp r4, #0x18
	blt _0225630A
	mov r0, ip
	adds r0, r0, #1
	adds r7, #0x18
	mov ip, r0
	cmp r0, #0x14
	blt _02256308
	movs r2, #0x7d
	ldr r1, [sp, #4]
	lsls r2, r2, #2
	ldr r0, [sp]
	adds r1, r1, r2
	bl FUN_02056A2C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov31_022562EC

	thumb_func_start ov31_0225635C
ov31_0225635C: @ 0x0225635C
	push {r4, r5}
	movs r4, #0
	ldr r5, _02256380 @ =0x02256770
	adds r2, r4, #0
_02256364:
	adds r3, r2, #0
_02256366:
	ldrb r1, [r5, r3]
	strb r1, [r0, r3]
	adds r3, r3, #1
	cmp r3, #0x18
	blt _02256366
	adds r4, r4, #1
	adds r5, #0x18
	adds r0, #0x18
	cmp r4, #0x14
	blt _02256364
	pop {r4, r5}
	bx lr
	nop
_02256380: .4byte 0x02256770
	thumb_func_end ov31_0225635C

	thumb_func_start ov31_02256384
ov31_02256384: @ 0x02256384
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x1f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02254540
	adds r1, r4, #0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, #0xc
	bl ov31_022562EC
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov31_02256584
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov31_02256384

	thumb_func_start ov31_022563B0
ov31_022563B0: @ 0x022563B0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x1f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02254540
	adds r2, r0, #0
	adds r0, r4, #0
	adds r4, #0xc
	adds r1, r4, #0
	bl ov31_022562EC
	pop {r4, pc}
	thumb_func_end ov31_022563B0

	thumb_func_start ov31_022563CC
ov31_022563CC: @ 0x022563CC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldrb r1, [r4]
	adds r5, r0, #0
	cmp r1, #3
	bhs _022563FC
	lsls r2, r1, #2
	ldr r1, _02256400 @ =0x02256764
	adds r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _022563FC
	adds r0, r4, #0
	bl ov31_02256384
	adds r0, r5, #0
	bl FUN_0200DA58
	movs r0, #0x1f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02254260
_022563FC:
	pop {r3, r4, r5, pc}
	nop
_02256400: .4byte 0x02256764
	thumb_func_end ov31_022563CC

	thumb_func_start ov31_02256404
ov31_02256404: @ 0x02256404
	movs r1, #1
	strb r1, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end ov31_02256404

	thumb_func_start ov31_0225640C
ov31_0225640C: @ 0x0225640C
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _02256414
	b _02256416
_02256414:
	movs r1, #2
_02256416:
	strb r1, [r0]
	movs r1, #0
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
	thumb_func_end ov31_0225640C

	thumb_func_start ov31_02256420
ov31_02256420: @ 0x02256420
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256430
	cmp r0, #1
	beq _02256444
	b _02256466
_02256430:
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov31_02256590
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _02256466
_02256444:
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov31_022565B4
	cmp r0, #0
	beq _02256466
	movs r0, #0x1f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0225424C
	adds r0, r4, #0
	movs r1, #1
	bl ov31_0225640C
_02256466:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov31_02256420

	thumb_func_start ov31_0225646C
ov31_0225646C: @ 0x0225646C
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _02256484
	movs r1, #2
	bl ov31_0225640C
	add sp, #8
	movs r0, #0
	pop {r3, r4, r5, pc}
_02256484:
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov31_022565B4
	cmp r0, #0
	beq _02256510
	add r0, sp, #4
	add r1, sp, #0
	bl FUN_0225446C
	cmp r0, #0
	beq _02256510
	ldr r1, [sp, #4]
	cmp r1, #0x10
	blo _02256510
	ldr r0, [sp]
	cmp r0, #0x10
	blo _02256510
	subs r1, #0x10
	lsrs r2, r1, #3
	subs r0, #0x10
	lsrs r1, r0, #3
	str r2, [sp, #4]
	str r1, [sp]
	cmp r2, #0x18
	bhs _02256510
	cmp r1, #0x14
	bhs _02256510
	ldr r0, [r4, #4]
	cmp r0, r2
	bne _022564D4
	ldr r0, [r4, #8]
	cmp r0, r1
	bne _022564D4
	bl FUN_02022798
	cmp r0, #1
	bne _02256510
_022564D4:
	ldr r2, [sp]
	adds r0, r4, #0
	movs r1, #0x18
	adds r3, r2, #0
	adds r0, #0xc
	muls r3, r1, r3
	adds r5, r0, r3
	ldr r3, [sp, #4]
	ldrb r2, [r5, r3]
	adds r2, r2, #1
	strb r2, [r5, r3]
	ldr r2, [sp]
	muls r1, r2, r1
	adds r2, r0, r1
	ldr r1, [sp, #4]
	ldrb r0, [r2, r1]
	cmp r0, #4
	bls _022564FC
	movs r0, #1
	strb r0, [r2, r1]
_022564FC:
	ldr r0, [sp, #4]
	movs r1, #1
	str r0, [r4, #4]
	ldr r0, [sp]
	str r0, [r4, #8]
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov31_02256590
_02256510:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov31_0225646C

	thumb_func_start ov31_02256518
ov31_02256518: @ 0x02256518
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256528
	cmp r0, #1
	beq _0225653C
	b _0225654E
_02256528:
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #2
	bl ov31_02256590
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _0225654E
_0225653C:
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov31_022565C0
	cmp r0, #0
	beq _0225654E
	movs r0, #1
	pop {r4, pc}
_0225654E:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov31_02256518

	thumb_func_start ov31_02256554
ov31_02256554: @ 0x02256554
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #8
	movs r1, #0x30
	bl FUN_02018144
	adds r4, r0, #0
	beq _02256580
	adds r0, #8
	movs r1, #8
	bl FUN_02255090
	str r6, [r4]
	bl FUN_02254674
	str r0, [r4, #4]
	cmp r0, #0
	beq _02256580
	str r4, [r5]
	movs r0, #1
	pop {r4, r5, r6, pc}
_02256580:
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov31_02256554

	thumb_func_start ov31_02256584
ov31_02256584: @ 0x02256584
	push {r3, lr}
	cmp r0, #0
	beq _0225658E
	bl FUN_020181C4
_0225658E:
	pop {r3, pc}
	thumb_func_end ov31_02256584

	thumb_func_start ov31_02256590
ov31_02256590: @ 0x02256590
	push {lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r0, #8
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	ldr r0, _022565B0 @ =0x02256970
	ldr r3, [r2]
	bl FUN_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022565B0: .4byte 0x02256970
	thumb_func_end ov31_02256590

	thumb_func_start ov31_022565B4
ov31_022565B4: @ 0x022565B4
	ldr r3, _022565BC @ =FUN_02255130
	adds r0, #8
	bx r3
	nop
_022565BC: .4byte FUN_02255130
	thumb_func_end ov31_022565B4

	thumb_func_start ov31_022565C0
ov31_022565C0: @ 0x022565C0
	ldr r3, _022565C8 @ =FUN_02255154
	adds r0, #8
	bx r3
	nop
_022565C8: .4byte FUN_02255154
	thumb_func_end ov31_022565C0

	thumb_func_start ov31_022565CC
ov31_022565CC: @ 0x022565CC
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0225523C
	adds r0, #8
	adds r1, r4, #0
	bl FUN_02255224
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov31_022565CC

	thumb_func_start ov31_022565E0
ov31_022565E0: @ 0x022565E0
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl FUN_0225523C
	adds r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _02256638 @ =0x02256954
	movs r1, #6
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r5, #4]
	bl ov31_02256644
	ldr r0, [r5, #4]
	ldr r1, [r5]
	bl ov31_0225672C
	movs r0, #0
	adds r1, r0, #0
	bl FUN_022546B8
	ldr r0, [r5, #4]
	movs r1, #6
	bl FUN_02019448
	ldr r1, _0225663C @ =0x04001000
	ldr r0, _02256640 @ =0xFFFFE0FF
	ldr r3, [r1]
	ldr r2, [r1]
	str r3, [sp]
	ands r0, r2
	lsls r2, r3, #0x13
	lsrs r3, r2, #0x1b
	movs r2, #4
	orrs r2, r3
	lsls r2, r2, #8
	orrs r0, r2
	str r0, [r1]
	adds r0, r4, #0
	bl ov31_022565CC
	pop {r3, r4, r5, pc}
	.align 2, 0
_02256638: .4byte 0x02256954
_0225663C: .4byte 0x04001000
_02256640: .4byte 0xFFFFE0FF
	thumb_func_end ov31_022565E0

	thumb_func_start ov31_02256644
ov31_02256644: @ 0x02256644
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #4]
	movs r0, #8
	lsls r1, r0, #6
	bl FUN_02018144
	str r0, [sp, #0x1c]
	cmp r0, #0
	beq _022566E8
	movs r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	adds r7, r0, #0
	adds r6, r0, #0
	adds r4, r0, #0
	adds r5, r0, #0
_0225666C:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x1c]
	orrs r1, r0
	ldr r0, [sp, #8]
	orrs r0, r1
	orrs r0, r7
	orrs r0, r6
	orrs r0, r4
	adds r1, r5, #0
	orrs r1, r0
	ldr r0, [sp, #0x18]
	orrs r0, r1
	ldr r1, [sp, #0x14]
	adds r1, r2, r1
	movs r2, #0x20
	blx FUN_020C4BB8
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	adds r0, #0x20
	str r0, [sp, #0x14]
	movs r0, #1
	lsls r0, r0, #0x18
	adds r0, r1, r0
	str r0, [sp, #0x10]
	movs r0, #1
	ldr r1, [sp, #0xc]
	lsls r0, r0, #0x1c
	adds r0, r1, r0
	str r0, [sp, #0xc]
	movs r0, #1
	ldr r1, [sp, #8]
	lsls r0, r0, #0x14
	adds r0, r1, r0
	str r0, [sp, #8]
	movs r0, #1
	lsls r0, r0, #0x10
	adds r7, r7, r0
	lsrs r0, r0, #4
	adds r6, r6, r0
	movs r0, #1
	lsls r0, r0, #8
	adds r4, r4, r0
	ldr r0, [sp, #0x18]
	adds r5, #0x10
	adds r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #0x10
	blt _0225666C
	movs r0, #0
	str r0, [sp]
	movs r3, #2
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	movs r1, #6
	lsls r3, r3, #8
	bl FUN_0201958C
	ldr r0, [sp, #0x1c]
	bl FUN_020181C4
_022566E8:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov31_02256644

	thumb_func_start ov31_022566EC
ov31_022566EC: @ 0x022566EC
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldr r1, [r4]
	bl ov31_0225672C
	ldr r0, [r4, #4]
	movs r1, #6
	bl FUN_02019448
	adds r0, r5, #0
	bl ov31_022565CC
	pop {r3, r4, r5, pc}
	thumb_func_end ov31_022566EC

	thumb_func_start ov31_02256710
ov31_02256710: @ 0x02256710
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl FUN_0225523C
	ldr r0, [r0, #4]
	movs r1, #6
	bl FUN_02019044
	adds r0, r4, #0
	bl ov31_022565CC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov31_02256710

	thumb_func_start ov31_0225672C
ov31_0225672C: @ 0x0225672C
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	movs r1, #6
	bl FUN_02019FE4
	movs r5, #0
	ldr r1, _02256760 @ =0x02256950
	adds r0, #0x84
	adds r2, r5, #0
_0225673E:
	adds r3, r2, #0
	adds r6, r0, #0
_02256742:
	ldrb r7, [r4, r3]
	adds r3, r3, #1
	adds r7, r1, r7
	subs r7, r7, #1
	ldrb r7, [r7]
	strh r7, [r6]
	adds r6, r6, #2
	cmp r3, #0x18
	blt _02256742
	adds r5, r5, #1
	adds r0, #0x40
	adds r4, #0x18
	cmp r5, #0x14
	blt _0225673E
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02256760: .4byte 0x02256950
	thumb_func_end ov31_0225672C
	@ 0x02256764
